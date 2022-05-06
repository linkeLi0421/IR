; ModuleID = '/llk/IR/net/ipv6/icmp.c_pt.bc'
source_filename = "../net/ipv6/icmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmp6_send:\09\09\09\09\09"
module asm "\09.asciz \09\22icmp6_send\22\09\09\09\09\09"
module asm "__kstrtabns_icmp6_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_err_gen_icmpv6_unreach:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_err_gen_icmpv6_unreach\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_err_gen_icmpv6_unreach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmpv6_err_convert:\09\09\09\09\09"
module asm "\09.asciz \09\22icmpv6_err_convert\22\09\09\09\09\09"
module asm "__kstrtabns_icmpv6_err_convert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.icmp6_err = type { i32, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.cpumask = type { [1 x i32] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.138, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.139, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.140, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.134, [0 x i32], %union.anon.135, i16, i16, %union.anon.136, %struct.refcount_struct, [0 x i32], %union.anon.137 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.79 }
%union.anon.79 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { %struct.hlist_node }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.138 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.139 = type { ptr }
%union.anon.140 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
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
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.146 }
%union.anon.146 = type { [1 x i32] }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.icmpv6_msg = type { ptr, i32, i8 }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.95, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.95 = type { ptr }
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
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ipv6_destopt_hao = type <{ i8, i8, %struct.in6_addr }>
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.86 }
%union.anon.86 = type { %struct.flowi6 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.147, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.anon.88 = type { i8, i8 }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.80, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.80 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.83, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.83 = type { %struct.in6_addr }
%struct.inetpeer_addr = type { %union.anon.156, i16 }
%union.anon.156 = type { %struct.in6_addr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.159, i32, i32, i8, i8 }
%struct.anon.159 = type { i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.84, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.85, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.84 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.85 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.xfrm_mode = type { i8, i8, i8 }

@__kstrtab_icmp6_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmp6_send = external dso_local constant [0 x i8], align 1
@__ksymtab_icmp6_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmp6_send to i32), ptr @__kstrtab_icmp6_send, ptr @__kstrtabns_icmp6_send }, section "___ksymtab+icmp6_send", align 4
@__kstrtab_ip6_err_gen_icmpv6_unreach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_err_gen_icmpv6_unreach = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_err_gen_icmpv6_unreach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_err_gen_icmpv6_unreach to i32), ptr @__kstrtab_ip6_err_gen_icmpv6_unreach, ptr @__kstrtabns_ip6_err_gen_icmpv6_unreach }, section "___ksymtab+ip6_err_gen_icmpv6_unreach", align 4
@inet6_protos = external dso_local global [256 x ptr], align 4
@icmpv6_sk_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @icmpv6_sk_init, ptr null, ptr @icmpv6_sk_exit, ptr null, ptr null, i32 0 }, align 4
@icmpv6_protocol = internal constant %struct.inet6_protocol { ptr null, ptr null, ptr @icmpv6_rcv, ptr @icmpv6_err, i32 3 }, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\013IPv6: Failed to register ICMP6 protocol\0A\00", align 1
@tab_unreach = internal unnamed_addr constant [7 x %struct.icmp6_err] [%struct.icmp6_err { i32 101, i32 0 }, %struct.icmp6_err { i32 13, i32 1 }, %struct.icmp6_err { i32 113, i32 0 }, %struct.icmp6_err { i32 113, i32 0 }, %struct.icmp6_err { i32 111, i32 1 }, %struct.icmp6_err { i32 13, i32 1 }, %struct.icmp6_err { i32 13, i32 1 }], align 4
@__kstrtab_icmpv6_err_convert = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmpv6_err_convert = external dso_local constant [0 x i8], align 1
@__ksymtab_icmpv6_err_convert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmpv6_err_convert to i32), ptr @__kstrtab_icmpv6_err_convert, ptr @__kstrtabns_icmpv6_err_convert }, section "___ksymtab+icmpv6_err_convert", align 4
@ipv6_icmp_table_template = internal global [6 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.4, ptr getelementptr (i8, ptr @init_net, i64 1148), i32 4, i16 420, ptr null, ptr @proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.5, ptr getelementptr (i8, ptr @init_net, i64 1152), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.6, ptr getelementptr (i8, ptr @init_net, i64 1153), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.7, ptr getelementptr (i8, ptr @init_net, i64 1154), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr getelementptr (i8, ptr @init_net, i64 1188), i32 256, i16 420, ptr null, ptr @proc_do_large_bitmap, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@init_net = external dso_local global %struct.net, align 64
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"\013IPv6: Failed to initialize the ICMP6 control socket (err %d)\0A\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"ratelimit\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"echo_ignore_all\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"echo_ignore_multicast\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"echo_ignore_anycast\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ratemask\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_icmp6_send, ptr @__ksymtab_icmpv6_err_convert, ptr @__ksymtab_ip6_err_gen_icmpv6_unreach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icmpv6_push_pending_frames(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %67, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 13, i32 0, i32 17
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = load i64, ptr %2, align 4
  store i64 %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.icmp6hdr, ptr %16, i32 0, i32 2
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = load ptr, ptr %5, align 4
  %24 = icmp eq ptr %23, %5
  br i1 %24, label %49, label %38

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 13, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @csum_partial(ptr noundef %16, i32 noundef 8, i32 noundef %27) #16
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  %30 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %31 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %32 = load i8, ptr %31, align 2
  %33 = tail call i32 @llvm.bswap.i32(i32 %3) #16
  %34 = zext i8 %32 to i32
  %35 = shl nuw i32 %34, 24
  %36 = tail call i32 @__csum_ipv6_magic(ptr noundef %29, ptr noundef %30, i32 noundef %33, i32 noundef %35, i32 noundef %28) #16
  %37 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %36) #17, !srcloc !9
  br label %61

38:                                               ; preds = %38, %22
  %39 = phi ptr [ %47, %38 ], [ %23, %22 ]
  %40 = phi i32 [ %46, %38 ], [ 0, %22 ]
  %41 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 13, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %40
  %44 = icmp ult i32 %43, %42
  %45 = zext i1 %44 to i32
  %46 = add i32 %43, %45
  %47 = load ptr, ptr %39, align 4
  %48 = icmp eq ptr %47, %5
  br i1 %48, label %49, label %38

49:                                               ; preds = %38, %22
  %50 = phi i32 [ 0, %22 ], [ %46, %38 ]
  %51 = tail call i32 @csum_partial(ptr noundef %16, i32 noundef 8, i32 noundef %50) #16
  %52 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  %53 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %54 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %55 = load i8, ptr %54, align 2
  %56 = tail call i32 @llvm.bswap.i32(i32 %3) #16
  %57 = zext i8 %55 to i32
  %58 = shl nuw i32 %57, 24
  %59 = tail call i32 @__csum_ipv6_magic(ptr noundef %52, ptr noundef %53, i32 noundef %56, i32 noundef %58, i32 noundef %51) #16
  %60 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %59) #17, !srcloc !9
  br label %61

61:                                               ; preds = %49, %25
  %62 = phi i32 [ %60, %49 ], [ %37, %25 ]
  %63 = xor i32 %62, -1
  %64 = lshr i32 %63, 16
  %65 = trunc i32 %64 to i16
  store i16 %65, ptr %18, align 2
  %66 = tail call i32 @ip6_push_pending_frames(ptr noundef %0) #16
  br label %67

67:                                               ; preds = %61, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_push_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icmp6_send(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca [4 x i32], align 4
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.icmp6hdr, align 8
  %13 = alloca %struct.flowi6, align 8
  %14 = alloca %struct.icmpv6_msg, align 4
  %15 = alloca %struct.ipcm6_cookie, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %17, i32 %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  store i64 0, ptr %12, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %13) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %13, i8 0, i32 88, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i32 12, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i32 32, i1 false), !annotation !10
  %22 = icmp ult ptr %21, %17
  br i1 %22, label %402, label %23

23:                                               ; preds = %6
  %24 = getelementptr i8, ptr %21, i32 40
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = icmp ugt ptr %24, %26
  br i1 %27, label %402, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %402, label %32

32:                                               ; preds = %28
  %33 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 26), align 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %37, %35 ], [ 0, %32 ]
  %40 = getelementptr inbounds %struct.ipv6hdr, ptr %21, i32 0, i32 6
  %41 = tail call i32 @__ipv6_addr_type(ptr noundef %40) #16
  %42 = load ptr, ptr %29, align 8
  %43 = tail call i32 @ipv6_chk_addr(ptr noundef nonnull @init_net, ptr noundef %40, ptr noundef %42, i32 noundef 0) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load ptr, ptr %29, align 8
  %47 = tail call zeroext i1 @ipv6_chk_acast_addr_src(ptr noundef nonnull @init_net, ptr noundef %46, ptr noundef %40) #16
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi ptr [ %40, %48 ], [ null, %45 ]
  %51 = and i32 %41, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %55 = load i16, ptr %54, align 8
  %56 = and i16 %55, 7
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %96, label %58

58:                                               ; preds = %53, %49
  %59 = icmp eq i8 %1, 2
  br i1 %59, label %96, label %60

60:                                               ; preds = %58
  %61 = icmp eq i8 %1, 4
  %62 = icmp eq i8 %2, 2
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %402

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #16
  store i8 0, ptr %11, align 1, !annotation !10
  %65 = load ptr, ptr %16, align 8
  %66 = load i16, ptr %18, align 4
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %70 = load ptr, ptr %69, align 4
  %71 = ptrtoint ptr %68 to i32
  %72 = ptrtoint ptr %70 to i32
  %73 = sub i32 %71, %72
  %74 = add i32 %73, %3
  %75 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %74
  %80 = sub i32 %76, %79
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %87, label %82, !prof !11

82:                                               ; preds = %64
  %83 = icmp eq ptr %0, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %82
  %85 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %74, ptr noundef nonnull %11, i32 noundef 1) #16
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %90, label %91

87:                                               ; preds = %64
  %88 = getelementptr i8, ptr %70, i32 %74
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %84, %82
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #16
  br label %96

91:                                               ; preds = %87, %84
  %92 = phi ptr [ %88, %87 ], [ %11, %84 ]
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, -64
  %95 = icmp eq i8 %94, -128
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #16
  br i1 %95, label %96, label %402

96:                                               ; preds = %91, %90, %58, %53
  %97 = phi ptr [ %50, %53 ], [ null, %91 ], [ null, %58 ], [ null, %90 ]
  %98 = getelementptr inbounds %struct.ipv6hdr, ptr %21, i32 0, i32 5
  %99 = call i32 @__ipv6_addr_type(ptr noundef %98) #16
  %100 = and i32 %99, 65535
  %101 = and i32 %99, 32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = and i32 %99, 2
  %105 = icmp ne i32 %104, 0
  %106 = and i32 %99, 48
  %107 = icmp ne i32 %106, 0
  %108 = and i1 %105, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %103, %96
  %110 = load ptr, ptr %29, align 8
  %111 = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 17
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %119, label %114, !prof !12

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 15
  %116 = load i64, ptr %115, align 16
  %117 = and i64 %116, 262144
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %131, label %119, !prof !11

119:                                              ; preds = %114, %109
  %120 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, -2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %119
  %125 = inttoptr i32 %122 to ptr
  %126 = getelementptr inbounds %struct.rt6_info, ptr %125, i32 0, i32 6
  %127 = load ptr, ptr %126, align 4
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 17
  %130 = load i32, ptr %129, align 4
  br label %131

131:                                              ; preds = %124, %119, %114, %103
  %132 = phi i32 [ %112, %114 ], [ %130, %124 ], [ %112, %119 ], [ 0, %103 ]
  %133 = icmp ne i32 %100, 0
  %134 = and i32 %99, 2
  %135 = icmp eq i32 %134, 0
  %136 = and i1 %133, %135
  br i1 %136, label %137, label %402

137:                                              ; preds = %131
  %138 = load ptr, ptr %16, align 8
  %139 = load i16, ptr %18, align 4
  %140 = zext i16 %139 to i32
  %141 = getelementptr i8, ptr %138, i32 %140
  %142 = getelementptr %struct.ipv6hdr, ptr %141, i32 1
  %143 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %144 = load ptr, ptr %143, align 4
  %145 = ptrtoint ptr %142 to i32
  %146 = ptrtoint ptr %144 to i32
  %147 = sub i32 %145, %146
  %148 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %149 = load i32, ptr %148, align 8
  %150 = sub i32 %149, %147
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  %151 = getelementptr inbounds %struct.ipv6hdr, ptr %141, i32 0, i32 3
  %152 = load i8, ptr %151, align 2
  store i8 %152, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #16
  store i16 0, ptr %9, align 2, !annotation !10
  %153 = icmp slt i32 %150, 0
  br i1 %153, label %180, label %154

154:                                              ; preds = %137
  %155 = call i32 @ipv6_skip_exthdr(ptr noundef %0, i32 noundef %147, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %156 = icmp sgt i32 %155, -1
  %157 = load i8, ptr %8, align 1
  %158 = icmp eq i8 %157, 58
  %159 = select i1 %156, i1 %158, i1 false
  br i1 %159, label %160, label %181

160:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #16
  store i8 0, ptr %10, align 1, !annotation !10
  %161 = load i32, ptr %148, align 8
  %162 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %155, %163
  %165 = sub i32 %161, %164
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %172, label %167, !prof !11

167:                                              ; preds = %160
  %168 = icmp eq ptr %0, null
  br i1 %168, label %182, label %169

169:                                              ; preds = %167
  %170 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %155, ptr noundef nonnull %10, i32 noundef 1) #16
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %182, label %176

172:                                              ; preds = %160
  %173 = load ptr, ptr %143, align 4
  %174 = getelementptr i8, ptr %173, i32 %155
  %175 = icmp eq ptr %174, null
  br i1 %175, label %182, label %176

176:                                              ; preds = %172, %169
  %177 = phi ptr [ %174, %172 ], [ %10, %169 ]
  %178 = load i8, ptr %177, align 1
  %179 = icmp slt i8 %178, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #16
  br i1 %179, label %181, label %180

180:                                              ; preds = %176, %137
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  br label %402

181:                                              ; preds = %176, %154
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  br label %185

182:                                              ; preds = %172, %169, %167
  %183 = load i16, ptr %9, align 2
  %184 = icmp eq i16 %183, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  br i1 %184, label %402, label %185

185:                                              ; preds = %182, %181
  %186 = tail call ptr @llvm.thread.pointer() #16
  %187 = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 1
  %188 = load volatile i32, ptr %187, align 4
  %189 = add i32 %188, 512
  store volatile i32 %189, ptr %187, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %190 = load ptr, ptr %29, align 8
  %191 = getelementptr inbounds %struct.net_device, ptr %190, i32 0, i32 14
  %192 = load i32, ptr %191, align 8
  %193 = and i32 %192, 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %185
  %196 = zext i8 %1 to i32
  %197 = lshr i32 %196, 5
  %198 = getelementptr i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 22), i32 %197
  %199 = load volatile i32, ptr %198, align 4
  %200 = and i32 %196, 31
  %201 = shl nuw i32 1, %200
  %202 = and i32 %199, %201
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %195
  %205 = call zeroext i1 @icmp_global_allow() #16
  br i1 %205, label %206, label %401

206:                                              ; preds = %204, %195, %185
  %207 = load ptr, ptr %16, align 8
  %208 = load i16, ptr %18, align 4
  %209 = zext i16 %208 to i32
  %210 = getelementptr i8, ptr %207, i32 %209
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  %211 = getelementptr inbounds %struct.inet6_skb_parm, ptr %5, i32 0, i32 8
  %212 = load i16, ptr %211, align 2
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %226, label %214

214:                                              ; preds = %206
  %215 = zext i16 %212 to i32
  %216 = call i32 @ipv6_find_tlv(ptr noundef %0, i32 noundef %215, i32 noundef 201) #16
  %217 = icmp sgt i32 %216, -1
  br i1 %217, label %218, label %226, !prof !11

218:                                              ; preds = %214
  %219 = load ptr, ptr %16, align 8
  %220 = load i16, ptr %18, align 4
  %221 = zext i16 %220 to i32
  %222 = getelementptr i8, ptr %219, i32 %221
  %223 = getelementptr i8, ptr %222, i32 %216
  %224 = getelementptr inbounds %struct.ipv6hdr, ptr %210, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef align 4 dereferenceable(16) %224, i32 16, i1 false) #16
  %225 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %223, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %224, ptr noundef align 1 dereferenceable(16) %225, i32 16, i1 false) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %225, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false) #16
  br label %226

226:                                              ; preds = %218, %214, %206
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %227 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 24), align 8
  %228 = ptrtoint ptr %227 to i32
  %229 = call i32 @llvm.read_register.i32(metadata !0) #16
  %230 = inttoptr i32 %229 to ptr
  %231 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %230) #12, !srcloc !15
  %232 = add i32 %231, %228
  %233 = inttoptr i32 %232 to ptr
  %234 = load volatile ptr, ptr %233, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %235 = getelementptr inbounds %struct.sock, ptr %234, i32 0, i32 4
  %236 = call i32 @_raw_spin_trylock(ptr noundef %235) #16
  %237 = icmp eq i32 %236, 0
  %238 = icmp eq ptr %234, null
  %239 = select i1 %237, i1 true, i1 %238
  br i1 %239, label %401, label %240

240:                                              ; preds = %226
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %13, i8 0, i32 88, i1 false)
  %241 = getelementptr inbounds %struct.flowi_common, ptr %13, i32 0, i32 5
  store i8 58, ptr %241, align 2
  %242 = getelementptr inbounds %struct.flowi6, ptr %13, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %242, ptr noundef align 4 dereferenceable(16) %98, i32 16, i1 false)
  %243 = icmp eq ptr %4, null
  %244 = select i1 %243, ptr %97, ptr %4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.flowi6, ptr %13, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %247, ptr noundef nonnull align 4 dereferenceable(16) %244, i32 16, i1 false)
  br label %284

248:                                              ; preds = %240
  %249 = call fastcc zeroext i1 @icmpv6_rt_has_prefsrc(ptr noundef nonnull %234, ptr noundef nonnull %13)
  br i1 %249, label %284, label %250

250:                                              ; preds = %248
  %251 = load i32, ptr %5, align 4
  %252 = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %251) #16
  %253 = icmp eq ptr %252, null
  br i1 %253, label %284, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.sock_common, ptr %234, i32 0, i32 4
  %256 = load volatile i8, ptr %255, align 2
  %257 = zext i8 %256 to i32
  %258 = shl nuw i32 1, %257
  %259 = and i32 %258, -4161
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.inet_sock, ptr %234, i32 0, i32 1
  %263 = load ptr, ptr %262, align 8
  br label %264

264:                                              ; preds = %261, %254
  %265 = phi ptr [ %263, %261 ], [ null, %254 ]
  %266 = getelementptr inbounds %struct.ipv6_pinfo, ptr %265, i32 0, i32 9
  %267 = load i16, ptr %266, align 2
  %268 = lshr i16 %267, 7
  %269 = and i16 %268, 7
  %270 = zext i16 %269 to i32
  %271 = getelementptr inbounds %struct.flowi6, ptr %13, i32 0, i32 2
  %272 = call i32 @ipv6_dev_get_saddr(ptr noundef nonnull @init_net, ptr noundef nonnull %252, ptr noundef %242, i32 noundef %270, ptr noundef %271) #16
  %273 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !17
  %274 = getelementptr inbounds %struct.net_device, ptr %252, i32 0, i32 99
  %275 = load ptr, ptr %274, align 8
  %276 = ptrtoint ptr %275 to i32
  %277 = call i32 @llvm.read_register.i32(metadata !0) #16
  %278 = inttoptr i32 %277 to ptr
  %279 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %278) #12, !srcloc !15
  %280 = add i32 %279, %276
  %281 = inttoptr i32 %280 to ptr
  %282 = load i32, ptr %281, align 4
  %283 = add i32 %282, -1
  store i32 %283, ptr %281, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %273) #16, !srcloc !18
  br label %284

284:                                              ; preds = %264, %250, %248, %246
  %285 = getelementptr inbounds %struct.flowi_common, ptr %13, i32 0, i32 2
  store i32 %39, ptr %285, align 8
  store i32 %132, ptr %13, align 8
  %286 = getelementptr inbounds %struct.flowi6, ptr %13, i32 0, i32 4
  store i8 %1, ptr %286, align 4
  %287 = getelementptr inbounds %struct.anon.88, ptr %286, i32 0, i32 1
  store i8 %2, ptr %287, align 1
  %288 = getelementptr inbounds %struct.flowi_common, ptr %13, i32 0, i32 8
  store i32 0, ptr %288, align 4
  %289 = call i32 @rt6_multipath_hash(ptr noundef nonnull @init_net, ptr noundef nonnull %13, ptr noundef %0, ptr noundef null) #16
  %290 = getelementptr inbounds %struct.flowi6, ptr %13, i32 0, i32 5
  store i32 %289, ptr %290, align 8
  %291 = getelementptr inbounds %struct.sock_common, ptr %234, i32 0, i32 4
  %292 = load volatile i8, ptr %291, align 2
  %293 = zext i8 %292 to i32
  %294 = shl nuw i32 1, %293
  %295 = and i32 %294, -4161
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %284
  %298 = getelementptr inbounds %struct.inet_sock, ptr %234, i32 0, i32 1
  %299 = load ptr, ptr %298, align 8
  br label %300

300:                                              ; preds = %297, %284
  %301 = phi ptr [ %299, %297 ], [ null, %284 ]
  %302 = call fastcc zeroext i1 @icmpv6_xrlim_allow(ptr noundef nonnull %234, i8 noundef zeroext %1, ptr noundef nonnull %13)
  br i1 %302, label %303, label %398

303:                                              ; preds = %300
  store i8 %1, ptr %12, align 8
  %304 = getelementptr inbounds %struct.icmp6hdr, ptr %12, i32 0, i32 1
  store i8 %2, ptr %304, align 1
  %305 = getelementptr inbounds %struct.icmp6hdr, ptr %12, i32 0, i32 2
  store i16 0, ptr %305, align 2
  %306 = call i32 @llvm.bswap.i32(i32 %3)
  %307 = getelementptr inbounds %struct.icmp6hdr, ptr %12, i32 0, i32 3
  store i32 %306, ptr %307, align 4
  %308 = load i32, ptr %13, align 8
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %303
  %311 = load i32, ptr %242, align 8
  %312 = and i32 %311, 255
  %313 = icmp eq i32 %312, 255
  br i1 %313, label %314, label %317

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.ipv6_pinfo, ptr %301, i32 0, i32 7
  %316 = load i32, ptr %315, align 4
  store i32 %316, ptr %13, align 8
  br label %320

317:                                              ; preds = %310
  %318 = getelementptr inbounds %struct.ipv6_pinfo, ptr %301, i32 0, i32 6
  %319 = load i32, ptr %318, align 4
  store i32 %319, ptr %13, align 8
  br label %320

320:                                              ; preds = %317, %314, %303
  %321 = getelementptr inbounds %struct.ipv6_pinfo, ptr %301, i32 0, i32 11
  %322 = load i8, ptr %321, align 1
  %323 = zext i8 %322 to i16
  %324 = getelementptr inbounds %struct.ipv6_pinfo, ptr %301, i32 0, i32 9
  %325 = load i16, ptr %324, align 2
  %326 = lshr i16 %325, 10
  %327 = trunc i16 %326 to i8
  %328 = and i8 %327, 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i32 16, i1 false) #16
  %329 = getelementptr inbounds i8, ptr %15, i32 16
  store i16 -1, ptr %329, align 8
  %330 = getelementptr inbounds i8, ptr %15, i32 18
  store i16 %323, ptr %330, align 2
  %331 = getelementptr inbounds i8, ptr %15, i32 20
  store i16 0, ptr %331, align 4
  %332 = getelementptr inbounds i8, ptr %15, i32 22
  store i8 %328, ptr %332, align 2
  %333 = getelementptr inbounds i8, ptr %15, i32 23
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(9) %333, i8 0, i32 9, i1 false) #16
  %334 = getelementptr inbounds %struct.sockcm_cookie, ptr %15, i32 0, i32 1
  store i32 %39, ptr %334, align 8
  %335 = zext i8 %322 to i32
  %336 = getelementptr inbounds %struct.flowi6, ptr %13, i32 0, i32 3
  %337 = load i32, ptr %336, align 8
  %338 = shl nuw nsw i32 %335, 20
  %339 = call i32 @llvm.bswap.i32(i32 %338) #16
  %340 = or i32 %339, %337
  store i32 %340, ptr %336, align 8
  %341 = call fastcc ptr @icmpv6_route_lookup(ptr noundef %0, ptr noundef nonnull %234, ptr noundef nonnull %13)
  %342 = icmp ugt ptr %341, inttoptr (i32 -4096 to ptr)
  br i1 %342, label %398, label %343

343:                                              ; preds = %320
  %344 = load i32, ptr %242, align 8
  %345 = and i32 %344, 255
  %346 = icmp eq i32 %345, 255
  %347 = getelementptr inbounds %struct.ipv6_pinfo, ptr %301, i32 0, i32 5
  %348 = load i32, ptr %347, align 4
  %349 = shl i32 %348, 16
  %350 = select i1 %346, i32 %348, i32 %349
  %351 = ashr i32 %350, 23
  %352 = icmp slt i32 %350, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %343
  %354 = call i32 @ip6_dst_hoplimit(ptr noundef %341) #16
  br label %355

355:                                              ; preds = %353, %343
  %356 = phi i32 [ %354, %353 ], [ %351, %343 ]
  %357 = trunc i32 %356 to i16
  store i16 %357, ptr %329, align 8
  store ptr %0, ptr %14, align 4
  %358 = load ptr, ptr %16, align 8
  %359 = load i16, ptr %18, align 4
  %360 = zext i16 %359 to i32
  %361 = getelementptr i8, ptr %358, i32 %360
  %362 = load ptr, ptr %143, align 4
  %363 = ptrtoint ptr %361 to i32
  %364 = ptrtoint ptr %362 to i32
  %365 = sub i32 %363, %364
  %366 = getelementptr inbounds %struct.icmpv6_msg, ptr %14, i32 0, i32 1
  store i32 %365, ptr %366, align 4
  %367 = getelementptr inbounds %struct.icmpv6_msg, ptr %14, i32 0, i32 2
  store i8 %1, ptr %367, align 4
  %368 = load i32, ptr %148, align 8
  %369 = sub i32 %368, %365
  %370 = call i32 @llvm.umin.i32(i32 %369, i32 1232)
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %371 = load ptr, ptr %29, align 8
  %372 = getelementptr inbounds %struct.net_device, ptr %371, i32 0, i32 69
  %373 = load volatile ptr, ptr %372, align 4
  %374 = add nuw nsw i32 %370, 8
  %375 = call i32 @ip6_append_data(ptr noundef nonnull %234, ptr noundef nonnull @icmpv6_getfrag, ptr noundef nonnull %14, i32 noundef %374, i32 noundef 8, ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef %341, i32 noundef 64) #16
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %396, label %377

377:                                              ; preds = %355
  %378 = icmp eq ptr %373, null
  br i1 %378, label %384, label %379, !prof !12

379:                                              ; preds = %377
  %380 = getelementptr inbounds %struct.inet6_dev, ptr %373, i32 0, i32 33, i32 2
  %381 = load ptr, ptr %380, align 4
  %382 = getelementptr [6 x %struct.atomic_t], ptr %381, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %382) #16, !srcloc !20
  %383 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %382, ptr %382, i32 1, ptr elementtype(i32) %382) #16, !srcloc !21
  br label %384

384:                                              ; preds = %379, %377
  %385 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !17
  %386 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %387 = getelementptr [6 x i32], ptr %386, i32 0, i32 4
  %388 = ptrtoint ptr %387 to i32
  %389 = call i32 @llvm.read_register.i32(metadata !0) #16
  %390 = inttoptr i32 %389 to ptr
  %391 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %390) #12, !srcloc !15
  %392 = add i32 %391, %388
  %393 = inttoptr i32 %392 to ptr
  %394 = load i32, ptr %393, align 4
  %395 = add i32 %394, 1
  store i32 %395, ptr %393, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %385) #16, !srcloc !18
  call void @ip6_flush_pending_frames(ptr noundef nonnull %234) #16
  br label %397

396:                                              ; preds = %355
  call void @icmpv6_push_pending_frames(ptr noundef nonnull %234, ptr noundef nonnull %13, ptr noundef nonnull %12, i32 noundef %374)
  br label %397

397:                                              ; preds = %396, %384
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  call void @dst_release(ptr noundef %341) #16
  br label %398

398:                                              ; preds = %397, %320, %300
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %399 = load i16, ptr %235, align 4
  %400 = add i16 %399, 1
  store i16 %400, ptr %235, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  br label %401

401:                                              ; preds = %398, %226, %204
  call fastcc void @local_bh_enable()
  br label %402

402:                                              ; preds = %401, %182, %180, %131, %91, %60, %28, %23, %6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_acast_addr_src(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @icmpv6_rt_has_prefsrc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @ip6_route_output_flags(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1, i32 noundef 0) #16
  %4 = getelementptr inbounds %struct.dst_entry, ptr %3, i32 0, i32 15
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %8 = getelementptr inbounds %struct.rt6_info, ptr %3, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fib6_info, ptr %9, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fib6_info, ptr %9, i32 0, i32 11, i32 0, i32 0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fib6_info, ptr %9, i32 0, i32 11, i32 0, i32 0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fib6_info, ptr %9, i32 0, i32 11, i32 0, i32 0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi i32 [ %13, %11 ], [ 0, %7 ]
  %22 = phi i32 [ %15, %11 ], [ 0, %7 ]
  %23 = phi i32 [ %17, %11 ], [ 0, %7 ]
  %24 = phi i32 [ %19, %11 ], [ 0, %7 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %25 = or i32 %22, %21
  %26 = or i32 %25, %23
  %27 = or i32 %26, %24
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %20, %2
  %30 = phi i1 [ false, %2 ], [ %28, %20 ]
  tail call void @dst_release(ptr noundef %3) #16
  ret i1 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt6_multipath_hash(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @icmpv6_xrlim_allow(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.inetpeer_addr, align 4
  %5 = zext i8 %1 to i32
  %6 = lshr i32 %5, 5
  %7 = getelementptr i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 22), i32 %6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %5, 31
  %10 = shl nuw i32 1, %9
  %11 = and i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %88, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @ip6_route_output_flags(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %2, i32 noundef 0) #16
  %15 = getelementptr inbounds %struct.dst_entry, ptr %14, i32 0, i32 15
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rt6_info, ptr %14, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = tail call ptr @llvm.thread.pointer() #16
  br i1 %21, label %43, label %23, !prof !12

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = add i32 %25, 512
  store volatile i32 %26, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %20, i32 0, i32 33, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #12, !srcloc !15
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr inbounds %struct.ipstats_mib, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !27
  %38 = getelementptr [37 x i64], ptr %34, i32 0, i32 15
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, ptr %38, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !28
  %41 = load i32, ptr %35, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %35, align 4
  tail call fastcc void @local_bh_enable()
  br label %43

43:                                               ; preds = %23, %18
  %44 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = add i32 %45, 512
  store volatile i32 %46, ptr %44, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %47 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #12, !srcloc !15
  %52 = add i32 %51, %48
  %53 = inttoptr i32 %52 to ptr
  %54 = getelementptr inbounds %struct.ipstats_mib, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !27
  %57 = getelementptr [37 x i64], ptr %53, i32 0, i32 15
  %58 = load i64, ptr %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, ptr %57, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !28
  %60 = load i32, ptr %54, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %54, align 4
  tail call fastcc void @local_bh_enable()
  br label %86

62:                                               ; preds = %13
  %63 = load ptr, ptr %14, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 14
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %65, %62
  %71 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 18), align 4
  %72 = getelementptr inbounds %struct.rt6_info, ptr %14, i32 0, i32 3, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp slt i32 %73, 128
  %75 = sub i32 128, %73
  %76 = ashr i32 %75, 5
  %77 = select i1 %74, i32 %76, i32 0
  %78 = ashr i32 %71, %77
  %79 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 4), align 8
  %80 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  %81 = getelementptr inbounds i8, ptr %4, i32 16
  store i32 10, ptr %81, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %80, i32 16, i1 false) #16
  %82 = call ptr @inet_getpeer(ptr noundef %79, ptr noundef nonnull %4, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  %83 = call zeroext i1 @inet_peer_xrlim_allow(ptr noundef %82, i32 noundef %78) #16
  %84 = icmp eq ptr %82, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %70
  call void @inet_putpeer(ptr noundef nonnull %82) #16
  br label %86

86:                                               ; preds = %85, %70, %65, %43
  %87 = phi i1 [ false, %43 ], [ true, %65 ], [ %83, %85 ], [ %83, %70 ]
  call void @dst_release(ptr noundef %14) #16
  br label %88

88:                                               ; preds = %86, %3
  %89 = phi i1 [ %87, %86 ], [ true, %3 ]
  ret i1 %89
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @icmpv6_route_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.flowi6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i32 88, i1 false), !annotation !10
  %7 = call i32 @ip6_dst_lookup(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %2) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = inttoptr i32 %7 to ptr
  br label %83

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.rt6_info, ptr %12, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1048576
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rt6_info, ptr %12, i32 0, i32 3, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, 127
  %22 = and i32 %15, 2097154
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %50

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rt6_info, ptr %12, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %13, align 4
  %29 = xor i32 %28, %27
  %30 = getelementptr %struct.rt6_info, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.flowi6, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, %31
  %35 = or i32 %34, %29
  %36 = getelementptr %struct.rt6_info, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.flowi6, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, %37
  %41 = or i32 %35, %40
  %42 = getelementptr %struct.rt6_info, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr %struct.flowi6, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, %43
  %47 = or i32 %41, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %25, %11
  call void @dst_release(ptr noundef %12) #16
  br label %83

50:                                               ; preds = %25, %18
  store ptr %12, ptr %5, align 4
  %51 = call ptr @xfrm_lookup(ptr noundef nonnull @init_net, ptr noundef %12, ptr noundef %2, ptr noundef %1, i32 noundef 0) #16
  store ptr %51, ptr %4, align 4
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = icmp eq ptr %51, %12
  br i1 %54, label %58, label %83

55:                                               ; preds = %50
  %56 = icmp eq ptr %51, inttoptr (i32 -1 to ptr)
  br i1 %56, label %57, label %83

57:                                               ; preds = %55
  store ptr null, ptr %4, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = call i32 @__xfrm_decode_session(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 10, i32 noundef 1) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = call i32 @ip6_dst_lookup(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load ptr, ptr %5, align 4
  %66 = call ptr @xfrm_lookup(ptr noundef nonnull @init_net, ptr noundef %65, ptr noundef nonnull %6, ptr noundef %1, i32 noundef 1) #16
  store ptr %66, ptr %5, align 4
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %4, align 4
  call void @dst_release(ptr noundef %69) #16
  br label %76

70:                                               ; preds = %64
  %71 = ptrtoint ptr %66 to i32
  %72 = icmp eq ptr %66, inttoptr (i32 -1 to ptr)
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load ptr, ptr %4, align 4
  call void @dst_release(ptr noundef %74) #16
  %75 = load ptr, ptr %5, align 4
  br label %83

76:                                               ; preds = %70, %68, %61, %58
  %77 = phi ptr [ %5, %68 ], [ %4, %58 ], [ %4, %61 ], [ %4, %70 ]
  %78 = phi i32 [ 0, %68 ], [ %59, %58 ], [ %62, %61 ], [ %71, %70 ]
  %79 = load ptr, ptr %77, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = inttoptr i32 %78 to ptr
  br label %83

83:                                               ; preds = %81, %76, %73, %55, %53, %49, %9
  %84 = phi ptr [ %10, %9 ], [ inttoptr (i32 -22 to ptr), %49 ], [ %82, %81 ], [ %75, %73 ], [ %51, %53 ], [ %79, %76 ], [ %51, %55 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret ptr %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_append_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icmpv6_getfrag(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) #0 {
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.icmpv6_msg, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %2
  %11 = tail call i32 @skb_copy_and_csum_bits(ptr noundef %7, i32 noundef %10, ptr noundef %1, i32 noundef %3) #16
  %12 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %4, 1
  %15 = icmp eq i32 %14, 0
  %16 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 24) #16
  %17 = select i1 %15, i32 %11, i32 %16
  %18 = add i32 %17, %13
  %19 = icmp ult i32 %18, %17
  %20 = zext i1 %19 to i32
  %21 = add i32 %18, %20
  store i32 %21, ptr %12, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_flush_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icmpv6_param_prob(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 4, i8 noundef zeroext %1, i32 noundef %2, ptr noundef null, ptr noundef %4)
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_err_gen_icmpv6_unreach(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.in6_addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !10
  %6 = add i32 %1, 48
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = icmp ugt i32 %6, %11
  br i1 %12, label %13, label %19, !prof !12

13:                                               ; preds = %4
  %14 = icmp ult i32 %8, %6
  br i1 %14, label %107, label %15, !prof !12

15:                                               ; preds = %13
  %16 = sub i32 %6, %11
  %17 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %16) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %107, label %19

19:                                               ; preds = %15, %4
  %20 = icmp ugt i32 %3, 127
  %21 = and i32 %3, 7
  %22 = icmp eq i32 %21, 0
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, ptr %7, align 8
  %26 = icmp ult i32 %25, %3
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @skb_copy(ptr noundef %0, i32 noundef 2592) #16
  br label %31

29:                                               ; preds = %24, %19
  %30 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #16
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i1 [ false, %27 ], [ true, %29 ]
  %33 = phi i32 [ %3, %27 ], [ 0, %29 ]
  %34 = phi ptr [ %28, %27 ], [ %30, %29 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %107, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = and i32 %38, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = and i32 %38, -2
  %45 = inttoptr i32 %44 to ptr
  tail call void @dst_release(ptr noundef %45) #16
  br label %46

46:                                               ; preds = %43, %40
  store i32 0, ptr %37, align 8
  br label %47

47:                                               ; preds = %46, %36
  %48 = tail call ptr @skb_pull(ptr noundef nonnull %34, i32 noundef %1) #16
  %49 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 16
  %52 = load ptr, ptr %51, align 8
  %53 = ptrtoint ptr %50 to i32
  %54 = ptrtoint ptr %52 to i32
  %55 = sub i32 %53, %54
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 13, i32 0, i32 18
  store i16 %56, ptr %57, align 4
  %58 = and i32 %55, 65535
  %59 = getelementptr i8, ptr %52, i32 %58
  %60 = getelementptr inbounds %struct.ipv6hdr, ptr %59, i32 0, i32 5
  %61 = tail call ptr @rt6_lookup(ptr noundef nonnull @init_net, ptr noundef %60, ptr noundef null, i32 noundef 0, ptr noundef %0, i32 noundef 0) #16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %47
  %64 = load ptr, ptr %61, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.anon.43, ptr %34, i32 0, i32 2
  store ptr %64, ptr %67, align 8
  br label %68

68:                                               ; preds = %66, %63, %47
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %72 = load i16, ptr %71, align 4
  %73 = zext i16 %72 to i32
  %74 = getelementptr i8, ptr %70, i32 %73
  %75 = getelementptr inbounds %struct.iphdr, ptr %74, i32 0, i32 8
  %76 = load i32, ptr %75, align 4
  store i32 0, ptr %5, align 4
  %77 = getelementptr inbounds i32, ptr %5, i32 1
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  store i32 -65536, ptr %78, align 4
  %79 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  store i32 %76, ptr %79, align 4
  br i1 %32, label %98, label %80

80:                                               ; preds = %68
  %81 = load ptr, ptr %49, align 4
  %82 = sub i32 0, %1
  %83 = getelementptr i8, ptr %81, i32 %82
  store ptr %83, ptr %49, align 4
  %84 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 5
  %85 = load i32, ptr %84, align 8
  %86 = add i32 %85, %1
  store i32 %86, ptr %84, align 8
  %87 = load ptr, ptr %51, align 8
  %88 = ptrtoint ptr %83 to i32
  %89 = ptrtoint ptr %87 to i32
  %90 = sub i32 %88, %89
  %91 = trunc i32 %90 to i16
  store i16 %91, ptr %57, align 4
  %92 = sub i32 %33, %1
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %83, ptr align 1 %81, i32 %92, i1 false)
  %93 = load ptr, ptr %49, align 4
  %94 = getelementptr i8, ptr %93, i32 %33
  %95 = getelementptr i8, ptr %94, i32 %82
  tail call void @llvm.memset.p0.i32(ptr align 1 %95, i8 0, i32 %1, i1 false)
  %96 = shl i32 %33, 21
  %97 = and i32 %96, -16777216
  br label %98

98:                                               ; preds = %80, %68
  %99 = phi i32 [ %97, %80 ], [ 0, %68 ]
  %100 = icmp eq i32 %2, 11
  %101 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3
  br i1 %100, label %102, label %103

102:                                              ; preds = %98
  call void @icmp6_send(ptr noundef nonnull %34, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef %99, ptr noundef nonnull %5, ptr noundef %101)
  br label %104

103:                                              ; preds = %98
  call void @icmp6_send(ptr noundef nonnull %34, i8 noundef zeroext 1, i8 noundef zeroext 3, i32 noundef %99, ptr noundef nonnull %5, ptr noundef %101)
  br label %104

104:                                              ; preds = %103, %102
  br i1 %62, label %106, label %105

105:                                              ; preds = %104
  call void @dst_release(ptr noundef nonnull %61) #16
  br label %106

106:                                              ; preds = %105, %104
  call void @kfree_skb_reason(ptr noundef nonnull %34, i32 noundef 0) #16
  br label %107

107:                                              ; preds = %106, %31, %15, %13
  %108 = phi i32 [ 0, %106 ], [ 1, %15 ], [ 1, %31 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %108
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %15, !prof !12

9:                                                ; preds = %2
  %10 = icmp ult i32 %4, %1
  br i1 %10, label %15, label %11, !prof !12

11:                                               ; preds = %9
  %12 = sub i32 %1, %7
  %13 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %12) #16
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %11, %9, %2
  %16 = phi i1 [ %14, %11 ], [ true, %2 ], [ false, %9 ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icmpv6_notify(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  store i16 0, ptr %5, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  store i8 0, ptr %6, align 1, !annotation !10
  %8 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  %14 = icmp ult i32 %13, 40
  br i1 %14, label %15, label %21, !prof !12

15:                                               ; preds = %4
  %16 = icmp ult i32 %10, 40
  br i1 %16, label %59, label %17, !prof !12

17:                                               ; preds = %15
  %18 = sub nuw nsw i32 40, %13
  %19 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %18) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %17, %4
  tail call void @seg6_icmp_srh(ptr noundef %0, ptr noundef %7) #16
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ipv6hdr, ptr %23, i32 0, i32 3
  %25 = load i8, ptr %24, align 2
  store i8 %25, ptr %6, align 1
  %26 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %25) #16
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = call i32 @ipv6_skip_exthdr(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %6, ptr noundef nonnull %5) #16
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %59, label %30

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %28, %27 ], [ 40, %21 ]
  %32 = add nuw i32 %31, 8
  %33 = load i32, ptr %9, align 8
  %34 = load i32, ptr %11, align 4
  %35 = sub i32 %33, %34
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %37, label %43, !prof !12

37:                                               ; preds = %30
  %38 = icmp ult i32 %33, %32
  br i1 %38, label %59, label %39, !prof !12

39:                                               ; preds = %37
  %40 = sub i32 %32, %35
  %41 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %40) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %39, %30
  %44 = load i8, ptr %6, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr [256 x ptr], ptr @inet6_protos, i32 0, i32 %45
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.inet6_protocol, ptr %47, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = call i32 %51(ptr noundef %0, ptr noundef %7, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %31, i32 noundef %3) #16
  %55 = load i8, ptr %6, align 1
  %56 = zext i8 %55 to i32
  br label %57

57:                                               ; preds = %53, %49, %43
  %58 = phi i32 [ %56, %53 ], [ %45, %49 ], [ %45, %43 ]
  call void @raw6_icmp_error(ptr noundef %0, i32 noundef %58, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %31, i32 noundef %3) #16
  br label %80

59:                                               ; preds = %39, %37, %27, %17, %15
  %60 = load ptr, ptr %8, align 8
  %61 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 69
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64, !prof !12

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.inet6_dev, ptr %62, i32 0, i32 33, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr [6 x %struct.atomic_t], ptr %66, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #16, !srcloc !20
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #16, !srcloc !21
  br label %69

69:                                               ; preds = %64, %59
  %70 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %71 = getelementptr [6 x i32], ptr %70, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  %73 = call i32 @llvm.read_register.i32(metadata !0) #16
  %74 = inttoptr i32 %73 to ptr
  %75 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %74) #12, !srcloc !15
  %76 = add i32 %75, %72
  %77 = inttoptr i32 %76 to ptr
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %69, %57
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seg6_icmp_srh(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw6_icmp_error(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @icmpv6_flow_init(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #7 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %1, i8 0, i32 88, i1 false)
  %7 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %7, ptr noundef align 4 dereferenceable(16) %3, i32 16, i1 false)
  %8 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %4, i32 16, i1 false)
  %9 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  store i8 58, ptr %9, align 2
  %10 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  store i8 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon.88, ptr %10, i32 0, i32 1
  store i8 0, ptr %11, align 1
  store i32 %5, ptr %1, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @icmpv6_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @icmpv6_sk_ops) #16
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @icmpv6_protocol, i8 noundef zeroext 58) #16
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #18
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @icmpv6_sk_ops) #16
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i32 [ -11, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icmpv6_cleanup() local_unnamed_addr #0 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @icmpv6_sk_ops) #16
  %1 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @icmpv6_protocol, i8 noundef zeroext 58) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @icmpv6_err_convert(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) #10 {
  store i32 71, ptr %2, align 4
  switch i8 %0, label %15 [
    i8 1, label %4
    i8 2, label %12
    i8 4, label %13
    i8 3, label %14
  ]

4:                                                ; preds = %3
  %5 = icmp ult i8 %1, 7
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32
  %8 = getelementptr [7 x %struct.icmp6_err], ptr @tab_unreach, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %2, align 4
  %10 = getelementptr [7 x %struct.icmp6_err], ptr @tab_unreach, i32 0, i32 %7, i32 1
  %11 = load i32, ptr %10, align 4
  br label %15

12:                                               ; preds = %3
  store i32 90, ptr %2, align 4
  br label %15

13:                                               ; preds = %3
  br label %15

14:                                               ; preds = %3
  store i32 113, ptr %2, align 4
  br label %15

15:                                               ; preds = %14, %13, %12, %6, %4, %3
  %16 = phi i32 [ 0, %3 ], [ 0, %14 ], [ 1, %13 ], [ 0, %12 ], [ %11, %6 ], [ 1, %4 ]
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @ipv6_icmp_sysctl_init(ptr noundef %0) local_unnamed_addr #8 section ".init.text" {
  %2 = tail call ptr @kmemdup(ptr noundef nonnull @ipv6_icmp_table_template, i32 noundef 216, i32 noundef 3264) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 18
  %6 = getelementptr inbounds %struct.ctl_table, ptr %2, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 19
  %8 = getelementptr %struct.ctl_table, ptr %2, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 20
  %10 = getelementptr %struct.ctl_table, ptr %2, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 21
  %12 = getelementptr %struct.ctl_table, ptr %2, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 23
  %14 = getelementptr %struct.ctl_table, ptr %2, i32 4, i32 1
  store ptr %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @icmp_global_allow() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_tlv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_peer_xrlim_allow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_decode_session(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @icmpv6_sk_init(ptr noundef %0) #8 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store ptr null, ptr %2, align 4, !annotation !10
  %3 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #19
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 24
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %16, %6
  %11 = phi i32 [ %26, %16 ], [ %7, %6 ]
  %12 = call i32 @inet_ctl_sock_create(ptr noundef nonnull %2, i16 noundef zeroext 10, i16 noundef zeroext 3, i8 noundef zeroext 58, ptr noundef %0) #16
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %12) #18
  call void @icmpv6_sk_exit(ptr noundef %0)
  br label %29

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = ptrtoint ptr %18 to i32
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = inttoptr i32 %22 to ptr
  store ptr %17, ptr %23, align 4
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 21
  store i32 131968, ptr %25, align 8
  %26 = call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #20
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %10, label %29

29:                                               ; preds = %16, %14, %6, %1
  %30 = phi i32 [ %12, %14 ], [ -12, %1 ], [ 0, %6 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %30
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @icmpv6_sk_exit(ptr nocapture noundef readonly %0) #13 section ".ref.text" {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 24
  br label %7

7:                                                ; preds = %22, %5
  %8 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %9 = phi i32 [ %2, %5 ], [ %24, %22 ]
  %10 = load ptr, ptr %6, align 8
  %11 = ptrtoint ptr %10 to i32
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = inttoptr i32 %14 to ptr
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 71
  %20 = load ptr, ptr %19, align 8
  tail call void @sock_release(ptr noundef %20) #16
  %21 = load i32, ptr @nr_cpu_ids, align 4
  br label %22

22:                                               ; preds = %18, %7
  %23 = phi i32 [ %8, %7 ], [ %21, %18 ]
  %24 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @__cpu_possible_mask) #20
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %7, label %26

26:                                               ; preds = %22, %1
  %27 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 24
  %28 = load ptr, ptr %27, align 8
  tail call void @free_percpu(ptr noundef %28) #16
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icmpv6_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %12, label %7, !prof !12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %9 = load i64, ptr %8, align 16
  %10 = and i64 %9, 262144
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12, !prof !11

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = inttoptr i32 %15 to ptr
  %19 = getelementptr inbounds %struct.rt6_info, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %17, %12, %7
  %23 = phi ptr [ %3, %7 ], [ %21, %17 ], [ %3, %12 ]
  %24 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 69
  %25 = load volatile ptr, ptr %24, align 4
  %26 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %160, label %37

37:                                               ; preds = %32, %29
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %37
  %43 = inttoptr i32 %40 to ptr
  %44 = getelementptr inbounds %struct.dst_entry, ptr %43, i32 0, i32 7
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %59, label %160

48:                                               ; preds = %22
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, -2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = inttoptr i32 %51 to ptr
  %55 = getelementptr inbounds %struct.dst_entry, ptr %54, i32 0, i32 7
  %56 = load i16, ptr %55, align 4
  %57 = and i16 %56, 4
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %160

59:                                               ; preds = %53, %48, %42, %37
  %60 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %0, i16 noundef zeroext 10) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %160

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %64 = load i8, ptr %63, align 1
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %368, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.skb_ext, ptr %69, i32 0, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 3
  %74 = getelementptr i8, ptr %69, i32 %73
  %75 = icmp eq ptr %74, null
  br i1 %75, label %368, label %76

76:                                               ; preds = %67
  %77 = load i32, ptr %74, align 4
  %78 = add i32 %77, -1
  %79 = getelementptr %struct.sec_path, ptr %74, i32 0, i32 2, i32 %78
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.xfrm_state, ptr %80, i32 0, i32 14, i32 6
  %82 = load i8, ptr %81, align 1
  %83 = and i8 %82, 16
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %368, label %85

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %87 = load i32, ptr %86, align 8
  %88 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = sub i32 %87, %89
  %91 = icmp ult i32 %90, 48
  br i1 %91, label %92, label %98, !prof !12

92:                                               ; preds = %85
  %93 = icmp ult i32 %87, 48
  br i1 %93, label %368, label %94, !prof !12

94:                                               ; preds = %92
  %95 = sub nuw nsw i32 48, %90
  %96 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %95) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %368, label %98

98:                                               ; preds = %94, %85
  %99 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %102 = load i16, ptr %101, align 4
  %103 = zext i16 %102 to i32
  %104 = getelementptr i8, ptr %100, i32 %103
  %105 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %106 = load ptr, ptr %105, align 4
  %107 = ptrtoint ptr %104 to i32
  %108 = ptrtoint ptr %106 to i32
  %109 = sub i32 %107, %108
  %110 = ptrtoint ptr %100 to i32
  %111 = sub i32 %108, %110
  %112 = trunc i32 %111 to i16
  %113 = add i16 %112, 8
  store i16 %113, ptr %101, align 4
  %114 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %98
  %118 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i8, ptr %63, align 1
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %156, label %124

124:                                              ; preds = %120, %117
  %125 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, -2
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %124
  %130 = inttoptr i32 %127 to ptr
  %131 = getelementptr inbounds %struct.dst_entry, ptr %130, i32 0, i32 7
  %132 = load i16, ptr %131, align 4
  %133 = and i16 %132, 4
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %146, label %156

135:                                              ; preds = %98
  %136 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, -2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %135
  %141 = inttoptr i32 %138 to ptr
  %142 = getelementptr inbounds %struct.dst_entry, ptr %141, i32 0, i32 7
  %143 = load i16, ptr %142, align 4
  %144 = and i16 %143, 4
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %140, %135, %129, %124
  %147 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 4, ptr noundef %0, i16 noundef zeroext 10) #16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %368, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr %105, align 4
  %151 = load ptr, ptr %99, align 8
  %152 = ptrtoint ptr %150 to i32
  %153 = ptrtoint ptr %151 to i32
  %154 = sub i32 %152, %153
  %155 = trunc i32 %154 to i16
  br label %156

156:                                              ; preds = %149, %140, %129, %120
  %157 = phi i16 [ %155, %149 ], [ %112, %140 ], [ %112, %120 ], [ %112, %129 ]
  %158 = trunc i32 %109 to i16
  %159 = add i16 %157, %158
  store i16 %159, ptr %101, align 4
  br label %160

160:                                              ; preds = %156, %59, %53, %42, %32
  %161 = icmp eq ptr %25, null
  br i1 %161, label %167, label %162, !prof !12

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.inet6_dev, ptr %25, i32 0, i32 33, i32 2
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr [6 x %struct.atomic_t], ptr %164, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %165) #16, !srcloc !20
  %166 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %165, ptr %165, i32 1, ptr elementtype(i32) %165) #16, !srcloc !21
  br label %167

167:                                              ; preds = %162, %160
  %168 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %169 = getelementptr [6 x i32], ptr %168, i32 0, i32 1
  %170 = ptrtoint ptr %169 to i32
  %171 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %172 = inttoptr i32 %171 to ptr
  %173 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %172) #12, !srcloc !15
  %174 = add i32 %173, %170
  %175 = inttoptr i32 %174 to ptr
  %176 = load i32, ptr %175, align 4
  %177 = add i32 %176, 1
  store i32 %177, ptr %175, align 4
  %178 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %181 = load i16, ptr %180, align 4
  %182 = zext i16 %181 to i32
  %183 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %184 = load i16, ptr %183, align 8
  %185 = and i16 %184, 32767
  store i16 %185, ptr %183, align 8
  %186 = lshr i16 %184, 5
  %187 = trunc i16 %186 to i2
  switch i2 %187, label %217 [
    i2 1, label %199
    i2 -1, label %188
  ]

188:                                              ; preds = %167
  %189 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %190 = load i16, ptr %189, align 4
  %191 = zext i16 %190 to i32
  %192 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %193 = load ptr, ptr %192, align 4
  %194 = ptrtoint ptr %193 to i32
  %195 = ptrtoint ptr %179 to i32
  %196 = add i32 %191, %195
  %197 = sub i32 %196, %194
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %217, label %199

199:                                              ; preds = %188, %167
  %200 = or i16 %184, -32768
  store i16 %200, ptr %183, align 8
  %201 = and i16 %184, 96
  %202 = icmp eq i16 %201, 32
  br i1 %202, label %203, label %250

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %205 = load i16, ptr %204, align 2
  %206 = trunc i16 %205 to i8
  %207 = and i8 %206, 12
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = and i16 %200, -97
  store i16 %210, ptr %183, align 8
  br label %250

211:                                              ; preds = %203
  %212 = add i8 %206, 12
  %213 = and i8 %212, 12
  %214 = zext i8 %213 to i16
  %215 = and i16 %205, -13
  %216 = or i16 %215, %214
  store i16 %216, ptr %204, align 2
  br label %250

217:                                              ; preds = %188, %167
  %218 = getelementptr i8, ptr %179, i32 %182
  %219 = getelementptr inbounds %struct.ipv6hdr, ptr %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.ipv6hdr, ptr %218, i32 0, i32 6
  %221 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %222 = load i32, ptr %221, align 8
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #16
  %224 = tail call i32 @__csum_ipv6_magic(ptr noundef %219, ptr noundef %220, i32 noundef %223, i32 noundef 973078528, i32 noundef 0) #16
  %225 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %224) #17, !srcloc !9
  %226 = lshr i32 %225, 16
  %227 = or i32 %226, -65536
  %228 = load i16, ptr %183, align 8
  %229 = and i16 %228, 96
  %230 = icmp eq i16 %229, 64
  br i1 %230, label %231, label %242

231:                                              ; preds = %217
  %232 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %233 = load i32, ptr %232, align 4
  %234 = add i32 %233, %227
  %235 = icmp ult i32 %234, %233
  %236 = zext i1 %235 to i32
  %237 = add i32 %234, %236
  %238 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %237) #17, !srcloc !9
  %239 = icmp ugt i32 %238, -65537
  br i1 %239, label %240, label %242

240:                                              ; preds = %231
  %241 = or i16 %228, -32768
  store i16 %241, ptr %183, align 8
  br label %250

242:                                              ; preds = %231, %217
  %243 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %227, ptr %243, align 4
  %244 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #16
  %245 = icmp eq i16 %244, 0
  %246 = load i16, ptr %183, align 8
  %247 = select i1 %245, i16 -32768, i16 0
  %248 = and i16 %246, 32767
  %249 = or i16 %248, %247
  store i16 %249, ptr %183, align 8
  br i1 %245, label %250, label %334

250:                                              ; preds = %242, %240, %211, %209, %199
  %251 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %252 = load i32, ptr %251, align 8
  %253 = icmp ult i32 %252, 8
  br i1 %253, label %351, label %254, !prof !12

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %256 = load i32, ptr %255, align 4
  %257 = sub i32 %252, %256
  %258 = icmp ult i32 %257, 8
  br i1 %258, label %259, label %265

259:                                              ; preds = %254
  %260 = sub nuw nsw i32 8, %257
  %261 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %260) #16
  %262 = icmp eq ptr %261, null
  br i1 %262, label %351, label %263

263:                                              ; preds = %259
  %264 = load i32, ptr %251, align 8
  br label %265

265:                                              ; preds = %263, %254
  %266 = phi i32 [ %264, %263 ], [ %252, %254 ]
  %267 = add i32 %266, -8
  store i32 %267, ptr %251, align 8
  %268 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr i8, ptr %269, i32 8
  store ptr %270, ptr %268, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %351, label %272

272:                                              ; preds = %265
  %273 = load ptr, ptr %178, align 8
  %274 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %275 = load i16, ptr %274, align 2
  %276 = zext i16 %275 to i32
  %277 = getelementptr i8, ptr %273, i32 %276
  %278 = load i8, ptr %277, align 4
  br i1 %161, label %279, label %281, !prof !12

279:                                              ; preds = %272
  %280 = zext i8 %278 to i32
  br label %287

281:                                              ; preds = %272
  %282 = getelementptr inbounds %struct.inet6_dev, ptr %25, i32 0, i32 33, i32 3
  %283 = load ptr, ptr %282, align 4
  %284 = zext i8 %278 to i32
  %285 = getelementptr [512 x %struct.atomic_t], ptr %283, i32 0, i32 %284
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %285) #16, !srcloc !20
  %286 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %285, ptr %285, i32 1, ptr elementtype(i32) %285) #16, !srcloc !21
  br label %287

287:                                              ; preds = %281, %279
  %288 = phi i32 [ %280, %279 ], [ %284, %281 ]
  %289 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 11), align 4
  %290 = getelementptr [512 x %struct.atomic_t], ptr %289, i32 0, i32 %288
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %290) #16, !srcloc !20
  %291 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %290, ptr %290, i32 1, ptr elementtype(i32) %290) #16, !srcloc !21
  switch i8 %278, label %322 [
    i8 -128, label %292
    i8 -96, label %296
    i8 -127, label %330
    i8 -95, label %303
    i8 2, label %305
    i8 1, label %312
    i8 3, label %312
    i8 4, label %312
    i8 -123, label %318
    i8 -122, label %318
    i8 -121, label %318
    i8 -120, label %318
    i8 -119, label %318
    i8 -126, label %320
    i8 -125, label %321
    i8 -124, label %333
    i8 -117, label %333
    i8 -116, label %333
    i8 -113, label %333
    i8 -112, label %333
    i8 -111, label %333
    i8 -110, label %333
    i8 -109, label %333
  ]

292:                                              ; preds = %287
  %293 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 19), align 64
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %295, label %333

295:                                              ; preds = %292
  tail call fastcc void @icmpv6_echo_reply(ptr noundef %0)
  br label %333

296:                                              ; preds = %287
  %297 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 19), align 64
  %298 = icmp ne i8 %297, 0
  %299 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 20), align 1
  %300 = icmp eq i8 %299, 0
  %301 = select i1 %298, i1 true, i1 %300
  br i1 %301, label %333, label %302

302:                                              ; preds = %296
  tail call fastcc void @icmpv6_echo_reply(ptr noundef %0)
  br label %333

303:                                              ; preds = %287
  %304 = tail call zeroext i1 @ping_rcv(ptr noundef %0) #16
  br i1 %304, label %332, label %333

305:                                              ; preds = %287
  %306 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef 40)
  br i1 %306, label %307, label %351

307:                                              ; preds = %305
  %308 = load ptr, ptr %178, align 8
  %309 = load i16, ptr %274, align 2
  %310 = zext i16 %309 to i32
  %311 = getelementptr i8, ptr %308, i32 %310
  br label %312

312:                                              ; preds = %307, %287, %287, %287
  %313 = phi ptr [ %277, %287 ], [ %277, %287 ], [ %277, %287 ], [ %311, %307 ]
  %314 = getelementptr inbounds %struct.icmp6hdr, ptr %313, i32 0, i32 1
  %315 = load i8, ptr %314, align 1
  %316 = getelementptr inbounds %struct.icmp6hdr, ptr %313, i32 0, i32 3
  %317 = load i32, ptr %316, align 4
  tail call void @icmpv6_notify(ptr noundef %0, i8 noundef zeroext %278, i8 noundef zeroext %315, i32 noundef %317)
  br label %333

318:                                              ; preds = %287, %287, %287, %287, %287
  %319 = tail call i32 @ndisc_rcv(ptr noundef %0) #16
  br label %333

320:                                              ; preds = %287
  tail call void @igmp6_event_query(ptr noundef %0) #16
  br label %369

321:                                              ; preds = %287
  tail call void @igmp6_event_report(ptr noundef %0) #16
  br label %369

322:                                              ; preds = %287
  %323 = and i32 %288, 128
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.icmp6hdr, ptr %277, i32 0, i32 1
  %327 = load i8, ptr %326, align 1
  %328 = getelementptr inbounds %struct.icmp6hdr, ptr %277, i32 0, i32 3
  %329 = load i32, ptr %328, align 4
  tail call void @icmpv6_notify(ptr noundef %0, i8 noundef zeroext %278, i8 noundef zeroext %327, i32 noundef %329)
  br label %333

330:                                              ; preds = %287
  %331 = tail call zeroext i1 @ping_rcv(ptr noundef %0) #16
  br i1 %331, label %332, label %333

332:                                              ; preds = %330, %303
  tail call void @consume_skb(ptr noundef %0) #16
  br label %369

333:                                              ; preds = %330, %325, %322, %318, %312, %303, %302, %296, %295, %292, %287, %287, %287, %287, %287, %287, %287, %287
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  br label %369

334:                                              ; preds = %242
  br i1 %161, label %340, label %335, !prof !12

335:                                              ; preds = %334
  %336 = getelementptr inbounds %struct.inet6_dev, ptr %25, i32 0, i32 33, i32 2
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr [6 x %struct.atomic_t], ptr %337, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %338) #16, !srcloc !20
  %339 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %338, ptr %338, i32 1, ptr elementtype(i32) %338) #16, !srcloc !21
  br label %340

340:                                              ; preds = %335, %334
  %341 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %342 = getelementptr [6 x i32], ptr %341, i32 0, i32 5
  %343 = ptrtoint ptr %342 to i32
  %344 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %345 = inttoptr i32 %344 to ptr
  %346 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %345) #12, !srcloc !15
  %347 = add i32 %346, %343
  %348 = inttoptr i32 %347 to ptr
  %349 = load i32, ptr %348, align 4
  %350 = add i32 %349, 1
  store i32 %350, ptr %348, align 4
  br label %351

351:                                              ; preds = %340, %305, %265, %259, %250
  br i1 %161, label %357, label %352, !prof !12

352:                                              ; preds = %351
  %353 = getelementptr inbounds %struct.inet6_dev, ptr %25, i32 0, i32 33, i32 2
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr [6 x %struct.atomic_t], ptr %354, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %355) #16, !srcloc !20
  %356 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %355, ptr %355, i32 1, ptr elementtype(i32) %355) #16, !srcloc !21
  br label %357

357:                                              ; preds = %352, %351
  %358 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %359 = getelementptr [6 x i32], ptr %358, i32 0, i32 2
  %360 = ptrtoint ptr %359 to i32
  %361 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %362 = inttoptr i32 %361 to ptr
  %363 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %362) #12, !srcloc !15
  %364 = add i32 %363, %360
  %365 = inttoptr i32 %364 to ptr
  %366 = load i32, ptr %365, align 4
  %367 = add i32 %366, 1
  store i32 %367, ptr %365, align 4
  br label %368

368:                                              ; preds = %357, %146, %94, %92, %76, %67, %62
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  br label %369

369:                                              ; preds = %368, %333, %332, %321, %320
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icmpv6_err(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %4
  %10 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  switch i8 %2, label %19 [
    i8 2, label %11
    i8 -119, label %15
  ]

11:                                               ; preds = %6
  %12 = load ptr, ptr %10, align 8
  %13 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  tail call void @ip6_update_pmtu(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %5, i32 noundef %14, i32 noundef 0, [1 x i32] zeroinitializer) #16
  br label %21

15:                                               ; preds = %6
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  tail call void @ip6_redirect(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %18, i32 noundef 0, [1 x i32] zeroinitializer) #16
  br label %26

19:                                               ; preds = %6
  %20 = icmp sgt i8 %2, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %19, %11
  %22 = load i8, ptr %9, align 4
  %23 = icmp eq i8 %22, -128
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void @ping_err(ptr noundef %0, i32 noundef %4, i32 noundef %25) #16
  br label %26

26:                                               ; preds = %24, %21, %19, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @icmpv6_echo_reply(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.icmp6hdr, align 8
  %3 = alloca %struct.flowi6, align 8
  %4 = alloca %struct.icmpv6_msg, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.ipcm6_cookie, align 8
  %7 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !10
  %14 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 26), align 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %9, i32 %23
  %25 = getelementptr inbounds %struct.ipv6hdr, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 255
  %28 = icmp ne i32 %27, 255
  %29 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 20), align 1
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %265

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, -2
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.rt6_info, ptr %36, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1048576
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.rt6_info, ptr %36, i32 0, i32 3, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %43, 127
  %45 = and i32 %38, 2097154
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %77

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.rt6_info, ptr %36, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %26
  %52 = getelementptr %struct.rt6_info, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr [4 x i32], ptr %25, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = xor i32 %55, %53
  %57 = or i32 %56, %51
  %58 = getelementptr %struct.rt6_info, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr [4 x i32], ptr %25, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = xor i32 %61, %59
  %63 = or i32 %57, %62
  %64 = getelementptr %struct.rt6_info, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr [4 x i32], ptr %25, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = xor i32 %67, %65
  %69 = or i32 %63, %68
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %48, %32
  %72 = phi i1 [ true, %32 ], [ %70, %48 ]
  %73 = xor i1 %72, true
  %74 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 21), align 2
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %77, label %265

77:                                               ; preds = %71, %41
  %78 = phi i1 [ %73, %71 ], [ true, %41 ]
  %79 = icmp slt i32 %38, 0
  %80 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 24), align 8
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i1 true, i1 %78
  %83 = select i1 %82, ptr null, ptr %25
  %84 = select i1 %79, ptr %25, ptr %83
  %85 = load i8, ptr %13, align 4
  %86 = icmp eq i8 %85, -96
  %87 = select i1 %86, i8 -95, i8 -127
  %88 = load i64, ptr %13, align 4
  store i64 %88, ptr %2, align 8
  store i8 %87, ptr %2, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false)
  %89 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 30), align 4
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %77
  %93 = load i32, ptr %24, align 4
  %94 = and i32 %93, -61696
  %95 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 3
  store i32 %94, ptr %95, align 8
  br label %96

96:                                               ; preds = %92, %77
  %97 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 5
  store i8 58, ptr %97, align 2
  %98 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  %99 = getelementptr inbounds %struct.ipv6hdr, ptr %24, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %98, ptr noundef align 4 dereferenceable(16) %99, i32 16, i1 false)
  %100 = icmp eq ptr %84, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %102, ptr noundef nonnull align 4 dereferenceable(16) %84, i32 16, i1 false)
  br label %103

103:                                              ; preds = %101, %96
  %104 = load ptr, ptr %7, align 8
  %105 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 17
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %113, label %108, !prof !12

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 15
  %110 = load i64, ptr %109, align 16
  %111 = and i64 %110, 262144
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %121, label %113, !prof !11

113:                                              ; preds = %108, %103
  %114 = icmp eq i32 %35, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.rt6_info, ptr %36, i32 0, i32 6
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 17
  %120 = load i32, ptr %119, align 4
  br label %121

121:                                              ; preds = %115, %113, %108
  %122 = phi i32 [ %106, %108 ], [ %120, %115 ], [ %106, %113 ]
  store i32 %122, ptr %3, align 8
  %123 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 4
  store i8 %87, ptr %123, align 4
  %124 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 2
  store i32 %20, ptr %124, align 8
  %125 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 8
  store i32 0, ptr %125, align 4
  %126 = tail call ptr @llvm.thread.pointer() #16
  %127 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 1
  %128 = load volatile i32, ptr %127, align 4
  %129 = add i32 %128, 512
  store volatile i32 %129, ptr %127, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %130 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 24), align 8
  %131 = ptrtoint ptr %130 to i32
  %132 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %133 = inttoptr i32 %132 to ptr
  %134 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %133) #12, !srcloc !15
  %135 = add i32 %134, %131
  %136 = inttoptr i32 %135 to ptr
  %137 = load volatile ptr, ptr %136, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %138 = getelementptr inbounds %struct.sock, ptr %137, i32 0, i32 4
  %139 = tail call i32 @_raw_spin_trylock(ptr noundef %138) #16
  %140 = icmp eq i32 %139, 0
  %141 = icmp eq ptr %137, null
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %264, label %143

143:                                              ; preds = %121
  %144 = getelementptr inbounds %struct.sock_common, ptr %137, i32 0, i32 4
  %145 = load volatile i8, ptr %144, align 2
  %146 = zext i8 %145 to i32
  %147 = shl nuw i32 1, %146
  %148 = and i32 %147, -4161
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.inet_sock, ptr %137, i32 0, i32 1
  %152 = load ptr, ptr %151, align 8
  br label %153

153:                                              ; preds = %150, %143
  %154 = phi ptr [ %152, %150 ], [ null, %143 ]
  %155 = icmp eq i32 %122, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i32, ptr %98, align 8
  %158 = and i32 %157, 255
  %159 = icmp eq i32 %158, 255
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ipv6_pinfo, ptr %154, i32 0, i32 7
  %162 = load i32, ptr %161, align 4
  store i32 %162, ptr %3, align 8
  br label %166

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.ipv6_pinfo, ptr %154, i32 0, i32 6
  %165 = load i32, ptr %164, align 4
  store i32 %165, ptr %3, align 8
  br label %166

166:                                              ; preds = %163, %160, %153
  %167 = call i32 @ip6_dst_lookup(ptr noundef nonnull @init_net, ptr noundef nonnull %137, ptr noundef nonnull %5, ptr noundef nonnull %3) #16
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %261

169:                                              ; preds = %166
  %170 = load ptr, ptr %5, align 4
  %171 = call ptr @xfrm_lookup(ptr noundef nonnull @init_net, ptr noundef %170, ptr noundef nonnull %3, ptr noundef nonnull %137, i32 noundef 0) #16
  store ptr %171, ptr %5, align 4
  %172 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  br i1 %172, label %261, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr %7, align 8
  %175 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 14
  %176 = load i32, ptr %175, align 8
  %177 = and i32 %176, 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 22, i32 4), align 4
  %181 = and i32 %180, 2
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %179
  %184 = call zeroext i1 @icmp_global_allow() #16
  br i1 %184, label %185, label %259

185:                                              ; preds = %183, %179, %173
  %186 = call fastcc zeroext i1 @icmpv6_xrlim_allow(ptr noundef nonnull %137, i8 noundef zeroext -127, ptr noundef nonnull %3)
  br i1 %186, label %187, label %259

187:                                              ; preds = %185
  %188 = load ptr, ptr %7, align 8
  %189 = getelementptr inbounds %struct.net_device, ptr %188, i32 0, i32 69
  %190 = load volatile ptr, ptr %189, align 4
  store ptr %0, ptr %4, align 4
  %191 = getelementptr inbounds %struct.icmpv6_msg, ptr %4, i32 0, i32 1
  store i32 0, ptr %191, align 4
  %192 = getelementptr inbounds %struct.icmpv6_msg, ptr %4, i32 0, i32 2
  store i8 %87, ptr %192, align 4
  %193 = getelementptr inbounds %struct.ipv6_pinfo, ptr %154, i32 0, i32 9
  %194 = load i16, ptr %193, align 2
  %195 = lshr i16 %194, 10
  %196 = trunc i16 %195 to i8
  %197 = and i8 %196, 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #16
  %198 = getelementptr inbounds i8, ptr %6, i32 16
  %199 = getelementptr inbounds i8, ptr %6, i32 18
  %200 = getelementptr inbounds i8, ptr %6, i32 20
  store i16 0, ptr %200, align 4
  %201 = getelementptr inbounds i8, ptr %6, i32 22
  store i8 %197, ptr %201, align 2
  %202 = getelementptr inbounds i8, ptr %6, i32 23
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(9) %202, i8 0, i32 9, i1 false) #16
  %203 = load i32, ptr %98, align 8
  %204 = and i32 %203, 255
  %205 = icmp eq i32 %204, 255
  %206 = getelementptr inbounds %struct.ipv6_pinfo, ptr %154, i32 0, i32 5
  %207 = load i32, ptr %206, align 4
  %208 = shl i32 %207, 16
  %209 = select i1 %205, i32 %207, i32 %208
  %210 = ashr i32 %209, 23
  %211 = icmp slt i32 %209, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %187
  %213 = load ptr, ptr %5, align 4
  %214 = call i32 @ip6_dst_hoplimit(ptr noundef %213) #16
  br label %215

215:                                              ; preds = %212, %187
  %216 = phi i32 [ %214, %212 ], [ %210, %187 ]
  %217 = trunc i32 %216 to i16
  store i16 %217, ptr %198, align 8
  %218 = load ptr, ptr %8, align 8
  %219 = load i16, ptr %21, align 4
  %220 = zext i16 %219 to i32
  %221 = getelementptr i8, ptr %218, i32 %220
  %222 = load i16, ptr %221, align 2
  %223 = call i16 @llvm.bswap.i16(i16 %222) #16
  %224 = lshr i16 %223, 4
  %225 = and i16 %224, 255
  store i16 %225, ptr %199, align 2
  %226 = getelementptr inbounds %struct.sockcm_cookie, ptr %6, i32 0, i32 1
  store i32 %20, ptr %226, align 8
  %227 = load i8, ptr %13, align 4
  %228 = icmp eq i8 %227, -96
  br i1 %228, label %229, label %231

229:                                              ; preds = %215
  %230 = call zeroext i1 @icmp_build_probe(ptr noundef %0, ptr noundef nonnull %2) #16
  br i1 %230, label %231, label %259

231:                                              ; preds = %229, %215
  %232 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %233 = load i32, ptr %232, align 8
  %234 = add i32 %233, 8
  %235 = load ptr, ptr %5, align 4
  %236 = call i32 @ip6_append_data(ptr noundef nonnull %137, ptr noundef nonnull @icmpv6_getfrag, ptr noundef nonnull %4, i32 noundef %234, i32 noundef 8, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %235, i32 noundef 64) #16
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %256, label %238

238:                                              ; preds = %231
  %239 = icmp eq ptr %190, null
  br i1 %239, label %245, label %240, !prof !12

240:                                              ; preds = %238
  %241 = getelementptr inbounds %struct.inet6_dev, ptr %190, i32 0, i32 33, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr [6 x %struct.atomic_t], ptr %242, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %243) #16, !srcloc !20
  %244 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %243, ptr %243, i32 1, ptr elementtype(i32) %243) #16, !srcloc !21
  br label %245

245:                                              ; preds = %240, %238
  %246 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %247 = getelementptr [6 x i32], ptr %246, i32 0, i32 4
  %248 = ptrtoint ptr %247 to i32
  %249 = call i32 @llvm.read_register.i32(metadata !0) #16
  %250 = inttoptr i32 %249 to ptr
  %251 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %250) #12, !srcloc !15
  %252 = add i32 %251, %248
  %253 = inttoptr i32 %252 to ptr
  %254 = load i32, ptr %253, align 4
  %255 = add i32 %254, 1
  store i32 %255, ptr %253, align 4
  call void @ip6_flush_pending_frames(ptr noundef nonnull %137) #16
  br label %259

256:                                              ; preds = %231
  %257 = load i32, ptr %232, align 8
  %258 = add i32 %257, 8
  call void @icmpv6_push_pending_frames(ptr noundef nonnull %137, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef %258)
  br label %259

259:                                              ; preds = %256, %245, %229, %185, %183
  %260 = load ptr, ptr %5, align 4
  call void @dst_release(ptr noundef %260) #16
  br label %261

261:                                              ; preds = %259, %169, %166
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %262 = load i16, ptr %138, align 4
  %263 = add i16 %262, 1
  store i16 %263, ptr %138, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  br label %264

264:                                              ; preds = %261, %121
  call fastcc void @local_bh_enable()
  br label %265

265:                                              ; preds = %264, %71, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ping_rcv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndisc_rcv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igmp6_event_query(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igmp6_event_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @icmp_build_probe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_do_large_bitmap(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readonly willreturn }

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
!9 = !{i64 5354554}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2148886103}
!14 = !{i64 2156588919}
!15 = !{i64 493831}
!16 = !{i64 2156604873}
!17 = !{i64 475131, i64 475192}
!18 = !{i64 478148}
!19 = !{i64 2149072333}
!20 = !{i64 569453, i64 2148059424, i64 2148059450, i64 2148059497, i64 2148059519, i64 2148059547, i64 2148059567}
!21 = !{i64 2148070839, i64 2148070865, i64 2148070894, i64 2148070928, i64 2148070959, i64 2148070982}
!22 = !{i64 2149072550}
!23 = !{i64 2148953978}
!24 = !{i64 2148949802}
!25 = !{i64 2148949877, i64 2148949904, i64 2148949951, i64 2148949973, i64 2148950001, i64 2148950021}
!26 = !{i64 2148976981}
!27 = !{i64 2149409853}
!28 = !{i64 2149410154}
