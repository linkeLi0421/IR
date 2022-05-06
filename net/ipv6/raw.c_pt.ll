; ModuleID = '/llk/IR/net/ipv6/raw.c_pt.bc'
source_filename = "../net/ipv6/raw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_v6_hashinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_v6_hashinfo\22\09\09\09\09\09"
module asm "__kstrtabns_raw_v6_hashinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___raw_v6_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__raw_v6_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___raw_v6_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawv6_mh_filter_register:\09\09\09\09\09"
module asm "\09.asciz \09\22rawv6_mh_filter_register\22\09\09\09\09\09"
module asm "__kstrtabns_rawv6_mh_filter_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawv6_mh_filter_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22rawv6_mh_filter_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_rawv6_mh_filter_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_hashinfo = type { %struct.rwlock_t, [256 x %struct.hlist_head] }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.175, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.175 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.static_key_false_deferred = type { %struct.static_key_false }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.176, [0 x i32], %union.anon.177, i16, i16, %union.anon.178, %struct.refcount_struct, [0 x i32], %union.anon.179 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { %struct.hlist_node }
%union.anon.178 = type { i32 }
%union.anon.179 = type { i32 }
%struct.anon.2 = type { i16, i16 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.192 }
%union.anon.192 = type { [1 x i32] }
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
%struct.raw6_sock = type { %struct.inet_sock, i32, i32, %struct.icmp6_filter, i32, %struct.ipv6_pinfo }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.180, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.181, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.182, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.180 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.181 = type { ptr }
%union.anon.182 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.icmp6_filter = type { [8 x i32] }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.188, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.raw6_frag_vec = type { ptr, i32, [4 x i8] }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.174, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.172 }
%union.anon.4 = type { ptr }
%union.anon.172 = type { i64 }
%union.anon.174 = type { ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.190, i32, i32, ptr }
%union.anon.190 = type { ptr }
%struct.anon = type { i32, i32 }
%struct.anon.124 = type { i8, i8 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.raw_iter_state = type { %struct.seq_net_private, i32 }
%struct.seq_net_private = type {}

@raw_v6_hashinfo = dso_local global %struct.raw_hashinfo zeroinitializer, align 4
@__kstrtab_raw_v6_hashinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_v6_hashinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_v6_hashinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_v6_hashinfo to i32), ptr @__kstrtab_raw_v6_hashinfo, ptr @__kstrtabns_raw_v6_hashinfo }, section "___ksymtab_gpl+raw_v6_hashinfo", align 4
@__kstrtab___raw_v6_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___raw_v6_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___raw_v6_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__raw_v6_lookup to i32), ptr @__kstrtab___raw_v6_lookup, ptr @__kstrtabns___raw_v6_lookup }, section "___ksymtab_gpl+__raw_v6_lookup", align 4
@mh_filter = internal global ptr null, section ".data..read_mostly", align 4
@__kstrtab_rawv6_mh_filter_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawv6_mh_filter_register = external dso_local constant [0 x i8], align 1
@__ksymtab_rawv6_mh_filter_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawv6_mh_filter_register to i32), ptr @__kstrtab_rawv6_mh_filter_register, ptr @__kstrtabns_rawv6_mh_filter_register }, section "___ksymtab+rawv6_mh_filter_register", align 4
@__kstrtab_rawv6_mh_filter_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawv6_mh_filter_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_rawv6_mh_filter_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawv6_mh_filter_unregister to i32), ptr @__kstrtab_rawv6_mh_filter_unregister, ptr @__kstrtabns_rawv6_mh_filter_unregister }, section "___ksymtab+rawv6_mh_filter_unregister", align 4
@rawv6_prot = dso_local global %struct.proto { ptr @rawv6_close, ptr null, ptr @ip6_datagram_connect_v6_only, ptr @__udp_disconnect, ptr null, ptr @rawv6_ioctl, ptr @rawv6_init_sk, ptr @raw6_destroy, ptr null, ptr @rawv6_setsockopt, ptr @rawv6_getsockopt, ptr null, ptr @rawv6_sendmsg, ptr @rawv6_recvmsg, ptr null, ptr @rawv6_bind, ptr null, ptr @rawv6_rcv_skb, ptr null, ptr null, ptr @raw_hash_sk, ptr @raw_unhash_sk, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 856, i32 0, i32 712, i32 32, ptr null, ptr null, ptr null, %union.anon.175 { ptr @raw_v6_hashinfo }, ptr null, [32 x i8] c"RAWv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr @raw_abort }, align 4
@raw6_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @raw6_init_net, ptr null, ptr @raw6_exit_net, ptr null, ptr null, i32 0 }, align 4
@inet6_sockraw_ops = dso_local constant %struct.proto_ops { i32 10, ptr null, ptr @inet6_release, ptr @inet6_bind, ptr @inet_dgram_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @inet6_getname, ptr @datagram_poll, ptr @inet6_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet_sendmsg, ptr @sock_common_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rawv6_protosw = internal global %struct.inet_protosw { %struct.list_head zeroinitializer, i16 3, i16 0, ptr @rawv6_prot, ptr @inet6_sockraw_ops, i8 1 }, align 4
@init_net = external dso_local global %struct.net, align 64
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"raw6\00", align 1
@raw6_seq_ops = internal constant %struct.seq_operations { ptr @raw_seq_start, ptr @raw_seq_stop, ptr @raw_seq_next, ptr @raw6_seq_show }, align 4
@.str.4 = private unnamed_addr constant [164 x i8] c"  sl  local_address                         remote_address                        st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab___raw_v6_lookup, ptr @__ksymtab_raw_v6_hashinfo, ptr @__ksymtab_rawv6_mh_filter_register, ptr @__ksymtab_rawv6_mh_filter_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__raw_v6_lookup(ptr nocapture readnone %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load i32, ptr %3, align 4
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 255
  %11 = icmp eq ptr %1, null
  br i1 %11, label %95, label %12

12:                                               ; preds = %7
  %13 = getelementptr [4 x i32], ptr %4, i32 0, i32 1
  %14 = getelementptr [4 x i32], ptr %4, i32 0, i32 2
  %15 = getelementptr [4 x i32], ptr %4, i32 0, i32 3
  %16 = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %17 = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %18 = getelementptr [4 x i32], ptr %3, i32 0, i32 3
  br label %19

19:                                               ; preds = %88, %12
  %20 = phi ptr [ %1, %12 ], [ %92, %88 ]
  %21 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.anon.2, ptr %21, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, %2
  br i1 %24, label %25, label %88

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.sock_common, ptr %20, i32 0, i32 10, i32 0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %27
  %31 = getelementptr %struct.sock_common, ptr %20, i32 0, i32 10, i32 0, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %30, %32
  %34 = getelementptr %struct.sock_common, ptr %20, i32 0, i32 10, i32 0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %25
  %39 = load i32, ptr %4, align 4
  %40 = xor i32 %39, %27
  %41 = load i32, ptr %13, align 4
  %42 = xor i32 %41, %29
  %43 = or i32 %42, %40
  %44 = load i32, ptr %14, align 4
  %45 = xor i32 %44, %32
  %46 = or i32 %43, %45
  %47 = load i32, ptr %15, align 4
  %48 = xor i32 %47, %35
  %49 = or i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %38, %25
  %52 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = icmp eq i32 %53, %5
  %57 = icmp eq i32 %53, %6
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %55, %51
  %60 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 11
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr %struct.sock_common, ptr %20, i32 0, i32 11, i32 0, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, %61
  %65 = getelementptr %struct.sock_common, ptr %20, i32 0, i32 11, i32 0, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %64, %66
  %68 = getelementptr %struct.sock_common, ptr %20, i32 0, i32 11, i32 0, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %67, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %95, label %72

72:                                               ; preds = %59
  %73 = load i32, ptr %3, align 4
  %74 = xor i32 %73, %61
  %75 = load i32, ptr %16, align 4
  %76 = xor i32 %75, %63
  %77 = or i32 %76, %74
  %78 = load i32, ptr %17, align 4
  %79 = xor i32 %78, %66
  %80 = or i32 %77, %79
  %81 = load i32, ptr %18, align 4
  %82 = xor i32 %81, %69
  %83 = or i32 %80, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %72
  br i1 %10, label %86, label %88

86:                                               ; preds = %85
  %87 = tail call zeroext i1 @inet6_mc_check(ptr noundef nonnull %20, ptr noundef %3, ptr noundef %4) #12
  br i1 %87, label %95, label %88

88:                                               ; preds = %86, %85, %55, %38, %19
  %89 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 15
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  %92 = getelementptr i8, ptr %90, i32 -84
  %93 = icmp eq ptr %92, null
  %94 = or i1 %91, %93
  br i1 %94, label %95, label %19

95:                                               ; preds = %88, %86, %72, %59, %7
  %96 = phi ptr [ null, %7 ], [ null, %88 ], [ %20, %59 ], [ %20, %86 ], [ %20, %72 ]
  ret ptr %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet6_mc_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rawv6_mh_filter_register(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  store volatile ptr %0, ptr @mh_filter, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rawv6_mh_filter_unregister(ptr nocapture readnone %0) #0 {
  store volatile ptr null, ptr @mh_filter, align 4
  tail call void @synchronize_rcu() #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @raw6_local_deliver(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.icmp6hdr, align 8
  %4 = and i32 %1, 255
  %5 = getelementptr %struct.raw_hashinfo, ptr @raw_v6_hashinfo, i32 0, i32 1, i32 %4
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -84
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %103, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = getelementptr inbounds %struct.ipv6hdr, ptr %17, i32 0, i32 5
  %19 = getelementptr %struct.ipv6hdr, ptr %17, i32 0, i32 6
  tail call void @_raw_read_lock(ptr noundef nonnull @raw_v6_hashinfo) #12
  %20 = load volatile ptr, ptr %5, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr i8, ptr %20, i32 -84
  %23 = icmp eq ptr %22, null
  %24 = or i1 %21, %23
  br i1 %24, label %96, label %25

25:                                               ; preds = %11
  %26 = trunc i32 %1 to i16
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = tail call ptr @__raw_v6_lookup(ptr undef, ptr noundef nonnull %22, i16 noundef zeroext %26, ptr noundef %19, ptr noundef %18, i32 noundef %28, i32 noundef 0) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %96, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %36 = icmp eq ptr %0, null
  br label %37

37:                                               ; preds = %87, %31
  %38 = phi ptr [ %29, %31 ], [ %94, %87 ]
  switch i32 %1, label %82 [
    i32 58, label %39
    i32 135, label %73
  ]

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !10
  %40 = load ptr, ptr %12, align 8
  %41 = load i16, ptr %32, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = load ptr, ptr %33, align 4
  %45 = ptrtoint ptr %43 to i32
  %46 = ptrtoint ptr %44 to i32
  %47 = sub i32 %45, %46
  %48 = load i32, ptr %34, align 8
  %49 = load i32, ptr %35, align 4
  %50 = add i32 %49, %47
  %51 = sub i32 %48, %50
  %52 = icmp sgt i32 %51, 3
  br i1 %52, label %57, label %53, !prof !11

53:                                               ; preds = %39
  br i1 %36, label %71, label %54

54:                                               ; preds = %53
  %55 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %47, ptr noundef nonnull %3, i32 noundef 4) #12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %71, label %60

57:                                               ; preds = %39
  %58 = getelementptr i8, ptr %44, i32 %47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %57, %54
  %61 = phi ptr [ %58, %57 ], [ %3, %54 ]
  %62 = getelementptr inbounds %struct.raw6_sock, ptr %38, i32 0, i32 3
  %63 = load i8, ptr %61, align 4
  %64 = zext i8 %63 to i32
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr %62, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = lshr i32 %67, %68
  %70 = and i32 %69, 1
  br label %71

71:                                               ; preds = %60, %57, %54, %53
  %72 = phi i32 [ %70, %60 ], [ 1, %57 ], [ 1, %53 ], [ 1, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %79

73:                                               ; preds = %37
  %74 = load volatile ptr, ptr @mh_filter, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = call i32 %74(ptr noundef nonnull %38, ptr noundef %0) #12
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %76, %71
  %80 = phi i32 [ %77, %76 ], [ %72, %71 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79, %73, %37
  %83 = call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = call i32 @rawv6_rcv(ptr noundef nonnull %38, ptr noundef nonnull %83) #12
  br label %87

87:                                               ; preds = %85, %82, %79
  %88 = getelementptr inbounds %struct.sock_common, ptr %38, i32 0, i32 15
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  %91 = getelementptr i8, ptr %89, i32 -84
  %92 = select i1 %90, ptr null, ptr %91
  %93 = load i32, ptr %27, align 8
  %94 = call ptr @__raw_v6_lookup(ptr undef, ptr noundef %92, i16 noundef zeroext %26, ptr noundef %19, ptr noundef %18, i32 noundef %93, i32 noundef 0) #12
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %37

96:                                               ; preds = %87, %76, %25, %11
  %97 = phi i1 [ false, %11 ], [ false, %25 ], [ true, %76 ], [ true, %87 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @raw_v6_hashinfo) #12, !srcloc !13
  %98 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @raw_v6_hashinfo) #12, !srcloc !14
  %99 = extractvalue { i32, i32 } %98, 0
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  br label %102

102:                                              ; preds = %101, %96
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %103

103:                                              ; preds = %102, %2
  %104 = phi i1 [ false, %2 ], [ %97, %102 ]
  ret i1 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @raw6_icmp_error(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = and i32 %1, 255
  tail call void @_raw_read_lock(ptr noundef nonnull @raw_v6_hashinfo) #12
  %9 = getelementptr %struct.raw_hashinfo, ptr @raw_v6_hashinfo, i32 0, i32 1, i32 %8
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -84
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %90, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ipv6hdr, ptr %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.ipv6hdr, ptr %17, i32 0, i32 6
  %20 = trunc i32 %1 to i16
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = call ptr @__raw_v6_lookup(ptr undef, ptr noundef nonnull %12, i16 noundef zeroext %20, ptr noundef %18, ptr noundef %19, i32 noundef %22, i32 noundef %22)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %90, label %25

25:                                               ; preds = %15
  %26 = call i32 @llvm.bswap.i32(i32 %5) #12
  br label %27

27:                                               ; preds = %81, %25
  %28 = phi ptr [ %23, %25 ], [ %88, %81 ]
  %29 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 4
  %30 = load volatile i8, ptr %29, align 2
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, -4161
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.inet_sock, ptr %28, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  br label %38

38:                                               ; preds = %35, %27
  %39 = phi ptr [ %37, %35 ], [ null, %27 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !10
  %40 = getelementptr inbounds %struct.ipv6_pinfo, ptr %39, i32 0, i32 9
  %41 = load i16, ptr %40, align 2
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load volatile i8, ptr %29, align 2
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %47, label %81

47:                                               ; preds = %44, %38
  %48 = call i32 @icmpv6_err_convert(i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull %7) #12
  switch i8 %2, label %49 [
    i8 2, label %51
    i8 -119, label %56
  ]

49:                                               ; preds = %47
  %50 = load i16, ptr %40, align 2
  br label %57

51:                                               ; preds = %47
  call void @ip6_sk_update_pmtu(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %5) #12
  %52 = load i16, ptr %40, align 2
  %53 = and i16 %52, 56
  %54 = icmp eq i16 %53, 16
  %55 = zext i1 %54 to i32
  br label %57

56:                                               ; preds = %47
  call void @ip6_sk_redirect(ptr noundef %0, ptr noundef nonnull %28) #12
  br label %81

57:                                               ; preds = %51, %49
  %58 = phi i16 [ %52, %51 ], [ %50, %49 ]
  %59 = phi i32 [ %55, %51 ], [ %48, %49 ]
  %60 = and i16 %58, 1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %16, align 4
  %64 = getelementptr inbounds %struct.inet_sock, ptr %28, i32 0, i32 12
  %65 = load i16, ptr %64, align 8
  %66 = and i16 %65, 8
  %67 = icmp eq i16 %66, 0
  %68 = select i1 %67, i32 %4, i32 0
  %69 = getelementptr i8, ptr %63, i32 %68
  %70 = load i32, ptr %7, align 4
  call void @ipv6_icmp_error(ptr noundef nonnull %28, ptr noundef %0, i32 noundef %70, i16 noundef zeroext 0, i32 noundef %26, ptr noundef %69) #12
  %71 = load i16, ptr %40, align 2
  %72 = and i16 %71, 1
  %73 = icmp ne i16 %72, 0
  br label %74

74:                                               ; preds = %62, %57
  %75 = phi i1 [ %73, %62 ], [ false, %57 ]
  %76 = icmp ne i32 %59, 0
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, ptr %7, align 4
  %80 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 51
  store i32 %79, ptr %80, align 4
  call void @sk_error_report(ptr noundef nonnull %28) #12
  br label %81

81:                                               ; preds = %78, %74, %56, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %82 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 15
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  %85 = getelementptr i8, ptr %83, i32 -84
  %86 = select i1 %84, ptr null, ptr %85
  %87 = load i32, ptr %21, align 8
  %88 = call ptr @__raw_v6_lookup(ptr undef, ptr noundef %86, i16 noundef zeroext %20, ptr noundef %18, ptr noundef %19, i32 noundef %87, i32 noundef %87)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %27

90:                                               ; preds = %81, %15, %6
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @raw_v6_hashinfo) #12, !srcloc !13
  %91 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @raw_v6_hashinfo) #12, !srcloc !14
  %92 = extractvalue { i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  br label %95

95:                                               ; preds = %94, %90
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rawv6_rcv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  br i1 %47, label %48, label %58

48:                                               ; preds = %42, %37
  %49 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #12
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %48, %33, %8
  %53 = phi i32 [ %9, %8 ], [ %36, %33 ], [ %51, %48 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #12, !srcloc !13
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #12, !srcloc !18
  br label %259

58:                                               ; preds = %52, %42, %27, %17
  %59 = getelementptr inbounds %struct.raw6_sock, ptr %0, i32 0, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %63 = load i16, ptr %62, align 8
  br i1 %61, label %64, label %67

64:                                               ; preds = %58
  %65 = and i16 %63, -97
  %66 = or i16 %65, 32
  store i16 %66, ptr %62, align 8
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi i16 [ %66, %64 ], [ %63, %58 ]
  %69 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %70 = and i16 %68, 96
  %71 = icmp eq i16 %70, 64
  br i1 %71, label %72, label %130

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %76 = lshr i16 %68, 5
  %77 = trunc i16 %76 to i2
  switch i2 %77, label %105 [
    i2 -2, label %78
    i2 -1, label %92
  ]

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %80 = load i16, ptr %79, align 2
  %81 = zext i16 %80 to i32
  %82 = load i16, ptr %75, align 4
  %83 = zext i16 %82 to i32
  %84 = sub nsw i32 %81, %83
  %85 = getelementptr i8, ptr %74, i32 %83
  %86 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = sub i32 0, %87
  %89 = tail call i32 @csum_partial(ptr noundef %85, i32 noundef %84, i32 noundef %88) #12
  %90 = sub i32 0, %89
  store i32 %90, ptr %86, align 4
  %91 = load ptr, ptr %73, align 8
  br label %105

92:                                               ; preds = %72
  %93 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %94 = load i16, ptr %93, align 4
  %95 = zext i16 %94 to i32
  %96 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %97 = load ptr, ptr %96, align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = ptrtoint ptr %74 to i32
  %100 = add i32 %95, %99
  %101 = sub i32 %100, %98
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = and i16 %68, -97
  store i16 %104, ptr %69, align 8
  br label %105

105:                                              ; preds = %103, %92, %78, %72
  %106 = phi ptr [ %74, %72 ], [ %91, %78 ], [ %74, %92 ], [ %74, %103 ]
  %107 = load i16, ptr %75, align 4
  %108 = zext i16 %107 to i32
  %109 = getelementptr i8, ptr %106, i32 %108
  %110 = getelementptr inbounds %struct.ipv6hdr, ptr %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.ipv6hdr, ptr %109, i32 0, i32 6
  %112 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %113 = load i32, ptr %112, align 8
  %114 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %115 = getelementptr inbounds %struct.anon.2, ptr %114, i32 0, i32 1
  %116 = load i16, ptr %115, align 2
  %117 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %113) #12
  %120 = and i16 %116, 255
  %121 = zext i16 %120 to i32
  %122 = shl nuw i32 %121, 24
  %123 = tail call i32 @__csum_ipv6_magic(ptr noundef %110, ptr noundef %111, i32 noundef %119, i32 noundef %122, i32 noundef %118) #12
  %124 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %123) #13, !srcloc !19
  %125 = icmp ugt i32 %124, -65537
  %126 = load i16, ptr %69, align 8
  br i1 %125, label %127, label %130

127:                                              ; preds = %105
  %128 = and i16 %126, -97
  %129 = or i16 %128, 32
  store i16 %129, ptr %69, align 8
  br label %130

130:                                              ; preds = %127, %105, %67
  %131 = phi i16 [ %129, %127 ], [ %68, %67 ], [ %126, %105 ]
  %132 = lshr i16 %131, 5
  %133 = and i16 %132, 3
  %134 = icmp ne i16 %133, 1
  %135 = icmp sgt i16 %131, -1
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %177

137:                                              ; preds = %130
  %138 = icmp eq i16 %133, 3
  br i1 %138, label %142, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %141 = load ptr, ptr %140, align 8
  br label %155

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %144 = load i16, ptr %143, align 4
  %145 = zext i16 %144 to i32
  %146 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %149 = load ptr, ptr %148, align 8
  %150 = ptrtoint ptr %147 to i32
  %151 = ptrtoint ptr %149 to i32
  %152 = sub i32 %145, %150
  %153 = add i32 %152, %151
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %142, %139
  %156 = phi ptr [ %141, %139 ], [ %149, %142 ]
  %157 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %158 = load i16, ptr %157, align 4
  %159 = zext i16 %158 to i32
  %160 = getelementptr i8, ptr %156, i32 %159
  %161 = getelementptr inbounds %struct.ipv6hdr, ptr %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.ipv6hdr, ptr %160, i32 0, i32 6
  %163 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %164 = load i32, ptr %163, align 8
  %165 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %166 = getelementptr inbounds %struct.anon.2, ptr %165, i32 0, i32 1
  %167 = load i16, ptr %166, align 2
  %168 = tail call i32 @llvm.bswap.i32(i32 %164) #12
  %169 = and i16 %167, 255
  %170 = zext i16 %169 to i32
  %171 = shl nuw i32 %170, 24
  %172 = tail call i32 @__csum_ipv6_magic(ptr noundef %161, ptr noundef %162, i32 noundef %168, i32 noundef %171, i32 noundef 0) #12
  %173 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %172) #13, !srcloc !19
  %174 = lshr i32 %173, 16
  %175 = or i32 %174, -65536
  %176 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i32 %175, ptr %176, align 4
  br label %177

177:                                              ; preds = %155, %142, %130
  %178 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %179 = load i16, ptr %178, align 8
  %180 = and i16 %179, 8
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %210, label %182

182:                                              ; preds = %177
  %183 = load i16, ptr %69, align 8
  %184 = lshr i16 %183, 5
  %185 = and i16 %184, 3
  %186 = icmp ne i16 %185, 1
  %187 = icmp sgt i16 %183, -1
  %188 = select i1 %186, i1 %187, i1 false
  br i1 %188, label %189, label %210

189:                                              ; preds = %182
  %190 = icmp eq i16 %185, 3
  br i1 %190, label %191, label %204

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %193 = load i16, ptr %192, align 4
  %194 = zext i16 %193 to i32
  %195 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %198 = load ptr, ptr %197, align 8
  %199 = ptrtoint ptr %196 to i32
  %200 = ptrtoint ptr %198 to i32
  %201 = sub i32 %194, %199
  %202 = add i32 %201, %200
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %191, %189
  %205 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %1) #12
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %208) #12, !srcloc !13
  %209 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %208, ptr %208, i32 1, ptr elementtype(i32) %208) #12, !srcloc !18
  br label %259

210:                                              ; preds = %204, %191, %182, %177
  %211 = load i32, ptr %59, align 8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 16
  %215 = load volatile ptr, ptr %214, align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %245, label %217

217:                                              ; preds = %213, %210
  %218 = load i16, ptr %69, align 8
  %219 = lshr i16 %218, 5
  %220 = and i16 %219, 3
  %221 = icmp ne i16 %220, 1
  %222 = icmp sgt i16 %218, -1
  %223 = select i1 %221, i1 %222, i1 false
  br i1 %223, label %224, label %245

224:                                              ; preds = %217
  %225 = icmp eq i16 %220, 3
  br i1 %225, label %226, label %239

226:                                              ; preds = %224
  %227 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %228 = load i16, ptr %227, align 4
  %229 = zext i16 %228 to i32
  %230 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %233 = load ptr, ptr %232, align 8
  %234 = ptrtoint ptr %231 to i32
  %235 = ptrtoint ptr %233 to i32
  %236 = sub i32 %229, %234
  %237 = add i32 %236, %235
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %226, %224
  %240 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %1) #12
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %243) #12, !srcloc !13
  %244 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %243, ptr %243, i32 1, ptr elementtype(i32) %243) #12, !srcloc !18
  br label %259

245:                                              ; preds = %239, %226, %217, %213
  %246 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %247 = load i32, ptr %246, align 8
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %245
  %250 = and i32 %247, 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = and i32 %247, -2
  %254 = inttoptr i32 %253 to ptr
  tail call void @dst_release(ptr noundef %254) #12
  br label %255

255:                                              ; preds = %252, %249
  store i32 0, ptr %246, align 8
  br label %256

256:                                              ; preds = %255, %245
  %257 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef %1) #12
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %256, %242, %207, %55
  %260 = phi i32 [ 1, %55 ], [ 1, %207 ], [ 0, %256 ], [ 0, %242 ]
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %261

261:                                              ; preds = %259, %256
  %262 = phi i32 [ 0, %256 ], [ %260, %259 ]
  ret i32 %262
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawv6_rcv_skb(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.raw6_sock, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 16
  %8 = load volatile ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %12 = load i16, ptr %11, align 8
  %13 = lshr i16 %12, 5
  %14 = and i16 %13, 3
  %15 = icmp ne i16 %14, 1
  %16 = icmp sgt i16 %12, -1
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %39

18:                                               ; preds = %10
  %19 = icmp eq i16 %14, 3
  br i1 %19, label %20, label %33

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8
  %28 = ptrtoint ptr %25 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %23, %28
  %31 = add i32 %30, %29
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %20, %18
  %34 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %1) #12
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #12, !srcloc !13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #12, !srcloc !18
  br label %53

39:                                               ; preds = %33, %20, %10, %6
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = and i32 %41, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = and i32 %41, -2
  %48 = inttoptr i32 %47 to ptr
  tail call void @dst_release(ptr noundef %48) #12
  br label %49

49:                                               ; preds = %46, %43
  store i32 0, ptr %40, align 8
  br label %50

50:                                               ; preds = %49, %39
  %51 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef %1) #12
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %36
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ 0, %50 ], [ 1, %53 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rawv6_close(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.2, ptr %3, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 255
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @ip6_ra_control(ptr noundef %0, i32 noundef -1) #12
  br label %9

9:                                                ; preds = %7, %2
  tail call void @sk_common_release(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_connect_v6_only(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_disconnect(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawv6_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %1, label %34 [
    i32 21521, label %4
    i32 21531, label %15
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %6 = load volatile i32, ptr %5, align 4
  %7 = add i32 %6, -1
  %8 = inttoptr i32 %2 to ptr
  %9 = tail call ptr @llvm.thread.pointer() #12
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #10, !srcloc !20
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %7, i32 -1090519041) #12, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  br label %34

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %17) #12
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
  tail call void @_raw_spin_unlock_bh(ptr noundef %17) #12
  %27 = inttoptr i32 %2 to ptr
  %28 = tail call ptr @llvm.thread.pointer() #12
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %29) #10, !srcloc !20
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %27, i32 %26, i32 -1090519041) #12, !srcloc !24
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  br label %34

34:                                               ; preds = %25, %4, %3
  %35 = phi i32 [ %33, %25 ], [ %14, %4 ], [ -515, %3 ]
  ret i32 %35
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rawv6_init_sk(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.anon.2, ptr %2, i32 0, i32 1
  %4 = load i16, ptr %3, align 2
  switch i16 %4, label %10 [
    i16 58, label %6
    i16 135, label %5
  ]

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i32 [ 4, %5 ], [ 2, %1 ]
  %8 = getelementptr inbounds %struct.raw6_sock, ptr %0, i32 0, i32 1
  store i32 1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.raw6_sock, ptr %0, i32 0, i32 2
  store i32 %7, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @raw6_destroy(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #12
  tail call void @ip6_flush_pending_frames(ptr noundef %0) #12
  tail call void @release_sock(ptr noundef %0) #12
  tail call void @inet6_destroy_sock(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawv6_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  switch i32 %1, label %41 [
    i32 255, label %43
    i32 58, label %7
    i32 41, label %40
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.anon.2, ptr %8, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 58
  br i1 %11, label %12, label %103

12:                                               ; preds = %7
  %13 = icmp eq i32 %2, 1
  br i1 %13, label %14, label %103

14:                                               ; preds = %12
  %15 = tail call i32 @llvm.umin.i32(i32 %4, i32 32) #12
  %16 = getelementptr inbounds %struct.raw6_sock, ptr %0, i32 0, i32 3
  %17 = extractvalue [2 x i32] %3, 0
  %18 = inttoptr i32 %17 to ptr
  %19 = extractvalue [2 x i32] %3, 1
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 %15, i32 -1090519040) #13, !srcloc !25
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33, !prof !11

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #12
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #10, !srcloc !20
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %32 = tail call i32 @arm_copy_from_user(ptr noundef %16, ptr noundef %18, i32 noundef %15) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  br label %33

33:                                               ; preds = %26, %22
  %34 = phi i32 [ %32, %26 ], [ %15, %22 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %103, label %36, !prof !11

36:                                               ; preds = %33
  %37 = sub i32 %15, %34
  %38 = getelementptr i8, ptr %16, i32 %37
  tail call void @llvm.memset.p0.i32(ptr align 1 %38, i8 0, i32 %34, i1 false) #12
  br label %103

39:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %18, i32 %15, i1 false) #12
  br label %103

40:                                               ; preds = %5
  switch i32 %2, label %41 [
    i32 36, label %43
    i32 7, label %43
  ]

41:                                               ; preds = %40, %5
  %42 = tail call i32 @ipv6_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #12
  br label %103

43:                                               ; preds = %40, %40, %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !10
  %44 = icmp ult i32 %4, 4
  br i1 %44, label %101, label %45

45:                                               ; preds = %43
  %46 = extractvalue [2 x i32] %3, 0
  %47 = inttoptr i32 %46 to ptr
  %48 = extractvalue [2 x i32] %3, 1
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %47, i32 4, i32 -1090519040) #13, !srcloc !25
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63, !prof !11

55:                                               ; preds = %51
  %56 = tail call ptr @llvm.thread.pointer() #12
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %58 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %57) #10, !srcloc !20
  %59 = and i32 %58, -13
  %60 = or i32 %59, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %61 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %47, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #12, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63, !prof !11

63:                                               ; preds = %55, %51
  %64 = phi i32 [ %61, %55 ], [ 4, %51 ]
  %65 = sub i32 4, %64
  %66 = getelementptr i8, ptr %6, i32 %65
  call void @llvm.memset.p0.i32(ptr align 1 %66, i8 0, i32 %64, i1 false) #12
  br label %101

67:                                               ; preds = %45
  %68 = load i32, ptr %47, align 1
  store i32 %68, ptr %6, align 4
  br label %69

69:                                               ; preds = %67, %55
  switch i32 %2, label %101 [
    i32 36, label %70
    i32 7, label %82
  ]

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %72 = load i16, ptr %71, align 2
  %73 = icmp eq i16 %72, 3
  br i1 %73, label %74, label %101

74:                                               ; preds = %70
  %75 = load i32, ptr %6, align 4
  %76 = icmp eq i32 %75, 0
  %77 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %78 = load i16, ptr %77, align 8
  %79 = select i1 %76, i16 0, i16 8
  %80 = and i16 %78, -9
  %81 = or i16 %80, %79
  store i16 %81, ptr %77, align 8
  br label %101

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %84 = getelementptr inbounds %struct.anon.2, ptr %83, i32 0, i32 1
  %85 = load i16, ptr %84, align 2
  %86 = icmp eq i16 %85, 58
  %87 = icmp eq i32 %1, 41
  %88 = and i1 %87, %86
  br i1 %88, label %101, label %89

89:                                               ; preds = %82
  %90 = load i32, ptr %6, align 4
  %91 = icmp slt i32 %90, 1
  %92 = and i32 %90, 1
  %93 = icmp eq i32 %92, 0
  %94 = or i1 %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = icmp slt i32 %90, 0
  %97 = getelementptr inbounds %struct.raw6_sock, ptr %0, i32 0, i32 1
  br i1 %96, label %98, label %99

98:                                               ; preds = %95
  store i32 0, ptr %97, align 8
  br label %101

99:                                               ; preds = %95
  store i32 1, ptr %97, align 8
  %100 = getelementptr inbounds %struct.raw6_sock, ptr %0, i32 0, i32 2
  store i32 %90, ptr %100, align 4
  br label %101

101:                                              ; preds = %99, %98, %89, %82, %74, %70, %69, %63, %43
  %102 = phi i32 [ 0, %74 ], [ -22, %43 ], [ -22, %70 ], [ -22, %82 ], [ -22, %89 ], [ 0, %99 ], [ 0, %98 ], [ -92, %69 ], [ -14, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %103

103:                                              ; preds = %101, %41, %39, %36, %33, %12, %7
  %104 = phi i32 [ %42, %41 ], [ %102, %101 ], [ -95, %7 ], [ -92, %12 ], [ 0, %39 ], [ 0, %33 ], [ -14, %36 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawv6_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  switch i32 %1, label %48 [
    i32 255, label %50
    i32 58, label %7
    i32 41, label %47
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.anon.2, ptr %8, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 58
  br i1 %11, label %12, label %97

12:                                               ; preds = %7
  %13 = icmp eq i32 %2, 1
  br i1 %13, label %14, label %97

14:                                               ; preds = %12
  %15 = tail call ptr @llvm.thread.pointer() #12
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #10, !srcloc !20
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %20 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #12, !srcloc !26
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %97

24:                                               ; preds = %14
  %25 = icmp slt i32 %22, 0
  br i1 %25, label %97, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @llvm.umin.i32(i32 %22, i32 32) #12
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #10, !srcloc !20
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %27, i32 -1090519041) #12, !srcloc !27
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %97

33:                                               ; preds = %26
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %27, i32 -1090519040) #13, !srcloc !28
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.raw6_sock, ptr %0, i32 0, i32 3
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #10, !srcloc !20
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %42 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %38, i32 noundef %27) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i32 [ %42, %37 ], [ %27, %33 ]
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 -14
  br label %97

47:                                               ; preds = %5
  switch i32 %2, label %48 [
    i32 36, label %50
    i32 7, label %50
  ]

48:                                               ; preds = %47, %5
  %49 = tail call i32 @ipv6_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #12
  br label %97

50:                                               ; preds = %47, %47, %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %51 = tail call ptr @llvm.thread.pointer() #12
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %52) #10, !srcloc !20
  %54 = and i32 %53, -13
  %55 = or i32 %54, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %56 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #12, !srcloc !29
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = extractvalue { i32, i32 } %56, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %50
  switch i32 %2, label %95 [
    i32 36, label %61
    i32 7, label %67
  ]

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %63 = load i16, ptr %62, align 8
  %64 = lshr i16 %63, 3
  %65 = and i16 %64, 1
  %66 = zext i16 %65 to i32
  store i32 %66, ptr %6, align 4
  br label %75

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.raw6_sock, ptr %0, i32 0, i32 1
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 -1, ptr %6, align 4
  br label %75

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.raw6_sock, ptr %0, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %6, align 4
  br label %75

75:                                               ; preds = %72, %71, %61
  %76 = tail call i32 @llvm.umin.i32(i32 %58, i32 4) #12
  %77 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %52) #10, !srcloc !20
  %78 = and i32 %77, -13
  %79 = or i32 %78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %80 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %76, i32 -1090519041) #12, !srcloc !30
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %76, i32 -1090519040) #13, !srcloc !28
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %52) #10, !srcloc !20
  %88 = and i32 %87, -13
  %89 = or i32 %88, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %90 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %6, i32 noundef %76) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #12, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  br label %91

91:                                               ; preds = %86, %82
  %92 = phi i32 [ %90, %86 ], [ %76, %82 ]
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 0, i32 -14
  br label %95

95:                                               ; preds = %91, %75, %60, %50
  %96 = phi i32 [ -14, %50 ], [ -92, %60 ], [ -14, %75 ], [ %94, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %97

97:                                               ; preds = %95, %48, %43, %26, %24, %14, %12, %7
  %98 = phi i32 [ %49, %48 ], [ %96, %95 ], [ -95, %7 ], [ -14, %14 ], [ -22, %24 ], [ -14, %26 ], [ -92, %12 ], [ %46, %43 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawv6_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ipv6_txoptions, align 4
  %5 = alloca %struct.in6_addr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.raw6_frag_vec, align 4
  %8 = alloca %struct.flowi6, align 8
  %9 = alloca %struct.ipcm6_cookie, align 8
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !10
  %11 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !10
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %13 = load volatile i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, -4161
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi ptr [ %20, %18 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  %23 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  %25 = icmp slt i32 %2, 0
  br i1 %25, label %405, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %405

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %33 = load i16, ptr %32, align 8
  %34 = lshr i16 %33, 3
  %35 = and i16 %34, 1
  %36 = zext i16 %35 to i32
  store i32 %36, ptr %10, align 4
  %37 = load volatile i32, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %8, i8 0, i32 88, i1 false)
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 2
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 8
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %41, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i32 16, i1 false) #12
  %44 = getelementptr inbounds i8, ptr %9, i32 16
  store i16 -1, ptr %44, align 8
  %45 = getelementptr inbounds i8, ptr %9, i32 18
  store i16 -1, ptr %45, align 2
  %46 = getelementptr inbounds i8, ptr %9, i32 20
  store i16 0, ptr %46, align 4
  %47 = getelementptr inbounds i8, ptr %9, i32 22
  store i8 -1, ptr %47, align 2
  %48 = getelementptr inbounds i8, ptr %9, i32 23
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(9) %48, i8 0, i32 9, i1 false) #12
  %49 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %50 = load i16, ptr %49, align 8
  %51 = getelementptr inbounds %struct.sockcm_cookie, ptr %9, i32 0, i32 2
  store i16 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sockcm_cookie, ptr %9, i32 0, i32 1
  store i32 %39, ptr %52, align 8
  %53 = icmp eq ptr %11, null
  br i1 %53, label %146, label %54

54:                                               ; preds = %31
  %55 = icmp slt i32 %24, 24
  br i1 %55, label %405, label %56

56:                                               ; preds = %54
  %57 = load i16, ptr %11, align 4
  switch i16 %57, label %405 [
    i16 0, label %58
    i16 10, label %58
  ]

58:                                               ; preds = %56, %56
  %59 = getelementptr inbounds %struct.sockaddr_in6, ptr %11, i32 0, i32 1
  %60 = load i16, ptr %59, align 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %64 = getelementptr inbounds %struct.anon.2, ptr %63, i32 0, i32 1
  %65 = load i16, ptr %64, align 2
  br label %72

66:                                               ; preds = %58
  %67 = tail call i16 @llvm.bswap.i16(i16 %60)
  %68 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %69 = getelementptr inbounds %struct.anon.2, ptr %68, i32 0, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = icmp eq i16 %67, %70
  br i1 %71, label %72, label %405

72:                                               ; preds = %66, %62
  %73 = phi i16 [ %67, %66 ], [ %65, %62 ]
  %74 = icmp ugt i16 %73, 255
  br i1 %74, label %405, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.sockaddr_in6, ptr %11, i32 0, i32 3
  %77 = getelementptr inbounds %struct.ipv6_pinfo, ptr %22, i32 0, i32 9
  %78 = load i16, ptr %77, align 2
  %79 = and i16 %78, 2
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.sockaddr_in6, ptr %11, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, -241
  %85 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 3
  store i32 %84, ptr %85, align 8
  %86 = and i32 %83, -61696
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %81
  %89 = load volatile i32, ptr @ipv6_flowlabel_exclusive, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %99, !prof !31

91:                                               ; preds = %88
  %92 = load volatile i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 17), align 16
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = tail call ptr @__fl6_sock_lookup(ptr noundef %0, i32 noundef %84) #12
  %96 = icmp eq ptr %95, null
  %97 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  %98 = or i1 %96, %97
  br i1 %98, label %405, label %99

99:                                               ; preds = %94, %91, %88, %81, %75
  %100 = phi ptr [ null, %81 ], [ null, %75 ], [ null, %91 ], [ null, %88 ], [ %95, %94 ]
  %101 = load volatile i8, ptr %12, align 2
  %102 = icmp eq i8 %101, 1
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %105 = load i32, ptr %76, align 4
  %106 = load i32, ptr %104, align 4
  %107 = xor i32 %106, %105
  %108 = getelementptr %struct.sockaddr_in6, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = xor i32 %111, %109
  %113 = or i32 %112, %107
  %114 = getelementptr %struct.sockaddr_in6, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = xor i32 %117, %115
  %119 = or i32 %113, %118
  %120 = getelementptr %struct.sockaddr_in6, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = xor i32 %123, %121
  %125 = or i32 %119, %124
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, ptr %104, ptr %76
  br label %128

128:                                              ; preds = %103, %99
  %129 = phi ptr [ %76, %99 ], [ %127, %103 ]
  %130 = icmp ugt i32 %24, 27
  %131 = trunc i16 %73 to i8
  br i1 %130, label %132, label %161

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.sockaddr_in6, ptr %11, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %161, label %136

136:                                              ; preds = %132
  %137 = tail call i32 @__ipv6_addr_type(ptr noundef %129) #12
  %138 = and i32 %137, 32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %136
  %141 = and i32 %137, 2
  %142 = icmp ne i32 %141, 0
  %143 = and i32 %137, 48
  %144 = icmp ne i32 %143, 0
  %145 = and i1 %142, %144
  br i1 %145, label %158, label %161

146:                                              ; preds = %31
  %147 = load volatile i8, ptr %12, align 2
  %148 = icmp eq i8 %147, 1
  br i1 %148, label %149, label %405

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %151 = getelementptr inbounds %struct.anon.2, ptr %150, i32 0, i32 1
  %152 = load i16, ptr %151, align 2
  %153 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %154 = getelementptr inbounds %struct.ipv6_pinfo, ptr %22, i32 0, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 3
  store i32 %155, ptr %156, align 8
  %157 = trunc i16 %152 to i8
  br label %161

158:                                              ; preds = %140, %136
  %159 = load i32, ptr %133, align 4
  store i32 %159, ptr %8, align 8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158, %149, %140, %132, %128
  %162 = phi i8 [ %131, %158 ], [ %131, %140 ], [ %131, %132 ], [ %131, %128 ], [ %157, %149 ]
  %163 = phi ptr [ %100, %158 ], [ %100, %140 ], [ %100, %132 ], [ %100, %128 ], [ null, %149 ]
  %164 = phi ptr [ %129, %158 ], [ %129, %140 ], [ %129, %132 ], [ %129, %128 ], [ %153, %149 ]
  %165 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %166 = load i32, ptr %165, align 4
  store i32 %166, ptr %8, align 8
  br label %167

167:                                              ; preds = %161, %158
  %168 = phi i8 [ %162, %161 ], [ %131, %158 ]
  %169 = phi ptr [ %163, %161 ], [ %100, %158 ]
  %170 = phi ptr [ %164, %161 ], [ %129, %158 ]
  %171 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %172 = load i32, ptr %171, align 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %210, label %174

174:                                              ; preds = %167
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false)
  %175 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 1
  store i32 36, ptr %175, align 4
  %176 = getelementptr inbounds %struct.ipcm6_cookie, ptr %9, i32 0, i32 5
  store ptr %4, ptr %176, align 8
  %177 = call i32 @ip6_datagram_send_ctl(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = icmp eq ptr %169, null
  br i1 %180, label %405, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.ip6_flowlabel, ptr %169, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %182) #12, !srcloc !13
  %183 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %182, ptr %182, i32 1, ptr elementtype(i32) %182) #12, !srcloc !32
  br label %405

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 3
  %186 = load i32, ptr %185, align 8
  %187 = and i32 %186, -61696
  %188 = icmp eq i32 %187, 0
  %189 = icmp ne ptr %169, null
  %190 = or i1 %189, %188
  br i1 %190, label %202, label %191

191:                                              ; preds = %184
  %192 = load volatile i32, ptr @ipv6_flowlabel_exclusive, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %202, !prof !31

194:                                              ; preds = %191
  %195 = load volatile i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 17), align 16
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %194
  %198 = call ptr @__fl6_sock_lookup(ptr noundef %0, i32 noundef %186) #12
  %199 = icmp eq ptr %198, null
  %200 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  %201 = or i1 %199, %200
  br i1 %201, label %405, label %202

202:                                              ; preds = %197, %194, %191, %184
  %203 = phi ptr [ %169, %184 ], [ null, %194 ], [ null, %191 ], [ %198, %197 ]
  %204 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 3
  %205 = load i16, ptr %204, align 2
  %206 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 2
  %207 = load i16, ptr %206, align 4
  %208 = or i16 %207, %205
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %202, %167
  %211 = phi ptr [ %169, %167 ], [ %203, %202 ]
  %212 = call fastcc ptr @txopt_get(ptr noundef %22)
  br label %213

213:                                              ; preds = %210, %202
  %214 = phi ptr [ %211, %210 ], [ %203, %202 ]
  %215 = phi ptr [ %212, %210 ], [ null, %202 ]
  %216 = phi ptr [ %212, %210 ], [ %4, %202 ]
  %217 = icmp eq ptr %214, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %213
  %219 = call ptr @fl6_merge_options(ptr noundef nonnull %4, ptr noundef nonnull %214, ptr noundef %216) #12
  br label %220

220:                                              ; preds = %218, %213
  %221 = phi ptr [ %219, %218 ], [ %216, %213 ]
  %222 = call ptr @ipv6_fixup_options(ptr noundef nonnull %4, ptr noundef %221) #12
  %223 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 5
  store i8 %168, ptr %223, align 2
  %224 = load i32, ptr %52, align 8
  store i32 %224, ptr %40, align 8
  %225 = load i32, ptr %10, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %220
  store ptr %1, ptr %7, align 4
  %228 = getelementptr inbounds %struct.raw6_frag_vec, ptr %7, i32 0, i32 1
  store i32 0, ptr %228, align 4
  %229 = call fastcc i32 @rawv6_probe_proto_opt(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %370

231:                                              ; preds = %227, %220
  %232 = load i32, ptr %170, align 4
  %233 = getelementptr [4 x i32], ptr %170, i32 0, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = or i32 %234, %232
  %236 = getelementptr [4 x i32], ptr %170, i32 0, i32 2
  %237 = load i32, ptr %236, align 4
  %238 = or i32 %235, %237
  %239 = getelementptr [4 x i32], ptr %170, i32 0, i32 3
  %240 = load i32, ptr %239, align 4
  %241 = or i32 %238, %240
  %242 = icmp eq i32 %241, 0
  %243 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 1
  br i1 %242, label %245, label %244

244:                                              ; preds = %231
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %243, ptr noundef align 4 dereferenceable(16) %170, i32 16, i1 false)
  br label %247

245:                                              ; preds = %231
  %246 = getelementptr inbounds [16 x i8], ptr %243, i32 0, i32 15
  store i8 1, ptr %246, align 1
  br label %247

247:                                              ; preds = %245, %244
  %248 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 2
  %249 = load i32, ptr %248, align 8
  %250 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 1
  %251 = load i32, ptr %250, align 4
  %252 = or i32 %251, %249
  %253 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 2
  %254 = load i32, ptr %253, align 8
  %255 = or i32 %252, %254
  %256 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 3
  %257 = load i32, ptr %256, align 4
  %258 = or i32 %255, %257
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %273

260:                                              ; preds = %247
  %261 = load i32, ptr %22, align 4
  %262 = getelementptr [4 x i32], ptr %22, i32 0, i32 1
  %263 = load i32, ptr %262, align 4
  %264 = or i32 %263, %261
  %265 = getelementptr [4 x i32], ptr %22, i32 0, i32 2
  %266 = load i32, ptr %265, align 4
  %267 = or i32 %264, %266
  %268 = getelementptr [4 x i32], ptr %22, i32 0, i32 3
  %269 = load i32, ptr %268, align 4
  %270 = or i32 %267, %269
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %260
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %248, ptr noundef align 4 dereferenceable(16) %22, i32 16, i1 false)
  br label %273

273:                                              ; preds = %272, %260, %247
  %274 = call ptr @fl6_update_dst(ptr noundef nonnull %8, ptr noundef %222, ptr noundef nonnull %5) #12
  %275 = load i32, ptr %8, align 8
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 1
  %279 = load i32, ptr %278, align 8
  %280 = and i32 %279, 255
  %281 = icmp eq i32 %280, 255
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.ipv6_pinfo, ptr %22, i32 0, i32 7
  %284 = load i32, ptr %283, align 4
  store i32 %284, ptr %8, align 8
  br label %288

285:                                              ; preds = %277
  %286 = getelementptr inbounds %struct.ipv6_pinfo, ptr %22, i32 0, i32 6
  %287 = load i32, ptr %286, align 4
  store i32 %287, ptr %8, align 8
  br label %288

288:                                              ; preds = %285, %282, %273
  %289 = load i32, ptr %10, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 6
  %293 = load i8, ptr %292, align 1
  %294 = or i8 %293, 2
  store i8 %294, ptr %292, align 1
  br label %295

295:                                              ; preds = %291, %288
  %296 = load i16, ptr %45, align 2
  %297 = icmp slt i16 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.ipv6_pinfo, ptr %22, i32 0, i32 11
  %300 = load i8, ptr %299, align 1
  %301 = zext i8 %300 to i16
  store i16 %301, ptr %45, align 2
  br label %302

302:                                              ; preds = %298, %295
  %303 = phi i16 [ %301, %298 ], [ %296, %295 ]
  %304 = zext i16 %303 to i32
  %305 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 3
  %306 = load i32, ptr %305, align 8
  %307 = shl i32 %304, 20
  %308 = call i32 @llvm.bswap.i32(i32 %307) #12
  %309 = or i32 %308, %306
  store i32 %309, ptr %305, align 8
  %310 = call ptr @ip6_dst_lookup_flow(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %8, ptr noundef %274) #12
  store ptr %310, ptr %6, align 4
  %311 = icmp ugt ptr %310, inttoptr (i32 -4096 to ptr)
  br i1 %311, label %312, label %314

312:                                              ; preds = %302
  %313 = ptrtoint ptr %310 to i32
  br label %370

314:                                              ; preds = %302
  %315 = load i16, ptr %44, align 8
  %316 = icmp slt i16 %315, 0
  br i1 %316, label %317, label %333

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 1
  %319 = load i32, ptr %318, align 8
  %320 = and i32 %319, 255
  %321 = icmp eq i32 %320, 255
  %322 = getelementptr inbounds %struct.ipv6_pinfo, ptr %22, i32 0, i32 5
  %323 = load i32, ptr %322, align 4
  %324 = shl i32 %323, 16
  %325 = select i1 %321, i32 %323, i32 %324
  %326 = ashr i32 %325, 23
  %327 = icmp slt i32 %325, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %317
  %329 = call i32 @ip6_dst_hoplimit(ptr noundef %310) #12
  br label %330

330:                                              ; preds = %328, %317
  %331 = phi i32 [ %329, %328 ], [ %326, %317 ]
  %332 = trunc i32 %331 to i16
  store i16 %332, ptr %44, align 8
  br label %333

333:                                              ; preds = %330, %314
  %334 = load i8, ptr %47, align 2
  %335 = icmp slt i8 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.ipv6_pinfo, ptr %22, i32 0, i32 9
  %338 = load i16, ptr %337, align 2
  %339 = lshr i16 %338, 10
  %340 = trunc i16 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, ptr %47, align 2
  br label %342

342:                                              ; preds = %336, %333
  %343 = load i32, ptr %27, align 4
  %344 = and i32 %343, 2064
  %345 = icmp eq i32 %344, 2064
  br i1 %345, label %389, label %346

346:                                              ; preds = %400, %342
  %347 = phi i32 [ %402, %400 ], [ %343, %342 ]
  %348 = load i32, ptr %10, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %346
  %351 = call fastcc i32 @rawv6_send_hdrinc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %6, i32 noundef %347, ptr noundef nonnull %9)
  %352 = load ptr, ptr %6, align 4
  br label %367

353:                                              ; preds = %346
  %354 = getelementptr inbounds %struct.ipcm6_cookie, ptr %9, i32 0, i32 5
  store ptr %222, ptr %354, align 8
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #12
  %355 = load i32, ptr %27, align 4
  %356 = call i32 @ip6_append_data(ptr noundef %0, ptr noundef nonnull @raw6_getfrag, ptr noundef nonnull %7, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %310, i32 noundef %355) #12
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %353
  call void @ip6_flush_pending_frames(ptr noundef %0) #12
  br label %365

359:                                              ; preds = %353
  %360 = load i32, ptr %27, align 4
  %361 = and i32 %360, 32768
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %359
  %364 = call fastcc i32 @rawv6_push_pending_frames(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %0)
  br label %365

365:                                              ; preds = %363, %359, %358
  %366 = phi i32 [ %356, %358 ], [ 0, %359 ], [ %364, %363 ]
  call void @release_sock(ptr noundef %0) #12
  br label %367

367:                                              ; preds = %400, %365, %350
  %368 = phi ptr [ %352, %350 ], [ %310, %365 ], [ %310, %400 ]
  %369 = phi i32 [ %351, %350 ], [ %366, %365 ], [ 0, %400 ]
  call void @dst_release(ptr noundef %368) #12
  br label %370

370:                                              ; preds = %367, %312, %227
  %371 = phi i32 [ %313, %312 ], [ %369, %367 ], [ %229, %227 ]
  br i1 %217, label %375, label %372

372:                                              ; preds = %370
  %373 = getelementptr inbounds %struct.ip6_flowlabel, ptr %214, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %373) #12, !srcloc !13
  %374 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %373, ptr %373, i32 1, ptr elementtype(i32) %373) #12, !srcloc !32
  br label %375

375:                                              ; preds = %372, %370
  %376 = icmp eq ptr %215, null
  br i1 %376, label %386, label %377

377:                                              ; preds = %375
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %215) #12, !srcloc !13
  %378 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %215, ptr nonnull %215, i32 1, ptr nonnull elementtype(i32) %215) #12, !srcloc !34
  %379 = extractvalue { i32, i32, i32 } %378, 0
  %380 = icmp eq i32 %379, 1
  br i1 %380, label %384, label %381

381:                                              ; preds = %377
  %382 = icmp sgt i32 %379, 0
  br i1 %382, label %386, label %383, !prof !11

383:                                              ; preds = %381
  call void @refcount_warn_saturate(ptr noundef nonnull %215, i32 noundef 3) #12
  br label %386

384:                                              ; preds = %377
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !35
  %385 = getelementptr inbounds %struct.ipv6_txoptions, ptr %215, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %385, ptr noundef nonnull inttoptr (i32 28 to ptr)) #12
  br label %386

386:                                              ; preds = %384, %383, %381, %375
  %387 = icmp slt i32 %371, 0
  %388 = select i1 %387, i32 %371, i32 %2
  br label %405

389:                                              ; preds = %342
  %390 = getelementptr inbounds %struct.dst_entry, ptr %310, i32 0, i32 1
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.dst_ops, ptr %391, i32 0, i32 15
  %393 = load ptr, ptr %392, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %400, label %395

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct.flowi6, ptr %8, i32 0, i32 1
  call void %393(ptr noundef %310, ptr noundef %396) #12
  %397 = load i32, ptr %27, align 4
  %398 = and i32 %397, 16
  %399 = icmp eq i32 %398, 0
  br label %400

400:                                              ; preds = %395, %389
  %401 = phi i1 [ %399, %395 ], [ false, %389 ]
  %402 = phi i32 [ %397, %395 ], [ %343, %389 ]
  %403 = icmp ne i32 %2, 0
  %404 = or i1 %403, %401
  br i1 %404, label %346, label %367

405:                                              ; preds = %386, %197, %181, %179, %146, %94, %72, %66, %56, %54, %26, %21
  %406 = phi i32 [ %388, %386 ], [ -90, %21 ], [ -95, %26 ], [ -22, %54 ], [ -97, %56 ], [ -22, %66 ], [ -22, %72 ], [ -89, %146 ], [ %177, %179 ], [ %177, %181 ], [ -22, %94 ], [ -22, %197 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  ret i32 %406
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawv6_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %9 = load volatile i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, -4161
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi ptr [ %16, %14 ], [ null, %6 ]
  %19 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !10
  %20 = and i32 %4, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %162

22:                                               ; preds = %17
  %23 = and i32 %4, 8192
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @ipv6_recv_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %5) #12
  br label %162

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 8
  %33 = load i16, ptr %32, align 4
  %34 = and i16 %33, 4096
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @ipv6_recv_rxpmtu(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %5) #12
  br label %162

38:                                               ; preds = %31, %27
  %39 = call ptr @skb_recv_datagram(ptr noundef %0, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %7) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %155, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = icmp ugt i32 %43, %2
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 32
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %2, %45 ], [ %43, %41 ]
  %51 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 13
  %52 = load i16, ptr %51, align 8
  %53 = lshr i16 %52, 5
  %54 = and i16 %53, 3
  %55 = icmp ne i16 %54, 1
  %56 = icmp sgt i16 %52, -1
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %73

58:                                               ; preds = %49
  %59 = icmp eq i16 %54, 3
  br i1 %59, label %60, label %76

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 13, i32 0, i32 4
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 17
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 16
  %67 = load ptr, ptr %66, align 8
  %68 = ptrtoint ptr %65 to i32
  %69 = ptrtoint ptr %67 to i32
  %70 = sub i32 %63, %68
  %71 = add i32 %70, %69
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %60, %49
  %74 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %75 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %39, i32 noundef 0, ptr noundef %74, i32 noundef %50) #12
  store i32 %75, ptr %7, align 4
  br label %90

76:                                               ; preds = %60, %58
  %77 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = call zeroext i16 @__skb_checksum_complete(ptr noundef nonnull %39) #12
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %157

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %86 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %39, i32 noundef 0, ptr noundef %85, i32 noundef %50) #12
  store i32 %86, ptr %7, align 4
  br label %90

87:                                               ; preds = %76
  %88 = call i32 @skb_copy_and_csum_datagram_msg(ptr noundef nonnull %39, i32 noundef 0, ptr noundef %1) #12
  store i32 %88, ptr %7, align 4
  %89 = icmp eq i32 %88, -22
  br i1 %89, label %157, label %90

90:                                               ; preds = %87, %84, %73
  %91 = phi i32 [ %86, %84 ], [ %88, %87 ], [ %75, %73 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %154

93:                                               ; preds = %90
  %94 = icmp eq ptr %19, null
  br i1 %94, label %121, label %95

95:                                               ; preds = %93
  store i16 10, ptr %19, align 4
  %96 = getelementptr inbounds %struct.sockaddr_in6, ptr %19, i32 0, i32 1
  store i16 0, ptr %96, align 2
  %97 = getelementptr inbounds %struct.sockaddr_in6, ptr %19, i32 0, i32 3
  %98 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 16
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 13, i32 0, i32 18
  %101 = load i16, ptr %100, align 4
  %102 = zext i16 %101 to i32
  %103 = getelementptr i8, ptr %99, i32 %102
  %104 = getelementptr inbounds %struct.ipv6hdr, ptr %103, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %97, ptr noundef align 4 dereferenceable(16) %104, i32 16, i1 false)
  %105 = getelementptr inbounds %struct.sockaddr_in6, ptr %19, i32 0, i32 2
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 3
  %107 = load i32, ptr %106, align 8
  %108 = call i32 @__ipv6_addr_type(ptr noundef %97) #12
  %109 = and i32 %108, 32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %95
  %112 = and i32 %108, 2
  %113 = icmp ne i32 %112, 0
  %114 = and i32 %108, 48
  %115 = icmp ne i32 %114, 0
  %116 = and i1 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111, %95
  br label %118

118:                                              ; preds = %117, %111
  %119 = phi i32 [ %107, %117 ], [ 0, %111 ]
  %120 = getelementptr inbounds %struct.sockaddr_in6, ptr %19, i32 0, i32 4
  store i32 %119, ptr %120, align 4
  store i32 28, ptr %5, align 4
  br label %121

121:                                              ; preds = %118, %93
  %122 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 133120
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %128 = load i16, ptr %127, align 8
  %129 = and i16 %128, 80
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %126, %121
  call void @__sock_recv_ts_and_drops(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %39) #12
  br label %144

132:                                              ; preds = %126
  %133 = load volatile i32, ptr %122, align 4
  %134 = and i32 %133, 128
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136, !prof !11

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 2
  %138 = load i64, ptr %137, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %138) #12
  br label %144

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  %141 = load i64, ptr %140, align 8
  %142 = icmp eq i64 %141, -1000000000
  br i1 %142, label %143, label %144, !prof !31

143:                                              ; preds = %139
  call fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef 0) #12
  br label %144

144:                                              ; preds = %143, %139, %136, %131
  %145 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 8
  %146 = load i16, ptr %145, align 4
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  call void @ip6_datagram_recv_ctl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %39) #12
  br label %149

149:                                              ; preds = %148, %144
  store i32 %50, ptr %7, align 4
  %150 = and i32 %4, 32
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = load i32, ptr %42, align 8
  store i32 %153, ptr %7, align 4
  br label %154

154:                                              ; preds = %152, %149, %90
  call void @skb_free_datagram(ptr noundef %0, ptr noundef nonnull %39) #12
  br label %155

155:                                              ; preds = %157, %154, %38
  %156 = load i32, ptr %7, align 4
  br label %162

157:                                              ; preds = %87, %81
  %158 = call i32 @skb_kill_datagram(ptr noundef %0, ptr noundef nonnull %39, i32 noundef %4) #12
  %159 = and i32 %4, 64
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i32 -113, i32 -11
  store i32 %161, ptr %7, align 4
  br label %155

162:                                              ; preds = %155, %36, %25, %17
  %163 = phi i32 [ %26, %25 ], [ %37, %36 ], [ %156, %155 ], [ -95, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawv6_bind(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
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
  %15 = icmp slt i32 %2, 24
  br i1 %15, label %91, label %16

16:                                               ; preds = %13
  %17 = load i16, ptr %1, align 4
  %18 = icmp eq i16 %17, 10
  br i1 %18, label %19, label %91

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %21 = tail call i32 @__ipv6_addr_type(ptr noundef %20) #12
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 4096
  br i1 %23, label %91, label %24

24:                                               ; preds = %19
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #12
  %25 = load volatile i8, ptr %4, align 2
  %26 = icmp eq i8 %25, 7
  br i1 %26, label %27, label %89

27:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %28 = icmp eq i32 %22, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = and i32 %21, 2
  br label %79

31:                                               ; preds = %27
  %32 = and i32 %21, 32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = and i32 %21, 2
  %36 = icmp ne i32 %35, 0
  %37 = and i32 %21, 48
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %36, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34, %31
  %41 = icmp ugt i32 %2, 27
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  store i32 %44, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %42, %40
  %49 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %87, label %56

52:                                               ; preds = %34
  %53 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %48
  %57 = phi i32 [ %54, %52 ], [ %50, %48 ]
  %58 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %57) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %87, label %60

60:                                               ; preds = %56, %52
  %61 = phi ptr [ %58, %56 ], [ null, %52 ]
  %62 = and i32 %21, 2
  %63 = icmp eq i32 %62, 0
  %64 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 25), align 1
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %69 = load i16, ptr %68, align 8
  %70 = and i16 %69, 36
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = tail call i32 @ipv6_chk_addr(ptr noundef nonnull @init_net, ptr noundef %20, ptr noundef %61, i32 noundef 0) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %72, %67
  %76 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  store i32 100663423, ptr %76, align 4
  %77 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 100663423, ptr %77, align 4
  %78 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %78, ptr noundef align 4 dereferenceable(16) %20, i32 16, i1 false)
  br label %86

79:                                               ; preds = %60, %29
  %80 = phi i32 [ %30, %29 ], [ %62, %60 ]
  %81 = phi i32 [ 0, %29 ], [ 100663423, %60 ]
  %82 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 %81, ptr %83, align 4
  %84 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %84, ptr noundef align 4 dereferenceable(16) %20, i32 16, i1 false)
  %85 = icmp eq i32 %80, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79, %75
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %14, ptr noundef align 4 dereferenceable(16) %20, i32 16, i1 false)
  br label %87

87:                                               ; preds = %86, %79, %72, %56, %48
  %88 = phi i32 [ 0, %86 ], [ 0, %79 ], [ -99, %72 ], [ -19, %56 ], [ -22, %48 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  br label %89

89:                                               ; preds = %87, %24
  %90 = phi i32 [ -22, %24 ], [ %88, %87 ]
  tail call void @release_sock(ptr noundef %0) #12
  br label %91

91:                                               ; preds = %89, %19, %16, %13
  %92 = phi i32 [ %90, %89 ], [ -22, %13 ], [ -22, %16 ], [ -99, %19 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_hash_sk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_unhash_sk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_abort(ptr noundef, i32 noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @raw6_proc_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @raw6_net_ops) #12
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @raw6_proc_exit() local_unnamed_addr #0 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @raw6_net_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_dgram_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rawv6_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @rawv6_protosw) #12
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rawv6_exit() local_unnamed_addr #0 {
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @rawv6_protosw) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_err_convert(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_update_pmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_redirect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_ra_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_flush_pending_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_destroy_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_send_ctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @txopt_get(ptr noundef %0) unnamed_addr #3 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
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
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #12, !srcloc !13
  br label %11

11:                                               ; preds = %11, %8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 %9, i32 %10, ptr nonnull elementtype(i32) %3) #12, !srcloc !38
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %8

20:                                               ; preds = %18, %15, %5
  %21 = phi i32 [ 0, %5 ], [ 0, %18 ], [ %9, %15 ]
  %22 = add i32 %21, 1
  %23 = or i32 %22, %21
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %26, label %25, !prof !11

25:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 0) #12
  br label %26

26:                                               ; preds = %25, %20
  %27 = icmp eq i32 %21, 0
  %28 = select i1 %27, ptr null, ptr %3
  br label %29

29:                                               ; preds = %26, %1
  %30 = phi ptr [ null, %1 ], [ %28, %26 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_merge_options(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_fixup_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rawv6_probe_proto_opt(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 2
  switch i8 %4, label %31 [
    i8 58, label %5
    i8 -121, label %19
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.raw6_frag_vec, ptr %0, i32 0, i32 1
  store i32 2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.raw6_frag_vec, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 2
  %10 = tail call i32 @_copy_from_iter(ptr noundef %7, i32 noundef 2, ptr noundef %9) #12
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %13, label %12, !prof !11

12:                                               ; preds = %5
  tail call void @iov_iter_revert(ptr noundef %9, i32 noundef %10) #12
  br label %31

13:                                               ; preds = %5
  %14 = load i8, ptr %7, align 4
  %15 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  store i8 %14, ptr %15, align 4
  %16 = getelementptr %struct.raw6_frag_vec, ptr %0, i32 0, i32 2, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.anon.124, ptr %15, i32 0, i32 1
  store i8 %17, ptr %18, align 1
  br label %31

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.raw6_frag_vec, ptr %0, i32 0, i32 1
  store i32 4, ptr %20, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.msghdr, ptr %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.raw6_frag_vec, ptr %0, i32 0, i32 2
  %24 = tail call i32 @_copy_from_iter(ptr noundef %23, i32 noundef 4, ptr noundef %22) #12
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %27, label %26, !prof !11

26:                                               ; preds = %19
  tail call void @iov_iter_revert(ptr noundef %22, i32 noundef %24) #12
  br label %31

27:                                               ; preds = %19
  %28 = getelementptr %struct.raw6_frag_vec, ptr %0, i32 0, i32 2, i32 2
  %29 = load i8, ptr %28, align 2
  %30 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  store i8 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %26, %13, %12, %2
  %32 = phi i32 [ 0, %2 ], [ -14, %26 ], [ 0, %27 ], [ -14, %12 ], [ 0, %13 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rawv6_send_hdrinc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %10 = load volatile i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, -4161
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi ptr [ %17, %15 ], [ null, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !10
  %20 = load ptr, ptr %4, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 19
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 21
  %26 = load i16, ptr %25, align 8
  %27 = zext i16 %26 to i32
  %28 = add nuw nsw i32 %27, %24
  %29 = and i32 %28, 131056
  %30 = add nuw nsw i32 %29, 16
  %31 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 22
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 20
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, %2
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  tail call void @ipv6_local_error(ptr noundef %0, i32 noundef 90, ptr noundef %3, i32 noundef %35) #12
  br label %309

38:                                               ; preds = %18
  %39 = icmp ult i32 %2, 40
  br i1 %39, label %309, label %40

40:                                               ; preds = %38
  %41 = and i32 %5, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %309

43:                                               ; preds = %40
  %44 = add i32 %2, 15
  %45 = add i32 %44, %33
  %46 = add i32 %45, %30
  %47 = and i32 %5, 64
  %48 = call ptr @sock_alloc_send_skb(ptr noundef %0, i32 noundef %46, i32 noundef %47, ptr noundef nonnull %8) #12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %256, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 17
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %30
  store ptr %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 14
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr i8, ptr %55, i32 %30
  store ptr %56, ptr %54, align 8
  %57 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %57, align 8
  %58 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13, i32 0, i32 5
  store i32 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.sockcm_cookie, ptr %6, i32 0, i32 1
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13, i32 0, i32 11
  store i32 %62, ptr %63, align 4
  %64 = load i64, ptr %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 2
  store i64 %64, ptr %65, align 8
  %66 = call ptr @skb_put(ptr noundef nonnull %48, i32 noundef %2) #12
  %67 = load ptr, ptr %51, align 4
  %68 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 16
  %69 = load ptr, ptr %68, align 8
  %70 = ptrtoint ptr %67 to i32
  %71 = ptrtoint ptr %69 to i32
  %72 = sub i32 %70, %71
  %73 = trunc i32 %72 to i16
  %74 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13, i32 0, i32 18
  store i16 %73, ptr %74, align 4
  %75 = and i32 %72, 65535
  %76 = getelementptr i8, ptr %69, i32 %75
  %77 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13
  %78 = load i16, ptr %77, align 8
  %79 = and i16 %78, -97
  store i16 %79, ptr %77, align 8
  %80 = getelementptr inbounds %struct.sockcm_cookie, ptr %6, i32 0, i32 2
  %81 = load i16, ptr %80, align 4
  %82 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 15
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.skb_shared_info, ptr %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.skb_shared_info, ptr %85, i32 0, i32 9
  %88 = icmp eq i16 %81, 0
  br i1 %88, label %101, label %89, !prof !11

89:                                               ; preds = %50
  call void @__sock_tx_timestamp(i16 noundef zeroext %81, ptr noundef %86) #12
  %90 = zext i16 %81 to i32
  %91 = and i32 %90, 128
  %92 = icmp eq i32 %91, 0
  %93 = and i32 %90, 771
  %94 = icmp eq i32 %93, 0
  %95 = or i1 %94, %92
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.sock, ptr %83, i32 0, i32 67
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !39
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #12, !srcloc !13
  %98 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #12, !srcloc !40
  %99 = extractvalue { i32, i32 } %98, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !41
  %100 = add i32 %99, -1
  store i32 %100, ptr %87, align 4
  br label %101

101:                                              ; preds = %96, %89, %50
  %102 = getelementptr inbounds %struct.sock_common, ptr %83, i32 0, i32 13
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 524288
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106, !prof !11

106:                                              ; preds = %101
  %107 = load i8, ptr %86, align 1
  %108 = or i8 %107, 16
  store i8 %108, ptr %86, align 1
  br label %109

109:                                              ; preds = %106, %101
  %110 = and i32 %5, 2048
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13, i32 0, i32 3
  %114 = load i16, ptr %113, align 2
  %115 = or i16 %114, 32
  store i16 %115, ptr %113, align 2
  br label %116

116:                                              ; preds = %112, %109
  %117 = load i16, ptr %74, align 4
  %118 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13, i32 0, i32 17
  store i16 %117, ptr %118, align 2
  %119 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %120 = icmp slt i32 %2, 0
  %121 = load i1, ptr @check_copy_size.__already_done, align 1
  %122 = xor i1 %121, true
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %124, label %125, !prof !31

124:                                              ; preds = %116
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %125

125:                                              ; preds = %124, %116
  br i1 %120, label %128, label %126, !prof !31

126:                                              ; preds = %125
  %127 = call i32 @_copy_from_iter(ptr noundef %76, i32 noundef %2, ptr noundef %119) #12
  br label %128

128:                                              ; preds = %126, %125
  %129 = phi i32 [ %127, %126 ], [ 0, %125 ]
  %130 = icmp eq i32 %129, %2
  br i1 %130, label %132, label %131, !prof !11

131:                                              ; preds = %128
  call void @iov_iter_revert(ptr noundef %119, i32 noundef %129) #12
  store i32 -14, ptr %8, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %48, i32 noundef 0) #12
  br label %256

132:                                              ; preds = %128
  store i32 0, ptr %8, align 4
  %133 = icmp ne ptr %20, null
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13, i32 0, i32 3
  %136 = load i16, ptr %135, align 2
  %137 = lshr i16 %136, 14
  %138 = trunc i16 %137 to i8
  %139 = and i8 %138, 1
  %140 = or i8 %139, %134
  %141 = zext i8 %140 to i16
  %142 = shl nuw nsw i16 %141, 14
  %143 = and i16 %136, -16385
  %144 = or i16 %142, %143
  store i16 %144, ptr %135, align 2
  %145 = ptrtoint ptr %20 to i32
  %146 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 4
  store i32 %145, ptr %146, align 8
  store ptr null, ptr %4, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %147 = getelementptr inbounds %struct.rt6_info, ptr %20, i32 0, i32 6
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %176, label %150, !prof !31

150:                                              ; preds = %132
  %151 = getelementptr inbounds %struct.inet6_dev, ptr %148, i32 0, i32 33, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !42
  %154 = getelementptr i64, ptr %152, i32 5
  %155 = ptrtoint ptr %154 to i32
  %156 = call i32 @llvm.read_register.i32(metadata !0) #12
  %157 = inttoptr i32 %156 to ptr
  %158 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %157) #10, !srcloc !43
  %159 = add i32 %158, %155
  %160 = inttoptr i32 %159 to ptr
  %161 = load i64, ptr %160, align 8
  %162 = add i64 %161, 1
  store i64 %162, ptr %160, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %153) #12, !srcloc !44
  %163 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !42
  %164 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 5
  %165 = load i32, ptr %164, align 8
  %166 = zext i32 %165 to i64
  %167 = getelementptr i64, ptr %152, i32 6
  %168 = ptrtoint ptr %167 to i32
  %169 = call i32 @llvm.read_register.i32(metadata !0) #12
  %170 = inttoptr i32 %169 to ptr
  %171 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %170) #10, !srcloc !43
  %172 = add i32 %171, %168
  %173 = inttoptr i32 %172 to ptr
  %174 = load i64, ptr %173, align 8
  %175 = add i64 %174, %166
  store i64 %175, ptr %173, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %163) #12, !srcloc !44
  br label %176

176:                                              ; preds = %150, %132
  %177 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %178 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !42
  %179 = getelementptr i64, ptr %177, i32 5
  %180 = ptrtoint ptr %179 to i32
  %181 = call i32 @llvm.read_register.i32(metadata !0) #12
  %182 = inttoptr i32 %181 to ptr
  %183 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %182) #10, !srcloc !43
  %184 = add i32 %183, %180
  %185 = inttoptr i32 %184 to ptr
  %186 = load i64, ptr %185, align 8
  %187 = add i64 %186, 1
  store i64 %187, ptr %185, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %178) #12, !srcloc !44
  %188 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !42
  %189 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 5
  %190 = load i32, ptr %189, align 8
  %191 = zext i32 %190 to i64
  %192 = getelementptr i64, ptr %177, i32 6
  %193 = ptrtoint ptr %192 to i32
  %194 = call i32 @llvm.read_register.i32(metadata !0) #12
  %195 = inttoptr i32 %194 to ptr
  %196 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %195) #10, !srcloc !43
  %197 = add i32 %196, %193
  %198 = inttoptr i32 %197 to ptr
  %199 = load i64, ptr %198, align 8
  %200 = add i64 %199, %191
  store i64 %200, ptr %198, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %188) #12, !srcloc !44
  %201 = load i32, ptr %146, align 8
  %202 = and i32 %201, -2
  %203 = inttoptr i32 %202 to ptr
  %204 = getelementptr inbounds %struct.dst_entry, ptr %203, i32 0, i32 6
  %205 = load ptr, ptr %204, align 4
  %206 = call i32 %205(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %48) #12
  %207 = icmp sgt i32 %206, 0
  %208 = icmp eq i32 %206, 2
  %209 = select i1 %208, i32 0, i32 -105
  %210 = select i1 %207, i32 %209, i32 %206
  store i32 %210, ptr %8, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %255, label %212

212:                                              ; preds = %176
  %213 = load ptr, ptr %147, align 4
  %214 = icmp eq ptr %213, null
  %215 = tail call ptr @llvm.thread.pointer() #12
  br i1 %214, label %236, label %216, !prof !31

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 1
  %218 = load volatile i32, ptr %217, align 4
  %219 = add i32 %218, 512
  store volatile i32 %219, ptr %217, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !45
  %220 = getelementptr inbounds %struct.inet6_dev, ptr %213, i32 0, i32 33, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = ptrtoint ptr %221 to i32
  %223 = call i32 @llvm.read_register.i32(metadata !0) #12
  %224 = inttoptr i32 %223 to ptr
  %225 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %224) #10, !srcloc !43
  %226 = add i32 %225, %222
  %227 = inttoptr i32 %226 to ptr
  %228 = getelementptr inbounds %struct.ipstats_mib, ptr %227, i32 0, i32 1
  %229 = load i32, ptr %228, align 4
  %230 = add i32 %229, 1
  store i32 %230, ptr %228, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !46
  %231 = getelementptr [37 x i64], ptr %227, i32 0, i32 14
  %232 = load i64, ptr %231, align 8
  %233 = add i64 %232, 1
  store i64 %233, ptr %231, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !47
  %234 = load i32, ptr %228, align 4
  %235 = add i32 %234, 1
  store i32 %235, ptr %228, align 4
  call fastcc void @local_bh_enable()
  br label %236

236:                                              ; preds = %216, %212
  %237 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 1
  %238 = load volatile i32, ptr %237, align 4
  %239 = add i32 %238, 512
  store volatile i32 %239, ptr %237, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !45
  %240 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %241 = ptrtoint ptr %240 to i32
  %242 = call i32 @llvm.read_register.i32(metadata !0) #12
  %243 = inttoptr i32 %242 to ptr
  %244 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %243) #10, !srcloc !43
  %245 = add i32 %244, %241
  %246 = inttoptr i32 %245 to ptr
  %247 = getelementptr inbounds %struct.ipstats_mib, ptr %246, i32 0, i32 1
  %248 = load i32, ptr %247, align 4
  %249 = add i32 %248, 1
  store i32 %249, ptr %247, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !46
  %250 = getelementptr [37 x i64], ptr %246, i32 0, i32 14
  %251 = load i64, ptr %250, align 8
  %252 = add i64 %251, 1
  store i64 %252, ptr %250, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !47
  %253 = load i32, ptr %247, align 4
  %254 = add i32 %253, 1
  store i32 %254, ptr %247, align 4
  call fastcc void @local_bh_enable()
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  br label %300

255:                                              ; preds = %176
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  br label %309

256:                                              ; preds = %131, %43
  %257 = getelementptr inbounds %struct.rt6_info, ptr %20, i32 0, i32 6
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  %260 = tail call ptr @llvm.thread.pointer() #12
  br i1 %259, label %281, label %261, !prof !31

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.thread_info, ptr %260, i32 0, i32 1
  %263 = load volatile i32, ptr %262, align 4
  %264 = add i32 %263, 512
  store volatile i32 %264, ptr %262, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !45
  %265 = getelementptr inbounds %struct.inet6_dev, ptr %258, i32 0, i32 33, i32 1
  %266 = load ptr, ptr %265, align 4
  %267 = ptrtoint ptr %266 to i32
  %268 = call i32 @llvm.read_register.i32(metadata !0) #12
  %269 = inttoptr i32 %268 to ptr
  %270 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %269) #10, !srcloc !43
  %271 = add i32 %270, %267
  %272 = inttoptr i32 %271 to ptr
  %273 = getelementptr inbounds %struct.ipstats_mib, ptr %272, i32 0, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = add i32 %274, 1
  store i32 %275, ptr %273, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !46
  %276 = getelementptr [37 x i64], ptr %272, i32 0, i32 14
  %277 = load i64, ptr %276, align 8
  %278 = add i64 %277, 1
  store i64 %278, ptr %276, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !47
  %279 = load i32, ptr %273, align 4
  %280 = add i32 %279, 1
  store i32 %280, ptr %273, align 4
  call fastcc void @local_bh_enable()
  br label %281

281:                                              ; preds = %261, %256
  %282 = getelementptr inbounds %struct.thread_info, ptr %260, i32 0, i32 1
  %283 = load volatile i32, ptr %282, align 4
  %284 = add i32 %283, 512
  store volatile i32 %284, ptr %282, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !45
  %285 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %286 = ptrtoint ptr %285 to i32
  %287 = call i32 @llvm.read_register.i32(metadata !0) #12
  %288 = inttoptr i32 %287 to ptr
  %289 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %288) #10, !srcloc !43
  %290 = add i32 %289, %286
  %291 = inttoptr i32 %290 to ptr
  %292 = getelementptr inbounds %struct.ipstats_mib, ptr %291, i32 0, i32 1
  %293 = load i32, ptr %292, align 4
  %294 = add i32 %293, 1
  store i32 %294, ptr %292, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !46
  %295 = getelementptr [37 x i64], ptr %291, i32 0, i32 14
  %296 = load i64, ptr %295, align 8
  %297 = add i64 %296, 1
  store i64 %297, ptr %295, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !47
  %298 = load i32, ptr %292, align 4
  %299 = add i32 %298, 1
  store i32 %299, ptr %292, align 4
  call fastcc void @local_bh_enable()
  br label %300

300:                                              ; preds = %281, %236
  %301 = load i32, ptr %8, align 4
  %302 = icmp eq i32 %301, -105
  br i1 %302, label %303, label %309

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.ipv6_pinfo, ptr %19, i32 0, i32 9
  %305 = load i16, ptr %304, align 2
  %306 = and i16 %305, 1
  %307 = icmp eq i16 %306, 0
  %308 = select i1 %307, i32 0, i32 -105
  br label %309

309:                                              ; preds = %303, %300, %255, %40, %38, %37
  %310 = phi i32 [ -90, %37 ], [ -22, %38 ], [ 0, %40 ], [ 0, %255 ], [ %301, %300 ], [ %308, %303 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret i32 %310
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_append_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw6_getfrag(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.raw6_frag_vec, ptr %0, i32 0, i32 1
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
  %18 = getelementptr inbounds %struct.raw6_frag_vec, ptr %0, i32 0, i32 2
  %19 = getelementptr i8, ptr %18, i32 %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %19, i32 %12, i1 false)
  br label %34

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.raw6_frag_vec, ptr %0, i32 0, i32 2
  %24 = getelementptr i8, ptr %23, i32 %2
  %25 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %24, ptr noundef %1, i32 noundef %12) #12
  %26 = and i32 %4, 1
  %27 = icmp eq i32 %26, 0
  %28 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 24) #12
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
  %49 = tail call i32 @ip_generic_getfrag(ptr noundef %48, ptr noundef %46, i32 noundef %47, i32 noundef %44, i32 noundef %43, ptr noundef %5) #12
  br label %50

50:                                               ; preds = %41, %34
  %51 = phi i32 [ %49, %41 ], [ 0, %34 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rawv6_push_pending_frames(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.raw6_sock, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %117, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  %12 = icmp eq ptr %10, null
  %13 = or i1 %11, %12
  br i1 %13, label %119, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.raw6_sock, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, -1
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void @ip6_flush_pending_frames(ptr noundef %0) #12
  br label %119

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 13, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  br label %65

29:                                               ; preds = %60, %22
  %30 = phi ptr [ %63, %60 ], [ %10, %22 ]
  %31 = phi ptr [ %62, %60 ], [ null, %22 ]
  %32 = phi i32 [ %39, %60 ], [ 0, %22 ]
  %33 = phi i32 [ %61, %60 ], [ %16, %22 ]
  %34 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 13, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %32
  %37 = icmp ult i32 %36, %35
  %38 = zext i1 %37 to i32
  %39 = add i32 %36, %38
  %40 = icmp eq ptr %31, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 16
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 13, i32 0, i32 17
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %45, i32 %48
  %50 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = ptrtoint ptr %49 to i32
  %53 = ptrtoint ptr %51 to i32
  %54 = sub i32 %53, %52
  %55 = add i32 %54, %43
  %56 = icmp slt i32 %33, %55
  %57 = select i1 %56, i32 0, i32 %55
  %58 = sub i32 %33, %57
  %59 = select i1 %56, ptr %30, ptr null
  br label %60

60:                                               ; preds = %41, %29
  %61 = phi i32 [ %33, %29 ], [ %58, %41 ]
  %62 = phi ptr [ %31, %29 ], [ %59, %41 ]
  %63 = load ptr, ptr %30, align 4
  %64 = icmp eq ptr %63, %9
  br i1 %64, label %65, label %29

65:                                               ; preds = %60, %26
  %66 = phi ptr [ %10, %26 ], [ %62, %60 ]
  %67 = phi i32 [ %16, %26 ], [ %61, %60 ]
  %68 = phi i32 [ %28, %26 ], [ %39, %60 ]
  %69 = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 16
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 13, i32 0, i32 17
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = getelementptr i8, ptr %70, i32 %73
  %75 = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 17
  %76 = load ptr, ptr %75, align 4
  %77 = ptrtoint ptr %74 to i32
  %78 = ptrtoint ptr %76 to i32
  %79 = sub i32 %77, %78
  %80 = add i32 %79, %67
  %81 = call i32 @skb_copy_bits(ptr noundef %66, i32 noundef %80, ptr noundef nonnull %4, i32 noundef 2) #12
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  call void @ip6_flush_pending_frames(ptr noundef %0) #12
  br label %119

84:                                               ; preds = %65
  %85 = load i16, ptr %4, align 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %94, label %87, !prof !11

87:                                               ; preds = %84
  %88 = zext i16 %85 to i32
  %89 = xor i32 %88, -1
  %90 = add i32 %68, %89
  %91 = icmp ult i32 %90, %89
  %92 = zext i1 %91 to i32
  %93 = add i32 %90, %92
  br label %94

94:                                               ; preds = %87, %84
  %95 = phi i32 [ %93, %87 ], [ %68, %84 ]
  %96 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  %97 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %98 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %99 = load i8, ptr %98, align 2
  %100 = call i32 @llvm.bswap.i32(i32 %18) #12
  %101 = zext i8 %99 to i32
  %102 = shl nuw i32 %101, 24
  %103 = call i32 @__csum_ipv6_magic(ptr noundef %96, ptr noundef %97, i32 noundef %100, i32 noundef %102, i32 noundef %95) #12
  %104 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %103) #13, !srcloc !19
  %105 = xor i32 %104, -1
  %106 = lshr i32 %105, 16
  %107 = trunc i32 %106 to i16
  store i16 %107, ptr %4, align 2
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %94
  %110 = load i8, ptr %98, align 2
  %111 = icmp eq i8 %110, 17
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i16 -1, ptr %4, align 2
  br label %113

113:                                              ; preds = %112, %109, %94
  %114 = call i32 @skb_store_bits(ptr noundef %66, i32 noundef %80, ptr noundef nonnull %4, i32 noundef 2) #12
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116, !prof !11

116:                                              ; preds = %113
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/raw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 610, 0\0A.popsection", ""() #12, !srcloc !48
  unreachable

117:                                              ; preds = %113, %3
  %118 = call i32 @ip6_push_pending_frames(ptr noundef %0) #12
  br label %119

119:                                              ; preds = %117, %83, %21, %8
  %120 = phi i32 [ -22, %21 ], [ %81, %83 ], [ %118, %117 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fl6_sock_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_local_error(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_generic_getfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_store_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_push_pending_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_rxpmtu(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_datagram_msg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_kill_datagram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #12
  %5 = load i32, ptr %3, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %3, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !46
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %1, ptr %7, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !47
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !49
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @raw6_init_net(ptr nocapture noundef readonly %0) #5 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @raw6_seq_ops, i32 noundef 4, ptr noundef nonnull @raw_v6_hashinfo) #12
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @raw6_exit_net(ptr nocapture noundef readonly %0) #11 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @raw_seq_start(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_seq_stop(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @raw_seq_next(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw6_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.4) #12
  br label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.raw_iter_state, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %14 = load volatile i32, ptr %13, align 4
  tail call void @__ip6_dgram_sock_seq_show(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %8, i16 noundef zeroext 0, i32 noundef %14, i32 noundef %12) #12
  br label %15

15:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip6_dgram_sock_seq_show(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2157567269}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148929224}
!13 = !{i64 476650, i64 2147966621, i64 2147966647, i64 2147966694, i64 2147966716, i64 2147966744, i64 2147966764}
!14 = !{i64 1432648, i64 1432671, i64 1432691, i64 1432715, i64 1432731}
!15 = !{i64 2148917166}
!16 = !{i64 2148917241, i64 2148917268, i64 2148917315, i64 2148917337, i64 2148917365, i64 2148917385}
!17 = !{i64 2148966827}
!18 = !{i64 2147978833, i64 2147978859, i64 2147978888, i64 2147978922, i64 2147978953, i64 2147978976}
!19 = !{i64 5603107}
!20 = !{i64 3724382}
!21 = !{i64 3724579}
!22 = !{i64 2151209858}
!23 = !{i64 2157682853, i64 2157683133, i64 2157683467, i64 2157683801}
!24 = !{i64 2157691060, i64 2157691340, i64 2157691674, i64 2157692008}
!25 = !{i64 2151228270, i64 2151228295}
!26 = !{i64 2157643560, i64 2157643840, i64 2157644174, i64 2157644508}
!27 = !{i64 2157652470, i64 2157652750, i64 2157653084, i64 2157653418}
!28 = !{i64 2151228848, i64 2151228873}
!29 = !{i64 2157663768, i64 2157664048, i64 2157664382, i64 2157664716}
!30 = !{i64 2157674563, i64 2157674843, i64 2157675177, i64 2157675511}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2147981190, i64 2147981216, i64 2147981245, i64 2147981279, i64 2147981310, i64 2147981333}
!33 = !{i64 2148080489}
!34 = !{i64 2147982648, i64 2147982680, i64 2147982709, i64 2147982743, i64 2147982774, i64 2147982797}
!35 = !{i64 2148989330}
!36 = !{i64 2149039697}
!37 = !{i64 2149039914}
!38 = !{i64 462713, i64 462737, i64 462758, i64 462775, i64 462792}
!39 = !{i64 2148076655}
!40 = !{i64 2147979517, i64 2147979549, i64 2147979578, i64 2147979612, i64 2147979643, i64 2147979666}
!41 = !{i64 2148076858}
!42 = !{i64 371889, i64 371950}
!43 = !{i64 390589}
!44 = !{i64 374906}
!45 = !{i64 2148853467}
!46 = !{i64 2149400868}
!47 = !{i64 2149401169}
!48 = !{i64 2157586398, i64 2157586877, i64 2157586435, i64 2157586491, i64 2157586525, i64 2157586549, i64 2157586590, i64 2157586611, i64 2157586639, i64 2157586673}
!49 = !{i64 2148921342}
!50 = !{i64 2148944345}
