; ModuleID = '/llk/IR/net/ipv6/udp.c_pt.bc'
source_filename = "../net/ipv6/udp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___udp6_lib_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__udp6_lib_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___udp6_lib_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udpv6_encap_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22udpv6_encap_enable\22\09\09\09\09\09"
module asm "__kstrtabns_udpv6_encap_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp6_seq_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22udp6_seq_ops\22\09\09\09\09\09"
module asm "__kstrtabns_udp6_seq_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.udp_table = type { ptr, ptr, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.udp_seq_afinfo = type { i16, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.177, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.177 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key_false_deferred = type { %struct.static_key_false }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.178, [0 x i32], %union.anon.179, i16, i16, %union.anon.180, %struct.refcount_struct, [0 x i32], %union.anon.181 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.atomic64_t = type { i64 }
%union.anon.178 = type { i32 }
%union.anon.179 = type { %struct.hlist_node }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i32 }
%struct.anon.2 = type { i16, i16 }
%struct.udp_hslot = type { %struct.hlist_head, i32, %struct.spinlock, [4 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.182, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.183, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.184, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.182 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.183 = type { ptr }
%union.anon.184 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
%struct.bpf_sk_lookup_kern = type { i16, i16, i16, i16, %struct.anon.195, %struct.anon.196, ptr, i32, i8 }
%struct.anon.195 = type { i32, i32 }
%struct.anon.196 = type { ptr, ptr }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { ptr, %union.anon.142 }
%union.anon.142 = type { i64 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.103 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { %struct.anon.105, [0 x %struct.sock_filter] }
%struct.anon.105 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.190, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.190 = type { %struct.anon.191 }
%struct.anon.191 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.176, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.174 }
%union.anon.4 = type { ptr }
%union.anon.174 = type { i64 }
%union.anon.176 = type { ptr }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [20 x i8], %struct.sk_buff_head, i32, [44 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ipv6_sr_hdr = type { i8, i8, i8, i8, i8, i8, i16, [0 x %struct.in6_addr] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.135, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.135 = type { ptr }
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
%struct.netdevice_tracker = type {}
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ip6_tnl_encap_ops = type { ptr, ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.116, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.116 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.119, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.119 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.192, i32, i32, ptr }
%union.anon.192 = type { ptr }
%struct.anon.123 = type { i16, i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.anon.52 = type { i16, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.udp_iter_state = type { %struct.seq_net_private, i32, ptr }
%struct.seq_net_private = type {}

@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@bpf_sk_lookup_enabled = external dso_local global %struct.static_key_false, align 4
@__kstrtab___udp6_lib_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___udp6_lib_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___udp6_lib_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__udp6_lib_lookup to i32), ptr @__kstrtab___udp6_lib_lookup, ptr @__kstrtabns___udp6_lib_lookup }, section "___ksymtab_gpl+__udp6_lib_lookup", align 4
@udp_table = external dso_local global %struct.udp_table, align 4
@udpv6_encap_needed_key = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_udpv6_encap_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_udpv6_encap_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_udpv6_encap_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udpv6_encap_enable to i32), ptr @__kstrtab_udpv6_encap_enable, ptr @__kstrtabns_udpv6_encap_enable }, section "___ksymtab+udpv6_encap_enable", align 4
@.str.2 = private unnamed_addr constant [164 x i8] c"  sl  local_address                         remote_address                        st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\0A\00", align 1
@udp6_seq_ops = dso_local constant %struct.seq_operations { ptr @udp_seq_start, ptr @udp_seq_stop, ptr @udp_seq_next, ptr @udp6_seq_show }, align 4
@__kstrtab_udp6_seq_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp6_seq_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_udp6_seq_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp6_seq_ops to i32), ptr @__kstrtab_udp6_seq_ops, ptr @__kstrtabns_udp6_seq_ops }, section "___ksymtab+udp6_seq_ops", align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"udp6\00", align 1
@udp6_seq_afinfo = internal global %struct.udp_seq_afinfo { i16 10, ptr @udp_table }, align 4
@udp_memory_allocated = external dso_local global %struct.atomic_t, align 4
@sysctl_udp_mem = external dso_local global [3 x i32], align 4
@udpv6_prot = dso_local global %struct.proto { ptr @udp_lib_close, ptr @udpv6_pre_connect, ptr @ip6_datagram_connect, ptr @udp_disconnect, ptr null, ptr @udp_ioctl, ptr @udp_init_sock, ptr @udpv6_destroy_sock, ptr null, ptr @udpv6_setsockopt, ptr @udpv6_getsockopt, ptr null, ptr @udpv6_sendmsg, ptr @udpv6_recvmsg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6_datagram_release_cb, ptr @udp_lib_hash, ptr @udp_lib_unhash, ptr @udp_v6_rehash, ptr @udp_v6_get_port, ptr @udp_lib_unhash, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @udp_memory_allocated, ptr null, ptr null, ptr @sysctl_udp_mem, ptr null, ptr null, i32 768, i32 772, i32 0, i8 0, ptr null, i32 960, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.177 { ptr @udp_table }, ptr null, [32 x i8] c"UDPv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr @udp_abort }, align 4
@udpv6_protocol = internal global %struct.inet6_protocol { ptr @udp_v6_early_demux, ptr @udp_v6_early_demux, ptr @udpv6_rcv, ptr @udpv6_err, i32 3 }, align 4
@udpv6_protosw = internal global %struct.inet_protosw { %struct.list_head zeroinitializer, i16 2, i16 17, ptr @udpv6_prot, ptr @inet6_dgram_ops, i8 2 }, align 4
@init_net = external dso_local global %struct.net, align 64
@udp6_ehashfn.udp6_ehash_secret = internal global i32 0, section ".data..read_mostly", align 4
@udp6_ehashfn.udp_ipv6_hash_secret = internal global i32 0, section ".data..read_mostly", align 4
@udp6_ehashfn.___done = internal global i8 0, section ".data.once", align 1
@udp6_ehashfn.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@udp6_ehashfn.___done.4 = internal global i8 0, section ".data.once", align 1
@udp6_ehashfn.___once_key.5 = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@ip6tun_encaps = external dso_local global [8 x ptr], align 4
@udp_post_segment_fix_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"include/net/udp.h\00", align 1
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 4
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@inet6_dgram_ops = external dso_local constant %struct.proto_ops, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___udp6_lib_lookup, ptr @__ksymtab_udp6_seq_ops, ptr @__ksymtab_udpv6_encap_enable], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_v6_get_port(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = zext i16 %1 to i32
  %4 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef nonnull @init_net, ptr noundef nonnull @in6addr_any, i32 noundef %3)
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %6 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef nonnull @init_net, ptr noundef %5, i32 noundef 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  %9 = getelementptr [2 x i16], ptr %8, i32 0, i32 1
  store i16 %7, ptr %9, align 2
  %10 = tail call i32 @udp_lib_get_port(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %4) #12
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ipv6_portaddr_hash(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  %10 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %9, %11
  %13 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = add i32 %5, -559038733
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 14) #12
  %20 = sub i32 0, %19
  %21 = xor i32 %18, %20
  %22 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 11) #12
  %23 = sub i32 %21, %22
  %24 = xor i32 %23, %18
  %25 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 25) #12
  %26 = sub i32 %24, %25
  %27 = xor i32 %26, %20
  %28 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 16) #12
  %29 = sub i32 %27, %28
  %30 = xor i32 %29, %23
  %31 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 4) #12
  %32 = sub i32 %30, %31
  %33 = xor i32 %32, %26
  %34 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 14) #12
  %35 = sub i32 %33, %34
  %36 = xor i32 %35, %29
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 24) #12
  %38 = sub i32 %36, %37
  br label %117

39:                                               ; preds = %3
  %40 = xor i32 %11, -65536
  %41 = or i32 %40, %9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = add i32 %5, -559038733
  %45 = add i32 %14, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 14) #12
  %47 = sub i32 0, %46
  %48 = xor i32 %45, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 11) #12
  %50 = sub i32 %48, %49
  %51 = xor i32 %50, %44
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 25) #12
  %53 = sub i32 %51, %52
  %54 = xor i32 %53, %47
  %55 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 16) #12
  %56 = sub i32 %54, %55
  %57 = xor i32 %56, %50
  %58 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 4) #12
  %59 = sub i32 %57, %58
  %60 = xor i32 %59, %53
  %61 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 14) #12
  %62 = sub i32 %60, %61
  %63 = xor i32 %62, %56
  %64 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 24) #12
  %65 = sub i32 %63, %64
  br label %117

66:                                               ; preds = %39
  %67 = add i32 %5, -559038721
  %68 = add i32 %6, %67
  %69 = add i32 %8, %67
  %70 = add i32 %11, %67
  %71 = sub i32 %68, %70
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 4) #12
  %73 = xor i32 %71, %72
  %74 = add i32 %70, %69
  %75 = sub i32 %69, %73
  %76 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 6) #12
  %77 = xor i32 %75, %76
  %78 = add i32 %73, %74
  %79 = sub i32 %74, %77
  %80 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 8) #12
  %81 = xor i32 %79, %80
  %82 = add i32 %77, %78
  %83 = sub i32 %78, %81
  %84 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 16) #12
  %85 = xor i32 %83, %84
  %86 = add i32 %81, %82
  %87 = sub i32 %82, %85
  %88 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 19) #12
  %89 = xor i32 %87, %88
  %90 = add i32 %85, %86
  %91 = sub i32 %86, %89
  %92 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 4) #12
  %93 = xor i32 %91, %92
  %94 = add i32 %89, %90
  %95 = add i32 %90, %14
  %96 = xor i32 %93, %94
  %97 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 14) #12
  %98 = sub i32 %96, %97
  %99 = xor i32 %98, %95
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 11) #12
  %101 = sub i32 %99, %100
  %102 = xor i32 %101, %94
  %103 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 25) #12
  %104 = sub i32 %102, %103
  %105 = xor i32 %104, %98
  %106 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 16) #12
  %107 = sub i32 %105, %106
  %108 = xor i32 %107, %101
  %109 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 4) #12
  %110 = sub i32 %108, %109
  %111 = xor i32 %110, %104
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 14) #12
  %113 = sub i32 %111, %112
  %114 = xor i32 %113, %107
  %115 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 24) #12
  %116 = sub i32 %114, %115
  br label %117

117:                                              ; preds = %66, %43, %17
  %118 = phi i32 [ %38, %17 ], [ %65, %43 ], [ %116, %66 ]
  %119 = xor i32 %118, %2
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_lib_get_port(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_v6_rehash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.2, ptr %3, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef nonnull @init_net, ptr noundef %2, i32 noundef %6)
  %8 = trunc i32 %7 to i16
  tail call void @udp_lib_rehash(ptr noundef %0, i16 noundef zeroext %8) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_lib_rehash(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__udp6_lib_lookup(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i16 noundef zeroext %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = tail call i16 @llvm.bswap.i16(i16 %4)
  %11 = zext i16 %10 to i32
  %12 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %0, ptr noundef %3, i32 noundef %11)
  %13 = getelementptr inbounds %struct.udp_table, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  %16 = getelementptr inbounds %struct.udp_table, ptr %7, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.udp_hslot, ptr %17, i32 %15
  %19 = tail call fastcc ptr @udp6_lib_lookup2(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i32 noundef %11, i32 noundef %5, i32 noundef %6, ptr noundef %18, ptr noundef %8)
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 4
  %25 = load volatile i8, ptr %24, align 2
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %44, label %27

27:                                               ; preds = %23, %9
  %28 = load volatile i32, ptr @bpf_sk_lookup_enabled, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %36, !prof !9

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @udp6_lookup_run_bpf(ptr noundef %0, ptr noundef %7, ptr noundef %8, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i16 noundef zeroext %10, i32 noundef %5)
  %32 = icmp ne ptr %31, null
  %33 = xor i1 %20, true
  %34 = select i1 %32, i1 true, i1 %33
  %35 = select i1 %32, ptr %31, ptr %19
  br i1 %34, label %44, label %37

36:                                               ; preds = %27
  br i1 %20, label %37, label %44

37:                                               ; preds = %36, %30
  %38 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %0, ptr noundef nonnull @in6addr_any, i32 noundef %11)
  %39 = load i32, ptr %13, align 4
  %40 = and i32 %39, %38
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr %struct.udp_hslot, ptr %41, i32 %40
  %43 = tail call fastcc ptr @udp6_lib_lookup2(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef nonnull @in6addr_any, i32 noundef %11, i32 noundef %5, i32 noundef %6, ptr noundef %42, ptr noundef %8)
  br label %44

44:                                               ; preds = %37, %36, %30, %23
  %45 = phi ptr [ %19, %36 ], [ %43, %37 ], [ %19, %23 ], [ %35, %30 ]
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  %47 = select i1 %46, ptr null, ptr %45
  ret ptr %47
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udp6_lib_lookup2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = load volatile ptr, ptr %7, align 8
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -24
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %136, label %15

15:                                               ; preds = %9
  %16 = trunc i32 %4 to i16
  %17 = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %18 = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %19 = getelementptr [4 x i32], ptr %3, i32 0, i32 3
  %20 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %21 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %22 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  br label %23

23:                                               ; preds = %127, %15
  %24 = phi ptr [ %12, %15 ], [ %133, %127 ]
  %25 = phi ptr [ null, %15 ], [ %129, %127 ]
  %26 = phi i32 [ -1, %15 ], [ %128, %127 ]
  %27 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 1
  %28 = load i16, ptr %27, align 8
  %29 = icmp eq i16 %28, %16
  br i1 %29, label %30, label %111

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 3
  %32 = load i16, ptr %31, align 8
  %33 = icmp eq i16 %32, 10
  br i1 %33, label %34, label %111

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %3, align 4
  %38 = xor i32 %37, %36
  %39 = getelementptr %struct.sock_common, ptr %24, i32 0, i32 11, i32 0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %17, align 4
  %42 = xor i32 %41, %40
  %43 = or i32 %42, %38
  %44 = getelementptr %struct.sock_common, ptr %24, i32 0, i32 11, i32 0, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %18, align 4
  %47 = xor i32 %46, %45
  %48 = or i32 %43, %47
  %49 = getelementptr %struct.sock_common, ptr %24, i32 0, i32 11, i32 0, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %19, align 4
  %52 = xor i32 %51, %50
  %53 = or i32 %48, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %111

55:                                               ; preds = %34
  %56 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 2
  %57 = load i16, ptr %56, align 4
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = icmp eq i16 %57, %2
  br i1 %60, label %61, label %111

61:                                               ; preds = %59, %55
  %62 = phi i32 [ 0, %55 ], [ 1, %59 ]
  %63 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr %struct.sock_common, ptr %24, i32 0, i32 10, i32 0, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, %64
  %68 = getelementptr %struct.sock_common, ptr %24, i32 0, i32 10, i32 0, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %67, %69
  %71 = getelementptr %struct.sock_common, ptr %24, i32 0, i32 10, i32 0, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %70, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %61
  %76 = load i32, ptr %1, align 4
  %77 = xor i32 %76, %64
  %78 = load i32, ptr %20, align 4
  %79 = xor i32 %78, %66
  %80 = or i32 %79, %77
  %81 = load i32, ptr %21, align 4
  %82 = xor i32 %81, %69
  %83 = or i32 %80, %82
  %84 = load i32, ptr %22, align 4
  %85 = xor i32 %84, %72
  %86 = or i32 %83, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %75
  %89 = add nuw nsw i32 %62, 1
  br label %90

90:                                               ; preds = %88, %61
  %91 = phi i32 [ %62, %61 ], [ %89, %88 ]
  %92 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = icmp eq i32 %93, %5
  %97 = icmp eq i32 %93, %6
  %98 = or i1 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %95, %90
  %100 = xor i1 %94, true
  %101 = zext i1 %100 to i32
  %102 = add nuw nsw i32 %91, %101
  %103 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 18
  %104 = load volatile i32, ptr %103, align 8
  %105 = tail call ptr @llvm.thread.pointer() #12
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = icmp eq i32 %104, %107
  %109 = zext i1 %108 to i32
  %110 = add nuw nsw i32 %102, %109
  br label %111

111:                                              ; preds = %99, %95, %75, %59, %34, %30, %23
  %112 = phi i32 [ %110, %99 ], [ -1, %30 ], [ -1, %23 ], [ -1, %34 ], [ -1, %59 ], [ -1, %75 ], [ -1, %95 ]
  %113 = icmp sgt i32 %112, %26
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = tail call fastcc ptr @lookup_reuseport(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %8, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i32 noundef %4)
  %116 = icmp eq ptr %115, null
  br i1 %116, label %127, label %117

117:                                              ; preds = %114
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %118 = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 81
  %119 = load volatile ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %136

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.sock_reuseport, ptr %119, i32 0, i32 6
  %124 = load i8, ptr %123, align 4
  %125 = and i8 %124, 2
  %126 = icmp eq i8 %125, 0
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br i1 %126, label %136, label %127

127:                                              ; preds = %122, %114, %111
  %128 = phi i32 [ %26, %111 ], [ %112, %122 ], [ %112, %114 ]
  %129 = phi ptr [ %25, %111 ], [ %115, %122 ], [ %24, %114 ]
  %130 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 7
  %131 = load volatile ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, null
  %133 = getelementptr i8, ptr %131, i32 -24
  %134 = icmp eq ptr %133, null
  %135 = or i1 %132, %134
  br i1 %135, label %136, label %23

136:                                              ; preds = %127, %122, %121, %9
  %137 = phi ptr [ %115, %121 ], [ null, %9 ], [ %115, %122 ], [ %129, %127 ]
  ret ptr %137
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udp6_lookup_run_bpf(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %6, i32 noundef %7) unnamed_addr #5 {
  %9 = alloca %struct.bpf_sk_lookup_kern, align 4
  %10 = icmp eq ptr %1, @udp_table
  br i1 %10, label %11, label %113

11:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %12 = getelementptr %struct.net, ptr %0, i32 0, i32 38, i32 0, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %113

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #12
  %17 = getelementptr inbounds i8, ptr %9, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %17, i8 0, i32 12, i1 false) #12, !annotation !12
  store i16 10, ptr %9, align 4
  %18 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 1
  store i16 17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 2
  store i16 %4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 3
  store i16 %6, ptr %20, align 2
  %21 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 4
  store i64 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 5
  store ptr %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 5, i32 1
  store ptr %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 7
  store i32 %7, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 8
  tail call void @migrate_disable() #12
  %26 = getelementptr inbounds %struct.bpf_prog_array, ptr %13, i32 0, i32 1
  %27 = load volatile ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %90, label %29

29:                                               ; preds = %83, %16
  %30 = phi ptr [ %88, %83 ], [ %27, %16 ]
  %31 = phi i8 [ %86, %83 ], [ 1, %16 ]
  %32 = phi i1 [ %85, %83 ], [ false, %16 ]
  %33 = phi ptr [ %84, %83 ], [ null, %16 ]
  %34 = phi ptr [ %87, %83 ], [ %26, %16 ]
  store ptr %33, ptr %17, align 4
  %35 = zext i1 %32 to i8
  store i8 %35, ptr %25, align 4
  %36 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %66, !prof !9

38:                                               ; preds = %29
  %39 = call i64 @sched_clock() #12
  %40 = getelementptr inbounds %struct.bpf_prog, ptr %30, i32 1
  %41 = getelementptr inbounds %struct.bpf_prog, ptr %30, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %42(ptr noundef nonnull %9, ptr noundef %40) #12
  %44 = getelementptr inbounds %struct.bpf_prog, ptr %30, i32 0, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = call i32 @llvm.read_register.i32(metadata !0) #12
  %48 = inttoptr i32 %47 to ptr
  %49 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #11, !srcloc !13
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.bpf_prog_stats, ptr %51, i32 0, i32 3
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !14
  %54 = load i32, ptr %52, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %52, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !15
  %56 = load i64, ptr %51, align 8
  %57 = add i64 %56, 1
  store i64 %57, ptr %51, align 8
  %58 = getelementptr inbounds %struct.bpf_prog_stats, ptr %51, i32 0, i32 1
  %59 = call i64 @sched_clock() #12
  %60 = sub i64 %59, %39
  %61 = and i64 %60, 4294967295
  %62 = load i64, ptr %58, align 8
  %63 = add i64 %61, %62
  store i64 %63, ptr %58, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !16
  %64 = load i32, ptr %52, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %52, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #12, !srcloc !17
  br label %71

66:                                               ; preds = %29
  %67 = getelementptr inbounds %struct.bpf_prog, ptr %30, i32 1
  %68 = getelementptr inbounds %struct.bpf_prog, ptr %30, i32 0, i32 9
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 %69(ptr noundef nonnull %9, ptr noundef %67) #12
  br label %71

71:                                               ; preds = %66, %38
  %72 = phi i32 [ %43, %38 ], [ %70, %66 ]
  switch i32 %72, label %83 [
    i32 1, label %73
    i32 0, label %79
  ]

73:                                               ; preds = %71
  %74 = load ptr, ptr %17, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i8, ptr %25, align 4, !range !18
  %78 = icmp ne i8 %77, 0
  br label %83

79:                                               ; preds = %71
  %80 = and i8 %31, 1
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i8 %31, i8 0
  br label %83

83:                                               ; preds = %79, %76, %73, %71
  %84 = phi ptr [ %74, %76 ], [ %33, %79 ], [ %33, %71 ], [ %33, %73 ]
  %85 = phi i1 [ %78, %76 ], [ %32, %79 ], [ %32, %71 ], [ %32, %73 ]
  %86 = phi i8 [ %31, %76 ], [ %82, %79 ], [ %31, %71 ], [ %31, %73 ]
  %87 = getelementptr %struct.bpf_prog_array_item, ptr %34, i32 1
  %88 = load volatile ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %29

90:                                               ; preds = %83, %16
  %91 = phi ptr [ null, %16 ], [ %84, %83 ]
  %92 = phi i1 [ false, %16 ], [ %85, %83 ]
  %93 = phi i8 [ 1, %16 ], [ %86, %83 ]
  store ptr %91, ptr %17, align 4
  %94 = zext i1 %92 to i8
  store i8 %94, ptr %25, align 4
  call void @migrate_enable() #12
  %95 = and i8 %93, 1
  %96 = icmp ne i8 %95, 0
  %97 = icmp ne ptr %91, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %113

100:                                              ; preds = %90
  %101 = load ptr, ptr %17, align 4
  %102 = load i8, ptr %25, align 4, !range !18
  %103 = icmp eq i8 %102, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = icmp eq ptr %101, null
  %106 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  %107 = or i1 %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = zext i16 %6 to i32
  %110 = call fastcc ptr @lookup_reuseport(ptr noundef %0, ptr noundef nonnull %101, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, ptr noundef %5, i32 noundef %109)
  %111 = icmp eq ptr %110, null
  %112 = select i1 %111, ptr %101, ptr %110
  br label %113

113:                                              ; preds = %108, %104, %100, %99, %15, %8
  %114 = phi ptr [ null, %8 ], [ %101, %104 ], [ %101, %100 ], [ inttoptr (i32 -111 to ptr), %99 ], [ null, %15 ], [ %112, %108 ]
  ret ptr %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @udp6_lib_lookup_skb(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.ipv6hdr, ptr %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.ipv6hdr, ptr %9, i32 0, i32 6
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = tail call ptr @__udp6_lib_lookup(ptr noundef nonnull @init_net, ptr noundef %10, i16 noundef zeroext %1, ptr noundef %11, i16 noundef zeroext %2, i32 noundef %13, i32 noundef 0, ptr noundef nonnull @udp_table, ptr noundef null)
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udpv6_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %11 = load volatile i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, -4161
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi ptr [ %18, %16 ], [ null, %6 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !annotation !12
  %21 = and i32 %4, 2
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 136
  %25 = and i32 %4, 8192
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = tail call i32 @ipv6_recv_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %5) #12
  br label %343

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 19
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 8
  %35 = load i16, ptr %34, align 4
  %36 = and i16 %35, 4096
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @ipv6_recv_rxpmtu(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %5) #12
  br label %343

40:                                               ; preds = %33, %29
  %41 = icmp eq i32 %21, 0
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 27
  %43 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %44 = icmp ne i32 %21, 0
  %45 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17
  br label %46

46:                                               ; preds = %339, %40
  br i1 %41, label %49, label %47, !prof !19

47:                                               ; preds = %46
  %48 = load volatile i32, ptr %42, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i32 [ %48, %47 ], [ 0, %46 ]
  store i32 %50, ptr %8, align 4
  %51 = call ptr @__skb_recv_udp(ptr noundef %0, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, ptr %9, align 4
  br label %343

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 5
  %57 = load i32, ptr %56, align 8
  %58 = load i32, ptr %8, align 4
  %59 = sub i32 %57, %58
  %60 = icmp ult i32 %59, %2
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = icmp ugt i32 %57, %2
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i32, ptr %43, align 4
  %65 = or i32 %64, 32
  store i32 %65, ptr %43, align 4
  br label %66

66:                                               ; preds = %63, %61, %55
  %67 = phi i32 [ %2, %63 ], [ %2, %61 ], [ %59, %55 ]
  %68 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 13, i32 0, i32 16
  %69 = load i16, ptr %68, align 8
  %70 = icmp eq i16 %69, 8
  %71 = load i16, ptr %22, align 4
  %72 = icmp eq i16 %71, 136
  %73 = select i1 %72, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4)
  %74 = select i1 %72, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5)
  %75 = select i1 %70, ptr %73, ptr %74
  %76 = load ptr, ptr %75, align 4
  %77 = icmp ult i32 %67, %57
  %78 = or i1 %44, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %66
  br i1 %24, label %80, label %120

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 3, i32 26
  %82 = load i8, ptr %81, align 2
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %120, label %84

84:                                               ; preds = %80, %66
  %85 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 13
  %86 = load i16, ptr %85, align 8
  %87 = lshr i16 %86, 5
  %88 = and i16 %87, 3
  %89 = icmp ne i16 %88, 1
  %90 = icmp sgt i16 %86, -1
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %143

92:                                               ; preds = %84
  %93 = icmp eq i16 %88, 3
  br i1 %93, label %94, label %107

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 13, i32 0, i32 4
  %96 = load i16, ptr %95, align 4
  %97 = zext i16 %96 to i32
  %98 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 17
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 16
  %101 = load ptr, ptr %100, align 8
  %102 = ptrtoint ptr %99 to i32
  %103 = ptrtoint ptr %101 to i32
  %104 = sub i32 %97, %102
  %105 = add i32 %104, %103
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %143, label %107

107:                                              ; preds = %94, %92
  %108 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 3, i32 24
  %109 = load i16, ptr %108, align 8
  %110 = zext i16 %109 to i32
  %111 = load i32, ptr %56, align 8
  %112 = icmp eq i32 %111, %110
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call zeroext i16 @__skb_checksum_complete(ptr noundef nonnull %51) #12
  br label %117

115:                                              ; preds = %107
  %116 = call zeroext i16 @__skb_checksum_complete_head(ptr noundef nonnull %51, i32 noundef %110) #12
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i16 [ %114, %113 ], [ %116, %115 ]
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %143, label %315

120:                                              ; preds = %80, %79
  %121 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 13
  %122 = load i16, ptr %121, align 8
  %123 = lshr i16 %122, 5
  %124 = and i16 %123, 3
  %125 = icmp ne i16 %124, 1
  %126 = icmp sgt i16 %122, -1
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %128, label %143

128:                                              ; preds = %120
  %129 = icmp eq i16 %124, 3
  br i1 %129, label %130, label %169

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 13, i32 0, i32 4
  %132 = load i16, ptr %131, align 4
  %133 = zext i16 %132 to i32
  %134 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 17
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 16
  %137 = load ptr, ptr %136, align 8
  %138 = ptrtoint ptr %135 to i32
  %139 = ptrtoint ptr %137 to i32
  %140 = sub i32 %133, %138
  %141 = add i32 %140, %139
  %142 = icmp sgt i32 %141, -1
  br i1 %142, label %143, label %169

143:                                              ; preds = %130, %120, %117, %94, %84
  %144 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  %147 = load i32, ptr %8, align 4
  %148 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  br i1 %146, label %149, label %167

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 17
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %151, i32 %147
  %153 = icmp slt i32 %67, 0
  %154 = load i1, ptr @check_copy_size.__already_done, align 1
  %155 = xor i1 %154, true
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %157, label %158, !prof !9

157:                                              ; preds = %149
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %158

158:                                              ; preds = %157, %149
  br i1 %153, label %161, label %159, !prof !9

159:                                              ; preds = %158
  %160 = call i32 @_copy_to_iter(ptr noundef %152, i32 noundef %67, ptr noundef %148) #12
  br label %161

161:                                              ; preds = %159, %158
  %162 = phi i32 [ %160, %159 ], [ 0, %158 ]
  %163 = icmp eq i32 %162, %67
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @iov_iter_revert(ptr noundef %148, i32 noundef %162) #12
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi i32 [ -14, %164 ], [ 0, %161 ]
  store i32 %166, ptr %9, align 4
  br label %172

167:                                              ; preds = %143
  %168 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %51, i32 noundef %147, ptr noundef %148, i32 noundef %67) #12
  store i32 %168, ptr %9, align 4
  br label %172

169:                                              ; preds = %130, %128
  %170 = call i32 @skb_copy_and_csum_datagram_msg(ptr noundef nonnull %51, i32 noundef %58, ptr noundef %1) #12
  store i32 %170, ptr %9, align 4
  %171 = icmp eq i32 %170, -22
  br i1 %171, label %315, label %172

172:                                              ; preds = %169, %167, %165
  %173 = phi i32 [ %166, %165 ], [ %168, %167 ], [ %170, %169 ]
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %191, label %175, !prof !19

175:                                              ; preds = %172
  br i1 %44, label %189, label %176

176:                                              ; preds = %175
  %177 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %177) #12, !srcloc !20
  %178 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %177, ptr %177, i32 1, ptr elementtype(i32) %177) #12, !srcloc !21
  %179 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !14
  %180 = getelementptr [10 x i32], ptr %76, i32 0, i32 3
  %181 = ptrtoint ptr %180 to i32
  %182 = call i32 @llvm.read_register.i32(metadata !0) #12
  %183 = inttoptr i32 %182 to ptr
  %184 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %183) #11, !srcloc !13
  %185 = add i32 %184, %181
  %186 = inttoptr i32 %185 to ptr
  %187 = load i32, ptr %186, align 4
  %188 = add i32 %187, 1
  store i32 %188, ptr %186, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %179) #12, !srcloc !17
  br label %189

189:                                              ; preds = %176, %175
  call void @kfree_skb_reason(ptr noundef nonnull %51, i32 noundef 0) #12
  %190 = load i32, ptr %9, align 4
  br label %343

191:                                              ; preds = %172
  br i1 %44, label %203, label %192

192:                                              ; preds = %191
  %193 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !14
  %194 = getelementptr [10 x i32], ptr %76, i32 0, i32 1
  %195 = ptrtoint ptr %194 to i32
  %196 = call i32 @llvm.read_register.i32(metadata !0) #12
  %197 = inttoptr i32 %196 to ptr
  %198 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %197) #11, !srcloc !13
  %199 = add i32 %198, %195
  %200 = inttoptr i32 %199 to ptr
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, 1
  store i32 %202, ptr %200, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %193) #12, !srcloc !17
  br label %203

203:                                              ; preds = %192, %191
  %204 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %205 = load i32, ptr %204, align 8
  %206 = and i32 %205, 133120
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %210 = load i16, ptr %209, align 8
  %211 = and i16 %210, 80
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208, %203
  call void @__sock_recv_ts_and_drops(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %51) #12
  br label %226

214:                                              ; preds = %208
  %215 = load volatile i32, ptr %204, align 4
  %216 = and i32 %215, 128
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218, !prof !19

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 2
  %220 = load i64, ptr %219, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %220) #12
  br label %226

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  %223 = load i64, ptr %222, align 8
  %224 = icmp eq i64 %223, -1000000000
  br i1 %224, label %225, label %226, !prof !9

225:                                              ; preds = %221
  call fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef 0) #12
  br label %226

226:                                              ; preds = %225, %221, %218, %213
  %227 = load ptr, ptr %1, align 8
  %228 = icmp eq ptr %227, null
  br i1 %228, label %274, label %229

229:                                              ; preds = %226
  store i16 10, ptr %227, align 4
  %230 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 16
  %231 = load ptr, ptr %230, align 8
  %232 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 13, i32 0, i32 17
  %233 = load i16, ptr %232, align 2
  %234 = zext i16 %233 to i32
  %235 = getelementptr i8, ptr %231, i32 %234
  %236 = load i16, ptr %235, align 2
  %237 = getelementptr inbounds %struct.sockaddr_in6, ptr %227, i32 0, i32 1
  store i16 %236, ptr %237, align 2
  %238 = getelementptr inbounds %struct.sockaddr_in6, ptr %227, i32 0, i32 2
  store i32 0, ptr %238, align 4
  br i1 %70, label %239, label %251

239:                                              ; preds = %229
  %240 = load ptr, ptr %230, align 8
  %241 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 13, i32 0, i32 18
  %242 = load i16, ptr %241, align 4
  %243 = zext i16 %242 to i32
  %244 = getelementptr i8, ptr %240, i32 %243
  %245 = getelementptr inbounds %struct.iphdr, ptr %244, i32 0, i32 8
  %246 = load i32, ptr %245, align 4
  %247 = getelementptr inbounds %struct.sockaddr_in6, ptr %227, i32 0, i32 3
  store i32 0, ptr %247, align 4
  %248 = getelementptr %struct.sockaddr_in6, ptr %227, i32 0, i32 3, i32 0, i32 0, i32 1
  store i32 0, ptr %248, align 4
  %249 = getelementptr %struct.sockaddr_in6, ptr %227, i32 0, i32 3, i32 0, i32 0, i32 2
  store i32 -65536, ptr %249, align 4
  %250 = getelementptr %struct.sockaddr_in6, ptr %227, i32 0, i32 3, i32 0, i32 0, i32 3
  store i32 %246, ptr %250, align 4
  br label %271

251:                                              ; preds = %229
  %252 = getelementptr inbounds %struct.sockaddr_in6, ptr %227, i32 0, i32 3
  %253 = load ptr, ptr %230, align 8
  %254 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 13, i32 0, i32 18
  %255 = load i16, ptr %254, align 4
  %256 = zext i16 %255 to i32
  %257 = getelementptr i8, ptr %253, i32 %256
  %258 = getelementptr inbounds %struct.ipv6hdr, ptr %257, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %252, ptr noundef align 4 dereferenceable(16) %258, i32 16, i1 false)
  %259 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 3
  %260 = load i32, ptr %259, align 8
  %261 = call i32 @__ipv6_addr_type(ptr noundef %252) #12
  %262 = and i32 %261, 32
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %251
  %265 = and i32 %261, 2
  %266 = icmp ne i32 %265, 0
  %267 = and i32 %261, 48
  %268 = icmp ne i32 %267, 0
  %269 = and i1 %266, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %264, %251
  br label %271

271:                                              ; preds = %270, %264, %239
  %272 = phi i32 [ 0, %239 ], [ %260, %270 ], [ 0, %264 ]
  %273 = getelementptr inbounds %struct.sockaddr_in6, ptr %227, i32 0, i32 4
  store i32 %272, ptr %273, align 4
  store i32 28, ptr %5, align 4
  br label %274

274:                                              ; preds = %271, %226
  %275 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %276 = load i8, ptr %275, align 1
  %277 = and i8 %276, 8
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %292, label %279

279:                                              ; preds = %274
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %280 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 15
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.skb_shared_info, ptr %281, i32 0, i32 8
  %283 = load i32, ptr %282, align 8
  %284 = and i32 %283, 131072
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.skb_shared_info, ptr %281, i32 0, i32 4
  %288 = load i16, ptr %287, align 4
  %289 = zext i16 %288 to i32
  store i32 %289, ptr %7, align 4
  %290 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 17, i32 noundef 104, i32 noundef 4, ptr noundef nonnull %7) #12
  br label %291

291:                                              ; preds = %286, %279
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %292

292:                                              ; preds = %291, %274
  %293 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 8
  %294 = load i16, ptr %293, align 4
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %292
  call void @ip6_datagram_recv_common_ctl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %51) #12
  br label %297

297:                                              ; preds = %296, %292
  br i1 %70, label %298, label %304

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %300 = load i16, ptr %299, align 2
  %301 = icmp eq i16 %300, 0
  br i1 %301, label %308, label %302

302:                                              ; preds = %298
  %303 = load i32, ptr %8, align 4
  call void @ip_cmsg_recv_offset(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %51, i32 noundef 8, i32 noundef %303) #12
  br label %308

304:                                              ; preds = %297
  %305 = load i16, ptr %293, align 4
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %304
  call void @ip6_datagram_recv_specific_ctl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %51) #12
  br label %308

308:                                              ; preds = %307, %304, %302, %298
  %309 = and i32 %4, 32
  %310 = icmp eq i32 %309, 0
  %311 = select i1 %310, i32 %67, i32 %57
  store i32 %311, ptr %9, align 4
  %312 = sub i32 0, %311
  %313 = select i1 %44, i32 %312, i32 %311
  call void @skb_consume_udp(ptr noundef %0, ptr noundef nonnull %51, i32 noundef %313) #12
  %314 = load i32, ptr %9, align 4
  br label %343

315:                                              ; preds = %169, %117
  %316 = call i32 @__sk_queue_drop_skb(ptr noundef %0, ptr noundef %45, ptr noundef nonnull %51, i32 noundef %4, ptr noundef nonnull @udp_skb_destructor) #12
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %339

318:                                              ; preds = %315
  %319 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !14
  %320 = getelementptr [10 x i32], ptr %76, i32 0, i32 7
  %321 = ptrtoint ptr %320 to i32
  %322 = call i32 @llvm.read_register.i32(metadata !0) #12
  %323 = inttoptr i32 %322 to ptr
  %324 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %323) #11, !srcloc !13
  %325 = add i32 %324, %321
  %326 = inttoptr i32 %325 to ptr
  %327 = load i32, ptr %326, align 4
  %328 = add i32 %327, 1
  store i32 %328, ptr %326, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %319) #12, !srcloc !17
  %329 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !14
  %330 = getelementptr [10 x i32], ptr %76, i32 0, i32 3
  %331 = ptrtoint ptr %330 to i32
  %332 = call i32 @llvm.read_register.i32(metadata !0) #12
  %333 = inttoptr i32 %332 to ptr
  %334 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %333) #11, !srcloc !13
  %335 = add i32 %334, %331
  %336 = inttoptr i32 %335 to ptr
  %337 = load i32, ptr %336, align 4
  %338 = add i32 %337, 1
  store i32 %338, ptr %336, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %329) #12, !srcloc !17
  br label %339

339:                                              ; preds = %318, %315
  call void @kfree_skb_reason(ptr noundef nonnull %51, i32 noundef 0) #12
  %340 = call i32 @__cond_resched() #12
  %341 = load i32, ptr %43, align 4
  %342 = and i32 %341, -33
  store i32 %342, ptr %43, align 4
  br label %46

343:                                              ; preds = %308, %189, %53, %38, %27
  %344 = phi i32 [ %28, %27 ], [ %39, %38 ], [ %190, %189 ], [ %314, %308 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret i32 %344
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_rxpmtu(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_recv_udp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_datagram_msg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_common_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_cmsg_recv_offset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_specific_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_consume_udp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_queue_drop_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_skb_destructor(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udpv6_encap_enable() #0 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !18
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !9

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @udpv6_encap_needed_key) #12
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @udpv6_encap_needed_key) #12, !srcloc !20
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @udpv6_encap_needed_key, ptr nonnull @udpv6_encap_needed_key, i32 1, ptr nonnull elementtype(i32) @udpv6_encap_needed_key) #12, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__udp6_lib_err(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ipv6hdr, ptr %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.inet6_skb_parm, ptr %1, i32 0, i32 7
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 256
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.inet6_skb_parm, ptr %1, i32 0, i32 10
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %10, i32 %19
  %21 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %20, i32 0, i32 7
  br label %22

22:                                               ; preds = %16, %7
  %23 = phi ptr [ %21, %16 ], [ null, %7 ]
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.ipv6hdr, ptr %10, i32 0, i32 6
  %26 = select i1 %24, ptr %25, ptr %23
  %27 = getelementptr i8, ptr %10, i32 %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !12
  %28 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %29 = getelementptr inbounds %struct.udphdr, ptr %27, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = load i16, ptr %27, align 2
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = tail call ptr @__udp6_lib_lookup(ptr noundef nonnull @init_net, ptr noundef %26, i16 noundef zeroext %30, ptr noundef %11, i16 noundef zeroext %31, i32 noundef %33, i32 noundef 0, ptr noundef %6, ptr noundef null)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.udp_sock, ptr %34, i32 0, i32 3
  %38 = load i8, ptr %37, align 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %71, label %40

40:                                               ; preds = %36, %22
  %41 = load volatile i32, ptr @udpv6_encap_needed_key, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %48, !prof !9

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @__udp6_lib_err_encap(ptr noundef %10, i32 noundef %4, ptr noundef %27, ptr noundef %6, ptr noundef %34, ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %5)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %151, label %46

46:                                               ; preds = %43
  %47 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %71

48:                                               ; preds = %46, %40
  %49 = phi ptr [ %44, %46 ], [ inttoptr (i32 -2 to ptr), %40 ]
  %50 = load ptr, ptr %28, align 8
  %51 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 69
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54, !prof !9

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.inet6_dev, ptr %52, i32 0, i32 33, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr [6 x %struct.atomic_t], ptr %56, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #12, !srcloc !20
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #12, !srcloc !21
  br label %59

59:                                               ; preds = %54, %48
  %60 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %61 = getelementptr [6 x i32], ptr %60, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %64 = inttoptr i32 %63 to ptr
  %65 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %64) #11, !srcloc !13
  %66 = add i32 %65, %62
  %67 = inttoptr i32 %66 to ptr
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  %70 = ptrtoint ptr %49 to i32
  br label %151

71:                                               ; preds = %46, %36
  %72 = phi ptr [ %34, %36 ], [ %44, %46 ]
  %73 = phi i1 [ false, %36 ], [ true, %46 ]
  %74 = call i32 @icmpv6_err_convert(i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull %8) #12
  %75 = getelementptr inbounds %struct.sock_common, ptr %72, i32 0, i32 4
  %76 = load volatile i8, ptr %75, align 2
  %77 = zext i8 %76 to i32
  %78 = shl nuw i32 1, %77
  %79 = and i32 %78, -4161
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.inet_sock, ptr %72, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  br label %84

84:                                               ; preds = %81, %71
  %85 = phi ptr [ %83, %81 ], [ null, %71 ]
  switch i8 %2, label %131 [
    i8 2, label %86
    i8 -119, label %122
  ]

86:                                               ; preds = %84
  %87 = load volatile i8, ptr %75, align 2
  %88 = zext i8 %87 to i32
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, -4161
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.inet_sock, ptr %72, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8
  br label %95

95:                                               ; preds = %92, %86
  %96 = phi ptr [ %94, %92 ], [ null, %86 ]
  %97 = getelementptr inbounds %struct.ipv6_pinfo, ptr %96, i32 0, i32 9
  %98 = load i16, ptr %97, align 2
  %99 = and i16 %98, 56
  %100 = icmp eq i16 %99, 32
  br i1 %100, label %151, label %101

101:                                              ; preds = %95
  %102 = load volatile i8, ptr %75, align 2
  %103 = zext i8 %102 to i32
  %104 = shl nuw i32 1, %103
  %105 = and i32 %104, -4161
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.inet_sock, ptr %72, i32 0, i32 1
  %109 = load ptr, ptr %108, align 8
  br label %110

110:                                              ; preds = %107, %101
  %111 = phi ptr [ %109, %107 ], [ null, %101 ]
  %112 = getelementptr inbounds %struct.ipv6_pinfo, ptr %111, i32 0, i32 9
  %113 = load i16, ptr %112, align 2
  %114 = and i16 %113, 56
  %115 = icmp eq i16 %114, 40
  br i1 %115, label %151, label %116

116:                                              ; preds = %110
  call void @ip6_sk_update_pmtu(ptr noundef %0, ptr noundef nonnull %72, i32 noundef %5) #12
  %117 = getelementptr inbounds %struct.ipv6_pinfo, ptr %85, i32 0, i32 9
  %118 = load i16, ptr %117, align 2
  %119 = and i16 %118, 56
  %120 = icmp eq i16 %119, 0
  %121 = select i1 %120, i32 %74, i32 1
  br label %131

122:                                              ; preds = %84
  br i1 %73, label %123, label %130

123:                                              ; preds = %122
  %124 = load i32, ptr %32, align 8
  %125 = getelementptr inbounds %struct.sock, ptr %72, i32 0, i32 34
  %126 = load i32, ptr %125, align 8
  %127 = getelementptr inbounds %struct.sock, ptr %72, i32 0, i32 55
  %128 = load i32, ptr %127, align 4
  %129 = insertvalue [1 x i32] undef, i32 %128, 0
  call void @ip6_redirect(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %124, i32 noundef %126, [1 x i32] %129) #12
  br label %151

130:                                              ; preds = %122
  call void @ip6_sk_redirect(ptr noundef %0, ptr noundef nonnull %72) #12
  br label %151

131:                                              ; preds = %116, %84
  %132 = phi i32 [ %121, %116 ], [ %74, %84 ]
  br i1 %73, label %151, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.ipv6_pinfo, ptr %85, i32 0, i32 9
  %135 = load i16, ptr %134, align 2
  %136 = and i16 %135, 1
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = icmp eq i32 %132, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %138
  %141 = load volatile i8, ptr %75, align 2
  %142 = icmp eq i8 %141, 1
  br i1 %142, label %148, label %151

143:                                              ; preds = %133
  %144 = load i32, ptr %8, align 4
  %145 = load i16, ptr %29, align 2
  %146 = call i32 @llvm.bswap.i32(i32 %5)
  %147 = getelementptr %struct.udphdr, ptr %27, i32 1
  call void @ipv6_icmp_error(ptr noundef nonnull %72, ptr noundef %0, i32 noundef %144, i16 noundef zeroext %145, i32 noundef %146, ptr noundef %147) #12
  br label %148

148:                                              ; preds = %143, %140
  %149 = load i32, ptr %8, align 4
  %150 = getelementptr inbounds %struct.sock, ptr %72, i32 0, i32 51
  store i32 %149, ptr %150, align 4
  call void @sk_error_report(ptr noundef nonnull %72) #12
  br label %151

151:                                              ; preds = %148, %140, %138, %131, %130, %123, %110, %95, %59, %43
  %152 = phi i32 [ %70, %59 ], [ 0, %43 ], [ 0, %138 ], [ 0, %140 ], [ 0, %131 ], [ 0, %123 ], [ 0, %130 ], [ 0, %110 ], [ 0, %148 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__udp6_lib_err_encap(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 18
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 17
  %19 = load i16, ptr %18, align 2
  %20 = ptrtoint ptr %12 to i32
  %21 = sub i32 %17, %20
  %22 = trunc i32 %21 to i16
  store i16 %22, ptr %13, align 4
  %23 = trunc i32 %1 to i16
  %24 = add i16 %22, %23
  store i16 %24, ptr %18, align 2
  %25 = icmp eq ptr %4, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.udp_sock, ptr %4, i32 0, i32 12
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %131, label %30

30:                                               ; preds = %26
  %31 = tail call i32 %28(ptr noundef nonnull %4, ptr noundef %5) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %131, label %50

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.ipv6hdr, ptr %0, i32 0, i32 6
  %35 = load i16, ptr %2, align 2
  %36 = getelementptr inbounds %struct.ipv6hdr, ptr %0, i32 0, i32 5
  %37 = getelementptr inbounds %struct.udphdr, ptr %2, i32 0, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %40 = load i32, ptr %39, align 8
  %41 = tail call ptr @__udp6_lib_lookup(ptr noundef nonnull @init_net, ptr noundef %34, i16 noundef zeroext %35, ptr noundef %36, i16 noundef zeroext %38, i32 noundef %40, i32 noundef 0, ptr noundef %3, ptr noundef %5)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.udp_sock, ptr %41, i32 0, i32 12
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call i32 %45(ptr noundef nonnull %41, ptr noundef %5) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %131, label %50

50:                                               ; preds = %47, %43, %33, %30
  %51 = load volatile ptr, ptr @ip6tun_encaps, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ip6_tnl_encap_ops, ptr %51, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = tail call i32 %55(ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %1, i32 noundef %9) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %131, label %60

60:                                               ; preds = %57, %53, %50
  %61 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ip6tun_encaps, i32 0, i32 1), align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ip6_tnl_encap_ops, ptr %61, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = tail call i32 %65(ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %1, i32 noundef %9) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %131, label %70

70:                                               ; preds = %67, %63, %60
  %71 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ip6tun_encaps, i32 0, i32 2), align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.ip6_tnl_encap_ops, ptr %71, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = tail call i32 %75(ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %1, i32 noundef %9) #12
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %131, label %80

80:                                               ; preds = %77, %73, %70
  %81 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ip6tun_encaps, i32 0, i32 3), align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.ip6_tnl_encap_ops, ptr %81, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = tail call i32 %85(ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %1, i32 noundef %9) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %131, label %90

90:                                               ; preds = %87, %83, %80
  %91 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ip6tun_encaps, i32 0, i32 4), align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.ip6_tnl_encap_ops, ptr %91, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = tail call i32 %95(ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %1, i32 noundef %9) #12
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %131, label %100

100:                                              ; preds = %97, %93, %90
  %101 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ip6tun_encaps, i32 0, i32 5), align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.ip6_tnl_encap_ops, ptr %101, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = tail call i32 %105(ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %1, i32 noundef %9) #12
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %107, %103, %100
  %111 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ip6tun_encaps, i32 0, i32 6), align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.ip6_tnl_encap_ops, ptr %111, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = tail call i32 %115(ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %1, i32 noundef %9) #12
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %117, %113, %110
  %121 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ip6tun_encaps, i32 0, i32 7), align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.ip6_tnl_encap_ops, ptr %121, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = tail call i32 %125(ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %1, i32 noundef %9) #12
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127, %123, %120
  br label %131

131:                                              ; preds = %130, %127, %117, %107, %97, %87, %77, %67, %57, %47, %30, %26
  %132 = phi ptr [ %4, %26 ], [ %41, %47 ], [ %4, %30 ], [ null, %57 ], [ null, %67 ], [ null, %77 ], [ null, %87 ], [ null, %97 ], [ null, %107 ], [ null, %117 ], [ null, %127 ], [ inttoptr (i32 -2 to ptr), %130 ]
  %133 = zext i16 %19 to i32
  %134 = getelementptr i8, ptr %12, i32 %133
  %135 = ptrtoint ptr %134 to i32
  %136 = sub i32 %135, %17
  %137 = zext i16 %14 to i32
  %138 = getelementptr i8, ptr %12, i32 %137
  %139 = ptrtoint ptr %138 to i32
  %140 = sub i32 %139, %17
  %141 = load ptr, ptr %15, align 4
  %142 = load ptr, ptr %11, align 8
  %143 = ptrtoint ptr %141 to i32
  %144 = ptrtoint ptr %142 to i32
  %145 = sub i32 %143, %144
  %146 = trunc i32 %145 to i16
  %147 = trunc i32 %136 to i16
  %148 = add i16 %146, %147
  store i16 %148, ptr %18, align 2
  %149 = trunc i32 %140 to i16
  %150 = add i16 %146, %149
  store i16 %150, ptr %13, align 4
  ret ptr %132
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_err_convert(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_update_pmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_redirect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__udp6_lib_rcv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %10, label %18, !prof !9

10:                                               ; preds = %3
  %11 = icmp ult i32 %5, 8
  br i1 %11, label %228, label %12, !prof !9

12:                                               ; preds = %10
  %13 = sub nuw nsw i32 8, %8
  %14 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %13) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %228, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %4, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ %17, %16 ], [ %5, %3 ]
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %21, i32 %24
  %26 = getelementptr inbounds %struct.ipv6hdr, ptr %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.ipv6hdr, ptr %25, i32 0, i32 6
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %21, i32 %30
  %32 = getelementptr inbounds %struct.udphdr, ptr %31, i32 0, i32 2
  %33 = load i16, ptr %32, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %35 = zext i16 %34 to i32
  %36 = icmp ult i32 %19, %35
  br i1 %36, label %228, label %37

37:                                               ; preds = %18
  %38 = icmp eq i32 %2, 17
  br i1 %38, label %39, label %58

39:                                               ; preds = %37
  %40 = icmp eq i16 %33, 0
  %41 = select i1 %40, i32 %19, i32 %35
  %42 = icmp ult i32 %41, 8
  br i1 %42, label %238, label %43

43:                                               ; preds = %39
  %44 = icmp ult i32 %41, %19
  br i1 %44, label %45, label %58

45:                                               ; preds = %43
  %46 = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %0, i32 noundef %41) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %238

48:                                               ; preds = %45
  %49 = load ptr, ptr %20, align 8
  %50 = load i16, ptr %22, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %49, i32 %51
  %53 = getelementptr inbounds %struct.ipv6hdr, ptr %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.ipv6hdr, ptr %52, i32 0, i32 6
  %55 = load i16, ptr %28, align 2
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %49, i32 %56
  br label %58

58:                                               ; preds = %48, %43, %37
  %59 = phi ptr [ %57, %48 ], [ %31, %43 ], [ %31, %37 ]
  %60 = phi ptr [ %54, %48 ], [ %27, %43 ], [ %27, %37 ]
  %61 = phi ptr [ %53, %48 ], [ %26, %43 ], [ %26, %37 ]
  %62 = tail call i32 @udp6_csum_init(ptr noundef %0, ptr noundef %59, i32 noundef %2) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %204

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %144, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, @sock_pfree
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.sock_common, ptr %66, i32 0, i32 4
  %74 = load volatile i8, ptr %73, align 2
  %75 = zext i8 %74 to i32
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, -4161
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.sock_common, ptr %66, i32 0, i32 13
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 8388608
  %83 = icmp eq i32 %82, 0
  br label %84

84:                                               ; preds = %79, %72
  %85 = phi i1 [ true, %72 ], [ %83, %79 ]
  %86 = zext i1 %85 to i8
  br label %87

87:                                               ; preds = %84, %68
  %88 = phi i8 [ %86, %84 ], [ 1, %68 ]
  store ptr null, ptr %69, align 4
  store ptr null, ptr %65, align 4
  %89 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, -2
  %92 = inttoptr i32 %91 to ptr
  %93 = getelementptr inbounds %struct.sock, ptr %66, i32 0, i32 1
  %94 = load volatile ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, %92
  br i1 %95, label %97, label %96, !prof !19

96:                                               ; preds = %87
  tail call fastcc void @udp6_sk_rx_dst_set(ptr noundef nonnull %66, ptr noundef %92)
  br label %97

97:                                               ; preds = %96, %87
  %98 = getelementptr inbounds %struct.udphdr, ptr %59, i32 0, i32 3
  %99 = load i16, ptr %98, align 2
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.udp_sock, ptr %66, i32 0, i32 4
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %103, 2
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %139

106:                                              ; preds = %101
  %107 = icmp eq i8 %88, 0
  br i1 %107, label %204, label %108

108:                                              ; preds = %106
  tail call fastcc void @sock_put(ptr noundef nonnull %66)
  br label %204

109:                                              ; preds = %97
  %110 = getelementptr inbounds %struct.inet_sock, ptr %66, i32 0, i32 14
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %139, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.sock, ptr %66, i32 0, i32 46
  %115 = load i16, ptr %114, align 4
  %116 = icmp eq i16 %115, 136
  br i1 %116, label %139, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %119 = load i16, ptr %118, align 8
  %120 = and i16 %119, -32672
  %121 = icmp eq i16 %120, -32768
  br i1 %121, label %122, label %139

122:                                              ; preds = %117
  %123 = load ptr, ptr %20, align 8
  %124 = load i16, ptr %22, align 4
  %125 = zext i16 %124 to i32
  %126 = getelementptr i8, ptr %123, i32 %125
  %127 = getelementptr inbounds %struct.ipv6hdr, ptr %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.ipv6hdr, ptr %126, i32 0, i32 6
  %129 = load i32, ptr %4, align 8
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #12
  %131 = tail call i32 @__csum_ipv6_magic(ptr noundef %127, ptr noundef %128, i32 noundef %130, i32 noundef 285212672, i32 noundef 0) #12
  %132 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %131) #13, !srcloc !22
  %133 = xor i32 %132, -1
  %134 = lshr i32 %133, 16
  %135 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %134, ptr %135, align 4
  %136 = load i16, ptr %118, align 8
  %137 = and i16 %136, -97
  %138 = or i16 %137, 64
  store i16 %138, ptr %118, align 8
  br label %139

139:                                              ; preds = %122, %117, %113, %109, %101
  %140 = tail call fastcc i32 @udpv6_queue_rcv_skb(ptr noundef nonnull %66, ptr noundef %0) #12
  %141 = tail call i32 @llvm.smax.i32(i32 %140, i32 0) #12
  %142 = icmp eq i8 %88, 0
  br i1 %142, label %251, label %143

143:                                              ; preds = %139
  tail call fastcc void @sock_put(ptr noundef nonnull %66)
  br label %251

144:                                              ; preds = %64
  %145 = load i32, ptr %60, align 4
  %146 = and i32 %145, 255
  %147 = icmp eq i32 %146, 255
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  tail call fastcc void @__udp6_lib_mcast_deliver(ptr noundef %0, ptr noundef %61, ptr noundef %60, ptr noundef %1, i32 noundef %2)
  br label %251

149:                                              ; preds = %144
  %150 = load i16, ptr %59, align 2
  %151 = getelementptr inbounds %struct.udphdr, ptr %59, i32 0, i32 1
  %152 = load i16, ptr %151, align 2
  %153 = load ptr, ptr %20, align 8
  %154 = load i16, ptr %22, align 4
  %155 = zext i16 %154 to i32
  %156 = getelementptr i8, ptr %153, i32 %155
  %157 = getelementptr inbounds %struct.ipv6hdr, ptr %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.ipv6hdr, ptr %156, i32 0, i32 6
  %159 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %160 = load i32, ptr %159, align 8
  %161 = tail call ptr @__udp6_lib_lookup(ptr noundef nonnull @init_net, ptr noundef %157, i16 noundef zeroext %150, ptr noundef %158, i16 noundef zeroext %152, i32 noundef %160, i32 noundef 0, ptr noundef %1, ptr noundef %0) #12
  %162 = icmp eq ptr %161, null
  %163 = getelementptr inbounds %struct.udphdr, ptr %59, i32 0, i32 3
  %164 = load i16, ptr %163, align 2
  %165 = icmp eq i16 %164, 0
  br i1 %162, label %174, label %166

166:                                              ; preds = %149
  br i1 %165, label %167, label %172

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.udp_sock, ptr %161, i32 0, i32 4
  %169 = load i8, ptr %168, align 1
  %170 = and i8 %169, 2
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %204, label %172

172:                                              ; preds = %167, %166
  %173 = tail call fastcc i32 @udp6_unicast_rcv_skb(ptr noundef nonnull %161, ptr noundef %0, ptr noundef %59)
  br label %251

174:                                              ; preds = %149
  br i1 %165, label %204, label %175

175:                                              ; preds = %174
  %176 = tail call fastcc i32 @xfrm6_policy_check(ptr noundef null, ptr noundef %0)
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %228, label %178

178:                                              ; preds = %175
  %179 = tail call fastcc i32 @udp_lib_checksum_complete(ptr noundef %0)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %204

181:                                              ; preds = %178
  %182 = icmp eq i32 %2, 136
  br i1 %182, label %183, label %191

183:                                              ; preds = %181
  %184 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %185 = getelementptr [10 x i32], ptr %184, i32 0, i32 2
  %186 = ptrtoint ptr %185 to i32
  %187 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %188 = inttoptr i32 %187 to ptr
  %189 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %188) #11, !srcloc !13
  %190 = add i32 %189, %186
  br label %199

191:                                              ; preds = %181
  %192 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %193 = getelementptr [10 x i32], ptr %192, i32 0, i32 2
  %194 = ptrtoint ptr %193 to i32
  %195 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %196 = inttoptr i32 %195 to ptr
  %197 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %196) #11, !srcloc !13
  %198 = add i32 %197, %194
  br label %199

199:                                              ; preds = %191, %183
  %200 = phi i32 [ %198, %191 ], [ %190, %183 ]
  %201 = inttoptr i32 %200 to ptr
  %202 = load i32, ptr %201, align 4
  %203 = add i32 %202, 1
  store i32 %203, ptr %201, align 4
  tail call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 4, i32 noundef 0, ptr noundef null, ptr noundef %159) #12
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %251

204:                                              ; preds = %178, %174, %167, %108, %106, %58
  %205 = icmp eq i32 %2, 136
  br i1 %205, label %206, label %217

206:                                              ; preds = %204
  %207 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %208 = getelementptr [10 x i32], ptr %207, i32 0, i32 7
  %209 = ptrtoint ptr %208 to i32
  %210 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %211 = inttoptr i32 %210 to ptr
  %212 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %211) #11, !srcloc !13
  %213 = add i32 %212, %209
  %214 = inttoptr i32 %213 to ptr
  %215 = load i32, ptr %214, align 4
  %216 = add i32 %215, 1
  store i32 %216, ptr %214, align 4
  br label %230

217:                                              ; preds = %204
  %218 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %219 = getelementptr [10 x i32], ptr %218, i32 0, i32 7
  %220 = ptrtoint ptr %219 to i32
  %221 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %222 = inttoptr i32 %221 to ptr
  %223 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %222) #11, !srcloc !13
  %224 = add i32 %223, %220
  %225 = inttoptr i32 %224 to ptr
  %226 = load i32, ptr %225, align 4
  %227 = add i32 %226, 1
  store i32 %227, ptr %225, align 4
  br label %238

228:                                              ; preds = %175, %18, %12, %10
  %229 = icmp eq i32 %2, 136
  br i1 %229, label %230, label %238

230:                                              ; preds = %228, %206
  %231 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %232 = getelementptr [10 x i32], ptr %231, i32 0, i32 3
  %233 = ptrtoint ptr %232 to i32
  %234 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %235 = inttoptr i32 %234 to ptr
  %236 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %235) #11, !srcloc !13
  %237 = add i32 %236, %233
  br label %246

238:                                              ; preds = %228, %217, %45, %39
  %239 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %240 = getelementptr [10 x i32], ptr %239, i32 0, i32 3
  %241 = ptrtoint ptr %240 to i32
  %242 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %243 = inttoptr i32 %242 to ptr
  %244 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %243) #11, !srcloc !13
  %245 = add i32 %244, %241
  br label %246

246:                                              ; preds = %238, %230
  %247 = phi i32 [ %245, %238 ], [ %237, %230 ]
  %248 = inttoptr i32 %247 to ptr
  %249 = load i32, ptr %248, align 4
  %250 = add i32 %249, 1
  store i32 %250, ptr %248, align 4
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %251

251:                                              ; preds = %246, %199, %172, %148, %143, %139
  %252 = phi i32 [ 0, %246 ], [ 0, %148 ], [ %173, %172 ], [ 0, %199 ], [ %141, %143 ], [ %141, %139 ]
  ret i32 %252
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp6_csum_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udp6_sk_rx_dst_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i1 @udp_sk_rx_dst_set(ptr noundef %0, ptr noundef %1) #12
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %9 = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.fib6_info, ptr %10, i32 0, i32 2
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fib6_node, ptr %14, i32 0, i32 6
  %18 = load volatile i32, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  br label %19

19:                                               ; preds = %16, %12, %8
  %20 = phi i32 [ 0, %8 ], [ 0, %12 ], [ %18, %16 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %21

21:                                               ; preds = %19, %4
  %22 = phi i32 [ %20, %19 ], [ %6, %4 ]
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 3
  store i32 %22, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !20
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !25
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !19

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #12
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  tail call void @sk_free(ptr noundef %0) #12
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udp6_unicast_rcv_skb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 14
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.udphdr, ptr %2, i32 0, i32 3
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 136
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, -32672
  %19 = icmp eq i16 %18, -32768
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = getelementptr inbounds %struct.ipv6hdr, ptr %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.ipv6hdr, ptr %26, i32 0, i32 6
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  %32 = tail call i32 @__csum_ipv6_magic(ptr noundef %27, ptr noundef %28, i32 noundef %31, i32 noundef 285212672, i32 noundef 0) #12
  %33 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %32) #13, !srcloc !22
  %34 = xor i32 %33, -1
  %35 = lshr i32 %34, 16
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = load i16, ptr %16, align 8
  %38 = and i16 %37, -97
  %39 = or i16 %38, 64
  store i16 %39, ptr %16, align 8
  br label %40

40:                                               ; preds = %20, %15, %11, %7, %3
  %41 = tail call fastcc i32 @udpv6_queue_rcv_skb(ptr noundef %0, ptr noundef %1)
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0)
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__udp6_lib_mcast_deliver(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = zext i16 %14 to i32
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.udp_table, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %20 = add i32 %19, %15
  %21 = and i32 %20, %18
  %22 = getelementptr %struct.udp_hslot, ptr %16, i32 %21
  %23 = getelementptr %struct.udp_hslot, ptr %16, i32 %21, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 10
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  br i1 %25, label %28, label %40

28:                                               ; preds = %5
  %29 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef nonnull @init_net, ptr noundef nonnull @in6addr_any, i32 noundef %15)
  %30 = and i32 %29, %18
  %31 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef nonnull @init_net, ptr noundef %2, i32 noundef %15)
  %32 = and i32 %31, %18
  br label %33

33:                                               ; preds = %206, %28
  %34 = phi i32 [ %30, %28 ], [ %41, %206 ]
  %35 = phi i32 [ %32, %28 ], [ %41, %206 ]
  %36 = phi ptr [ null, %28 ], [ %207, %206 ]
  %37 = getelementptr inbounds %struct.udp_table, ptr %3, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr %struct.udp_hslot, ptr %38, i32 %35
  br label %40

40:                                               ; preds = %33, %5
  %41 = phi i32 [ %34, %33 ], [ 0, %5 ]
  %42 = phi i32 [ %35, %33 ], [ 0, %5 ]
  %43 = phi i32 [ -24, %33 ], [ -84, %5 ]
  %44 = phi ptr [ %39, %33 ], [ %22, %5 ]
  %45 = phi ptr [ %36, %33 ], [ null, %5 ]
  %46 = load volatile ptr, ptr %44, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %206, label %48

48:                                               ; preds = %40
  %49 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %50 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %51 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %52 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %53 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %54 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %55 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  br label %56

56:                                               ; preds = %202, %48
  %57 = phi ptr [ %46, %48 ], [ %204, %202 ]
  %58 = phi ptr [ %45, %48 ], [ %203, %202 ]
  %59 = getelementptr i8, ptr %57, i32 %43
  %60 = load i16, ptr %11, align 2
  %61 = getelementptr inbounds %struct.sock_common, ptr %59, i32 0, i32 1
  %62 = load i16, ptr %61, align 8
  %63 = icmp eq i16 %62, %14
  br i1 %63, label %64, label %202

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.sock_common, ptr %59, i32 0, i32 3
  %66 = load i16, ptr %65, align 8
  %67 = icmp eq i16 %66, 10
  br i1 %67, label %68, label %202

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.sock_common, ptr %59, i32 0, i32 2
  %70 = load i16, ptr %69, align 4
  %71 = icmp eq i16 %70, 0
  %72 = icmp eq i16 %70, %60
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %202

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.sock_common, ptr %59, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr %struct.sock_common, ptr %59, i32 0, i32 10, i32 0, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = or i32 %78, %76
  %80 = getelementptr %struct.sock_common, ptr %59, i32 0, i32 10, i32 0, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = or i32 %79, %81
  %83 = getelementptr %struct.sock_common, ptr %59, i32 0, i32 10, i32 0, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = or i32 %82, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %74
  %88 = load i32, ptr %1, align 4
  %89 = xor i32 %88, %76
  %90 = load i32, ptr %49, align 4
  %91 = xor i32 %90, %78
  %92 = or i32 %91, %89
  %93 = load i32, ptr %50, align 4
  %94 = xor i32 %93, %81
  %95 = or i32 %92, %94
  %96 = load i32, ptr %51, align 4
  %97 = xor i32 %96, %84
  %98 = or i32 %95, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %202

100:                                              ; preds = %87, %74
  %101 = getelementptr inbounds %struct.sock_common, ptr %59, i32 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  %104 = icmp eq i32 %102, %27
  %105 = or i1 %103, %104
  br i1 %105, label %106, label %202

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.sock_common, ptr %59, i32 0, i32 11
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr %struct.sock_common, ptr %59, i32 0, i32 11, i32 0, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = or i32 %110, %108
  %112 = getelementptr %struct.sock_common, ptr %59, i32 0, i32 11, i32 0, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = or i32 %111, %113
  %115 = getelementptr %struct.sock_common, ptr %59, i32 0, i32 11, i32 0, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %114, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %106
  %120 = load i32, ptr %2, align 4
  %121 = xor i32 %120, %108
  %122 = load i32, ptr %52, align 4
  %123 = xor i32 %122, %110
  %124 = or i32 %123, %121
  %125 = load i32, ptr %53, align 4
  %126 = xor i32 %125, %113
  %127 = or i32 %124, %126
  %128 = load i32, ptr %54, align 4
  %129 = xor i32 %128, %116
  %130 = or i32 %127, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %202

132:                                              ; preds = %119, %106
  %133 = tail call zeroext i1 @inet6_mc_check(ptr noundef %59, ptr noundef %2, ptr noundef %1) #12
  br i1 %133, label %134, label %202

134:                                              ; preds = %132
  %135 = load i16, ptr %55, align 2
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.udp_sock, ptr %59, i32 0, i32 4
  %139 = load i8, ptr %138, align 1
  %140 = and i8 %139, 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %202, label %142

142:                                              ; preds = %137, %134
  %143 = icmp eq ptr %58, null
  br i1 %143, label %202, label %144

144:                                              ; preds = %142
  %145 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #12
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %198, !prof !9

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.sock, ptr %59, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #12, !srcloc !20
  %149 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 1, ptr elementtype(i32) %148) #12, !srcloc !21
  %150 = getelementptr inbounds %struct.sock, ptr %59, i32 0, i32 46
  %151 = load i16, ptr %150, align 4
  %152 = icmp eq i16 %151, 136
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %155 = getelementptr [10 x i32], ptr %154, i32 0, i32 5
  %156 = ptrtoint ptr %155 to i32
  %157 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %158 = inttoptr i32 %157 to ptr
  %159 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %158) #11, !srcloc !13
  %160 = add i32 %159, %156
  br label %169

161:                                              ; preds = %147
  %162 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %163 = getelementptr [10 x i32], ptr %162, i32 0, i32 5
  %164 = ptrtoint ptr %163 to i32
  %165 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %166 = inttoptr i32 %165 to ptr
  %167 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %166) #11, !srcloc !13
  %168 = add i32 %167, %164
  br label %169

169:                                              ; preds = %161, %153
  %170 = phi i32 [ %160, %153 ], [ %168, %161 ]
  %171 = inttoptr i32 %170 to ptr
  %172 = load i32, ptr %171, align 4
  %173 = add i32 %172, 1
  store i32 %173, ptr %171, align 4
  %174 = load i16, ptr %150, align 4
  %175 = icmp eq i16 %174, 136
  br i1 %175, label %176, label %187

176:                                              ; preds = %169
  %177 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %178 = getelementptr [10 x i32], ptr %177, i32 0, i32 3
  %179 = ptrtoint ptr %178 to i32
  %180 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %181 = inttoptr i32 %180 to ptr
  %182 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %181) #11, !srcloc !13
  %183 = add i32 %182, %179
  %184 = inttoptr i32 %183 to ptr
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, 1
  store i32 %186, ptr %184, align 4
  br label %202

187:                                              ; preds = %169
  %188 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %189 = getelementptr [10 x i32], ptr %188, i32 0, i32 3
  %190 = ptrtoint ptr %189 to i32
  %191 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %192 = inttoptr i32 %191 to ptr
  %193 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %192) #11, !srcloc !13
  %194 = add i32 %193, %190
  %195 = inttoptr i32 %194 to ptr
  %196 = load i32, ptr %195, align 4
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 4
  br label %202

198:                                              ; preds = %144
  %199 = tail call fastcc i32 @udpv6_queue_rcv_skb(ptr noundef %59, ptr noundef nonnull %145)
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  tail call void @consume_skb(ptr noundef nonnull %145) #12
  br label %202

202:                                              ; preds = %201, %198, %187, %176, %142, %137, %132, %119, %100, %87, %68, %64, %56
  %203 = phi ptr [ %58, %176 ], [ %58, %187 ], [ %58, %201 ], [ %58, %198 ], [ %58, %137 ], [ %58, %132 ], [ %59, %142 ], [ %58, %68 ], [ %58, %119 ], [ %58, %87 ], [ %58, %64 ], [ %58, %56 ], [ %58, %100 ]
  %204 = load volatile ptr, ptr %57, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %56

206:                                              ; preds = %202, %40
  %207 = phi ptr [ %45, %40 ], [ %203, %202 ]
  %208 = xor i1 %25, true
  %209 = icmp eq i32 %42, %41
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %211, label %33

211:                                              ; preds = %206
  %212 = icmp eq ptr %207, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %211
  %214 = tail call fastcc i32 @udpv6_queue_rcv_skb(ptr noundef nonnull %207, ptr noundef %0)
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %241

216:                                              ; preds = %213
  tail call void @consume_skb(ptr noundef %0) #12
  br label %241

217:                                              ; preds = %211
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  %218 = icmp eq i32 %4, 136
  br i1 %218, label %219, label %230

219:                                              ; preds = %217
  %220 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %221 = getelementptr [10 x i32], ptr %220, i32 0, i32 8
  %222 = ptrtoint ptr %221 to i32
  %223 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %224 = inttoptr i32 %223 to ptr
  %225 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %224) #11, !srcloc !13
  %226 = add i32 %225, %222
  %227 = inttoptr i32 %226 to ptr
  %228 = load i32, ptr %227, align 4
  %229 = add i32 %228, 1
  store i32 %229, ptr %227, align 4
  br label %241

230:                                              ; preds = %217
  %231 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %232 = getelementptr [10 x i32], ptr %231, i32 0, i32 8
  %233 = ptrtoint ptr %232 to i32
  %234 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %235 = inttoptr i32 %234 to ptr
  %236 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %235) #11, !srcloc !13
  %237 = add i32 %236, %233
  %238 = inttoptr i32 %237 to ptr
  %239 = load i32, ptr %238, align 4
  %240 = add i32 %239, 1
  store i32 %240, ptr %238, align 4
  br label %241

241:                                              ; preds = %230, %219, %216, %213
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xfrm6_policy_check(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #12
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
  br i1 %21, label %52, label %22

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
  br i1 %32, label %33, label %52

33:                                               ; preds = %27, %22
  %34 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #12
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
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %37
  %49 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #12
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %48, %42, %33, %27, %17, %8
  %53 = phi i32 [ %9, %8 ], [ 1, %27 ], [ 1, %17 ], [ %36, %33 ], [ 1, %42 ], [ %51, %48 ]
  ret i32 %53
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udp_lib_checksum_complete(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = lshr i16 %3, 5
  %5 = and i16 %4, 3
  %6 = icmp ne i16 %5, 1
  %7 = icmp sgt i16 %3, -1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = icmp eq i16 %5, 3
  br i1 %10, label %11, label %24

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %14, %19
  %22 = add i32 %21, %20
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %11, %9
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %26 = load i16, ptr %25, align 8
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, %27
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #12
  br label %35

33:                                               ; preds = %24
  %34 = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %0, i32 noundef %27) #12
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i16 [ %32, %31 ], [ %34, %33 ]
  %37 = icmp ne i16 %36, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %35, %11, %1
  %40 = phi i32 [ 0, %11 ], [ %38, %35 ], [ 0, %1 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udpv6_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ipv6_txoptions, align 4
  %5 = alloca %struct.in6_addr, align 4
  %6 = alloca %struct.flowi6, align 8
  %7 = alloca %struct.ipcm6_cookie, align 8
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca %struct.inet_cork_full, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !12
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %11 = load volatile i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, -4161
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi ptr [ %18, %16 ], [ null, %3 ]
  %21 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i32 88, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #12
  %22 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 2
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 32768
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi i1 [ true, %19 ], [ %31, %27 ]
  %34 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %35 = load i16, ptr %34, align 4
  %36 = icmp eq i16 %35, 136
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #12
  %37 = getelementptr inbounds i8, ptr %7, i32 16
  store i16 -1, ptr %37, align 8
  %38 = getelementptr inbounds i8, ptr %7, i32 18
  store i16 -1, ptr %38, align 2
  %39 = getelementptr inbounds i8, ptr %7, i32 20
  %40 = getelementptr inbounds i8, ptr %7, i32 22
  store i8 -1, ptr %40, align 2
  %41 = getelementptr inbounds i8, ptr %7, i32 23
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(9) %41, i8 0, i32 9, i1 false) #12
  %42 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 6
  %43 = load volatile i16, ptr %42, align 4
  store i16 %43, ptr %39, align 4
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %45 = load i16, ptr %44, align 8
  %46 = getelementptr inbounds %struct.sockcm_cookie, ptr %7, i32 0, i32 2
  store i16 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sockcm_cookie, ptr %7, i32 0, i32 1
  store i32 %48, ptr %49, align 8
  %50 = icmp eq ptr %21, null
  br i1 %50, label %82, label %51

51:                                               ; preds = %32
  %52 = icmp ult i32 %23, 2
  br i1 %52, label %549, label %53

53:                                               ; preds = %51
  %54 = load i16, ptr %21, align 4
  switch i16 %54, label %549 [
    i16 10, label %55
    i16 2, label %114
    i16 0, label %81
  ]

55:                                               ; preds = %53
  %56 = icmp slt i32 %23, 24
  br i1 %56, label %549, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.sockaddr_in6, ptr %21, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr %struct.sockaddr_in6, ptr %21, i32 0, i32 3, i32 0, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, %59
  %63 = getelementptr %struct.sockaddr_in6, ptr %21, i32 0, i32 3, i32 0, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %62, %64
  %66 = getelementptr %struct.sockaddr_in6, ptr %21, i32 0, i32 3, i32 0, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %65, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %57
  %71 = load i32, ptr %20, align 4
  %72 = getelementptr [4 x i32], ptr %20, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, %71
  %75 = getelementptr [4 x i32], ptr %20, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = xor i32 %76, -65536
  %78 = or i32 %74, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %70
  store i32 0, ptr %58, align 4
  store i32 0, ptr %60, align 4
  store i32 -65536, ptr %63, align 4
  store i32 16777343, ptr %66, align 4
  br label %91

81:                                               ; preds = %53
  store ptr null, ptr %1, align 8
  store i32 0, ptr %22, align 4
  br label %121

82:                                               ; preds = %32
  %83 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 1
  %84 = load i32, ptr %83, align 64
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %82
  %87 = load volatile i8, ptr %10, align 2
  %88 = icmp eq i8 %87, 1
  br i1 %88, label %89, label %549

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  br label %91

91:                                               ; preds = %89, %80, %70, %57
  %92 = phi ptr [ %58, %80 ], [ %58, %70 ], [ %58, %57 ], [ %90, %89 ]
  %93 = icmp eq ptr %92, null
  br i1 %93, label %121, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %92, align 4
  %96 = getelementptr [4 x i32], ptr %92, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, %95
  %99 = getelementptr [4 x i32], ptr %92, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = xor i32 %100, -65536
  %102 = or i32 %98, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %94
  %105 = getelementptr inbounds i8, ptr %8, i32 8
  store i64 0, ptr %105, align 4, !annotation !12
  store i16 2, ptr %8, align 4
  %106 = getelementptr inbounds %struct.sockaddr_in6, ptr %21, i32 0, i32 1
  %107 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %108 = select i1 %50, ptr %107, ptr %106
  %109 = load i16, ptr %108, align 2
  %110 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 1
  store i16 %109, ptr %110, align 2
  %111 = getelementptr [4 x i32], ptr %92, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 2
  store i32 %112, ptr %113, align 4
  store ptr %8, ptr %1, align 8
  store i32 16, ptr %22, align 4
  br label %114

114:                                              ; preds = %104, %53
  %115 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %116 = load i8, ptr %115, align 1
  %117 = and i8 %116, 32
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %549

119:                                              ; preds = %114
  %120 = call i32 @udp_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %549

121:                                              ; preds = %94, %91, %82, %81
  %122 = phi ptr [ %21, %94 ], [ %21, %91 ], [ null, %81 ], [ null, %82 ]
  %123 = phi i32 [ %23, %94 ], [ %23, %91 ], [ 0, %81 ], [ %23, %82 ]
  %124 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 1
  %125 = load i32, ptr %124, align 64
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = tail call i32 @udp_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %549

129:                                              ; preds = %121
  %130 = icmp ugt i32 %2, 2147483639
  br i1 %130, label %549, label %131

131:                                              ; preds = %129
  %132 = select i1 %36, ptr @udplite_getfrag, ptr @ip_generic_getfrag
  %133 = icmp eq i32 %125, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #12
  %135 = load i32, ptr %124, align 64
  switch i32 %135, label %136 [
    i32 0, label %137
    i32 10, label %430
  ], !prof !27

136:                                              ; preds = %134
  tail call void @release_sock(ptr noundef %0) #12
  br label %549

137:                                              ; preds = %134
  tail call void @release_sock(ptr noundef %0) #12
  br label %138

138:                                              ; preds = %137, %131
  %139 = add nuw nsw i32 %2, 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i32 88, i1 false)
  %140 = icmp eq ptr %122, null
  br i1 %140, label %216, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.sockaddr_in6, ptr %122, i32 0, i32 1
  %143 = load i16, ptr %142, align 2
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %549, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 4
  store i16 %143, ptr %146, align 4
  %147 = getelementptr inbounds %struct.sockaddr_in6, ptr %122, i32 0, i32 3
  %148 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 9
  %149 = load i16, ptr %148, align 2
  %150 = and i16 %149, 2
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %170, label %152

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.sockaddr_in6, ptr %122, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, -241
  %156 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 3
  store i32 %155, ptr %156, align 8
  %157 = and i32 %154, -61696
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %152
  %160 = load volatile i32, ptr @ipv6_flowlabel_exclusive, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %170, !prof !9

162:                                              ; preds = %159
  %163 = load volatile i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 17), align 16
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = tail call ptr @__fl6_sock_lookup(ptr noundef %0, i32 noundef %155) #12
  %167 = icmp eq ptr %166, null
  %168 = icmp ugt ptr %166, inttoptr (i32 -4096 to ptr)
  %169 = or i1 %167, %168
  br i1 %169, label %549, label %170

170:                                              ; preds = %165, %162, %159, %152, %145
  %171 = phi ptr [ null, %152 ], [ null, %145 ], [ null, %162 ], [ null, %159 ], [ %166, %165 ]
  %172 = load volatile i8, ptr %10, align 2
  %173 = icmp eq i8 %172, 1
  br i1 %173, label %174, label %199

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %176 = load i32, ptr %147, align 4
  %177 = load i32, ptr %175, align 4
  %178 = xor i32 %177, %176
  %179 = getelementptr %struct.sockaddr_in6, ptr %122, i32 0, i32 3, i32 0, i32 0, i32 1
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = xor i32 %182, %180
  %184 = or i32 %183, %178
  %185 = getelementptr %struct.sockaddr_in6, ptr %122, i32 0, i32 3, i32 0, i32 0, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  %188 = load i32, ptr %187, align 4
  %189 = xor i32 %188, %186
  %190 = or i32 %184, %189
  %191 = getelementptr %struct.sockaddr_in6, ptr %122, i32 0, i32 3, i32 0, i32 0, i32 3
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 3
  %194 = load i32, ptr %193, align 4
  %195 = xor i32 %194, %192
  %196 = or i32 %190, %195
  %197 = icmp eq i32 %196, 0
  %198 = select i1 %197, ptr %175, ptr %147
  br label %199

199:                                              ; preds = %174, %170
  %200 = phi ptr [ %147, %170 ], [ %198, %174 ]
  %201 = icmp ugt i32 %123, 27
  br i1 %201, label %202, label %230

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.sockaddr_in6, ptr %122, i32 0, i32 4
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %230, label %206

206:                                              ; preds = %202
  %207 = tail call i32 @__ipv6_addr_type(ptr noundef %200) #12
  %208 = and i32 %207, 32
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %206
  %211 = and i32 %207, 2
  %212 = icmp ne i32 %211, 0
  %213 = and i32 %207, 48
  %214 = icmp ne i32 %213, 0
  %215 = and i1 %212, %214
  br i1 %215, label %227, label %230

216:                                              ; preds = %138
  %217 = load volatile i8, ptr %10, align 2
  %218 = icmp eq i8 %217, 1
  br i1 %218, label %219, label %549

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %221 = load i16, ptr %220, align 4
  %222 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 4
  store i16 %221, ptr %222, align 4
  %223 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %224 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 3
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 3
  store i32 %225, ptr %226, align 8
  br label %230

227:                                              ; preds = %210, %206
  %228 = load i32, ptr %203, align 4
  store i32 %228, ptr %6, align 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %227, %219, %210, %202, %199
  %231 = phi ptr [ %200, %227 ], [ %200, %210 ], [ %200, %202 ], [ %200, %199 ], [ %223, %219 ]
  %232 = phi ptr [ %171, %227 ], [ %171, %210 ], [ %171, %202 ], [ %171, %199 ], [ null, %219 ]
  %233 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %234 = load i32, ptr %233, align 4
  store i32 %234, ptr %6, align 8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 1, i32 1
  %238 = load i32, ptr %237, align 4
  store i32 %238, ptr %6, align 8
  br label %239

239:                                              ; preds = %236, %230, %227
  %240 = phi ptr [ %232, %236 ], [ %232, %230 ], [ %171, %227 ]
  %241 = phi ptr [ %231, %236 ], [ %231, %230 ], [ %200, %227 ]
  %242 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 8
  %243 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %244 = load i32, ptr %243, align 4
  store i32 %244, ptr %242, align 4
  %245 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %246 = load i32, ptr %245, align 8
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %289, label %248

248:                                              ; preds = %239
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false)
  %249 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 1
  store i32 36, ptr %249, align 4
  %250 = getelementptr inbounds %struct.ipcm6_cookie, ptr %7, i32 0, i32 5
  store ptr %4, ptr %250, align 8
  %251 = call i32 @udp_cmsg_send(ptr noundef %0, ptr noundef %1, ptr noundef %39) #12
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = call i32 @ip6_datagram_send_ctl(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  br label %255

255:                                              ; preds = %253, %248
  %256 = phi i32 [ %254, %253 ], [ %251, %248 ]
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = icmp eq ptr %240, null
  br i1 %259, label %549, label %260

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.ip6_flowlabel, ptr %240, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %261) #12, !srcloc !20
  %262 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %261, ptr %261, i32 1, ptr elementtype(i32) %261) #12, !srcloc !28
  br label %549

263:                                              ; preds = %255
  %264 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 3
  %265 = load i32, ptr %264, align 8
  %266 = and i32 %265, -61696
  %267 = icmp eq i32 %266, 0
  %268 = icmp ne ptr %240, null
  %269 = or i1 %268, %267
  br i1 %269, label %281, label %270

270:                                              ; preds = %263
  %271 = load volatile i32, ptr @ipv6_flowlabel_exclusive, align 4
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %281, !prof !9

273:                                              ; preds = %270
  %274 = load volatile i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 17), align 16
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %273
  %277 = call ptr @__fl6_sock_lookup(ptr noundef %0, i32 noundef %265) #12
  %278 = icmp eq ptr %277, null
  %279 = icmp ugt ptr %277, inttoptr (i32 -4096 to ptr)
  %280 = or i1 %278, %279
  br i1 %280, label %549, label %281

281:                                              ; preds = %276, %273, %270, %263
  %282 = phi ptr [ %240, %263 ], [ null, %273 ], [ null, %270 ], [ %277, %276 ]
  %283 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 3
  %284 = load i16, ptr %283, align 2
  %285 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 2
  %286 = load i16, ptr %285, align 4
  %287 = or i16 %286, %284
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %281, %239
  %290 = phi i1 [ %140, %239 ], [ false, %281 ]
  %291 = phi ptr [ %240, %239 ], [ %282, %281 ]
  %292 = call fastcc ptr @txopt_get(ptr noundef %20)
  br label %293

293:                                              ; preds = %289, %281
  %294 = phi ptr [ %291, %289 ], [ %282, %281 ]
  %295 = phi i1 [ %290, %289 ], [ false, %281 ]
  %296 = phi ptr [ %292, %289 ], [ null, %281 ]
  %297 = phi ptr [ %292, %289 ], [ %4, %281 ]
  %298 = icmp eq ptr %294, null
  br i1 %298, label %301, label %299

299:                                              ; preds = %293
  %300 = call ptr @fl6_merge_options(ptr noundef nonnull %4, ptr noundef nonnull %294, ptr noundef %297) #12
  br label %301

301:                                              ; preds = %299, %293
  %302 = phi ptr [ %300, %299 ], [ %297, %293 ]
  %303 = call ptr @ipv6_fixup_options(ptr noundef nonnull %4, ptr noundef %302) #12
  %304 = getelementptr inbounds %struct.ipcm6_cookie, ptr %7, i32 0, i32 5
  store ptr %303, ptr %304, align 8
  %305 = load i16, ptr %34, align 4
  %306 = trunc i16 %305 to i8
  %307 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 5
  store i8 %306, ptr %307, align 2
  %308 = load i32, ptr %49, align 8
  %309 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 2
  store i32 %308, ptr %309, align 8
  %310 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %310, ptr noundef align 4 dereferenceable(16) %241, i32 16, i1 false)
  %311 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 2
  %312 = load i32, ptr %311, align 8
  %313 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 2, i32 0, i32 0, i32 1
  %314 = load i32, ptr %313, align 4
  %315 = or i32 %314, %312
  %316 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 2, i32 0, i32 0, i32 2
  %317 = load i32, ptr %316, align 8
  %318 = or i32 %315, %317
  %319 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 2, i32 0, i32 0, i32 3
  %320 = load i32, ptr %319, align 4
  %321 = or i32 %318, %320
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %336

323:                                              ; preds = %301
  %324 = load i32, ptr %20, align 4
  %325 = getelementptr [4 x i32], ptr %20, i32 0, i32 1
  %326 = load i32, ptr %325, align 4
  %327 = or i32 %326, %324
  %328 = getelementptr [4 x i32], ptr %20, i32 0, i32 2
  %329 = load i32, ptr %328, align 4
  %330 = or i32 %327, %329
  %331 = getelementptr [4 x i32], ptr %20, i32 0, i32 3
  %332 = load i32, ptr %331, align 4
  %333 = or i32 %330, %332
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %323
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %311, ptr noundef align 4 dereferenceable(16) %20, i32 16, i1 false)
  br label %336

336:                                              ; preds = %335, %323, %301
  %337 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %338 = load i16, ptr %337, align 8
  %339 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 4
  %340 = getelementptr inbounds %struct.anon.123, ptr %339, i32 0, i32 1
  store i16 %338, ptr %340, align 2
  %341 = load i32, ptr %310, align 8
  %342 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 1, i32 0, i32 0, i32 1
  %343 = load i32, ptr %342, align 4
  %344 = or i32 %343, %341
  %345 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 1, i32 0, i32 0, i32 2
  %346 = load i32, ptr %345, align 8
  %347 = or i32 %344, %346
  %348 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 1, i32 0, i32 0, i32 3
  %349 = load i32, ptr %348, align 4
  %350 = or i32 %347, %349
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %336
  %353 = getelementptr inbounds [16 x i8], ptr %310, i32 0, i32 15
  store i8 1, ptr %353, align 1
  br label %354

354:                                              ; preds = %352, %336
  %355 = call ptr @fl6_update_dst(ptr noundef nonnull %6, ptr noundef %303, ptr noundef nonnull %5) #12
  %356 = icmp eq ptr %355, null
  %357 = select i1 %356, i1 %295, i1 false
  %358 = load i32, ptr %6, align 8
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %370

360:                                              ; preds = %354
  %361 = load i32, ptr %310, align 8
  %362 = and i32 %361, 255
  %363 = icmp eq i32 %362, 255
  br i1 %363, label %364, label %367

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 7
  %366 = load i32, ptr %365, align 4
  store i32 %366, ptr %6, align 8
  br label %370

367:                                              ; preds = %360
  %368 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 6
  %369 = load i32, ptr %368, align 4
  store i32 %369, ptr %6, align 8
  br label %370

370:                                              ; preds = %367, %364, %354
  %371 = phi i1 [ %357, %367 ], [ false, %364 ], [ %357, %354 ]
  %372 = load i16, ptr %38, align 2
  %373 = icmp slt i16 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 11
  %376 = load i8, ptr %375, align 1
  %377 = zext i8 %376 to i16
  store i16 %377, ptr %38, align 2
  br label %378

378:                                              ; preds = %374, %370
  %379 = phi i16 [ %377, %374 ], [ %372, %370 ]
  %380 = zext i16 %379 to i32
  %381 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 3
  %382 = load i32, ptr %381, align 8
  %383 = shl i32 %380, 20
  %384 = call i32 @llvm.bswap.i32(i32 %383) #12
  %385 = or i32 %384, %382
  store i32 %385, ptr %381, align 8
  %386 = call ptr @ip6_sk_dst_lookup_flow(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %355, i1 noundef zeroext %371) #12
  %387 = icmp ugt ptr %386, inttoptr (i32 -4096 to ptr)
  br i1 %387, label %388, label %390

388:                                              ; preds = %378
  %389 = ptrtoint ptr %386 to i32
  br label %482

390:                                              ; preds = %378
  %391 = load i16, ptr %37, align 8
  %392 = icmp slt i16 %391, 0
  br i1 %392, label %393, label %408

393:                                              ; preds = %390
  %394 = load i32, ptr %310, align 8
  %395 = and i32 %394, 255
  %396 = icmp eq i32 %395, 255
  %397 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 5
  %398 = load i32, ptr %397, align 4
  %399 = shl i32 %398, 16
  %400 = select i1 %396, i32 %398, i32 %399
  %401 = ashr i32 %400, 23
  %402 = icmp slt i32 %400, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %393
  %404 = call i32 @ip6_dst_hoplimit(ptr noundef %386) #12
  br label %405

405:                                              ; preds = %403, %393
  %406 = phi i32 [ %404, %403 ], [ %401, %393 ]
  %407 = trunc i32 %406 to i16
  store i16 %407, ptr %37, align 8
  br label %408

408:                                              ; preds = %405, %390
  %409 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %410 = load i32, ptr %409, align 4
  %411 = and i32 %410, 2064
  %412 = icmp eq i32 %411, 2064
  br i1 %412, label %534, label %413

413:                                              ; preds = %543, %408
  %414 = phi i32 [ %545, %543 ], [ %410, %408 ]
  br i1 %33, label %425, label %415

415:                                              ; preds = %413
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %9, i8 0, i32 136, i1 false), !annotation !12
  %416 = call ptr @ip6_make_skb(ptr noundef %0, ptr noundef nonnull %132, ptr noundef %1, i32 noundef %139, i32 noundef 8, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %386, i32 noundef %414, ptr noundef nonnull %9) #12
  %417 = ptrtoint ptr %416 to i32
  %418 = icmp eq ptr %416, null
  %419 = icmp ugt ptr %416, inttoptr (i32 -4096 to ptr)
  %420 = or i1 %418, %419
  br i1 %420, label %423, label %421

421:                                              ; preds = %415
  %422 = call fastcc i32 @udp_v6_send_skb(ptr noundef nonnull %416, ptr noundef nonnull %6, ptr noundef nonnull %9)
  br label %423

423:                                              ; preds = %421, %415
  %424 = phi i32 [ %417, %415 ], [ %422, %421 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %9) #12
  br label %482

425:                                              ; preds = %413
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #12
  %426 = load i32, ptr %124, align 64
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %429, label %428, !prof !19

428:                                              ; preds = %425
  call void @release_sock(ptr noundef %0) #12
  br label %482

429:                                              ; preds = %425
  store i32 10, ptr %124, align 64
  br label %430

430:                                              ; preds = %429, %134
  %431 = phi i32 [ %139, %429 ], [ %2, %134 ]
  %432 = phi ptr [ %386, %429 ], [ null, %134 ]
  %433 = phi ptr [ %294, %429 ], [ null, %134 ]
  %434 = phi ptr [ %296, %429 ], [ null, %134 ]
  %435 = load i8, ptr %40, align 2
  %436 = icmp slt i8 %435, 0
  br i1 %436, label %437, label %443

437:                                              ; preds = %430
  %438 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 9
  %439 = load i16, ptr %438, align 2
  %440 = lshr i16 %439, 10
  %441 = trunc i16 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, ptr %40, align 2
  br label %443

443:                                              ; preds = %437, %430
  %444 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 5
  %445 = load i16, ptr %444, align 2
  %446 = trunc i32 %431 to i16
  %447 = add i16 %445, %446
  store i16 %447, ptr %444, align 2
  %448 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %449 = load i32, ptr %448, align 4
  br i1 %33, label %450, label %454

450:                                              ; preds = %443
  %451 = or i32 %449, 32768
  %452 = call i32 @ip6_append_data(ptr noundef %0, ptr noundef nonnull %132, ptr noundef %1, i32 noundef %431, i32 noundef 8, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %432, i32 noundef %451) #12
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %464, label %457

454:                                              ; preds = %443
  %455 = call i32 @ip6_append_data(ptr noundef %0, ptr noundef nonnull %132, ptr noundef %1, i32 noundef %431, i32 noundef 8, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %432, i32 noundef %449) #12
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %462, label %457

457:                                              ; preds = %454, %450
  %458 = phi i32 [ %455, %454 ], [ %452, %450 ]
  %459 = load i32, ptr %124, align 64
  switch i32 %459, label %461 [
    i32 2, label %460
    i32 0, label %469
  ]

460:                                              ; preds = %457
  call void @udp_flush_pending_frames(ptr noundef %0) #12
  br label %469

461:                                              ; preds = %457
  store i16 0, ptr %444, align 2
  store i32 0, ptr %124, align 64
  call void @ip6_flush_pending_frames(ptr noundef %0) #12
  br label %469

462:                                              ; preds = %454
  %463 = call i32 @udp_v6_push_pending_frames(ptr noundef %0)
  br label %469

464:                                              ; preds = %450
  %465 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %466 = load ptr, ptr %465, align 4
  %467 = icmp eq ptr %466, %465
  br i1 %467, label %468, label %480, !prof !9

468:                                              ; preds = %464
  store i32 0, ptr %124, align 64
  br label %480

469:                                              ; preds = %462, %461, %460, %457
  %470 = phi i32 [ %463, %462 ], [ %458, %457 ], [ %458, %460 ], [ %458, %461 ]
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %472, label %480

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 9
  %474 = load i16, ptr %473, align 2
  %475 = and i16 %474, 1
  %476 = icmp eq i16 %475, 0
  %477 = icmp eq i32 %470, 2
  %478 = select i1 %476, i1 true, i1 %477
  %479 = select i1 %478, i32 0, i32 -105
  br label %480

480:                                              ; preds = %472, %469, %468, %464
  %481 = phi i32 [ %479, %472 ], [ %470, %469 ], [ 0, %468 ], [ 0, %464 ]
  call void @release_sock(ptr noundef %0) #12
  br label %482

482:                                              ; preds = %543, %480, %428, %423, %388
  %483 = phi i32 [ %481, %480 ], [ %389, %388 ], [ -22, %428 ], [ %424, %423 ], [ 0, %543 ]
  %484 = phi ptr [ %432, %480 ], [ null, %388 ], [ %386, %428 ], [ %386, %423 ], [ %386, %543 ]
  %485 = phi ptr [ %433, %480 ], [ %294, %388 ], [ %294, %428 ], [ %294, %423 ], [ %294, %543 ]
  %486 = phi ptr [ %434, %480 ], [ %296, %388 ], [ %296, %428 ], [ %296, %423 ], [ %296, %543 ]
  call void @dst_release(ptr noundef %484) #12
  %487 = icmp eq ptr %485, null
  br i1 %487, label %491, label %488

488:                                              ; preds = %482
  %489 = getelementptr inbounds %struct.ip6_flowlabel, ptr %485, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %489) #12, !srcloc !20
  %490 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %489, ptr %489, i32 1, ptr elementtype(i32) %489) #12, !srcloc !28
  br label %491

491:                                              ; preds = %488, %482
  %492 = icmp eq ptr %486, null
  br i1 %492, label %502, label %493

493:                                              ; preds = %491
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %486) #12, !srcloc !20
  %494 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %486, ptr nonnull %486, i32 1, ptr nonnull elementtype(i32) %486) #12, !srcloc !25
  %495 = extractvalue { i32, i32, i32 } %494, 0
  %496 = icmp eq i32 %495, 1
  br i1 %496, label %500, label %497

497:                                              ; preds = %493
  %498 = icmp sgt i32 %495, 0
  br i1 %498, label %502, label %499, !prof !19

499:                                              ; preds = %497
  call void @refcount_warn_saturate(ptr noundef nonnull %486, i32 noundef 3) #12
  br label %502

500:                                              ; preds = %493
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  %501 = getelementptr inbounds %struct.ipv6_txoptions, ptr %486, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %501, ptr noundef nonnull inttoptr (i32 28 to ptr)) #12
  br label %502

502:                                              ; preds = %500, %499, %497, %491
  switch i32 %483, label %503 [
    i32 0, label %549
    i32 -105, label %510
  ]

503:                                              ; preds = %502
  %504 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %505 = load ptr, ptr %504, align 8
  %506 = getelementptr inbounds %struct.socket, ptr %505, i32 0, i32 2
  %507 = load volatile i32, ptr %506, align 4
  %508 = and i32 %507, 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %549, label %510

510:                                              ; preds = %503, %502
  %511 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12
  br i1 %36, label %512, label %523

512:                                              ; preds = %510
  %513 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %514 = getelementptr [10 x i32], ptr %513, i32 0, i32 6
  %515 = ptrtoint ptr %514 to i32
  %516 = call i32 @llvm.read_register.i32(metadata !0) #12
  %517 = inttoptr i32 %516 to ptr
  %518 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %517) #11, !srcloc !13
  %519 = add i32 %518, %515
  %520 = inttoptr i32 %519 to ptr
  %521 = load i32, ptr %520, align 4
  %522 = add i32 %521, 1
  store i32 %522, ptr %520, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %511) #12, !srcloc !17
  br label %549

523:                                              ; preds = %510
  %524 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %525 = getelementptr [10 x i32], ptr %524, i32 0, i32 6
  %526 = ptrtoint ptr %525 to i32
  %527 = call i32 @llvm.read_register.i32(metadata !0) #12
  %528 = inttoptr i32 %527 to ptr
  %529 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %528) #11, !srcloc !13
  %530 = add i32 %529, %526
  %531 = inttoptr i32 %530 to ptr
  %532 = load i32, ptr %531, align 4
  %533 = add i32 %532, 1
  store i32 %533, ptr %531, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %511) #12, !srcloc !17
  br label %549

534:                                              ; preds = %408
  %535 = getelementptr inbounds %struct.dst_entry, ptr %386, i32 0, i32 1
  %536 = load ptr, ptr %535, align 4
  %537 = getelementptr inbounds %struct.dst_ops, ptr %536, i32 0, i32 15
  %538 = load ptr, ptr %537, align 4
  %539 = icmp eq ptr %538, null
  br i1 %539, label %543, label %540

540:                                              ; preds = %534
  call void %538(ptr noundef %386, ptr noundef %310) #12
  %541 = load i32, ptr %409, align 4
  %542 = and i32 %541, 16
  br label %543

543:                                              ; preds = %540, %534
  %544 = phi i32 [ %542, %540 ], [ 1, %534 ]
  %545 = phi i32 [ %541, %540 ], [ %410, %534 ]
  %546 = icmp eq i32 %544, 0
  %547 = icmp ne i32 %2, 0
  %548 = or i1 %547, %546
  br i1 %548, label %413, label %482

549:                                              ; preds = %523, %512, %503, %502, %276, %260, %258, %216, %165, %141, %136, %129, %127, %119, %114, %86, %55, %53, %51
  %550 = phi i32 [ %120, %119 ], [ %128, %127 ], [ -97, %136 ], [ -22, %51 ], [ -22, %55 ], [ -22, %53 ], [ -89, %86 ], [ -101, %114 ], [ -90, %129 ], [ -22, %141 ], [ -89, %216 ], [ %2, %502 ], [ %483, %512 ], [ %483, %523 ], [ %483, %503 ], [ %256, %258 ], [ %256, %260 ], [ -22, %165 ], [ -22, %276 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  ret i32 %550
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sendmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udplite_getfrag(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #5 {
  %7 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 2
  %8 = icmp slt i32 %3, 0
  %9 = load i1, ptr @check_copy_size.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %6
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %13

13:                                               ; preds = %12, %6
  br i1 %8, label %16, label %14, !prof !9

14:                                               ; preds = %13
  %15 = tail call i32 @_copy_from_iter(ptr noundef %1, i32 noundef %3, ptr noundef %7) #12
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ %15, %14 ], [ 0, %13 ]
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %20, label %19, !prof !19

19:                                               ; preds = %16
  tail call void @iov_iter_revert(ptr noundef %7, i32 noundef %17) #12
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ 0, %16 ], [ -14, %19 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_generic_getfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_cmsg_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_send_ctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @txopt_get(ptr noundef %0) unnamed_addr #5 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %2 = getelementptr inbounds %struct.ipv6_pinfo, ptr %0, i32 0, i32 17
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = load volatile i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %18, %5
  %9 = phi i32 [ %16, %18 ], [ %6, %5 ]
  %10 = add i32 %9, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #12, !srcloc !20
  br label %11

11:                                               ; preds = %11, %8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 %9, i32 %10, ptr nonnull elementtype(i32) %3) #12, !srcloc !29
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %20, label %18, !prof !19

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %8

20:                                               ; preds = %18, %15, %5
  %21 = phi i32 [ 0, %5 ], [ 0, %18 ], [ %9, %15 ]
  %22 = add i32 %21, 1
  %23 = or i32 %22, %21
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %26, label %25, !prof !19

25:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 0) #12
  br label %26

26:                                               ; preds = %25, %20
  %27 = icmp eq i32 %21, 0
  %28 = select i1 %27, ptr null, ptr %3
  br label %29

29:                                               ; preds = %26, %1
  %30 = phi ptr [ null, %1 ], [ %28, %26 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_merge_options(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_fixup_options(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_sk_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_make_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udp_v6_send_skb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 46
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 136
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %14 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %18, %17
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %19, %21
  %23 = add i32 %22, -8
  %24 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  %25 = getelementptr inbounds %struct.anon.123, ptr %24, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  store i16 %26, ptr %14, align 2
  %27 = load i16, ptr %24, align 4
  %28 = getelementptr inbounds %struct.udphdr, ptr %14, i32 0, i32 1
  store i16 %27, ptr %28, align 2
  %29 = trunc i32 %22 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = getelementptr inbounds %struct.udphdr, ptr %14, i32 0, i32 2
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.udphdr, ptr %14, i32 0, i32 3
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.inet_cork, ptr %2, i32 0, i32 10
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %91, label %36

36:                                               ; preds = %3
  %37 = load i16, ptr %11, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = zext i16 %34 to i32
  %43 = add nuw nsw i32 %42, 8
  %44 = add nuw nsw i32 %43, %38
  %45 = sub nsw i32 %44, %41
  %46 = getelementptr inbounds %struct.inet_cork, ptr %2, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %298

50:                                               ; preds = %36
  %51 = shl nuw nsw i32 %42, 6
  %52 = icmp sgt i32 %23, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %298

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.udp_sock, ptr %5, i32 0, i32 4
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %298

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %62 = load i16, ptr %61, align 8
  %63 = and i16 %62, 96
  %64 = icmp ne i16 %63, 96
  %65 = select i1 %64, i1 true, i1 %8
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, -2
  %70 = inttoptr i32 %69 to ptr
  %71 = getelementptr inbounds %struct.dst_entry, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66, %60
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %298

75:                                               ; preds = %66
  %76 = icmp sgt i32 %23, %42
  br i1 %76, label %77, label %136

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 4
  store i16 %34, ptr %80, align 4
  %81 = load ptr, ptr %78, align 4
  %82 = getelementptr inbounds %struct.skb_shared_info, ptr %81, i32 0, i32 8
  store i32 131072, ptr %82, align 8
  %83 = load i16, ptr %33, align 2
  %84 = zext i16 %83 to i32
  %85 = add i32 %22, -9
  %86 = add i32 %85, %84
  %87 = sdiv i32 %86, %84
  %88 = trunc i32 %87 to i16
  %89 = load ptr, ptr %78, align 4
  %90 = getelementptr inbounds %struct.skb_shared_info, ptr %89, i32 0, i32 5
  store i16 %88, ptr %90, align 2
  br label %136

91:                                               ; preds = %3
  br i1 %8, label %92, label %124

92:                                               ; preds = %91
  %93 = load ptr, ptr %4, align 4
  %94 = load ptr, ptr %9, align 8
  %95 = load i16, ptr %11, align 2
  %96 = zext i16 %95 to i32
  %97 = getelementptr i8, ptr %94, i32 %96
  %98 = load ptr, ptr %15, align 4
  %99 = ptrtoint ptr %97 to i32
  %100 = ptrtoint ptr %98 to i32
  %101 = sub i32 %99, %100
  %102 = load i32, ptr %20, align 8
  %103 = sub i32 %102, %101
  %104 = getelementptr inbounds %struct.udp_sock, ptr %93, i32 0, i32 9
  %105 = load i8, ptr %104, align 2
  %106 = and i8 %105, 2
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.udp_sock, ptr %93, i32 0, i32 7
  %110 = load i16, ptr %109, align 2
  %111 = zext i16 %110 to i32
  %112 = icmp sgt i32 %103, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = icmp eq i16 %110, 0
  %115 = select i1 %114, i32 %103, i32 %111
  %116 = tail call i16 @llvm.bswap.i16(i16 %110) #12
  %117 = getelementptr inbounds %struct.udphdr, ptr %97, i32 0, i32 2
  store i16 %116, ptr %117, align 2
  br label %118

118:                                              ; preds = %113, %108, %92
  %119 = phi i32 [ %115, %113 ], [ %103, %108 ], [ %103, %92 ]
  %120 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %121 = load i16, ptr %120, align 8
  %122 = and i16 %121, -97
  store i16 %122, ptr %120, align 8
  %123 = tail call i32 @skb_checksum(ptr noundef %0, i32 noundef %101, i32 noundef %119, i32 noundef 0) #12
  br label %216

124:                                              ; preds = %91
  %125 = getelementptr inbounds %struct.udp_sock, ptr %5, i32 0, i32 4
  %126 = load i8, ptr %125, align 1
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  %129 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %130 = load i16, ptr %129, align 8
  br i1 %128, label %133, label %131

131:                                              ; preds = %124
  %132 = and i16 %130, -97
  store i16 %132, ptr %129, align 8
  br label %232

133:                                              ; preds = %124
  %134 = and i16 %130, 96
  %135 = icmp eq i16 %134, 96
  br i1 %135, label %136, label %192

136:                                              ; preds = %133, %77, %75
  %137 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  %138 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %139 = load ptr, ptr %9, align 8
  %140 = load i16, ptr %11, align 2
  %141 = zext i16 %140 to i32
  %142 = getelementptr i8, ptr %139, i32 %141
  %143 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.skb_shared_info, ptr %144, i32 0, i32 6
  %146 = load ptr, ptr %145, align 8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %136
  %149 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %140, ptr %149, align 4
  %150 = getelementptr inbounds %struct.anon.52, ptr %149, i32 0, i32 1
  store i16 6, ptr %150, align 2
  %151 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %152 = tail call i32 @__csum_ipv6_magic(ptr noundef %137, ptr noundef %138, i32 noundef %151, i32 noundef 285212672, i32 noundef 0) #12
  %153 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %152) #13, !srcloc !22
  %154 = xor i32 %153, -1
  %155 = lshr i32 %154, 16
  %156 = trunc i32 %155 to i16
  %157 = xor i16 %156, -1
  %158 = getelementptr inbounds %struct.udphdr, ptr %142, i32 0, i32 3
  store i16 %157, ptr %158, align 2
  br label %232

159:                                              ; preds = %136
  %160 = load ptr, ptr %15, align 4
  %161 = ptrtoint ptr %142 to i32
  %162 = ptrtoint ptr %160 to i32
  %163 = sub i32 %161, %162
  %164 = load i32, ptr %20, align 8
  %165 = sub i32 %164, %163
  %166 = tail call i32 @skb_checksum(ptr noundef %0, i32 noundef %163, i32 noundef %165, i32 noundef 0) #12
  %167 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %166, ptr %167, align 4
  %168 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %169 = load i16, ptr %168, align 8
  %170 = and i16 %169, -97
  store i16 %170, ptr %168, align 8
  br label %171

171:                                              ; preds = %171, %159
  %172 = phi ptr [ %146, %159 ], [ %180, %171 ]
  %173 = phi i32 [ %166, %159 ], [ %179, %171 ]
  %174 = getelementptr inbounds %struct.sk_buff, ptr %172, i32 0, i32 13, i32 0, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %175, %173
  %177 = icmp ult i32 %176, %175
  %178 = zext i1 %177 to i32
  %179 = add i32 %176, %178
  %180 = load ptr, ptr %172, align 8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %171

182:                                              ; preds = %171
  %183 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %184 = tail call i32 @__csum_ipv6_magic(ptr noundef %137, ptr noundef %138, i32 noundef %183, i32 noundef 285212672, i32 noundef %179) #12
  %185 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %184) #13, !srcloc !22
  %186 = xor i32 %185, -1
  %187 = lshr i32 %186, 16
  %188 = trunc i32 %187 to i16
  %189 = getelementptr inbounds %struct.udphdr, ptr %142, i32 0, i32 3
  %190 = icmp eq i16 %188, 0
  %191 = select i1 %190, i16 -1, i16 %188
  store i16 %191, ptr %189, align 2
  br label %232

192:                                              ; preds = %133
  %193 = load ptr, ptr %9, align 8
  %194 = load i16, ptr %11, align 2
  %195 = zext i16 %194 to i32
  %196 = getelementptr i8, ptr %193, i32 %195
  %197 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %198 = load i32, ptr %197, align 4
  %199 = tail call i32 @csum_partial(ptr noundef %196, i32 noundef 8, i32 noundef %198) #12
  %200 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.skb_shared_info, ptr %201, i32 0, i32 6
  %203 = load ptr, ptr %202, align 8
  %204 = icmp eq ptr %203, null
  br i1 %204, label %216, label %205

205:                                              ; preds = %205, %192
  %206 = phi ptr [ %214, %205 ], [ %203, %192 ]
  %207 = phi i32 [ %213, %205 ], [ %199, %192 ]
  %208 = getelementptr inbounds %struct.sk_buff, ptr %206, i32 0, i32 13, i32 0, i32 4
  %209 = load i32, ptr %208, align 4
  %210 = add i32 %209, %207
  %211 = icmp ult i32 %210, %209
  %212 = zext i1 %211 to i32
  %213 = add i32 %210, %212
  %214 = load ptr, ptr %206, align 8
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %205

216:                                              ; preds = %205, %192, %118
  %217 = phi i32 [ %123, %118 ], [ %199, %192 ], [ %213, %205 ]
  %218 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  %219 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %220 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %221 = load i8, ptr %220, align 2
  %222 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %223 = zext i8 %221 to i32
  %224 = shl nuw i32 %223, 24
  %225 = tail call i32 @__csum_ipv6_magic(ptr noundef %218, ptr noundef %219, i32 noundef %222, i32 noundef %224, i32 noundef %217) #12
  %226 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %225) #13, !srcloc !22
  %227 = xor i32 %226, -1
  %228 = lshr i32 %227, 16
  %229 = trunc i32 %228 to i16
  %230 = icmp eq i16 %229, 0
  %231 = select i1 %230, i16 -1, i16 %229
  store i16 %231, ptr %32, align 2
  br label %232

232:                                              ; preds = %216, %182, %148, %131
  %233 = tail call i32 @ip6_send_skb(ptr noundef %0) #12
  switch i32 %233, label %298 [
    i32 0, label %274
    i32 -105, label %234
  ]

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %236 = load volatile i8, ptr %235, align 2
  %237 = zext i8 %236 to i32
  %238 = shl nuw i32 1, %237
  %239 = and i32 %238, -4161
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 1
  %243 = load ptr, ptr %242, align 8
  br label %244

244:                                              ; preds = %241, %234
  %245 = phi ptr [ %243, %241 ], [ null, %234 ]
  %246 = getelementptr inbounds %struct.ipv6_pinfo, ptr %245, i32 0, i32 9
  %247 = load i16, ptr %246, align 2
  %248 = and i16 %247, 1
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %250, label %298

250:                                              ; preds = %244
  %251 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12
  br i1 %8, label %252, label %263

252:                                              ; preds = %250
  %253 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %254 = getelementptr [10 x i32], ptr %253, i32 0, i32 6
  %255 = ptrtoint ptr %254 to i32
  %256 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %257 = inttoptr i32 %256 to ptr
  %258 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %257) #11, !srcloc !13
  %259 = add i32 %258, %255
  %260 = inttoptr i32 %259 to ptr
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %261, 1
  store i32 %262, ptr %260, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %251) #12, !srcloc !17
  br label %298

263:                                              ; preds = %250
  %264 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %265 = getelementptr [10 x i32], ptr %264, i32 0, i32 6
  %266 = ptrtoint ptr %265 to i32
  %267 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %268 = inttoptr i32 %267 to ptr
  %269 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %268) #11, !srcloc !13
  %270 = add i32 %269, %266
  %271 = inttoptr i32 %270 to ptr
  %272 = load i32, ptr %271, align 4
  %273 = add i32 %272, 1
  store i32 %273, ptr %271, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %251) #12, !srcloc !17
  br label %298

274:                                              ; preds = %232
  %275 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12
  br i1 %8, label %276, label %287

276:                                              ; preds = %274
  %277 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %278 = getelementptr [10 x i32], ptr %277, i32 0, i32 4
  %279 = ptrtoint ptr %278 to i32
  %280 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %281 = inttoptr i32 %280 to ptr
  %282 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %281) #11, !srcloc !13
  %283 = add i32 %282, %279
  %284 = inttoptr i32 %283 to ptr
  %285 = load i32, ptr %284, align 4
  %286 = add i32 %285, 1
  store i32 %286, ptr %284, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %275) #12, !srcloc !17
  br label %298

287:                                              ; preds = %274
  %288 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %289 = getelementptr [10 x i32], ptr %288, i32 0, i32 4
  %290 = ptrtoint ptr %289 to i32
  %291 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %292 = inttoptr i32 %291 to ptr
  %293 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %292) #11, !srcloc !13
  %294 = add i32 %293, %290
  %295 = inttoptr i32 %294 to ptr
  %296 = load i32, ptr %295, align 4
  %297 = add i32 %296, 1
  store i32 %297, ptr %295, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %275) #12, !srcloc !17
  br label %298

298:                                              ; preds = %287, %276, %263, %252, %244, %232, %74, %59, %53, %49
  %299 = phi i32 [ -105, %244 ], [ 0, %276 ], [ 0, %287 ], [ %233, %232 ], [ 0, %263 ], [ 0, %252 ], [ -22, %49 ], [ -22, %53 ], [ -22, %59 ], [ -5, %74 ]
  ret i32 %299
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_append_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udp_v6_push_pending_frames(ptr noundef %0) #0 {
  %2 = alloca %struct.flowi6, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 64
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @udp_push_pending_frames(ptr noundef %0) #12
  br label %31

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef align 8 dereferenceable(88) %9, i32 88, i1 false)
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %11 = load volatile i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, -4161
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi ptr [ %18, %16 ], [ null, %8 ]
  %21 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %23 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 20
  %24 = tail call ptr @__ip6_make_skb(ptr noundef %0, ptr noundef %22, ptr noundef %21, ptr noundef %23) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call fastcc i32 @udp_v6_send_skb(ptr noundef nonnull %24, ptr noundef nonnull %2, ptr noundef %21)
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %30 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 5
  store i16 0, ptr %30, align 2
  store i32 0, ptr %3, align 64
  br label %31

31:                                               ; preds = %28, %6
  %32 = phi i32 [ %7, %6 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #12
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udpv6_destroy_sock(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #12
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 64
  switch i32 %6, label %8 [
    i32 2, label %7
    i32 0, label %10
  ]

7:                                                ; preds = %1
  tail call void @udp_flush_pending_frames(ptr noundef %0) #12
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 5
  store i16 0, ptr %9, align 2
  store i32 0, ptr %5, align 64
  tail call void @ip6_flush_pending_frames(ptr noundef %0) #12
  br label %10

10:                                               ; preds = %8, %7, %1
  tail call void @release_sock(ptr noundef %0) #12
  %11 = load volatile i32, ptr @udpv6_encap_needed_key, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28, !prof !9

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 3
  %15 = load i8, ptr %14, align 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 13
  %19 = load volatile ptr, ptr %18, align 32
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void %19(ptr noundef %0) #12
  br label %22

22:                                               ; preds = %21, %17, %13
  %23 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call fastcc void @static_key_slow_dec()
  tail call void @udp_encap_disable() #12
  br label %28

28:                                               ; preds = %27, %22, %10
  tail call void @inet6_destroy_sock(ptr noundef %0) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @static_key_slow_dec() unnamed_addr #5 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !18
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !9

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @udpv6_encap_needed_key) #12
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @udpv6_encap_needed_key) #12, !srcloc !20
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @udpv6_encap_needed_key, ptr nonnull @udpv6_encap_needed_key, i32 1, ptr nonnull elementtype(i32) @udpv6_encap_needed_key) #12, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_encap_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_destroy_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udpv6_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  switch i32 %1, label %8 [
    i32 136, label %6
    i32 17, label %6
  ]

6:                                                ; preds = %5, %5
  %7 = tail call i32 @udp_lib_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4, ptr noundef nonnull @udp_v6_push_pending_frames) #12
  br label %10

8:                                                ; preds = %5
  %9 = tail call i32 @ipv6_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #12
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_lib_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udpv6_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  switch i32 %1, label %8 [
    i32 136, label %6
    i32 17, label %6
  ]

6:                                                ; preds = %5, %5
  %7 = tail call i32 @udp_lib_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #12
  br label %10

8:                                                ; preds = %5
  %9 = tail call i32 @ipv6_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #12
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_lib_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp6_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.2) #12
  br label %21

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.udp_iter_state, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  %11 = load i16, ptr %10, align 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %17 = load volatile i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.udp_sock, ptr %1, i32 0, i32 18
  %19 = load volatile i32, ptr %18, align 16
  %20 = sub i32 %17, %19
  tail call void @__ip6_dgram_sock_seq_show(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %12, i16 noundef zeroext %15, i32 noundef %20, i32 noundef %9) #12
  br label %21

21:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip6_dgram_sock_seq_show(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp_seq_start(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_seq_stop(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp_seq_next(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @udp6_proc_init(ptr nocapture noundef readonly %0) local_unnamed_addr #8 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @udp6_seq_ops, i32 noundef 8, ptr noundef nonnull @udp6_seq_afinfo) #12
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp6_proc_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @udp_lib_close(ptr noundef %0, i32 noundef %1) #5 {
  tail call void @sk_common_release(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udpv6_pre_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 2
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = load i16, ptr %1, align 2
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 32
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = tail call i32 @udp_pre_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %18

15:                                               ; preds = %5
  %16 = icmp slt i32 %2, 24
  %17 = select i1 %16, i32 -22, i32 0
  br label %18

18:                                               ; preds = %15, %13, %8, %3
  %19 = phi i32 [ %14, %13 ], [ -22, %3 ], [ -97, %8 ], [ %17, %15 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_connect(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_disconnect(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_init_sock(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_release_cb(ptr noundef) #3

; Function Attrs: inlinehint noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udp_lib_hash(ptr nocapture noundef readnone %0) #9 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/udp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 179, 0\0A.popsection", ""() #12, !srcloc !30
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_lib_unhash(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_abort(ptr noundef, i32 noundef) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @udpv6_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @udpv6_protocol, i8 noundef zeroext 17) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @udpv6_protosw) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %8, %3, %0
  %7 = phi i32 [ %1, %0 ], [ %4, %8 ], [ 0, %3 ]
  ret i32 %7

8:                                                ; preds = %3
  %9 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @udpv6_protocol, i8 noundef zeroext 17) #12
  br label %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udpv6_exit() local_unnamed_addr #0 {
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @udpv6_protosw) #12
  %1 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @udpv6_protocol, i8 noundef zeroext 17) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lookup_reuseport(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i16 noundef zeroext %4, ptr nocapture noundef readonly %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 5
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %100, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %16 = load volatile i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %100, label %18

18:                                               ; preds = %14
  %19 = load volatile i32, ptr @udp6_ehashfn.___once_key, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %25, !prof !9

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !12
  %22 = call zeroext i1 @__do_once_start(ptr noundef nonnull @udp6_ehashfn.___done, ptr noundef nonnull %8) #12
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %21
  call void @get_random_bytes(ptr noundef nonnull @udp6_ehashfn.udp6_ehash_secret, i32 noundef 4) #12
  call void @__do_once_done(ptr noundef nonnull @udp6_ehashfn.___done, ptr noundef nonnull @udp6_ehashfn.___once_key, ptr noundef nonnull %8, ptr noundef null) #12
  br label %24

24:                                               ; preds = %23, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %25

25:                                               ; preds = %24, %18
  %26 = load volatile i32, ptr @udp6_ehashfn.___once_key.5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32, !prof !9

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !annotation !12
  %29 = call zeroext i1 @__do_once_start(ptr noundef nonnull @udp6_ehashfn.___done.4, ptr noundef nonnull %9) #12
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %28
  call void @get_random_bytes(ptr noundef nonnull @udp6_ehashfn.udp_ipv6_hash_secret, i32 noundef 4) #12
  call void @__do_once_done(ptr noundef nonnull @udp6_ehashfn.___done.4, ptr noundef nonnull @udp6_ehashfn.___once_key.5, ptr noundef nonnull %9, ptr noundef null) #12
  br label %31

31:                                               ; preds = %30, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %32

32:                                               ; preds = %31, %25
  %33 = getelementptr [4 x i32], ptr %5, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr @udp6_ehashfn.udp_ipv6_hash_secret, align 4
  %36 = load i32, ptr %3, align 4
  %37 = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %38, %36
  %40 = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr [4 x i32], ptr %3, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %35, -559038725
  %45 = add i32 %39, %44
  %46 = add i32 %41, %44
  %47 = add i32 %43, %44
  %48 = xor i32 %47, %46
  %49 = call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 14) #12
  %50 = sub i32 %48, %49
  %51 = xor i32 %50, %45
  %52 = call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11) #12
  %53 = sub i32 %51, %52
  %54 = xor i32 %53, %46
  %55 = call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 25) #12
  %56 = sub i32 %54, %55
  %57 = xor i32 %56, %50
  %58 = call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 16) #12
  %59 = sub i32 %57, %58
  %60 = xor i32 %59, %53
  %61 = call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 4) #12
  %62 = sub i32 %60, %61
  %63 = xor i32 %62, %56
  %64 = call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 14) #12
  %65 = sub i32 %63, %64
  %66 = xor i32 %65, %59
  %67 = call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 24) #12
  %68 = sub i32 %66, %67
  %69 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %6, 16
  %72 = zext i16 %4 to i32
  %73 = or i32 %71, %72
  %74 = add i32 %70, %44
  %75 = add i32 %74, %34
  %76 = add i32 %68, %74
  %77 = add i32 %73, %74
  %78 = xor i32 %76, %77
  %79 = call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 14) #12
  %80 = sub i32 %78, %79
  %81 = xor i32 %80, %75
  %82 = call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 11) #12
  %83 = sub i32 %81, %82
  %84 = xor i32 %83, %76
  %85 = call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 25) #12
  %86 = sub i32 %84, %85
  %87 = xor i32 %86, %80
  %88 = call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 16) #12
  %89 = sub i32 %87, %88
  %90 = xor i32 %89, %83
  %91 = call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 4) #12
  %92 = sub i32 %90, %91
  %93 = xor i32 %92, %86
  %94 = call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 14) #12
  %95 = sub i32 %93, %94
  %96 = xor i32 %95, %89
  %97 = call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 24) #12
  %98 = sub i32 %96, %97
  %99 = call ptr @reuseport_select_sock(ptr noundef %1, i32 noundef %98, ptr noundef %2, i32 noundef 8) #12
  br label %100

100:                                              ; preds = %32, %14, %7
  %101 = phi ptr [ %99, %32 ], [ null, %14 ], [ null, %7 ]
  ret ptr %101
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_select_sock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete_head(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #12
  %5 = load i32, ptr %3, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %3, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !15
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %1, ptr %7, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !16
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @udp_sk_rx_dst_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udpv6_queue_rcv_skb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 4
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13, %8
  %19 = and i32 %10, 262144
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 32
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %18, %2
  %27 = tail call fastcc i32 @udpv6_queue_rcv_one_skb(ptr noundef %0, ptr noundef %1)
  br label %74

28:                                               ; preds = %21, %13
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = ptrtoint ptr %34 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = getelementptr i8, ptr %36, i32 %39
  store ptr %40, ptr %35, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = sub i32 %42, %39
  store i32 %43, ptr %41, align 8
  %44 = tail call fastcc ptr @udp_rcv_segment(ptr noundef %0, ptr noundef %1)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %74, label %46

46:                                               ; preds = %72, %28
  %47 = phi ptr [ %48, %72 ], [ %44, %28 ]
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 16
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 13, i32 0, i32 17
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr i8, ptr %50, i32 %53
  %55 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  %57 = ptrtoint ptr %54 to i32
  %58 = ptrtoint ptr %56 to i32
  %59 = sub i32 %57, %58
  %60 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 5
  %61 = load i32, ptr %60, align 8
  %62 = sub i32 %61, %59
  store i32 %62, ptr %60, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %66, label %67, !prof !9

66:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !35
  unreachable

67:                                               ; preds = %46
  %68 = getelementptr i8, ptr %56, i32 %59
  store ptr %68, ptr %55, align 4
  tail call fastcc void @udp_post_segment_fix_csum(ptr noundef nonnull %47)
  %69 = tail call fastcc i32 @udpv6_queue_rcv_one_skb(ptr noundef %0, ptr noundef nonnull %47)
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call void @ip6_protocol_deliver_rcu(ptr noundef nonnull @init_net, ptr noundef nonnull %47, i32 noundef %69, i1 noundef zeroext true) #12
  br label %72

72:                                               ; preds = %71, %67
  %73 = icmp eq ptr %48, null
  br i1 %73, label %74, label %46

74:                                               ; preds = %72, %28, %26
  %75 = phi i32 [ %27, %26 ], [ 0, %28 ], [ 0, %72 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udpv6_queue_rcv_one_skb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 136
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #12
  br label %55

13:                                               ; preds = %7, %2
  %14 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %20, %17
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, -2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = inttoptr i32 %28 to ptr
  %32 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 7
  %33 = load i16, ptr %32, align 4
  %34 = and i16 %33, 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %30, %25
  %37 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #12
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  br label %55

40:                                               ; preds = %13
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, -2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = inttoptr i32 %43 to ptr
  %47 = getelementptr inbounds %struct.dst_entry, ptr %46, i32 0, i32 7
  %48 = load i16, ptr %47, align 4
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45, %40
  %52 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #12
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  br label %55

55:                                               ; preds = %51, %36, %11
  %56 = phi i32 [ %12, %11 ], [ %39, %36 ], [ %54, %51 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %340, label %58

58:                                               ; preds = %55, %45, %30, %20
  %59 = load volatile i32, ptr @udpv6_encap_needed_key, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %98, !prof !9

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 3
  %63 = load i8, ptr %62, align 8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 11
  %67 = load volatile ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %98, label %69

69:                                               ; preds = %65
  %70 = tail call fastcc i32 @udp_lib_checksum_complete(ptr noundef %1)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %317

72:                                               ; preds = %69
  %73 = tail call i32 %67(ptr noundef %0, ptr noundef %1) #12
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  br i1 %5, label %76, label %84

76:                                               ; preds = %75
  %77 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %78 = getelementptr [10 x i32], ptr %77, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %81 = inttoptr i32 %80 to ptr
  %82 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %81) #11, !srcloc !13
  %83 = add i32 %82, %79
  br label %92

84:                                               ; preds = %75
  %85 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %86 = getelementptr [10 x i32], ptr %85, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  %88 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %89 = inttoptr i32 %88 to ptr
  %90 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %89) #11, !srcloc !13
  %91 = add i32 %90, %87
  br label %92

92:                                               ; preds = %84, %76
  %93 = phi i32 [ %83, %76 ], [ %91, %84 ]
  %94 = inttoptr i32 %93 to ptr
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 4
  %97 = sub i32 0, %73
  br label %364

98:                                               ; preds = %72, %65, %61, %58
  %99 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 9
  %100 = load i8, ptr %99, align 2
  %101 = and i8 %100, 4
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %105 = load i8, ptr %104, align 2
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 8
  %109 = load i16, ptr %108, align 16
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %340, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %113 = load i16, ptr %112, align 8
  %114 = icmp ult i16 %113, %109
  br i1 %114, label %340, label %115

115:                                              ; preds = %111, %103, %98
  %116 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %116) #12, !srcloc !36
  %117 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 16
  %118 = load volatile ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %157, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %122 = load i16, ptr %121, align 8
  %123 = lshr i16 %122, 5
  %124 = and i16 %123, 3
  %125 = icmp ne i16 %124, 1
  %126 = icmp sgt i16 %122, -1
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %128, label %157

128:                                              ; preds = %120
  %129 = icmp eq i16 %124, 3
  br i1 %129, label %130, label %143

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %132 = load i16, ptr %131, align 4
  %133 = zext i16 %132 to i32
  %134 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %137 = load ptr, ptr %136, align 8
  %138 = ptrtoint ptr %135 to i32
  %139 = ptrtoint ptr %137 to i32
  %140 = sub i32 %133, %138
  %141 = add i32 %140, %139
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %130, %128
  %144 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %145 = load i16, ptr %144, align 8
  %146 = zext i16 %145 to i32
  %147 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %148 = load i32, ptr %147, align 8
  %149 = icmp eq i32 %148, %146
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %1) #12
  br label %154

152:                                              ; preds = %143
  %153 = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %1, i32 noundef %146) #12
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i16 [ %151, %150 ], [ %153, %152 ]
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %317

157:                                              ; preds = %154, %130, %120, %115
  %158 = tail call i32 @sk_filter_trim_cap(ptr noundef %0, ptr noundef %1, i32 noundef 8) #12
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %340

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %162 = load i16, ptr %161, align 8
  %163 = and i16 %162, -32672
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %169 = load i32, ptr %168, align 4
  %170 = tail call i32 @csum_partial(ptr noundef %167, i32 noundef 8, i32 noundef %169) #12
  store i32 %170, ptr %168, align 4
  br label %171

171:                                              ; preds = %165, %160
  %172 = tail call ptr @skb_pull_rcsum(ptr noundef %1, i32 noundef 8) #12
  %173 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %174 = load i16, ptr %173, align 8
  %175 = add i16 %174, -8
  store i16 %175, ptr %173, align 8
  %176 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %177 = load i32, ptr %176, align 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %171
  %180 = and i32 %177, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = and i32 %177, -2
  %184 = inttoptr i32 %183 to ptr
  tail call void @dst_release(ptr noundef %184) #12
  br label %185

185:                                              ; preds = %182, %179
  store i32 0, ptr %176, align 8
  br label %186

186:                                              ; preds = %185, %171
  %187 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = or i32 %190, %188
  %192 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = or i32 %191, %193
  %195 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = or i32 %194, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %231, label %199

199:                                              ; preds = %186
  %200 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  %201 = load i32, ptr %200, align 8
  %202 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %203 = load i32, ptr %202, align 8
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %206, label %205, !prof !19

205:                                              ; preds = %199
  store i32 %203, ptr %200, align 8
  br label %206

206:                                              ; preds = %205, %199
  %207 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 14
  %208 = load volatile i32, ptr %207, align 8
  %209 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 10
  %210 = load i32, ptr %209, align 8
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %213, label %212, !prof !19

212:                                              ; preds = %206
  store volatile i32 %210, ptr %207, align 8
  br label %213

213:                                              ; preds = %212, %206
  %214 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  %215 = load i16, ptr %214, align 4
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %213
  %218 = add i16 %215, -1
  %219 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 17
  %220 = load volatile i16, ptr %219, align 2
  %221 = icmp eq i16 %220, %218
  br i1 %221, label %223, label %222, !prof !19

222:                                              ; preds = %217
  store volatile i16 %218, ptr %219, align 2
  br label %223

223:                                              ; preds = %222, %217, %213
  %224 = tail call ptr @llvm.thread.pointer() #12
  %225 = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 2
  %226 = load i32, ptr %225, align 8
  %227 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 18
  %228 = load volatile i32, ptr %227, align 8
  %229 = icmp eq i32 %228, %226
  br i1 %229, label %238, label %230, !prof !19

230:                                              ; preds = %223
  store volatile i32 %226, ptr %227, align 8
  br label %238

231:                                              ; preds = %186
  %232 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 10
  %233 = load i32, ptr %232, align 8
  %234 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 14
  %235 = load volatile i32, ptr %234, align 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  store volatile i32 %233, ptr %234, align 8
  br label %238

238:                                              ; preds = %237, %231, %230, %223
  %239 = tail call i32 @__udp_enqueue_schedule_skb(ptr noundef %0, ptr noundef %1) #12
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %364

241:                                              ; preds = %238
  %242 = load i16, ptr %3, align 4
  %243 = icmp eq i16 %242, 136
  %244 = icmp eq i32 %239, -12
  %245 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12
  br i1 %244, label %246, label %269

246:                                              ; preds = %241
  br i1 %243, label %247, label %258

247:                                              ; preds = %246
  %248 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %249 = getelementptr [10 x i32], ptr %248, i32 0, i32 5
  %250 = ptrtoint ptr %249 to i32
  %251 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %252 = inttoptr i32 %251 to ptr
  %253 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %252) #11, !srcloc !13
  %254 = add i32 %253, %250
  %255 = inttoptr i32 %254 to ptr
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %256, 1
  store i32 %257, ptr %255, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %245) #12, !srcloc !17
  br label %292

258:                                              ; preds = %246
  %259 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %260 = getelementptr [10 x i32], ptr %259, i32 0, i32 5
  %261 = ptrtoint ptr %260 to i32
  %262 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %263 = inttoptr i32 %262 to ptr
  %264 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %263) #11, !srcloc !13
  %265 = add i32 %264, %261
  %266 = inttoptr i32 %265 to ptr
  %267 = load i32, ptr %266, align 4
  %268 = add i32 %267, 1
  store i32 %268, ptr %266, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %245) #12, !srcloc !17
  br label %304

269:                                              ; preds = %241
  br i1 %243, label %270, label %281

270:                                              ; preds = %269
  %271 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %272 = getelementptr [10 x i32], ptr %271, i32 0, i32 9
  %273 = ptrtoint ptr %272 to i32
  %274 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %275 = inttoptr i32 %274 to ptr
  %276 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %275) #11, !srcloc !13
  %277 = add i32 %276, %273
  %278 = inttoptr i32 %277 to ptr
  %279 = load i32, ptr %278, align 4
  %280 = add i32 %279, 1
  store i32 %280, ptr %278, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %245) #12, !srcloc !17
  br label %292

281:                                              ; preds = %269
  %282 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %283 = getelementptr [10 x i32], ptr %282, i32 0, i32 9
  %284 = ptrtoint ptr %283 to i32
  %285 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %286 = inttoptr i32 %285 to ptr
  %287 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %286) #11, !srcloc !13
  %288 = add i32 %287, %284
  %289 = inttoptr i32 %288 to ptr
  %290 = load i32, ptr %289, align 4
  %291 = add i32 %290, 1
  store i32 %291, ptr %289, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %245) #12, !srcloc !17
  br label %304

292:                                              ; preds = %270, %247
  %293 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !14
  %294 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %295 = getelementptr [10 x i32], ptr %294, i32 0, i32 3
  %296 = ptrtoint ptr %295 to i32
  %297 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %298 = inttoptr i32 %297 to ptr
  %299 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %298) #11, !srcloc !13
  %300 = add i32 %299, %296
  %301 = inttoptr i32 %300 to ptr
  %302 = load i32, ptr %301, align 4
  %303 = add i32 %302, 1
  store i32 %303, ptr %301, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %293) #12, !srcloc !17
  br label %316

304:                                              ; preds = %281, %258
  %305 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !14
  %306 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %307 = getelementptr [10 x i32], ptr %306, i32 0, i32 3
  %308 = ptrtoint ptr %307 to i32
  %309 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %310 = inttoptr i32 %309 to ptr
  %311 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %310) #11, !srcloc !13
  %312 = add i32 %311, %308
  %313 = inttoptr i32 %312 to ptr
  %314 = load i32, ptr %313, align 4
  %315 = add i32 %314, 1
  store i32 %315, ptr %313, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %305) #12, !srcloc !17
  br label %316

316:                                              ; preds = %304, %292
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %364

317:                                              ; preds = %154, %69
  br i1 %5, label %318, label %329

318:                                              ; preds = %317
  %319 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %320 = getelementptr [10 x i32], ptr %319, i32 0, i32 7
  %321 = ptrtoint ptr %320 to i32
  %322 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %323 = inttoptr i32 %322 to ptr
  %324 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %323) #11, !srcloc !13
  %325 = add i32 %324, %321
  %326 = inttoptr i32 %325 to ptr
  %327 = load i32, ptr %326, align 4
  %328 = add i32 %327, 1
  store i32 %328, ptr %326, align 4
  br label %341

329:                                              ; preds = %317
  %330 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %331 = getelementptr [10 x i32], ptr %330, i32 0, i32 7
  %332 = ptrtoint ptr %331 to i32
  %333 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %334 = inttoptr i32 %333 to ptr
  %335 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %334) #11, !srcloc !13
  %336 = add i32 %335, %332
  %337 = inttoptr i32 %336 to ptr
  %338 = load i32, ptr %337, align 4
  %339 = add i32 %338, 1
  store i32 %339, ptr %337, align 4
  br label %349

340:                                              ; preds = %157, %111, %107, %55
  br i1 %5, label %341, label %349

341:                                              ; preds = %340, %318
  %342 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %343 = getelementptr [10 x i32], ptr %342, i32 0, i32 3
  %344 = ptrtoint ptr %343 to i32
  %345 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %346 = inttoptr i32 %345 to ptr
  %347 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %346) #11, !srcloc !13
  %348 = add i32 %347, %344
  br label %357

349:                                              ; preds = %340, %329
  %350 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %351 = getelementptr [10 x i32], ptr %350, i32 0, i32 3
  %352 = ptrtoint ptr %351 to i32
  %353 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %354 = inttoptr i32 %353 to ptr
  %355 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %354) #11, !srcloc !13
  %356 = add i32 %355, %352
  br label %357

357:                                              ; preds = %349, %341
  %358 = phi i32 [ %356, %349 ], [ %348, %341 ]
  %359 = inttoptr i32 %358 to ptr
  %360 = load i32, ptr %359, align 4
  %361 = add i32 %360, 1
  store i32 %361, ptr %359, align 4
  %362 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %362) #12, !srcloc !20
  %363 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %362, ptr %362, i32 1, ptr elementtype(i32) %362) #12, !srcloc !21
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %364

364:                                              ; preds = %357, %316, %238, %92
  %365 = phi i32 [ -1, %357 ], [ %97, %92 ], [ -1, %316 ], [ 0, %238 ]
  ret i32 %365
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udp_rcv_segment(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 14
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 19, i64 1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 7
  %10 = icmp eq i16 %9, 5
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = or i16 %8, 96
  store i16 %12, ptr %7, align 8
  br label %13

13:                                               ; preds = %11, %2
  %14 = tail call ptr @__skb_gso_segment(ptr noundef %1, i64 noundef %6, i1 noundef zeroext false) #12
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 5
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #12, !srcloc !20
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 %23, ptr elementtype(i32) %24) #12, !srcloc !21
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !14
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 136
  %30 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5), align 4
  %32 = select i1 %29, ptr %30, ptr %31
  %33 = getelementptr [10 x i32], ptr %32, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #11, !srcloc !13
  %38 = add i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %23
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #12, !srcloc !17
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %43

42:                                               ; preds = %13
  tail call void @consume_skb(ptr noundef %1) #12
  br label %43

43:                                               ; preds = %42, %18
  %44 = phi ptr [ null, %18 ], [ %14, %42 ]
  ret ptr %44
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udp_post_segment_fix_csum(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %3 = load i8, ptr %2, align 2
  %4 = icmp ne i8 %3, 0
  %5 = load i1, ptr @udp_post_segment_fix_csum.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  store i1 true, ptr @udp_post_segment_fix_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 500, i32 noundef 9, ptr noundef null) #12
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store i16 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, -32672
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = or i16 %15, -32768
  store i16 %19, ptr %14, align 8
  br label %20

20:                                               ; preds = %18, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_protocol_deliver_rcu(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_enqueue_schedule_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet6_mc_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fl6_sock_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_send_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_flush_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_flush_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_push_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip6_make_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_pre_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @udp_v6_early_demux(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %11 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = add i32 %16, 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  %23 = icmp ugt i32 %17, %22
  br i1 %23, label %24, label %30, !prof !9

24:                                               ; preds = %1
  %25 = icmp ult i32 %19, %17
  br i1 %25, label %181, label %26, !prof !9

26:                                               ; preds = %24
  %27 = sub i32 %17, %22
  %28 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %27) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %181, label %30

30:                                               ; preds = %26, %1
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %32 = load i16, ptr %31, align 8
  %33 = and i16 %32, 7
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %181

35:                                               ; preds = %30
  %36 = load ptr, ptr %6, align 8
  %37 = load i16, ptr %8, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = getelementptr inbounds %struct.udphdr, ptr %39, i32 0, i32 1
  %41 = load i16, ptr %40, align 2
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = getelementptr i8, ptr %36, i32 %44
  %46 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i32 0, i32 6
  %47 = load i16, ptr %39, align 2
  %48 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i32 0, i32 5
  %49 = tail call i16 @llvm.bswap.i16(i16 %41) #12
  %50 = zext i16 %49 to i32
  %51 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef nonnull @init_net, ptr noundef %46, i32 noundef %50) #12
  %52 = load i32, ptr getelementptr inbounds (%struct.udp_table, ptr @udp_table, i32 0, i32 2), align 4
  %53 = and i32 %52, %51
  %54 = load ptr, ptr getelementptr inbounds (%struct.udp_table, ptr @udp_table, i32 0, i32 1), align 4
  %55 = getelementptr %struct.udp_hslot, ptr %54, i32 %53
  %56 = shl nuw i32 %50, 16
  %57 = zext i16 %47 to i32
  %58 = or i32 %56, %57
  %59 = load volatile ptr, ptr %55, align 8
  %60 = icmp eq ptr %59, null
  %61 = getelementptr i8, ptr %59, i32 -24
  %62 = icmp eq ptr %61, null
  %63 = or i1 %60, %62
  br i1 %63, label %181, label %64

64:                                               ; preds = %35
  %65 = getelementptr i8, ptr %59, i32 -6
  %66 = load volatile i8, ptr %65, align 2
  %67 = icmp eq i8 %66, 1
  br i1 %67, label %68, label %181

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %59, i32 -12
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, %58
  br i1 %71, label %72, label %181

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %59, i32 -8
  %74 = load i16, ptr %73, align 8
  %75 = icmp eq i16 %74, 10
  br i1 %75, label %76, label %181

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %59, i32 12
  %78 = load i32, ptr %77, align 4
  %79 = load i32, ptr %48, align 4
  %80 = xor i32 %79, %78
  %81 = getelementptr i8, ptr %59, i32 16
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr [4 x i32], ptr %48, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = xor i32 %84, %82
  %86 = or i32 %85, %80
  %87 = getelementptr i8, ptr %59, i32 20
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr [4 x i32], ptr %48, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = xor i32 %90, %88
  %92 = or i32 %86, %91
  %93 = getelementptr i8, ptr %59, i32 24
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr [4 x i32], ptr %48, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = xor i32 %96, %94
  %98 = or i32 %92, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %181

100:                                              ; preds = %76
  %101 = getelementptr i8, ptr %59, i32 28
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %46, align 4
  %104 = xor i32 %103, %102
  %105 = getelementptr i8, ptr %59, i32 32
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr [4 x i32], ptr %46, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = xor i32 %108, %106
  %110 = or i32 %109, %104
  %111 = getelementptr i8, ptr %59, i32 36
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr [4 x i32], ptr %46, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = xor i32 %114, %112
  %116 = or i32 %110, %115
  %117 = getelementptr i8, ptr %59, i32 40
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr [4 x i32], ptr %46, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = xor i32 %120, %118
  %122 = or i32 %116, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %181

124:                                              ; preds = %100
  %125 = getelementptr i8, ptr %59, i32 -4
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, %5
  %128 = icmp eq i32 %126, 0
  %129 = or i1 %127, %128
  br i1 %129, label %130, label %181

130:                                              ; preds = %124
  %131 = getelementptr i8, ptr %59, i32 76
  %132 = load volatile i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %144, %130
  %135 = phi i32 [ %142, %144 ], [ %132, %130 ]
  %136 = add i32 %135, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #12, !srcloc !20
  br label %137

137:                                              ; preds = %137, %134
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 %135, i32 %136, ptr elementtype(i32) %131) #12, !srcloc !29
  %139 = extractvalue { i32, i32 } %138, 0
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %137

141:                                              ; preds = %137
  %142 = extractvalue { i32, i32 } %138, 1
  %143 = icmp eq i32 %142, %135
  br i1 %143, label %146, label %144, !prof !19

144:                                              ; preds = %141
  %145 = icmp eq i32 %142, 0
  br i1 %145, label %146, label %134

146:                                              ; preds = %144, %141, %130
  %147 = phi i32 [ 0, %130 ], [ 0, %144 ], [ %135, %141 ]
  %148 = add i32 %147, 1
  %149 = or i32 %148, %147
  %150 = icmp sgt i32 %149, -1
  br i1 %150, label %152, label %151, !prof !19

151:                                              ; preds = %146
  tail call void @refcount_warn_saturate(ptr noundef %131, i32 noundef 0) #12
  br label %152

152:                                              ; preds = %151, %146
  %153 = icmp eq i32 %147, 0
  br i1 %153, label %181, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr %61, ptr %155, align 4
  %156 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_efree, ptr %156, align 4
  %157 = getelementptr i8, ptr %59, i32 88
  %158 = load volatile ptr, ptr %157, align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %181, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.dst_entry, ptr %158, i32 0, i32 8
  %162 = load i16, ptr %161, align 2
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %160
  %165 = getelementptr i8, ptr %59, i32 96
  %166 = load i32, ptr %165, align 8
  %167 = getelementptr inbounds %struct.dst_entry, ptr %158, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.dst_ops, ptr %168, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = tail call ptr %170(ptr noundef nonnull %158, i32 noundef %166) #12
  %172 = icmp eq ptr %171, null
  br i1 %172, label %181, label %173

173:                                              ; preds = %164, %160
  %174 = phi ptr [ %171, %164 ], [ %158, %160 ]
  %175 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %176 = load i16, ptr %175, align 2
  %177 = or i16 %176, 16384
  store i16 %177, ptr %175, align 2
  %178 = ptrtoint ptr %174 to i32
  %179 = or i32 %178, 1
  %180 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 %179, ptr %180, align 8
  br label %181

181:                                              ; preds = %173, %164, %154, %152, %124, %100, %76, %72, %68, %64, %35, %30, %26, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udpv6_rcv(ptr noundef %0) #0 {
  %2 = tail call i32 @__udp6_lib_rcv(ptr noundef %0, ptr noundef nonnull @udp_table, i32 noundef 17)
  ret i32 %2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udpv6_err(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #5 {
  %7 = tail call i32 @__udp6_lib_err(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull @udp_table)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149425149}
!11 = !{i64 2149425366}
!12 = !{!"auto-init"}
!13 = !{i64 871054}
!14 = !{i64 852354, i64 852415}
!15 = !{i64 2149621476}
!16 = !{i64 2149621777}
!17 = !{i64 855371}
!18 = !{i8 0, i8 2}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 946676, i64 2148436647, i64 2148436673, i64 2148436720, i64 2148436742, i64 2148436770, i64 2148436790}
!21 = !{i64 2148448062, i64 2148448088, i64 2148448117, i64 2148448151, i64 2148448182, i64 2148448205}
!22 = !{i64 6193666}
!23 = !{i64 2156193727}
!24 = !{i64 2148553803}
!25 = !{i64 2148451877, i64 2148451909, i64 2148451938, i64 2148451972, i64 2148452003, i64 2148452026}
!26 = !{i64 2149705501}
!27 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!28 = !{i64 2148450419, i64 2148450445, i64 2148450474, i64 2148450508, i64 2148450539, i64 2148450562}
!29 = !{i64 932739, i64 932763, i64 932784, i64 932801, i64 932818}
!30 = !{i64 2157452295, i64 2157452777, i64 2157452332, i64 2157452388, i64 2157452422, i64 2157452446, i64 2157452487, i64 2157452508, i64 2157452536, i64 2157452570}
!31 = !{i64 2149331897}
!32 = !{i64 2149327721}
!33 = !{i64 2149327796, i64 2149327823, i64 2149327870, i64 2149327892, i64 2149327920, i64 2149327940}
!34 = !{i64 2149354900}
!35 = !{i64 2154112612, i64 2154113100, i64 2154112649, i64 2154112705, i64 2154112739, i64 2154112763, i64 2154112804, i64 2154112825, i64 2154112853, i64 2154112887}
!36 = !{i64 946494}
