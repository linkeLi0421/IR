; ModuleID = '/llk/IR/net/ipv6/mcast.c_pt.bc'
source_filename = "../net/ipv6/mcast.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_sock_mc_join:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_sock_mc_join\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_sock_mc_join:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_sock_mc_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_sock_mc_drop\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_sock_mc_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_dev_mc_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_dev_mc_inc\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_dev_mc_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_dev_mc_dec:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_dev_mc_dec\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_dev_mc_dec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.137, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.137 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.174, [0 x i32], %union.anon.175, i16, i16, %union.anon.176, %struct.refcount_struct, [0 x i32], %union.anon.177 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.atomic64_t = type { i64 }
%union.anon.174 = type { i32 }
%union.anon.175 = type { %struct.hlist_node }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.178, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.179, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.180, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.178 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.179 = type { ptr }
%union.anon.180 = type { ptr }
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
%struct.flowi = type { %union.anon.132 }
%union.anon.132 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.186, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.186 = type { %struct.anon.187 }
%struct.anon.187 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ipv6_mc_socklist = type { %struct.in6_addr, i32, i32, ptr, ptr, %struct.callback_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.128, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.128 = type { ptr }
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
%struct.ip6_sf_socklist = type { i32, i32, %struct.callback_head, [0 x %struct.in6_addr] }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ifmcaddr6 = type { %struct.in6_addr, ptr, ptr, ptr, ptr, i32, i8, [2 x i32], %struct.delayed_work, i32, i32, %struct.refcount_struct, i32, i32, %struct.callback_head }
%struct.ip6_sf_list = type { ptr, %struct.in6_addr, [2 x i32], i8, i8, i8, %struct.callback_head }
%struct.group_source_req = type { i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.189 }
%union.anon.189 = type { ptr, [124 x i8] }
%struct.anon.193 = type { i32, %struct.__kernel_sockaddr_storage, i32, i32, [0 x %struct.__kernel_sockaddr_storage] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
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
%struct.mld_msg = type { %struct.icmp6hdr, %struct.in6_addr }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.194 }
%union.anon.194 = type { [1 x i32] }
%struct.mld2_query = type { %struct.icmp6hdr, %struct.in6_addr, i8, i8, i16, [0 x %struct.in6_addr] }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.mld2_grec = type { i8, i8, i16, %struct.in6_addr, [0 x %struct.in6_addr] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.igmp6_mc_iter_state = type { %struct.seq_net_private, ptr, ptr }
%struct.seq_net_private = type {}
%struct.igmp6_mcf_iter_state = type { %struct.seq_net_private, ptr, ptr, ptr }

@sysctl_mld_max_msf = dso_local local_unnamed_addr global i32 64, section ".data..read_mostly", align 4
@sysctl_mld_qrv = dso_local local_unnamed_addr global i32 2, section ".data..read_mostly", align 4
@__kstrtab_ipv6_sock_mc_join = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_sock_mc_join = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_sock_mc_join = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_sock_mc_join to i32), ptr @__kstrtab_ipv6_sock_mc_join, ptr @__kstrtabns_ipv6_sock_mc_join }, section "___ksymtab+ipv6_sock_mc_join", align 4
@ipv6_sock_mc_drop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [17 x i8] c"net/ipv6/mcast.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@__kstrtab_ipv6_sock_mc_drop = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_sock_mc_drop = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_sock_mc_drop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_sock_mc_drop to i32), ptr @__kstrtab_ipv6_sock_mc_drop, ptr @__kstrtabns_ipv6_sock_mc_drop }, section "___ksymtab+ipv6_sock_mc_drop", align 4
@__ipv6_sock_mc_close.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ipv6_dev_mc_inc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_dev_mc_inc = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_dev_mc_inc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_dev_mc_inc to i32), ptr @__kstrtab_ipv6_dev_mc_inc, ptr @__kstrtabns_ipv6_dev_mc_inc }, section "___ksymtab+ipv6_dev_mc_inc", align 4
@__ipv6_dev_mc_dec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipv6_dev_mc_dec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ipv6_dev_mc_dec = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_dev_mc_dec = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_dev_mc_dec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_dev_mc_dec to i32), ptr @__kstrtab_ipv6_dev_mc_dec, ptr @__kstrtabns_ipv6_dev_mc_dec }, section "___ksymtab+ipv6_dev_mc_dec", align 4
@mld_wq = internal unnamed_addr global ptr null, align 4
@ipv6_mc_init_dev.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"&idev->mc_lock\00", align 1
@in6addr_linklocal_allnodes = external dso_local constant %struct.in6_addr, align 4
@in6addr_linklocal_allrouters = external dso_local constant %struct.in6_addr, align 4
@igmp6_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @igmp6_net_init, ptr null, ptr @igmp6_net_exit, ptr null, ptr null, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mld\00", align 1
@igmp6_netdev_notifier = internal global %struct.notifier_block { ptr @ipv6_mc_netdev_event, ptr null, i32 0 }, align 4
@__ipv6_sock_mc_join.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_net = external dso_local global %struct.net, align 64
@__ipv6_dev_mc_inc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@mld2_all_mcr = internal unnamed_addr constant { { [16 x i8] } } { { [16 x i8] } { [16 x i8] c"\FF\02\00\00\00\00\00\00\00\00\00\00\00\00\00\16" } }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"\014IPv6: MLD: clamping QRV from %u to %u!\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"\013Failed to initialize the IGMP6 control socket (err %d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"\013Failed to initialize the IGMP6 autojoin socket (err %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"igmp6\00", align 1
@igmp6_mc_seq_ops = internal constant %struct.seq_operations { ptr @igmp6_mc_seq_start, ptr @igmp6_mc_seq_stop, ptr @igmp6_mc_seq_next, ptr @igmp6_mc_seq_show }, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"mcfilter6\00", align 1
@igmp6_mcf_seq_ops = internal constant %struct.seq_operations { ptr @igmp6_mcf_seq_start, ptr @igmp6_mcf_seq_stop, ptr @igmp6_mcf_seq_next, ptr @igmp6_mcf_seq_show }, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"%-4d %-15s %pi6 %5d %08X %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [92 x i8] c"Idx Device                Multicast Address                   Source Address    INC    EXC\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"%3d %6.6s %pi6 %pi6 %6lu %6lu\0A\00", align 1
@ipv6_mc_rejoin_groups.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_ipv6_dev_mc_dec, ptr @__ksymtab_ipv6_dev_mc_inc, ptr @__ksymtab_ipv6_sock_mc_drop, ptr @__ksymtab_ipv6_sock_mc_join], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_sock_mc_join(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @__ipv6_sock_mc_join(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ipv6_sock_mc_join(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, -4161
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ %13, %11 ], [ null, %4 ]
  %16 = tail call i32 @rtnl_is_locked() #16
  %17 = icmp eq i32 %16, 0
  %18 = load i1, ptr @__ipv6_sock_mc_join.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %14
  store i1 true, ptr @__ipv6_sock_mc_join.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 178) #16
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i32, ptr %2, align 4
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %92

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %30

30:                                               ; preds = %26
  %31 = icmp eq i32 %1, 0
  %32 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %33 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %34 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  br label %35

35:                                               ; preds = %60, %30
  %36 = phi ptr [ %28, %30 ], [ %62, %60 ]
  br i1 %31, label %41, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %36, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %60

41:                                               ; preds = %37, %35
  %42 = load i32, ptr %36, align 4
  %43 = xor i32 %42, %23
  %44 = getelementptr [4 x i32], ptr %36, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %32, align 4
  %47 = xor i32 %46, %45
  %48 = or i32 %47, %43
  %49 = getelementptr [4 x i32], ptr %36, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %33, align 4
  %52 = xor i32 %51, %50
  %53 = or i32 %48, %52
  %54 = getelementptr [4 x i32], ptr %36, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %34, align 4
  %57 = xor i32 %56, %55
  %58 = or i32 %53, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %92, label %60

60:                                               ; preds = %41, %37
  %61 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %36, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %35

64:                                               ; preds = %60, %26
  %65 = tail call ptr @sock_kmalloc(ptr noundef %0, i32 noundef 40, i32 noundef 3264) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %92, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %65, i32 0, i32 3
  store ptr null, ptr %68, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %65, ptr noundef align 4 dereferenceable(16) %2, i32 16, i1 false)
  %69 = icmp eq i32 %1, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = tail call ptr @rt6_lookup(ptr noundef nonnull @init_net, ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %71, align 4
  tail call void @dst_release(ptr noundef nonnull %71) #16
  br label %77

75:                                               ; preds = %67
  %76 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %1) #16
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi ptr [ %76, %75 ], [ %74, %73 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %70
  tail call void @sock_kfree_s(ptr noundef %0, ptr noundef nonnull %65, i32 noundef 40) #16
  br label %92

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 17
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %65, i32 0, i32 1
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %65, i32 0, i32 2
  store i32 %3, ptr %85, align 4
  %86 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %65, i32 0, i32 4
  store volatile ptr null, ptr %86, align 4
  %87 = tail call fastcc i32 @__ipv6_dev_mc_inc(ptr noundef nonnull %78, ptr noundef %2, i32 noundef %3)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  tail call void @sock_kfree_s(ptr noundef %0, ptr noundef nonnull %65, i32 noundef 40) #16
  br label %92

90:                                               ; preds = %81
  %91 = load ptr, ptr %27, align 4
  store ptr %91, ptr %68, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  store volatile ptr %65, ptr %27, align 4
  br label %92

92:                                               ; preds = %90, %89, %80, %64, %41, %22
  %93 = phi i32 [ %87, %89 ], [ 0, %90 ], [ -19, %80 ], [ -22, %22 ], [ -12, %64 ], [ -98, %41 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_sock_mc_join_ssm(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @__ipv6_sock_mc_join(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_sock_mc_drop(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
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
  %15 = tail call i32 @rtnl_is_locked() #16
  %16 = icmp eq i32 %15, 0
  %17 = load i1, ptr @ipv6_sock_mc_drop.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %13
  store i1 true, ptr @ipv6_sock_mc_drop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 255) #16
  br label %21

21:                                               ; preds = %20, %13
  %22 = load i32, ptr %2, align 4
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 255
  br i1 %24, label %25, label %95

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %95, label %29

29:                                               ; preds = %25
  %30 = icmp eq i32 %1, 0
  %31 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %32 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %33 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  br label %34

34:                                               ; preds = %91, %29
  %35 = phi ptr [ %27, %29 ], [ %93, %91 ]
  %36 = phi ptr [ %26, %29 ], [ %92, %91 ]
  br i1 %30, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %35, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %91

41:                                               ; preds = %37, %34
  %42 = load i32, ptr %35, align 4
  %43 = xor i32 %42, %22
  %44 = getelementptr [4 x i32], ptr %35, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %31, align 4
  %47 = xor i32 %46, %45
  %48 = or i32 %47, %43
  %49 = getelementptr [4 x i32], ptr %35, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %32, align 4
  %52 = xor i32 %51, %50
  %53 = or i32 %48, %52
  %54 = getelementptr [4 x i32], ptr %35, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %33, align 4
  %57 = xor i32 %56, %55
  %58 = or i32 %53, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %35, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  store ptr %62, ptr %36, align 4
  %63 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %35, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %64) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 69
  %69 = load volatile ptr, ptr %68, align 4
  tail call fastcc void @ip6_mc_leave_src(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %69)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = tail call i32 @__ipv6_dev_mc_dec(ptr noundef nonnull %69, ptr noundef nonnull %35)
  br label %87

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %35, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  store volatile ptr null, ptr %74, align 4
  %78 = load i32, ptr %75, align 4
  %79 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 16) #16
  %80 = extractvalue { i32, i1 } %79, 1
  %81 = extractvalue { i32, i1 } %79, 0
  %82 = tail call i32 @llvm.uadd.sat.i32(i32 %81, i32 16) #16
  %83 = select i1 %80, i32 -1, i32 %82
  %84 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #16, !srcloc !11
  %85 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 %83, ptr elementtype(i32) %84) #16, !srcloc !12
  %86 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %75, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %86, ptr noundef nonnull inttoptr (i32 8 to ptr)) #16
  br label %87

87:                                               ; preds = %77, %73, %71, %67
  %88 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #16, !srcloc !11
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 40, ptr elementtype(i32) %88) #16, !srcloc !12
  %90 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %35, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %90, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %95

91:                                               ; preds = %41, %37
  %92 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %35, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %34

95:                                               ; preds = %91, %87, %25, %21
  %96 = phi i32 [ 0, %87 ], [ -22, %21 ], [ -99, %25 ], [ -99, %91 ]
  ret i32 %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_mc_leave_src(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %2, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %8) #16
  br label %9

9:                                                ; preds = %7, %3
  %10 = icmp eq ptr %5, null
  %11 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  br i1 %10, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @ip6_mc_del_src(ptr noundef %2, ptr noundef %1, i32 noundef %12, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %29

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %5, i32 0, i32 3
  %19 = tail call fastcc i32 @ip6_mc_del_src(ptr noundef %2, ptr noundef %1, i32 noundef %12, i32 noundef %17, ptr noundef %18, i32 noundef 0)
  store volatile ptr null, ptr %4, align 4
  %20 = load i32, ptr %5, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 16) #16
  %22 = extractvalue { i32, i1 } %21, 1
  %23 = extractvalue { i32, i1 } %21, 0
  %24 = tail call i32 @llvm.uadd.sat.i32(i32 %23, i32 16) #16
  %25 = select i1 %22, i32 -1, i32 %24
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #16, !srcloc !11
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 %25, ptr elementtype(i32) %26) #16, !srcloc !12
  %28 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %5, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %28, ptr noundef nonnull inttoptr (i32 8 to ptr)) #16
  br label %29

29:                                               ; preds = %15, %13
  br i1 %6, label %32, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.inet6_dev, ptr %2, i32 0, i32 22
  tail call void @mutex_unlock(ptr noundef %31) #16
  br label %32

32:                                               ; preds = %30, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ipv6_dev_mc_dec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @rtnl_is_locked() #16
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @__ipv6_dev_mc_dec.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  store i1 true, ptr @__ipv6_dev_mc_dec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 968, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 968) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %92, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %1, align 4
  %16 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %12, align 4
  %23 = xor i32 %15, %22
  %24 = getelementptr [4 x i32], ptr %12, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %17, %25
  %27 = or i32 %26, %23
  %28 = getelementptr [4 x i32], ptr %12, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %19, %29
  %31 = or i32 %27, %30
  %32 = getelementptr [4 x i32], ptr %12, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %21, %33
  %35 = or i32 %31, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %55, label %87

37:                                               ; preds = %87
  %38 = load i32, ptr %90, align 4
  %39 = xor i32 %15, %38
  %40 = getelementptr [4 x i32], ptr %90, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %17, %41
  %43 = or i32 %42, %39
  %44 = getelementptr [4 x i32], ptr %90, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %19, %45
  %47 = or i32 %43, %46
  %48 = getelementptr [4 x i32], ptr %90, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %21, %49
  %51 = or i32 %47, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.ifmcaddr6, ptr %88, i32 0, i32 2
  br label %55

55:                                               ; preds = %53, %14
  %56 = phi ptr [ %12, %14 ], [ %90, %53 ]
  %57 = phi ptr [ %11, %14 ], [ %54, %53 ]
  %58 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 10
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -1
  store i32 %60, ptr %58, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  store ptr %64, ptr %57, align 4
  tail call fastcc void @igmp6_group_dropped(ptr noundef nonnull %56)
  %65 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %68, %62
  %69 = phi ptr [ %70, %68 ], [ %66, %62 ]
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.ip6_sf_list, ptr %69, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %71, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  %72 = icmp eq ptr %70, null
  br i1 %72, label %73, label %68

73:                                               ; preds = %68, %62
  store volatile ptr null, ptr %65, align 4
  %74 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %77, %73
  %78 = phi ptr [ %79, %77 ], [ %75, %73 ]
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ip6_sf_list, ptr %78, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %80, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  %81 = icmp eq ptr %79, null
  br i1 %81, label %82, label %77

82:                                               ; preds = %77, %73
  store volatile ptr null, ptr %74, align 4
  %83 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 5
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 7
  %85 = getelementptr %struct.ifmcaddr6, ptr %56, i32 0, i32 7, i32 1
  store i32 0, ptr %85, align 4
  store i32 1, ptr %84, align 4
  tail call void @mutex_unlock(ptr noundef %10) #16
  tail call fastcc void @ma_put(ptr noundef nonnull %56)
  br label %93

86:                                               ; preds = %55
  tail call void @mutex_unlock(ptr noundef %10) #16
  br label %93

87:                                               ; preds = %37, %14
  %88 = phi ptr [ %90, %37 ], [ %12, %14 ]
  %89 = getelementptr inbounds %struct.ifmcaddr6, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %37

92:                                               ; preds = %87, %9
  tail call void @mutex_unlock(ptr noundef %10) #16
  br label %93

93:                                               ; preds = %92, %86, %82
  %94 = phi i32 [ 0, %82 ], [ 0, %86 ], [ -2, %92 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ipv6_sock_mc_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, -4161
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  %13 = tail call i32 @rtnl_is_locked() #16
  %14 = icmp eq i32 %13, 0
  %15 = load i1, ptr @__ipv6_sock_mc_close.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %11
  store i1 true, ptr @__ipv6_sock_mc_close.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 324, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 324) #16
  br label %19

19:                                               ; preds = %18, %11
  %20 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  br label %25

25:                                               ; preds = %52, %23
  %26 = phi ptr [ %21, %23 ], [ %55, %52 ]
  %27 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %20, align 4
  %29 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %30) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 69
  %35 = load volatile ptr, ptr %34, align 4
  tail call fastcc void @ip6_mc_leave_src(ptr noundef %0, ptr noundef nonnull %26, ptr noundef %35)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @__ipv6_dev_mc_dec(ptr noundef nonnull %35, ptr noundef nonnull %26)
  br label %52

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %26, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  store volatile ptr null, ptr %40, align 4
  %44 = load i32, ptr %41, align 4
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 16) #16
  %46 = extractvalue { i32, i1 } %45, 1
  %47 = extractvalue { i32, i1 } %45, 0
  %48 = tail call i32 @llvm.uadd.sat.i32(i32 %47, i32 16) #16
  %49 = select i1 %46, i32 -1, i32 %48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #16, !srcloc !11
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 %49, ptr elementtype(i32) %24) #16, !srcloc !12
  %51 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %41, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %51, ptr noundef nonnull inttoptr (i32 8 to ptr)) #16
  br label %52

52:                                               ; preds = %43, %39, %37, %33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #16, !srcloc !11
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 40, ptr elementtype(i32) %24) #16, !srcloc !12
  %54 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %26, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %54, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  %55 = load ptr, ptr %20, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %25

57:                                               ; preds = %52, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_sock_mc_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, -4161
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  %13 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 14
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @rtnl_lock() #16
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #16
  tail call void @__ipv6_sock_mc_close(ptr noundef %0)
  tail call void @release_sock(ptr noundef %0) #16
  tail call void @rtnl_unlock() #16
  br label %17

17:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_mc_source(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, -4161
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.inet_sock, ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ %13, %11 ], [ null, %4 ]
  %16 = getelementptr inbounds %struct.group_source_req, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 4
  %17 = getelementptr inbounds %struct.group_source_req, ptr %3, i32 0, i32 1, i32 0, i32 1, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %260

21:                                               ; preds = %14
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = tail call ptr @rt6_lookup(ptr noundef nonnull @init_net, ptr noundef %17, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %260, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 4
  tail call void @dst_release(ptr noundef nonnull %25) #16
  br label %31

29:                                               ; preds = %21
  %30 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %22) #16
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %260, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 69
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %260, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.inet6_dev, ptr %36, i32 0, i32 27
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %260

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.inet6_dev, ptr %36, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %43) #16
  %44 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %255, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %3, align 4
  %49 = icmp eq i32 %48, 0
  %50 = getelementptr %struct.group_source_req, ptr %3, i32 0, i32 1, i32 0, i32 1, i32 8
  %51 = getelementptr %struct.group_source_req, ptr %3, i32 0, i32 1, i32 0, i32 1, i32 12
  %52 = getelementptr %struct.group_source_req, ptr %3, i32 0, i32 1, i32 0, i32 1, i32 16
  br label %53

53:                                               ; preds = %79, %47
  %54 = phi ptr [ %45, %47 ], [ %81, %79 ]
  br i1 %49, label %59, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %54, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %48
  br i1 %58, label %59, label %79

59:                                               ; preds = %55, %53
  %60 = load i32, ptr %54, align 4
  %61 = load i32, ptr %17, align 4
  %62 = xor i32 %61, %60
  %63 = getelementptr [4 x i32], ptr %54, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %50, align 4
  %66 = xor i32 %65, %64
  %67 = or i32 %66, %62
  %68 = getelementptr [4 x i32], ptr %54, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %51, align 4
  %71 = xor i32 %70, %69
  %72 = or i32 %67, %71
  %73 = getelementptr [4 x i32], ptr %54, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %52, align 4
  %76 = xor i32 %75, %74
  %77 = or i32 %72, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %59, %55
  %80 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %54, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %255, label %53

83:                                               ; preds = %59
  %84 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %54, i32 0, i32 4
  %85 = load volatile ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  %87 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %54, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %1
  br i1 %86, label %91, label %90

90:                                               ; preds = %83
  br i1 %89, label %97, label %255

91:                                               ; preds = %83
  br i1 %89, label %101, label %92

92:                                               ; preds = %91
  %93 = tail call fastcc i32 @ip6_mc_add_src(ptr noundef nonnull %36, ptr noundef %17, i32 noundef %1, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %94 = load i32, ptr %87, align 4
  %95 = tail call fastcc i32 @ip6_mc_del_src(ptr noundef nonnull %36, ptr noundef %17, i32 noundef %94, i32 noundef 0, ptr noundef null, i32 noundef 0)
  store i32 %1, ptr %87, align 4
  %96 = load ptr, ptr %84, align 4
  br label %97

97:                                               ; preds = %92, %90
  %98 = phi ptr [ %85, %90 ], [ %96, %92 ]
  %99 = icmp eq i32 %0, 0
  %100 = icmp eq ptr %98, null
  br i1 %99, label %103, label %157

101:                                              ; preds = %91
  %102 = icmp eq i32 %0, 0
  br i1 %102, label %255, label %168

103:                                              ; preds = %97
  br i1 %100, label %255, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %98, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %255, label %108

108:                                              ; preds = %104
  %109 = load i32, ptr %16, align 4
  %110 = getelementptr %struct.group_source_req, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 8
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr %struct.group_source_req, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 12
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr %struct.group_source_req, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 16
  %115 = load i32, ptr %114, align 4
  br label %116

116:                                              ; preds = %134, %108
  %117 = phi i32 [ 0, %108 ], [ %135, %134 ]
  %118 = getelementptr %struct.ip6_sf_socklist, ptr %98, i32 0, i32 3, i32 %117
  %119 = load i32, ptr %118, align 4
  %120 = xor i32 %109, %119
  %121 = getelementptr [4 x i32], ptr %118, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = xor i32 %111, %122
  %124 = or i32 %123, %120
  %125 = getelementptr [4 x i32], ptr %118, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = xor i32 %113, %126
  %128 = or i32 %124, %127
  %129 = getelementptr [4 x i32], ptr %118, i32 0, i32 3
  %130 = load i32, ptr %129, align 4
  %131 = xor i32 %115, %130
  %132 = or i32 %128, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %116
  %135 = add nuw i32 %117, 1
  %136 = icmp eq i32 %135, %106
  br i1 %136, label %255, label %116

137:                                              ; preds = %116
  %138 = icmp eq i32 %106, 1
  %139 = icmp eq i32 %1, 1
  %140 = and i1 %139, %138
  br i1 %140, label %257, label %141

141:                                              ; preds = %137
  %142 = tail call fastcc i32 @ip6_mc_del_src(ptr noundef nonnull %36, ptr noundef %17, i32 noundef %1, i32 noundef 1, ptr noundef %16, i32 noundef 1)
  %143 = add i32 %117, 1
  %144 = load i32, ptr %105, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %146, %141
  %147 = phi i32 [ %151, %146 ], [ %143, %141 ]
  %148 = phi i32 [ %147, %146 ], [ %117, %141 ]
  %149 = getelementptr %struct.ip6_sf_socklist, ptr %98, i32 0, i32 3, i32 %148
  %150 = getelementptr %struct.ip6_sf_socklist, ptr %98, i32 0, i32 3, i32 %147
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %149, ptr noundef align 4 dereferenceable(16) %150, i32 16, i1 false)
  %151 = add nuw i32 %147, 1
  %152 = load i32, ptr %105, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %146, label %154

154:                                              ; preds = %146, %141
  %155 = phi i32 [ %144, %141 ], [ %152, %146 ]
  %156 = add i32 %155, -1
  store i32 %156, ptr %105, align 4
  br label %255

157:                                              ; preds = %97
  br i1 %100, label %168, label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %98, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = load i32, ptr @sysctl_mld_max_msf, align 4
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %163, label %255

163:                                              ; preds = %158
  %164 = load i32, ptr %98, align 4
  %165 = icmp eq i32 %160, %164
  br i1 %165, label %166, label %205

166:                                              ; preds = %163
  %167 = add i32 %160, 10
  br label %168

168:                                              ; preds = %166, %157, %101
  %169 = phi i1 [ false, %166 ], [ true, %157 ], [ true, %101 ]
  %170 = phi ptr [ %98, %166 ], [ null, %157 ], [ null, %101 ]
  %171 = phi i32 [ %167, %166 ], [ 10, %157 ], [ 10, %101 ]
  %172 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %171, i32 16) #16
  %173 = extractvalue { i32, i1 } %172, 1
  %174 = extractvalue { i32, i1 } %172, 0
  %175 = tail call i32 @llvm.uadd.sat.i32(i32 %174, i32 16) #16
  %176 = select i1 %173, i32 -1, i32 %175
  %177 = tail call ptr @sock_kmalloc(ptr noundef %2, i32 noundef %176, i32 noundef 3264) #16
  %178 = icmp eq ptr %177, null
  br i1 %178, label %255, label %179

179:                                              ; preds = %168
  store i32 %171, ptr %177, align 4
  %180 = add i32 %171, -10
  %181 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %177, i32 0, i32 1
  store i32 %180, ptr %181, align 4
  br i1 %169, label %203, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %170, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %186, %182
  %187 = phi i32 [ %190, %186 ], [ 0, %182 ]
  %188 = getelementptr %struct.ip6_sf_socklist, ptr %177, i32 0, i32 3, i32 %187
  %189 = getelementptr %struct.ip6_sf_socklist, ptr %170, i32 0, i32 3, i32 %187
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %188, ptr noundef align 4 dereferenceable(16) %189, i32 16, i1 false)
  %190 = add nuw i32 %187, 1
  %191 = load i32, ptr %183, align 4
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %186, label %193

193:                                              ; preds = %186, %182
  %194 = load i32, ptr %170, align 4
  %195 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %194, i32 16) #16
  %196 = extractvalue { i32, i1 } %195, 1
  %197 = extractvalue { i32, i1 } %195, 0
  %198 = tail call i32 @llvm.uadd.sat.i32(i32 %197, i32 16) #16
  %199 = select i1 %196, i32 -1, i32 %198
  %200 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %200) #16, !srcloc !11
  %201 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %200, ptr %200, i32 %199, ptr elementtype(i32) %200) #16, !srcloc !12
  %202 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %170, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %202, ptr noundef nonnull inttoptr (i32 8 to ptr)) #16
  br label %203

203:                                              ; preds = %193, %179
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  store volatile ptr %177, ptr %84, align 4
  %204 = load i32, ptr %181, align 4
  br label %205

205:                                              ; preds = %203, %163
  %206 = phi i32 [ %160, %163 ], [ %204, %203 ]
  %207 = phi ptr [ %98, %163 ], [ %177, %203 ]
  %208 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %207, i32 0, i32 1
  %209 = icmp eq i32 %206, 0
  br i1 %209, label %250, label %210

210:                                              ; preds = %205
  %211 = load i32, ptr %16, align 4
  %212 = getelementptr %struct.group_source_req, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 8
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr %struct.group_source_req, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 12
  %215 = load i32, ptr %214, align 4
  %216 = getelementptr %struct.group_source_req, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 16
  %217 = load i32, ptr %216, align 4
  br label %222

218:                                              ; preds = %240
  %219 = icmp eq i32 %206, -2147483648
  br i1 %219, label %220, label %250

220:                                              ; preds = %218
  %221 = add i32 %206, -1
  br label %243

222:                                              ; preds = %240, %210
  %223 = phi i32 [ 0, %210 ], [ %241, %240 ]
  %224 = getelementptr %struct.ip6_sf_socklist, ptr %207, i32 0, i32 3, i32 %223
  %225 = load i32, ptr %224, align 4
  %226 = xor i32 %211, %225
  %227 = getelementptr [4 x i32], ptr %224, i32 0, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = xor i32 %213, %228
  %230 = or i32 %229, %226
  %231 = getelementptr [4 x i32], ptr %224, i32 0, i32 2
  %232 = load i32, ptr %231, align 4
  %233 = xor i32 %215, %232
  %234 = or i32 %230, %233
  %235 = getelementptr [4 x i32], ptr %224, i32 0, i32 3
  %236 = load i32, ptr %235, align 4
  %237 = xor i32 %217, %236
  %238 = or i32 %234, %237
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %255, label %240

240:                                              ; preds = %222
  %241 = add nuw i32 %223, 1
  %242 = icmp eq i32 %241, %206
  br i1 %242, label %218, label %222

243:                                              ; preds = %243, %220
  %244 = phi i32 [ %248, %243 ], [ %221, %220 ]
  %245 = phi i32 [ %244, %243 ], [ %206, %220 ]
  %246 = getelementptr %struct.ip6_sf_socklist, ptr %207, i32 0, i32 3, i32 %245
  %247 = getelementptr %struct.ip6_sf_socklist, ptr %207, i32 0, i32 3, i32 %244
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %246, ptr noundef align 4 dereferenceable(16) %247, i32 16, i1 false)
  %248 = add i32 %244, -1
  %249 = icmp slt i32 %248, %206
  br i1 %249, label %250, label %243

250:                                              ; preds = %243, %218, %205
  %251 = getelementptr %struct.ip6_sf_socklist, ptr %207, i32 0, i32 3, i32 %206
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %251, ptr noundef align 4 dereferenceable(16) %16, i32 16, i1 false)
  %252 = load i32, ptr %208, align 4
  %253 = add i32 %252, 1
  store i32 %253, ptr %208, align 4
  %254 = tail call fastcc i32 @ip6_mc_add_src(ptr noundef nonnull %36, ptr noundef %17, i32 noundef %1, i32 noundef 1, ptr noundef %16, i32 noundef 1)
  br label %255

255:                                              ; preds = %250, %222, %168, %158, %154, %134, %104, %103, %101, %90, %79, %42
  %256 = phi i32 [ -105, %168 ], [ -105, %158 ], [ -22, %90 ], [ 0, %154 ], [ 0, %250 ], [ -99, %103 ], [ -22, %42 ], [ -99, %101 ], [ -99, %104 ], [ -99, %222 ], [ -99, %134 ], [ -22, %79 ]
  tail call void @mutex_unlock(ptr noundef %43) #16
  br label %260

257:                                              ; preds = %137
  tail call void @mutex_unlock(ptr noundef %43) #16
  %258 = load i32, ptr %3, align 4
  %259 = tail call i32 @ipv6_sock_mc_drop(ptr noundef %2, i32 noundef %258, ptr noundef %17)
  br label %260

260:                                              ; preds = %257, %255, %38, %34, %31, %24, %14
  %261 = phi i32 [ -22, %14 ], [ %259, %257 ], [ %256, %255 ], [ -19, %31 ], [ -19, %34 ], [ -19, %38 ], [ -19, %24 ]
  ret i32 %261
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_mc_add_src(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %172, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %172, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %37, %12
  %21 = phi ptr [ %10, %12 ], [ %39, %37 ]
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, %13
  %24 = getelementptr [4 x i32], ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, %15
  %27 = or i32 %26, %23
  %28 = getelementptr [4 x i32], ptr %21, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %29, %17
  %31 = or i32 %27, %30
  %32 = getelementptr [4 x i32], ptr %21, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, %19
  %35 = or i32 %31, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %172, label %20

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %71, label %47

47:                                               ; preds = %69, %41
  %48 = phi i32 [ %70, %69 ], [ %43, %41 ]
  %49 = phi ptr [ %67, %69 ], [ %45, %41 ]
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ip6_sf_list, ptr %49, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %43, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr %struct.ip6_sf_list, ptr %49, i32 0, i32 2, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br label %63

59:                                               ; preds = %47
  %60 = getelementptr %struct.ip6_sf_list, ptr %49, i32 0, i32 2, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %59, %55, %51
  %64 = phi i1 [ %62, %59 ], [ false, %51 ], [ %58, %55 ]
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.ip6_sf_list, ptr %49, i32 0, i32 4
  store i8 %65, ptr %66, align 1
  %67 = load ptr, ptr %49, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = load i32, ptr %42, align 4
  br label %47

71:                                               ; preds = %63, %41
  %72 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp ne i32 %73, 0
  %75 = icmp eq i32 %5, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = getelementptr %struct.ifmcaddr6, ptr %21, i32 0, i32 7, i32 %2
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = icmp sgt i32 %3, 0
  br i1 %81, label %82, label %145

82:                                               ; preds = %125, %80
  %83 = phi i32 [ %130, %125 ], [ 0, %80 ]
  %84 = getelementptr %struct.in6_addr, ptr %4, i32 %83
  %85 = load ptr, ptr %44, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %116, label %87

87:                                               ; preds = %82
  %88 = load i32, ptr %84, align 4
  %89 = getelementptr [4 x i32], ptr %84, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr [4 x i32], ptr %84, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr [4 x i32], ptr %84, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  br label %98

95:                                               ; preds = %98
  %96 = load ptr, ptr %99, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %116, label %98

98:                                               ; preds = %95, %87
  %99 = phi ptr [ %85, %87 ], [ %96, %95 ]
  %100 = getelementptr inbounds %struct.ip6_sf_list, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = xor i32 %101, %88
  %103 = getelementptr %struct.ip6_sf_list, ptr %99, i32 0, i32 1, i32 0, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = xor i32 %104, %90
  %106 = or i32 %105, %102
  %107 = getelementptr %struct.ip6_sf_list, ptr %99, i32 0, i32 1, i32 0, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = xor i32 %108, %92
  %110 = or i32 %106, %109
  %111 = getelementptr %struct.ip6_sf_list, ptr %99, i32 0, i32 1, i32 0, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = xor i32 %112, %94
  %114 = or i32 %110, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %125, label %95

116:                                              ; preds = %95, %82
  %117 = phi ptr [ null, %82 ], [ %99, %95 ]
  %118 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %119 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3520, i32 noundef 40) #17
  %120 = icmp eq ptr %119, null
  br i1 %120, label %132, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.ip6_sf_list, ptr %119, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %122, ptr noundef align 4 dereferenceable(16) %84, i32 16, i1 false) #16
  %123 = icmp eq ptr %117, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  %124 = select i1 %123, ptr %44, ptr %117
  store volatile ptr %119, ptr %124, align 4
  br label %125

125:                                              ; preds = %121, %98
  %126 = phi ptr [ %119, %121 ], [ %99, %98 ]
  %127 = getelementptr %struct.ip6_sf_list, ptr %126, i32 0, i32 2, i32 %2
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4
  %130 = add nuw nsw i32 %83, 1
  %131 = icmp eq i32 %130, %3
  br i1 %131, label %145, label %82

132:                                              ; preds = %116
  br i1 %75, label %133, label %137

133:                                              ; preds = %132
  %134 = getelementptr %struct.ifmcaddr6, ptr %21, i32 0, i32 7, i32 %2
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, -1
  store i32 %136, ptr %134, align 4
  br label %137

137:                                              ; preds = %133, %132
  %138 = icmp eq i32 %83, 0
  br i1 %138, label %172, label %139

139:                                              ; preds = %139, %137
  %140 = phi i32 [ %143, %139 ], [ 0, %137 ]
  %141 = getelementptr %struct.in6_addr, ptr %4, i32 %140
  %142 = tail call fastcc i32 @ip6_mc_del1_src(ptr noundef nonnull %21, i32 noundef %2, ptr noundef %141)
  %143 = add nuw nsw i32 %140, 1
  %144 = icmp eq i32 %143, %83
  br i1 %144, label %172, label %139

145:                                              ; preds = %125, %80
  %146 = load i32, ptr %42, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %74, %147
  br i1 %148, label %168, label %149

149:                                              ; preds = %145
  br i1 %147, label %154, label %150

150:                                              ; preds = %149
  %151 = getelementptr %struct.ifmcaddr6, ptr %21, i32 0, i32 7, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150, %149
  %155 = phi i32 [ 0, %149 ], [ 1, %150 ]
  store i32 %155, ptr %72, align 4
  br label %156

156:                                              ; preds = %154, %150
  %157 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 5
  %158 = load i8, ptr %157, align 4
  %159 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 6
  store i8 %158, ptr %159, align 4
  %160 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 7
  store i8 %158, ptr %160, align 2
  %161 = load ptr, ptr %44, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %171, label %163

163:                                              ; preds = %163, %156
  %164 = phi ptr [ %166, %163 ], [ %161, %156 ]
  %165 = getelementptr inbounds %struct.ip6_sf_list, ptr %164, i32 0, i32 5
  store i8 0, ptr %165, align 2
  %166 = load ptr, ptr %164, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %163

168:                                              ; preds = %145
  %169 = tail call fastcc i32 @sf_setstate(ptr noundef nonnull %21)
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %168, %163, %156
  tail call fastcc void @mld_ifc_event(ptr noundef nonnull %0)
  br label %172

172:                                              ; preds = %171, %168, %139, %137, %37, %8, %6
  %173 = phi i32 [ -19, %6 ], [ 0, %168 ], [ -105, %137 ], [ -3, %8 ], [ 0, %171 ], [ -105, %139 ], [ -3, %37 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_mc_del_src(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %129, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %129, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %37, %12
  %21 = phi ptr [ %10, %12 ], [ %39, %37 ]
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, %13
  %24 = getelementptr [4 x i32], ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, %15
  %27 = or i32 %26, %23
  %28 = getelementptr [4 x i32], ptr %21, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %29, %17
  %31 = or i32 %27, %30
  %32 = getelementptr [4 x i32], ptr %21, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, %19
  %35 = or i32 %31, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %129, label %20

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %71, label %47

47:                                               ; preds = %69, %41
  %48 = phi i32 [ %70, %69 ], [ %43, %41 ]
  %49 = phi ptr [ %67, %69 ], [ %45, %41 ]
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ip6_sf_list, ptr %49, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %43, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr %struct.ip6_sf_list, ptr %49, i32 0, i32 2, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br label %63

59:                                               ; preds = %47
  %60 = getelementptr %struct.ip6_sf_list, ptr %49, i32 0, i32 2, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %59, %55, %51
  %64 = phi i1 [ %62, %59 ], [ false, %51 ], [ %58, %55 ]
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.ip6_sf_list, ptr %49, i32 0, i32 4
  store i8 %65, ptr %66, align 1
  %67 = load ptr, ptr %49, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = load i32, ptr %42, align 4
  br label %47

71:                                               ; preds = %63, %41
  %72 = icmp eq i32 %5, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  %74 = getelementptr %struct.ifmcaddr6, ptr %21, i32 0, i32 7, i32 %2
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %129, label %77

77:                                               ; preds = %73
  %78 = add i32 %75, -1
  store i32 %78, ptr %74, align 4
  br label %79

79:                                               ; preds = %77, %71
  %80 = icmp sgt i32 %3, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %81, %79
  %82 = phi i32 [ %89, %81 ], [ 0, %79 ]
  %83 = phi i32 [ %94, %81 ], [ 0, %79 ]
  %84 = phi i32 [ %93, %81 ], [ 0, %79 ]
  %85 = getelementptr %struct.in6_addr, ptr %4, i32 %83
  %86 = tail call fastcc i32 @ip6_mc_del1_src(ptr noundef nonnull %21, i32 noundef %2, ptr noundef %85)
  %87 = icmp sgt i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = or i32 %82, %88
  %90 = icmp eq i32 %84, 0
  %91 = icmp slt i32 %86, 0
  %92 = select i1 %90, i1 %91, i1 false
  %93 = select i1 %92, i32 %86, i32 %84
  %94 = add nuw nsw i32 %83, 1
  %95 = icmp eq i32 %94, %3
  br i1 %95, label %96, label %81

96:                                               ; preds = %81, %79
  %97 = phi i32 [ 0, %79 ], [ %93, %81 ]
  %98 = phi i32 [ 0, %79 ], [ %89, %81 ]
  %99 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %96
  %103 = load i32, ptr %42, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = getelementptr %struct.ifmcaddr6, ptr %21, i32 0, i32 7, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  store i32 1, ptr %99, align 4
  %110 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 5
  %111 = load i8, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 6
  store i8 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 7
  store i8 %111, ptr %113, align 2
  %114 = load ptr, ptr %44, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %126, label %116

116:                                              ; preds = %116, %109
  %117 = phi ptr [ %119, %116 ], [ %114, %109 ]
  %118 = getelementptr inbounds %struct.ip6_sf_list, ptr %117, i32 0, i32 5
  store i8 0, ptr %118, align 2
  %119 = load ptr, ptr %117, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %116

121:                                              ; preds = %105, %102, %96
  %122 = tail call fastcc i32 @sf_setstate(ptr noundef nonnull %21)
  %123 = icmp ne i32 %122, 0
  %124 = icmp ne i32 %98, 0
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121, %116, %109
  %127 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  tail call fastcc void @mld_ifc_event(ptr noundef %128)
  br label %129

129:                                              ; preds = %126, %121, %73, %37, %8, %6
  %130 = phi i32 [ -19, %6 ], [ -22, %73 ], [ %97, %121 ], [ -3, %8 ], [ %97, %126 ], [ -3, %37 ]
  ret i32 %130
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_mc_msfilter(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
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
  %15 = getelementptr inbounds %struct.anon.193, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %162

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.anon.193, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %162

23:                                               ; preds = %19
  %24 = load i32, ptr %1, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = tail call ptr @rt6_lookup(ptr noundef nonnull @init_net, ptr noundef %15, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %162, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 4
  tail call void @dst_release(ptr noundef nonnull %27) #16
  br label %33

31:                                               ; preds = %23
  %32 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %24) #16
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %32, %31 ], [ %30, %29 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %162, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 69
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %162, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.inet6_dev, ptr %38, i32 0, i32 27
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %162

44:                                               ; preds = %40
  %45 = load i32, ptr %20, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.anon.193, ptr %1, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %159, label %51

51:                                               ; preds = %47, %44
  %52 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 14
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %162, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %1, align 4
  %57 = getelementptr %struct.anon.193, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 8
  %58 = getelementptr %struct.anon.193, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 12
  %59 = getelementptr %struct.anon.193, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 16
  br label %60

60:                                               ; preds = %85, %55
  %61 = phi ptr [ %53, %55 ], [ %87, %85 ]
  %62 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %56
  br i1 %64, label %65, label %85

65:                                               ; preds = %60
  %66 = load i32, ptr %61, align 4
  %67 = load i32, ptr %15, align 4
  %68 = xor i32 %67, %66
  %69 = getelementptr [4 x i32], ptr %61, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %57, align 4
  %72 = xor i32 %71, %70
  %73 = or i32 %72, %68
  %74 = getelementptr [4 x i32], ptr %61, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %58, align 4
  %77 = xor i32 %76, %75
  %78 = or i32 %73, %77
  %79 = getelementptr [4 x i32], ptr %61, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %59, align 4
  %82 = xor i32 %81, %80
  %83 = or i32 %78, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %65, %60
  %86 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %61, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %162, label %60

89:                                               ; preds = %65
  %90 = getelementptr inbounds %struct.anon.193, ptr %1, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %128, label %93

93:                                               ; preds = %89
  %94 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %91, i32 16) #16
  %95 = extractvalue { i32, i1 } %94, 1
  %96 = extractvalue { i32, i1 } %94, 0
  %97 = tail call i32 @llvm.uadd.sat.i32(i32 %96, i32 16) #16
  %98 = select i1 %95, i32 -1, i32 %97
  %99 = tail call ptr @sock_kmalloc(ptr noundef %0, i32 noundef %98, i32 noundef 3264) #16
  %100 = icmp eq ptr %99, null
  br i1 %100, label %162, label %101

101:                                              ; preds = %93
  %102 = load i32, ptr %90, align 4
  %103 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %99, i32 0, i32 1
  store i32 %102, ptr %103, align 4
  store i32 %102, ptr %99, align 4
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %105, %101
  %106 = phi ptr [ %111, %105 ], [ %2, %101 ]
  %107 = phi i32 [ %110, %105 ], [ 0, %101 ]
  %108 = getelementptr %struct.ip6_sf_socklist, ptr %99, i32 0, i32 3, i32 %107
  %109 = getelementptr inbounds %struct.sockaddr_in6, ptr %106, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %108, ptr noundef align 4 dereferenceable(16) %109, i32 16, i1 false)
  %110 = add nuw i32 %107, 1
  %111 = getelementptr %struct.__kernel_sockaddr_storage, ptr %106, i32 1
  %112 = load i32, ptr %103, align 4
  %113 = icmp ult i32 %110, %112
  br i1 %113, label %105, label %114

114:                                              ; preds = %105, %101
  %115 = getelementptr inbounds %struct.inet6_dev, ptr %38, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %115) #16
  %116 = load i32, ptr %20, align 4
  %117 = load i32, ptr %103, align 4
  %118 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %99, i32 0, i32 3
  %119 = tail call fastcc i32 @ip6_mc_add_src(ptr noundef nonnull %38, ptr noundef %15, i32 noundef %116, i32 noundef %117, ptr noundef %118, i32 noundef 0)
  %120 = icmp eq i32 %119, 0
  tail call void @mutex_unlock(ptr noundef %115) #16
  br i1 %120, label %132, label %121

121:                                              ; preds = %114
  %122 = load i32, ptr %99, align 4
  %123 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %122, i32 16) #16
  %124 = extractvalue { i32, i1 } %123, 1
  %125 = extractvalue { i32, i1 } %123, 0
  %126 = tail call i32 @llvm.uadd.sat.i32(i32 %125, i32 16) #16
  %127 = select i1 %124, i32 -1, i32 %126
  tail call void @sock_kfree_s(ptr noundef %0, ptr noundef nonnull %99, i32 noundef %127) #16
  br label %162

128:                                              ; preds = %89
  %129 = getelementptr inbounds %struct.inet6_dev, ptr %38, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %129) #16
  %130 = load i32, ptr %20, align 4
  %131 = tail call fastcc i32 @ip6_mc_add_src(ptr noundef nonnull %38, ptr noundef %15, i32 noundef %130, i32 noundef 0, ptr noundef null, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %129) #16
  br label %132

132:                                              ; preds = %128, %114
  %133 = phi ptr [ null, %128 ], [ %99, %114 ]
  %134 = getelementptr inbounds %struct.inet6_dev, ptr %38, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %134) #16
  %135 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %61, i32 0, i32 4
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  %138 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %61, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  br i1 %137, label %154, label %140

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %136, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %136, i32 0, i32 3
  %144 = tail call fastcc i32 @ip6_mc_del_src(ptr noundef nonnull %38, ptr noundef %15, i32 noundef %139, i32 noundef %142, ptr noundef %143, i32 noundef 0)
  %145 = load i32, ptr %136, align 4
  %146 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %145, i32 16) #16
  %147 = extractvalue { i32, i1 } %146, 1
  %148 = extractvalue { i32, i1 } %146, 0
  %149 = tail call i32 @llvm.uadd.sat.i32(i32 %148, i32 16) #16
  %150 = select i1 %147, i32 -1, i32 %149
  %151 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %151) #16, !srcloc !11
  %152 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %151, ptr %151, i32 %150, ptr elementtype(i32) %151) #16, !srcloc !12
  %153 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %136, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %153, ptr noundef nonnull inttoptr (i32 8 to ptr)) #16
  br label %156

154:                                              ; preds = %132
  %155 = tail call fastcc i32 @ip6_mc_del_src(ptr noundef nonnull %38, ptr noundef %15, i32 noundef %139, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %156

156:                                              ; preds = %154, %140
  tail call void @mutex_unlock(ptr noundef %134) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  store volatile ptr %133, ptr %135, align 4
  %157 = load i32, ptr %20, align 4
  %158 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %61, i32 0, i32 2
  store i32 %157, ptr %158, align 4
  br label %162

159:                                              ; preds = %47
  %160 = load i32, ptr %1, align 4
  %161 = tail call i32 @ipv6_sock_mc_drop(ptr noundef %0, i32 noundef %160, ptr noundef %15)
  br label %162

162:                                              ; preds = %159, %156, %121, %93, %85, %51, %40, %36, %33, %26, %19, %13
  %163 = phi i32 [ -22, %13 ], [ -22, %19 ], [ %161, %159 ], [ -19, %33 ], [ -19, %36 ], [ -19, %40 ], [ -19, %26 ], [ -105, %93 ], [ %119, %121 ], [ 0, %156 ], [ -22, %51 ], [ -22, %85 ]
  ret i32 %163
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_mc_msfget(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__kernel_sockaddr_storage, align 4
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, -4161
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi ptr [ %13, %11 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct.anon.193, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %95

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %95, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %1, align 4
  %26 = getelementptr %struct.anon.193, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 8
  %27 = getelementptr %struct.anon.193, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 12
  %28 = getelementptr %struct.anon.193, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 16
  br label %29

29:                                               ; preds = %53, %24
  %30 = phi ptr [ %22, %24 ], [ %55, %53 ]
  %31 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %25
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4
  %36 = xor i32 %35, %17
  %37 = load i32, ptr %26, align 4
  %38 = getelementptr [4 x i32], ptr %30, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, %37
  %41 = or i32 %40, %36
  %42 = load i32, ptr %27, align 4
  %43 = getelementptr [4 x i32], ptr %30, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = xor i32 %44, %42
  %46 = or i32 %41, %45
  %47 = load i32, ptr %28, align 4
  %48 = getelementptr [4 x i32], ptr %30, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %49, %47
  %51 = or i32 %46, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %34, %29
  %54 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %30, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %95, label %29

57:                                               ; preds = %34
  %58 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %30, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.anon.193, ptr %1, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %30, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %62, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi i32 [ %66, %64 ], [ 0, %57 ]
  %69 = getelementptr inbounds %struct.anon.193, ptr %1, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @llvm.umin.i32(i32 %68, i32 %70)
  store i32 %68, ptr %69, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.sockaddr_in6, ptr %4, i32 0, i32 3
  br label %75

75:                                               ; preds = %91, %73
  %76 = phi ptr [ %2, %73 ], [ %93, %91 ]
  %77 = phi i32 [ 0, %73 ], [ %92, %91 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  store i16 10, ptr %4, align 4
  %78 = getelementptr %struct.ip6_sf_socklist, ptr %62, i32 0, i32 3, i32 %77
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %74, ptr noundef align 4 dereferenceable(16) %78, i32 16, i1 false)
  %79 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %76, i32 128, i32 -1090519040) #18, !srcloc !15
  %80 = extractvalue { i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #16
  br label %95

83:                                               ; preds = %75
  %84 = tail call ptr @llvm.thread.pointer() #16
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %86 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %85) #11, !srcloc !16
  %87 = and i32 %86, -13
  %88 = or i32 %87, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #16, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !18
  %89 = call i32 @arm_copy_to_user(ptr noundef %76, ptr noundef nonnull %4, i32 noundef 128) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #16, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !18
  %90 = icmp eq i32 %89, 0
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #16
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = add nuw nsw i32 %77, 1
  %93 = getelementptr %struct.__kernel_sockaddr_storage, ptr %76, i32 1
  %94 = icmp eq i32 %92, %71
  br i1 %94, label %95, label %75

95:                                               ; preds = %91, %83, %82, %67, %53, %20, %14
  %96 = phi i32 [ -22, %14 ], [ -14, %82 ], [ 0, %67 ], [ -99, %20 ], [ -14, %83 ], [ 0, %91 ], [ -99, %53 ]
  ret i32 %96
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @inet6_mc_check(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %15 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 14
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %13
  %19 = load i32, ptr %1, align 4
  %20 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %43, %18
  %27 = phi ptr [ %16, %18 ], [ %45, %43 ]
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %19, %28
  %30 = getelementptr [4 x i32], ptr %27, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %21, %31
  %33 = or i32 %32, %29
  %34 = getelementptr [4 x i32], ptr %27, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %23, %35
  %37 = or i32 %33, %36
  %38 = getelementptr [4 x i32], ptr %27, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %25, %39
  %41 = or i32 %37, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %27, i32 0, i32 3
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %26

47:                                               ; preds = %43, %13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %48 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 9
  %49 = load i16, ptr %48, align 2
  %50 = and i16 %49, 8192
  %51 = icmp ne i16 %50, 0
  br label %120

52:                                               ; preds = %26
  %53 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %27, i32 0, i32 4
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %84, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ip6_sf_socklist, ptr %54, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %111, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %2, align 4
  %62 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.ip6_sf_socklist, ptr %54, i32 0, i32 3, i32 0
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %61, %69
  %71 = getelementptr %struct.ip6_sf_socklist, ptr %54, i32 1, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = xor i32 %63, %72
  %74 = or i32 %73, %70
  %75 = getelementptr %struct.ip6_sf_socklist, ptr %54, i32 1, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = xor i32 %65, %76
  %78 = or i32 %74, %77
  %79 = getelementptr %struct.ip6_sf_socklist, ptr %54, i32 1, i32 2, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = xor i32 %67, %80
  %82 = or i32 %78, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %111, label %88

84:                                               ; preds = %52
  %85 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %27, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br label %118

88:                                               ; preds = %92, %60
  %89 = phi i32 [ %90, %92 ], [ 0, %60 ]
  %90 = add nuw i32 %89, 1
  %91 = icmp eq i32 %90, %58
  br i1 %91, label %109, label %92

92:                                               ; preds = %88
  %93 = getelementptr %struct.ip6_sf_socklist, ptr %54, i32 0, i32 3, i32 %90
  %94 = load i32, ptr %93, align 4
  %95 = xor i32 %61, %94
  %96 = getelementptr [4 x i32], ptr %93, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = xor i32 %63, %97
  %99 = or i32 %98, %95
  %100 = getelementptr [4 x i32], ptr %93, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = xor i32 %65, %101
  %103 = or i32 %99, %102
  %104 = getelementptr [4 x i32], ptr %93, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = xor i32 %67, %105
  %107 = or i32 %103, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %88

109:                                              ; preds = %92, %88
  %110 = icmp ult i32 %90, %58
  br label %111

111:                                              ; preds = %109, %60, %56
  %112 = phi i1 [ false, %56 ], [ true, %60 ], [ %110, %109 ]
  %113 = getelementptr inbounds %struct.ipv6_mc_socklist, ptr %27, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  switch i32 %114, label %118 [
    i32 1, label %115
    i32 0, label %116
  ]

115:                                              ; preds = %111
  br label %118

116:                                              ; preds = %111
  %117 = xor i1 %112, true
  br label %118

118:                                              ; preds = %116, %115, %111, %84
  %119 = phi i1 [ %87, %84 ], [ %117, %116 ], [ %112, %115 ], [ true, %111 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %120

120:                                              ; preds = %118, %47
  %121 = phi i1 [ %119, %118 ], [ %51, %47 ]
  ret i1 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_dev_mc_inc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @__ipv6_dev_mc_inc(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ipv6_dev_mc_inc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @rtnl_is_locked() #16
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @__ipv6_dev_mc_inc.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %3
  store i1 true, ptr @__ipv6_dev_mc_inc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 912, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 912) #16
  br label %10

10:                                               ; preds = %9, %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !21
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !9

19:                                               ; preds = %14
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %26, label %23, !prof !22

23:                                               ; preds = %19, %14
  %24 = phi i32 [ 2, %14 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #16
  br label %26

25:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %143

26:                                               ; preds = %23, %19
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 27
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !11
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !24
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %143, label %36, !prof !22

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #16
  br label %143

37:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %12) #16
  br label %143

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %39) #16
  %40 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %84, label %43

43:                                               ; preds = %38
  %44 = load i32, ptr %1, align 4
  %45 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %80, %43
  %52 = phi ptr [ %41, %43 ], [ %82, %80 ]
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %44, %53
  %55 = getelementptr [4 x i32], ptr %52, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = xor i32 %46, %56
  %58 = or i32 %57, %54
  %59 = getelementptr [4 x i32], ptr %52, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = xor i32 %48, %60
  %62 = or i32 %58, %61
  %63 = getelementptr [4 x i32], ptr %52, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %50, %64
  %66 = or i32 %62, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.ifmcaddr6, ptr %52, i32 0, i32 10
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  %72 = tail call fastcc i32 @ip6_mc_add_src(ptr noundef nonnull %12, ptr noundef nonnull %52, i32 noundef %2, i32 noundef 0, ptr noundef null, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %39) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !11
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !24
  %74 = extractvalue { i32, i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = icmp sgt i32 %74, 0
  br i1 %77, label %143, label %78, !prof !22

78:                                               ; preds = %76
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #16
  br label %143

79:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %12) #16
  br label %143

80:                                               ; preds = %51
  %81 = getelementptr inbounds %struct.ifmcaddr6, ptr %52, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %51

84:                                               ; preds = %80, %38
  %85 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %86 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3520, i32 noundef 120) #17
  %87 = icmp eq ptr %86, null
  br i1 %87, label %122, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 8
  store i32 -32, ptr %89, align 8
  %90 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 8, i32 0, i32 1
  store volatile ptr %90, ptr %90, align 4
  %91 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 8, i32 0, i32 1, i32 1
  store ptr %90, ptr %91, align 8
  %92 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 8, i32 0, i32 2
  store ptr @mld_mca_work, ptr %92, align 4
  %93 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %93, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %86, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false) #16
  %94 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 1
  store ptr %12, ptr %94, align 8
  %95 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 10
  store i32 1, ptr %95, align 8
  %96 = load volatile i32, ptr @jiffies, align 64
  %97 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 13
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 12
  store i32 %96, ptr %98, align 8
  %99 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 11
  store volatile i32 1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 5
  store i32 %2, ptr %100, align 8
  %101 = getelementptr %struct.ifmcaddr6, ptr %86, i32 0, i32 7, i32 %2
  store i32 1, ptr %101, align 4
  %102 = load i32, ptr %86, align 8
  %103 = xor i32 %102, 767
  %104 = getelementptr [4 x i32], ptr %86, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %103, %105
  %107 = getelementptr [4 x i32], ptr %86, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = or i32 %106, %108
  %110 = getelementptr [4 x i32], ptr %86, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = xor i32 %111, 16777216
  %113 = or i32 %109, %112
  %114 = icmp eq i32 %113, 0
  %115 = and i32 %102, 3584
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %88
  %119 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 9
  %120 = load i32, ptr %119, align 4
  %121 = or i32 %120, 8
  store i32 %121, ptr %119, align 4
  br label %130

122:                                              ; preds = %84
  tail call void @mutex_unlock(ptr noundef %39) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !11
  %123 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !24
  %124 = extractvalue { i32, i32, i32 } %123, 0
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = icmp sgt i32 %124, 0
  br i1 %127, label %143, label %128, !prof !22

128:                                              ; preds = %126
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #16
  br label %143

129:                                              ; preds = %122
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %12) #16
  br label %143

130:                                              ; preds = %118, %88
  %131 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  %132 = getelementptr inbounds %struct.ifmcaddr6, ptr %86, i32 0, i32 2
  store volatile ptr %131, ptr %132, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  store volatile ptr %86, ptr %40, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #16, !srcloc !11
  %133 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #16, !srcloc !21
  %134 = extractvalue { i32, i32, i32 } %133, 0
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136, !prof !9

136:                                              ; preds = %130
  %137 = add i32 %134, 1
  %138 = or i32 %137, %134
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %142, label %140, !prof !22

140:                                              ; preds = %136, %130
  %141 = phi i32 [ 2, %130 ], [ 1, %136 ]
  tail call void @refcount_warn_saturate(ptr noundef %99, i32 noundef %141) #16
  br label %142

142:                                              ; preds = %140, %136
  tail call fastcc void @mld_del_delrec(ptr noundef nonnull %12, ptr noundef nonnull %86)
  tail call fastcc void @igmp6_group_added(ptr noundef nonnull %86)
  tail call void @mutex_unlock(ptr noundef %39) #16
  tail call fastcc void @ma_put(ptr noundef nonnull %86)
  br label %143

143:                                              ; preds = %142, %129, %128, %126, %79, %78, %76, %37, %36, %34, %25
  %144 = phi i32 [ 0, %142 ], [ -22, %25 ], [ -19, %34 ], [ -19, %36 ], [ -19, %37 ], [ 0, %76 ], [ 0, %78 ], [ 0, %79 ], [ -12, %126 ], [ -12, %128 ], [ -12, %129 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @igmp6_group_dropped(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  %3 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !28
  %6 = getelementptr [16 x i8], ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %105, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = and i32 %12, -5
  store i32 %16, ptr %11, align 4
  %17 = call i32 @ndisc_mc_map(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %5, i32 noundef 0) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @dev_mc_del(ptr noundef %5, ptr noundef nonnull %2) #16
  br label %21

21:                                               ; preds = %19, %15, %10
  %22 = load i32, ptr %11, align 4
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %105

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %26, i32 0, i32 27
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %96

30:                                               ; preds = %25
  %31 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %32 = getelementptr inbounds %struct.ipv6_devconf, ptr %31, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.inet6_dev, ptr %26, i32 0, i32 32, i32 11
  %36 = select i1 %34, ptr %35, ptr %32
  %37 = load i32, ptr %36, align 4
  switch i32 %37, label %38 [
    i32 2, label %51
    i32 1, label %46
  ]

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.inet6_dev, ptr %26, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load volatile i32, ptr @jiffies, align 64
  %44 = sub i32 %43, %40
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %30
  %47 = and i32 %22, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %96, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %26, align 4
  call fastcc void @igmp6_send(ptr noundef %0, ptr noundef %50, i32 noundef 132) #16
  br label %96

51:                                               ; preds = %42, %38, %30
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %53 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 120) #17
  %54 = icmp eq ptr %53, null
  br i1 %54, label %94, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.ifmcaddr6, ptr %53, i32 0, i32 1
  store ptr %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.inet6_dev, ptr %26, i32 0, i32 25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #16, !srcloc !11
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #16, !srcloc !21
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62, !prof !9

62:                                               ; preds = %55
  %63 = add i32 %60, 1
  %64 = or i32 %63, %60
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %68, label %66, !prof !22

66:                                               ; preds = %62, %55
  %67 = phi i32 [ 2, %55 ], [ 1, %62 ]
  call void @refcount_warn_saturate(ptr noundef %58, i32 noundef %67) #16
  br label %68

68:                                               ; preds = %66, %62
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef align 4 dereferenceable(16) %0, i32 16, i1 false) #16
  %69 = getelementptr inbounds %struct.inet6_dev, ptr %26, i32 0, i32 5
  %70 = load i8, ptr %69, align 4
  %71 = getelementptr inbounds %struct.ifmcaddr6, ptr %53, i32 0, i32 6
  store i8 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ifmcaddr6, ptr %53, i32 0, i32 5
  store i32 %73, ptr %74, align 8
  %75 = icmp eq i32 %73, 1
  br i1 %75, label %76, label %90

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %79 = getelementptr inbounds %struct.ifmcaddr6, ptr %53, i32 0, i32 4
  store volatile ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !30
  %82 = getelementptr inbounds %struct.ifmcaddr6, ptr %53, i32 0, i32 3
  store volatile ptr %81, ptr %82, align 8
  store volatile ptr null, ptr %77, align 4
  store volatile ptr null, ptr %80, align 4
  %83 = icmp eq ptr %81, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %84, %76
  %85 = phi ptr [ %88, %84 ], [ %81, %76 ]
  %86 = load i8, ptr %71, align 4
  %87 = getelementptr inbounds %struct.ip6_sf_list, ptr %85, i32 0, i32 5
  store i8 %86, ptr %87, align 2
  %88 = load ptr, ptr %85, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %84

90:                                               ; preds = %84, %76, %68
  %91 = getelementptr inbounds %struct.inet6_dev, ptr %26, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !31
  %93 = getelementptr inbounds %struct.ifmcaddr6, ptr %53, i32 0, i32 2
  store volatile ptr %92, ptr %93, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  store volatile ptr %53, ptr %91, align 4
  br label %94

94:                                               ; preds = %90, %51
  %95 = load ptr, ptr %3, align 4
  call fastcc void @mld_ifc_event(ptr noundef %95) #16
  br label %96

96:                                               ; preds = %94, %49, %46, %25
  %97 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 8
  %98 = call zeroext i1 @cancel_delayed_work(ptr noundef %97) #16
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 11
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %100) #16, !srcloc !11
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %100, ptr %100, i32 1, ptr elementtype(i32) %100) #16, !srcloc !24
  %102 = extractvalue { i32, i32, i32 } %101, 0
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %105, !prof !9

104:                                              ; preds = %99
  call void @refcount_warn_saturate(ptr noundef %100, i32 noundef 4) #16
  br label %105

105:                                              ; preds = %104, %99, %96, %21, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ma_put(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #16, !srcloc !24
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %24, label %8, !prof !22

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #16
  br label %24

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %10 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %11, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !11
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #16, !srcloc !24
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !22

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #16
  br label %20

19:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void @in6_dev_finish_destroy(ptr noundef %11) #16
  br label %20

20:                                               ; preds = %19, %18, %16
  %21 = icmp eq ptr %0, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 14
  tail call void @kvfree_call_rcu(ptr noundef %23, ptr noundef nonnull inttoptr (i32 112 to ptr)) #16
  br label %24

24:                                               ; preds = %22, %20, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_dev_mc_dec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i32 @rtnl_is_locked() #16
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @ipv6_dev_mc_dec.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  store i1 true, ptr @ipv6_dev_mc_dec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 999, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 999) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @__ipv6_dev_mc_dec(ptr noundef nonnull %11, ptr noundef %1)
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ -19, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipv6_chk_mcast_addr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %92, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %1, align 4
  %13 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %36, %11
  %20 = phi ptr [ %9, %11 ], [ %38, %36 ]
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %12, %21
  %23 = getelementptr [4 x i32], ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = xor i32 %14, %24
  %26 = or i32 %25, %22
  %27 = getelementptr [4 x i32], ptr %20, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %16, %28
  %30 = or i32 %26, %29
  %31 = getelementptr [4 x i32], ptr %20, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %18, %32
  %34 = or i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.ifmcaddr6, ptr %20, i32 0, i32 2
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %92, label %19

40:                                               ; preds = %19
  %41 = icmp eq ptr %2, null
  br i1 %41, label %92, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %2, align 4
  %44 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, %43
  %47 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %46, %48
  %50 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %49, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %92, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.ifmcaddr6, ptr %20, i32 0, i32 3
  br label %56

56:                                               ; preds = %60, %54
  %57 = phi ptr [ %55, %54 ], [ %58, %60 ]
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %85, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ip6_sf_list, ptr %58, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = xor i32 %62, %43
  %64 = getelementptr %struct.ip6_sf_list, ptr %58, i32 0, i32 1, i32 0, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = xor i32 %65, %45
  %67 = or i32 %66, %63
  %68 = getelementptr %struct.ip6_sf_list, ptr %58, i32 0, i32 1, i32 0, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %69, %48
  %71 = or i32 %67, %70
  %72 = getelementptr %struct.ip6_sf_list, ptr %58, i32 0, i32 1, i32 0, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = xor i32 %73, %51
  %75 = or i32 %71, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %56

77:                                               ; preds = %60
  %78 = getelementptr %struct.ip6_sf_list, ptr %58, i32 0, i32 2, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ip6_sf_list, ptr %58, i32 0, i32 2
  %83 = getelementptr inbounds %struct.ifmcaddr6, ptr %20, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  br label %87

85:                                               ; preds = %56
  %86 = getelementptr inbounds %struct.ifmcaddr6, ptr %20, i32 0, i32 7
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i32 [ 0, %85 ], [ %84, %81 ]
  %89 = phi ptr [ %86, %85 ], [ %82, %81 ]
  %90 = load i32, ptr %89, align 4
  %91 = icmp ne i32 %90, %88
  br label %92

92:                                               ; preds = %87, %77, %42, %40, %36, %7, %3
  %93 = phi i1 [ false, %3 ], [ true, %77 ], [ true, %42 ], [ true, %40 ], [ false, %7 ], [ %91, %87 ], [ false, %36 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  ret i1 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igmp6_event_query(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 69
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 27
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 18, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 32
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 18
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 18, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  store volatile ptr %17, ptr %0, align 8
  %20 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 1
  store volatile ptr %19, ptr %20, align 4
  store volatile ptr %0, ptr %18, align 4
  store volatile ptr %0, ptr %19, align 4
  %21 = load i32, ptr %13, align 4
  %22 = add i32 %21, 1
  store volatile i32 %22, ptr %13, align 4
  %23 = load ptr, ptr @mld_wq, align 4
  %24 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 16
  %25 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %23, ptr noundef %24, i32 noundef 0) #16
  br i1 %25, label %37, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #16, !srcloc !11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #16, !srcloc !21
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !9

31:                                               ; preds = %26
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !22

35:                                               ; preds = %31, %26
  %36 = phi i32 [ 2, %26 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #16
  br label %37

37:                                               ; preds = %35, %31, %16, %11
  %38 = phi ptr [ %0, %11 ], [ null, %16 ], [ null, %31 ], [ null, %35 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #16
  br label %39

39:                                               ; preds = %37, %7, %1
  %40 = phi ptr [ %0, %7 ], [ %38, %37 ], [ %0, %1 ]
  tail call void @kfree_skb_reason(ptr noundef %40, i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igmp6_event_report(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 69
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 27
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 19, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 32
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 19
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 19, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  store volatile ptr %17, ptr %0, align 8
  %20 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 1
  store volatile ptr %19, ptr %20, align 4
  store volatile ptr %0, ptr %18, align 4
  store volatile ptr %0, ptr %19, align 4
  %21 = load i32, ptr %13, align 4
  %22 = add i32 %21, 1
  store volatile i32 %22, ptr %13, align 4
  %23 = load ptr, ptr @mld_wq, align 4
  %24 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 17
  %25 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %23, ptr noundef %24, i32 noundef 0) #16
  br i1 %25, label %37, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #16, !srcloc !11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #16, !srcloc !21
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !9

31:                                               ; preds = %26
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !22

35:                                               ; preds = %31, %26
  %36 = phi i32 [ 2, %26 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #16
  br label %37

37:                                               ; preds = %35, %31, %16, %11
  %38 = phi ptr [ %0, %11 ], [ null, %16 ], [ null, %31 ], [ null, %35 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #16
  br label %39

39:                                               ; preds = %37, %7, %1
  %40 = phi ptr [ %0, %7 ], [ %38, %37 ], [ %0, %1 ]
  tail call void @kfree_skb_reason(ptr noundef %40, i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_mc_dad_complete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 8
  store i8 %4, ptr %5, align 1
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %85, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %9 = getelementptr inbounds %struct.ipv6_devconf, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 11
  %13 = select i1 %11, ptr %12, ptr %9
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %15 [
    i32 2, label %23
    i32 1, label %41
  ]

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = sub i32 %20, %17
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %19, %15, %7
  %24 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %27, %23
  %28 = phi ptr [ %36, %27 ], [ %25, %23 ]
  %29 = phi ptr [ %34, %27 ], [ null, %23 ]
  %30 = getelementptr inbounds %struct.ifmcaddr6, ptr %28, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 5, i32 4
  %34 = tail call fastcc ptr @add_grec(ptr noundef %29, ptr noundef nonnull %28, i32 noundef %33, i32 noundef 0, i32 noundef 0, i32 noundef 1) #16
  %35 = getelementptr inbounds %struct.ifmcaddr6, ptr %28, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %27

38:                                               ; preds = %27
  %39 = icmp eq ptr %34, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call fastcc void @mld_sendpack(ptr noundef nonnull %34) #16
  br label %41

41:                                               ; preds = %40, %38, %23, %19, %7
  %42 = load i8, ptr %5, align 1
  %43 = add i8 %42, -1
  store i8 %43, ptr %5, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %85, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %47 = getelementptr inbounds %struct.ipv6_devconf, ptr %46, i32 0, i32 11
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, ptr %12, ptr %47
  %51 = load i32, ptr %50, align 4
  switch i32 %51, label %52 [
    i32 2, label %60
    i32 1, label %62
  ]

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load volatile i32, ptr @jiffies, align 64
  %58 = sub i32 %57, %54
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56, %52, %45
  %61 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 13
  br label %64

62:                                               ; preds = %56, %45
  %63 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 12
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi ptr [ %63, %62 ], [ %61, %60 ]
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @llvm.smax.i32(i32 %66, i32 1) #16
  %68 = tail call i32 @prandom_u32() #16
  %69 = urem i32 %68, %67
  %70 = load ptr, ptr @mld_wq, align 4
  %71 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 15
  %72 = add nuw i32 %69, 2
  %73 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %70, ptr noundef %71, i32 noundef %72) #16
  br i1 %73, label %85, label %74

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #16, !srcloc !11
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #16, !srcloc !21
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79, !prof !9

79:                                               ; preds = %74
  %80 = add i32 %77, 1
  %81 = or i32 %80, %77
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %85, label %83, !prof !22

83:                                               ; preds = %79, %74
  %84 = phi i32 [ 2, %74 ], [ 1, %79 ]
  tail call void @refcount_warn_saturate(ptr noundef %75, i32 noundef %84) #16
  br label %85

85:                                               ; preds = %83, %79, %64, %41, %1
  tail call void @mutex_unlock(ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_mc_unmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  tail call fastcc void @igmp6_group_dropped(ptr noundef nonnull %7)
  %8 = getelementptr inbounds %struct.ifmcaddr6, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_mc_remap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sysctl_mld_qrv, align 4
  %3 = trunc i32 %2 to i8
  %4 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 5
  store i8 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 10
  store i32 12500, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 11
  store i32 1000, ptr %6, align 4
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 9
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %9 = getelementptr inbounds %struct.ipv6_devconf, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 11
  %13 = select i1 %11, ptr %12, ptr %9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  %16 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 12
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 13
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 1) #16
  %21 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 12
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %22) #16
  %23 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %26, %1
  %27 = phi ptr [ %29, %26 ], [ %24, %1 ]
  tail call fastcc void @mld_del_delrec(ptr noundef %0, ptr noundef nonnull %27) #16
  tail call fastcc void @igmp6_group_added(ptr noundef nonnull %27) #16
  %28 = getelementptr inbounds %struct.ifmcaddr6, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26

31:                                               ; preds = %26, %1
  tail call void @mutex_unlock(ptr noundef %22) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_mc_up(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sysctl_mld_qrv, align 4
  %3 = trunc i32 %2 to i8
  %4 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 5
  store i8 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 10
  store i32 12500, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 11
  store i32 1000, ptr %6, align 4
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 9
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %9 = getelementptr inbounds %struct.ipv6_devconf, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 11
  %13 = select i1 %11, ptr %12, ptr %9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  %16 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 12
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 13
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 1) #16
  %21 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 12
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %22) #16
  %23 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %26, %1
  %27 = phi ptr [ %29, %26 ], [ %24, %1 ]
  tail call fastcc void @mld_del_delrec(ptr noundef %0, ptr noundef nonnull %27)
  tail call fastcc void @igmp6_group_added(ptr noundef nonnull %27)
  %28 = getelementptr inbounds %struct.ifmcaddr6, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26

31:                                               ; preds = %26, %1
  tail call void @mutex_unlock(ptr noundef %22) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_mc_down(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  tail call fastcc void @igmp6_group_dropped(ptr noundef nonnull %7)
  %8 = getelementptr inbounds %struct.ifmcaddr6, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #16
  tail call void @synchronize_net() #16
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 16
  %14 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %13) #16
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #16, !srcloc !11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #16, !srcloc !24
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 4) #16
  br label %21

21:                                               ; preds = %20, %15, %11
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #16
  %22 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 17
  %23 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %22) #16
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #16, !srcloc !11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #16, !srcloc !24
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef 4) #16
  br label %30

30:                                               ; preds = %29, %24, %21
  %31 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 7
  store i8 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 14
  %33 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %32) #16
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #16, !srcloc !11
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #16, !srcloc !24
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %40, !prof !9

39:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef 4) #16
  br label %40

40:                                               ; preds = %39, %34, %30
  %41 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 6
  store i8 0, ptr %41, align 1
  %42 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 13
  %43 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %42) #16
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #16, !srcloc !11
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #16, !srcloc !24
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %50, !prof !9

49:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef 4) #16
  br label %50

50:                                               ; preds = %49, %44, %40
  %51 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 15
  %52 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %51) #16
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #16, !srcloc !11
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #16, !srcloc !24
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %59, !prof !9

58:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef %54, i32 noundef 4) #16
  br label %59

59:                                               ; preds = %58, %53, %50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mld_del_delrec(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %120, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %4, align 4
  %15 = xor i32 %7, %14
  %16 = getelementptr [4 x i32], ptr %4, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = xor i32 %9, %17
  %19 = or i32 %18, %15
  %20 = getelementptr [4 x i32], ptr %4, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %11, %21
  %23 = or i32 %19, %22
  %24 = getelementptr [4 x i32], ptr %4, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %13, %25
  %27 = or i32 %23, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %45

29:                                               ; preds = %45
  %30 = load i32, ptr %48, align 4
  %31 = xor i32 %7, %30
  %32 = getelementptr [4 x i32], ptr %48, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %9, %33
  %35 = or i32 %34, %31
  %36 = getelementptr [4 x i32], ptr %48, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = xor i32 %11, %37
  %39 = or i32 %35, %38
  %40 = getelementptr [4 x i32], ptr %48, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %13, %41
  %43 = or i32 %39, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %29, %6
  %46 = phi ptr [ %48, %29 ], [ %4, %6 ]
  %47 = getelementptr inbounds %struct.ifmcaddr6, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %120, label %29

50:                                               ; preds = %29, %6
  %51 = phi ptr [ %4, %6 ], [ %48, %29 ]
  %52 = phi ptr [ null, %6 ], [ %46, %29 ]
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds %struct.ifmcaddr6, ptr %51, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  %56 = getelementptr inbounds %struct.ifmcaddr6, ptr %52, i32 0, i32 2
  %57 = select i1 %53, ptr %3, ptr %56
  store volatile ptr %55, ptr %57, align 4
  %58 = getelementptr inbounds %struct.ifmcaddr6, ptr %51, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 1
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %83

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ifmcaddr6, ptr %51, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !33
  store volatile ptr %68, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !34
  store volatile ptr %66, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.ifmcaddr6, ptr %51, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  store volatile ptr %72, ptr %69, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !36
  store volatile ptr %70, ptr %71, align 4
  %73 = load ptr, ptr %69, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 5
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi ptr [ %73, %75 ], [ %81, %77 ]
  %79 = load i8, ptr %76, align 4
  %80 = getelementptr inbounds %struct.ip6_sf_list, ptr %78, i32 0, i32 5
  store i8 %79, ptr %80, align 2
  %81 = load ptr, ptr %78, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %77

83:                                               ; preds = %50
  %84 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 5
  %85 = load i8, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 6
  store i8 %85, ptr %86, align 4
  br label %87

87:                                               ; preds = %83, %77, %64
  %88 = load ptr, ptr %58, align 4
  %89 = getelementptr inbounds %struct.inet6_dev, ptr %88, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #16, !srcloc !11
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #16, !srcloc !24
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = icmp sgt i32 %91, 0
  br i1 %94, label %97, label %95, !prof !22

95:                                               ; preds = %93
  tail call void @refcount_warn_saturate(ptr noundef %89, i32 noundef 3) #16
  br label %97

96:                                               ; preds = %87
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void @in6_dev_finish_destroy(ptr noundef %88) #16
  br label %97

97:                                               ; preds = %96, %95, %93
  %98 = getelementptr inbounds %struct.ifmcaddr6, ptr %51, i32 0, i32 4
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %101, %97
  %102 = phi ptr [ %103, %101 ], [ %99, %97 ]
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ip6_sf_list, ptr %102, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %104, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  %105 = icmp eq ptr %103, null
  br i1 %105, label %106, label %101

106:                                              ; preds = %101, %97
  store volatile ptr null, ptr %98, align 4
  %107 = getelementptr inbounds %struct.ifmcaddr6, ptr %51, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %110, %106
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.ip6_sf_list, ptr %111, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %113, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  %114 = icmp eq ptr %112, null
  br i1 %114, label %115, label %110

115:                                              ; preds = %110, %106
  store volatile ptr null, ptr %107, align 4
  %116 = getelementptr inbounds %struct.ifmcaddr6, ptr %51, i32 0, i32 5
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.ifmcaddr6, ptr %51, i32 0, i32 7
  %118 = getelementptr %struct.ifmcaddr6, ptr %51, i32 0, i32 7, i32 1
  store i32 0, ptr %118, align 4
  store i32 1, ptr %117, align 4
  %119 = getelementptr inbounds %struct.ifmcaddr6, ptr %51, i32 0, i32 14
  tail call void @kvfree_call_rcu(ptr noundef %119, ptr noundef nonnull inttoptr (i32 112 to ptr)) #16
  br label %120

120:                                              ; preds = %115, %45, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @igmp6_group_added(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  %3 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !28
  %6 = getelementptr [16 x i8], ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = or i32 %12, 4
  store i32 %16, ptr %11, align 4
  %17 = call i32 @ndisc_mc_map(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %5, i32 noundef 0) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @dev_mc_add(ptr noundef %5, ptr noundef nonnull %2) #16
  br label %21

21:                                               ; preds = %19, %15, %10
  %22 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %11, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load ptr, ptr %3, align 4
  %32 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %33 = getelementptr inbounds %struct.ipv6_devconf, ptr %32, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.inet6_dev, ptr %31, i32 0, i32 32, i32 11
  %37 = select i1 %35, ptr %36, ptr %33
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %39 [
    i32 2, label %48
    i32 1, label %47
  ]

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.inet6_dev, ptr %31, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = sub i32 %44, %41
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %30
  call fastcc void @igmp6_join_group(ptr noundef %0)
  br label %57

48:                                               ; preds = %43, %39, %30
  %49 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.inet6_dev, ptr %31, i32 0, i32 5
  %54 = load i8, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 6
  store i8 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %48
  call fastcc void @mld_ifc_event(ptr noundef %31)
  br label %57

57:                                               ; preds = %56, %47, %26, %21, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_mc_init_dev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 6
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 13
  store i32 -32, ptr %3, align 4
  %4 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 13, i32 0, i32 1
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 13, i32 0, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 13, i32 0, i32 2
  store ptr @mld_gq_work, ptr %6, align 4
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %7, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 4
  store volatile ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 7
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 14
  store i32 -32, ptr %10, align 4
  %11 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 14, i32 0, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 14, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 14, i32 0, i32 2
  store ptr @mld_ifc_work, ptr %13, align 4
  %14 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 14, i32 1
  tail call void @init_timer_key(ptr noundef %14, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %15 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 15
  store i32 -32, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 15, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 15, i32 0, i32 2
  store ptr @mld_dad_work, ptr %18, align 4
  %19 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %19, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %20 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 16
  store i32 -32, ptr %20, align 4
  %21 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 16, i32 0, i32 1
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 16, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 16, i32 0, i32 2
  store ptr @mld_query_work, ptr %23, align 4
  %24 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 16, i32 1
  tail call void @init_timer_key(ptr noundef %24, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %25 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 17
  store i32 -32, ptr %25, align 4
  %26 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 17, i32 0, i32 1
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 17, i32 0, i32 1, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 17, i32 0, i32 2
  store ptr @mld_report_work, ptr %28, align 4
  %29 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %29, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %30 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 18
  %31 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 18, i32 2
  store i32 0, ptr %31, align 4
  store ptr %30, ptr %30, align 4
  %32 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 18, i32 0, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  %33 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 18, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 19
  %35 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 19, i32 2
  store i32 0, ptr %35, align 4
  store ptr %34, ptr %34, align 4
  %36 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  %37 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 19, i32 1
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 20
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 21
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %40, ptr noundef nonnull @.str.2, ptr noundef nonnull @ipv6_mc_init_dev.__key) #16
  %41 = load i32, ptr @sysctl_mld_qrv, align 4
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 5
  store i8 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 10
  store i32 12500, ptr %44, align 4
  %45 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 11
  store i32 1000, ptr %45, align 4
  %46 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 9
  store i32 0, ptr %46, align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %48 = getelementptr inbounds %struct.ipv6_devconf, ptr %47, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 11
  %52 = select i1 %50, ptr %51, ptr %48
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 1
  %55 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 12
  %56 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 13
  %57 = select i1 %54, ptr %55, ptr %56
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @llvm.smax.i32(i32 %58, i32 1) #16
  %60 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 12
  store i32 %59, ptr %60, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mld_gq_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -40
  %3 = getelementptr i8, ptr %0, i32 260
  tail call void @mutex_lock(ptr noundef %3) #16
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %20, %1
  %8 = phi ptr [ %23, %20 ], [ %5, %1 ]
  %9 = phi ptr [ %21, %20 ], [ null, %1 ]
  %10 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 1, i32 2
  %19 = tail call fastcc ptr @add_grec(ptr noundef %9, ptr noundef nonnull %8, i32 noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %20

20:                                               ; preds = %14, %7
  %21 = phi ptr [ %9, %7 ], [ %19, %14 ]
  %22 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7

25:                                               ; preds = %20
  %26 = icmp eq ptr %21, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call fastcc void @mld_sendpack(ptr noundef nonnull %21) #16
  br label %28

28:                                               ; preds = %27, %25, %1
  %29 = getelementptr i8, ptr %0, i32 -19
  store i8 0, ptr %29, align 1
  tail call void @mutex_unlock(ptr noundef %3) #16
  %30 = getelementptr i8, ptr %0, i32 288
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #16, !srcloc !11
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #16, !srcloc !24
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %38, label %36, !prof !22

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef 3) #16
  br label %38

37:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void @in6_dev_finish_destroy(ptr noundef %2) #16
  br label %38

38:                                               ; preds = %37, %36, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mld_ifc_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -84
  %3 = getelementptr i8, ptr %0, i32 216
  tail call void @mutex_lock(ptr noundef %3) #16
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %103, label %7

7:                                                ; preds = %99, %1
  %8 = phi ptr [ %12, %99 ], [ %5, %1 ]
  %9 = phi ptr [ %101, %99 ], [ null, %1 ]
  %10 = phi ptr [ %100, %99 ], [ null, %1 ]
  %11 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = tail call fastcc ptr @add_grec(ptr noundef %10, ptr noundef nonnull %8, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %18 = tail call fastcc ptr @add_grec(ptr noundef %17, ptr noundef nonnull %8, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  br label %19

19:                                               ; preds = %16, %7
  %20 = phi ptr [ %18, %16 ], [ %10, %7 ]
  %21 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 6
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %74, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %13, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @add_grec(ptr noundef %20, ptr noundef nonnull %8, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %29 = load i8, ptr %21, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i8 [ %29, %27 ], [ %22, %24 ]
  %32 = phi ptr [ %28, %27 ], [ %20, %24 ]
  %33 = add i8 %31, -1
  store i8 %33, ptr %21, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %99

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %50, %35
  %40 = phi ptr [ %51, %50 ], [ null, %35 ]
  %41 = phi ptr [ %42, %50 ], [ %37, %35 ]
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ip6_sf_list, ptr %41, i32 0, i32 5
  %44 = load i8, ptr %43, align 2
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = icmp eq ptr %40, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  %48 = select i1 %47, ptr %36, ptr %40
  store volatile ptr %42, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ip6_sf_list, ptr %41, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %49, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi ptr [ %40, %46 ], [ %41, %39 ]
  %52 = icmp eq ptr %42, null
  br i1 %52, label %53, label %39

53:                                               ; preds = %50, %35
  %54 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %68, %53
  %58 = phi ptr [ %69, %68 ], [ null, %53 ]
  %59 = phi ptr [ %60, %68 ], [ %55, %53 ]
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ip6_sf_list, ptr %59, i32 0, i32 5
  %62 = load i8, ptr %61, align 2
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = icmp eq ptr %58, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  %66 = select i1 %65, ptr %54, ptr %58
  store volatile ptr %60, ptr %66, align 4
  %67 = getelementptr inbounds %struct.ip6_sf_list, ptr %59, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %67, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %68

68:                                               ; preds = %64, %57
  %69 = phi ptr [ %58, %64 ], [ %59, %57 ]
  %70 = icmp eq ptr %60, null
  br i1 %70, label %71, label %57

71:                                               ; preds = %68, %53
  %72 = load i8, ptr %21, align 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %71, %19
  %75 = phi ptr [ %32, %71 ], [ %20, %19 ]
  %76 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 4
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 3
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = icmp eq ptr %9, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  %85 = getelementptr inbounds %struct.ifmcaddr6, ptr %9, i32 0, i32 2
  %86 = select i1 %84, ptr %4, ptr %85
  store volatile ptr %12, ptr %86, align 4
  %87 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.inet6_dev, ptr %88, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #16, !srcloc !11
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #16, !srcloc !24
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %96, label %93

93:                                               ; preds = %83
  %94 = icmp sgt i32 %91, 0
  br i1 %94, label %97, label %95, !prof !22

95:                                               ; preds = %93
  tail call void @refcount_warn_saturate(ptr noundef %89, i32 noundef 3) #16
  br label %97

96:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void @in6_dev_finish_destroy(ptr noundef %88) #16
  br label %97

97:                                               ; preds = %96, %95, %93
  %98 = getelementptr inbounds %struct.ifmcaddr6, ptr %8, i32 0, i32 14
  tail call void @kvfree_call_rcu(ptr noundef %98, ptr noundef nonnull inttoptr (i32 112 to ptr)) #16
  br label %99

99:                                               ; preds = %97, %79, %74, %71, %30
  %100 = phi ptr [ %75, %97 ], [ %75, %79 ], [ %75, %74 ], [ %32, %71 ], [ %32, %30 ]
  %101 = phi ptr [ %9, %97 ], [ %8, %79 ], [ %8, %74 ], [ %8, %71 ], [ %8, %30 ]
  %102 = icmp eq ptr %12, null
  br i1 %102, label %103, label %7

103:                                              ; preds = %99, %1
  %104 = phi ptr [ null, %1 ], [ %100, %99 ]
  %105 = getelementptr i8, ptr %0, i32 -72
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %134, label %108

108:                                              ; preds = %129, %103
  %109 = phi ptr [ %132, %129 ], [ %106, %103 ]
  %110 = phi ptr [ %130, %129 ], [ %104, %103 ]
  %111 = getelementptr inbounds %struct.ifmcaddr6, ptr %109, i32 0, i32 7
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 6, i32 5
  %115 = select i1 %113, i32 5, i32 6
  %116 = tail call fastcc ptr @add_grec(ptr noundef %110, ptr noundef nonnull %109, i32 noundef %115, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %117 = tail call fastcc ptr @add_grec(ptr noundef %116, ptr noundef nonnull %109, i32 noundef %114, i32 noundef 0, i32 noundef 1, i32 noundef 0) #16
  %118 = getelementptr inbounds %struct.ifmcaddr6, ptr %109, i32 0, i32 6
  %119 = load i8, ptr %118, align 4
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %108
  %122 = getelementptr inbounds %struct.ifmcaddr6, ptr %109, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 4, i32 3
  %126 = tail call fastcc ptr @add_grec(ptr noundef %117, ptr noundef nonnull %109, i32 noundef %125, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %127 = load i8, ptr %118, align 4
  %128 = add i8 %127, -1
  store i8 %128, ptr %118, align 4
  br label %129

129:                                              ; preds = %121, %108
  %130 = phi ptr [ %126, %121 ], [ %117, %108 ]
  %131 = getelementptr inbounds %struct.ifmcaddr6, ptr %109, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %108

134:                                              ; preds = %129, %103
  %135 = phi ptr [ %104, %103 ], [ %130, %129 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  tail call fastcc void @mld_sendpack(ptr noundef nonnull %135) #16
  br label %138

138:                                              ; preds = %137, %134
  %139 = getelementptr i8, ptr %0, i32 -62
  %140 = load i8, ptr %139, align 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %183, label %142

142:                                              ; preds = %138
  %143 = add i8 %140, -1
  store i8 %143, ptr %139, align 2
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %183, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %147 = getelementptr inbounds %struct.ipv6_devconf, ptr %146, i32 0, i32 11
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  %150 = getelementptr i8, ptr %0, i32 332
  %151 = select i1 %149, ptr %150, ptr %147
  %152 = load i32, ptr %151, align 4
  switch i32 %152, label %153 [
    i32 2, label %162
    i32 1, label %161
  ]

153:                                              ; preds = %145
  %154 = getelementptr i8, ptr %0, i32 -60
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = load volatile i32, ptr @jiffies, align 64
  %159 = sub i32 %158, %155
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157, %145
  br label %162

162:                                              ; preds = %161, %157, %153, %145
  %163 = phi i32 [ 336, %161 ], [ 340, %157 ], [ 340, %153 ], [ 340, %145 ]
  %164 = getelementptr i8, ptr %0, i32 %163
  %165 = load i32, ptr %164, align 4
  %166 = tail call i32 @llvm.smax.i32(i32 %165, i32 1) #16
  %167 = tail call i32 @prandom_u32() #16
  %168 = urem i32 %167, %166
  %169 = load ptr, ptr @mld_wq, align 4
  %170 = add nuw i32 %168, 2
  %171 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %169, ptr noundef %0, i32 noundef %170) #16
  br i1 %171, label %183, label %172

172:                                              ; preds = %162
  %173 = getelementptr i8, ptr %0, i32 244
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %173) #16, !srcloc !11
  %174 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %173, ptr %173, i32 1, ptr elementtype(i32) %173) #16, !srcloc !21
  %175 = extractvalue { i32, i32, i32 } %174, 0
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177, !prof !9

177:                                              ; preds = %172
  %178 = add i32 %175, 1
  %179 = or i32 %178, %175
  %180 = icmp sgt i32 %179, -1
  br i1 %180, label %183, label %181, !prof !22

181:                                              ; preds = %177, %172
  %182 = phi i32 [ 2, %172 ], [ 1, %177 ]
  tail call void @refcount_warn_saturate(ptr noundef %173, i32 noundef %182) #16
  br label %183

183:                                              ; preds = %181, %177, %162, %142, %138
  tail call void @mutex_unlock(ptr noundef %3) #16
  %184 = getelementptr i8, ptr %0, i32 244
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %184) #16, !srcloc !11
  %185 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %184, ptr %184, i32 1, ptr elementtype(i32) %184) #16, !srcloc !24
  %186 = extractvalue { i32, i32, i32 } %185, 0
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = icmp sgt i32 %186, 0
  br i1 %189, label %192, label %190, !prof !22

190:                                              ; preds = %188
  tail call void @refcount_warn_saturate(ptr noundef %184, i32 noundef 3) #16
  br label %192

191:                                              ; preds = %183
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void @in6_dev_finish_destroy(ptr noundef %2) #16
  br label %192

192:                                              ; preds = %191, %190, %188
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mld_dad_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = getelementptr i8, ptr %0, i32 172
  tail call void @mutex_lock(ptr noundef %3) #16
  %4 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %5 = getelementptr inbounds %struct.ipv6_devconf, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr i8, ptr %0, i32 288
  %9 = select i1 %7, ptr %8, ptr %5
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 2, label %19
    i32 1, label %37
  ]

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -104
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = sub i32 %16, %13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %15, %11, %1
  %20 = getelementptr i8, ptr %0, i32 -116
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %23, %19
  %24 = phi ptr [ %32, %23 ], [ %21, %19 ]
  %25 = phi ptr [ %30, %23 ], [ null, %19 ]
  %26 = getelementptr inbounds %struct.ifmcaddr6, ptr %24, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 5, i32 4
  %30 = tail call fastcc ptr @add_grec(ptr noundef %25, ptr noundef nonnull %24, i32 noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 1) #16
  %31 = getelementptr inbounds %struct.ifmcaddr6, ptr %24, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %23

34:                                               ; preds = %23
  %35 = icmp eq ptr %30, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  tail call fastcc void @mld_sendpack(ptr noundef nonnull %30) #16
  br label %37

37:                                               ; preds = %36, %34, %19, %15, %1
  %38 = getelementptr i8, ptr %0, i32 -105
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %37
  %42 = add i8 %39, -1
  store i8 %42, ptr %38, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %81, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %46 = getelementptr inbounds %struct.ipv6_devconf, ptr %45, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr %8, ptr %46
  %50 = load i32, ptr %49, align 4
  switch i32 %50, label %51 [
    i32 2, label %60
    i32 1, label %59
  ]

51:                                               ; preds = %44
  %52 = getelementptr i8, ptr %0, i32 -104
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = sub i32 %56, %53
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %44
  br label %60

60:                                               ; preds = %59, %55, %51, %44
  %61 = phi i32 [ 292, %59 ], [ 296, %55 ], [ 296, %51 ], [ 296, %44 ]
  %62 = getelementptr i8, ptr %0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @llvm.smax.i32(i32 %63, i32 1) #16
  %65 = tail call i32 @prandom_u32() #16
  %66 = urem i32 %65, %64
  %67 = load ptr, ptr @mld_wq, align 4
  %68 = add nuw i32 %66, 2
  %69 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %67, ptr noundef %0, i32 noundef %68) #16
  br i1 %69, label %81, label %70

70:                                               ; preds = %60
  %71 = getelementptr i8, ptr %0, i32 200
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #16, !srcloc !11
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #16, !srcloc !21
  %73 = extractvalue { i32, i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75, !prof !9

75:                                               ; preds = %70
  %76 = add i32 %73, 1
  %77 = or i32 %76, %73
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %81, label %79, !prof !22

79:                                               ; preds = %75, %70
  %80 = phi i32 [ 2, %70 ], [ 1, %75 ]
  tail call void @refcount_warn_saturate(ptr noundef %71, i32 noundef %80) #16
  br label %81

81:                                               ; preds = %79, %75, %60, %41, %37
  tail call void @mutex_unlock(ptr noundef %3) #16
  %82 = getelementptr i8, ptr %0, i32 200
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #16, !srcloc !11
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #16, !srcloc !24
  %84 = extractvalue { i32, i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = icmp sgt i32 %84, 0
  br i1 %87, label %90, label %88, !prof !22

88:                                               ; preds = %86
  tail call void @refcount_warn_saturate(ptr noundef %82, i32 noundef 3) #16
  br label %90

89:                                               ; preds = %81
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void @in6_dev_finish_destroy(ptr noundef %2) #16
  br label %90

90:                                               ; preds = %89, %88, %86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mld_query_work(ptr noundef %0) #0 {
  %2 = alloca %struct.sk_buff_head, align 4
  %3 = getelementptr i8, ptr %0, i32 -172
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %4 = getelementptr inbounds i8, ptr %2, i32 12
  store i32 0, ptr %4, align 4
  store ptr %2, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.66, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 120
  call void @_raw_spin_lock_bh(ptr noundef %7) #16
  %8 = getelementptr i8, ptr %0, i32 88
  %9 = getelementptr i8, ptr %0, i32 96
  br label %10

10:                                               ; preds = %16, %1
  %11 = phi i32 [ 0, %1 ], [ %26, %16 ]
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, %8
  %14 = icmp eq ptr %12, null
  %15 = or i1 %13, %14
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %9, align 4
  %18 = add i32 %17, -1
  store volatile i32 %18, ptr %9, align 4
  %19 = load ptr, ptr %12, align 8
  %20 = getelementptr inbounds %struct.anon.43, ptr %12, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr null, ptr %20, align 4
  store ptr null, ptr %12, align 8
  %22 = getelementptr inbounds %struct.anon.43, ptr %19, i32 0, i32 1
  store volatile ptr %21, ptr %22, align 4
  store volatile ptr %19, ptr %21, align 8
  %23 = load ptr, ptr %5, align 4
  store volatile ptr %2, ptr %12, align 8
  store volatile ptr %23, ptr %20, align 4
  store volatile ptr %12, ptr %5, align 4
  store volatile ptr %12, ptr %23, align 4
  %24 = load i32, ptr %6, align 4
  %25 = add i32 %24, 1
  store volatile i32 %25, ptr %6, align 4
  %26 = add nuw nsw i32 %11, 1
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %10

28:                                               ; preds = %16
  %29 = load ptr, ptr @system_wq, align 4
  %30 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %0, i32 noundef 0) #16
  br label %31

31:                                               ; preds = %28, %10
  call void @_raw_spin_unlock_bh(ptr noundef %7) #16
  %32 = getelementptr i8, ptr %0, i32 128
  call void @mutex_lock(ptr noundef %32) #16
  %33 = load ptr, ptr %2, align 4
  %34 = icmp eq ptr %33, %2
  %35 = icmp eq ptr %33, null
  %36 = or i1 %34, %35
  br i1 %36, label %529, label %37

37:                                               ; preds = %524, %31
  %38 = phi ptr [ %525, %524 ], [ %33, %31 ]
  %39 = load i32, ptr %6, align 4
  %40 = add i32 %39, -1
  store volatile i32 %40, ptr %6, align 4
  %41 = load ptr, ptr %38, align 8
  %42 = getelementptr inbounds %struct.anon.43, ptr %38, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  store ptr null, ptr %42, align 4
  store ptr null, ptr %38, align 8
  %44 = getelementptr inbounds %struct.anon.43, ptr %41, i32 0, i32 1
  store volatile ptr %43, ptr %44, align 4
  store volatile ptr %41, ptr %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %46, %48
  %50 = icmp ult i32 %49, 16
  br i1 %50, label %51, label %57, !prof !9

51:                                               ; preds = %37
  %52 = icmp ult i32 %46, 16
  br i1 %52, label %524, label %53, !prof !9

53:                                               ; preds = %51
  %54 = sub nuw nsw i32 16, %49
  %55 = call ptr @__pskb_pull_tail(ptr noundef nonnull %38, i32 noundef %54) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %524, label %57

57:                                               ; preds = %53, %37
  %58 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 16
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 13, i32 0, i32 18
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %59, i32 %62
  %64 = getelementptr inbounds %struct.ipv6hdr, ptr %63, i32 0, i32 2
  %65 = load i16, ptr %64, align 4
  %66 = call i16 @llvm.bswap.i16(i16 %65) #16
  %67 = zext i16 %66 to i32
  %68 = add nuw nsw i32 %67, 40
  %69 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 13, i32 0, i32 17
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = sub nsw i32 %62, %71
  %73 = add nsw i32 %68, %72
  %74 = getelementptr inbounds %struct.ipv6hdr, ptr %63, i32 0, i32 5
  %75 = call i32 @__ipv6_addr_type(ptr noundef %74) #16
  %76 = and i32 %75, 32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %524, label %78

78:                                               ; preds = %57
  %79 = load ptr, ptr %58, align 8
  %80 = load i16, ptr %60, align 4
  %81 = zext i16 %80 to i32
  %82 = getelementptr i8, ptr %79, i32 %81
  %83 = getelementptr inbounds %struct.ipv6hdr, ptr %82, i32 0, i32 4
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, 1
  br i1 %85, label %86, label %524

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 3, i32 16
  %88 = load i16, ptr %87, align 8
  %89 = and i16 %88, 8
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %524, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 3, i32 4
  %93 = load i16, ptr %92, align 4
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %524

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.anon.43, ptr %38, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %98 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 69
  %99 = load volatile ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #16, !srcloc !11
  %103 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #16, !srcloc !21
  %104 = extractvalue { i32, i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106, !prof !9

106:                                              ; preds = %101
  %107 = add i32 %104, 1
  %108 = or i32 %107, %104
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %113, label %110, !prof !22

110:                                              ; preds = %106, %101
  %111 = phi i32 [ 2, %101 ], [ 1, %106 ]
  call void @refcount_warn_saturate(ptr noundef %102, i32 noundef %111) #16
  br label %113

112:                                              ; preds = %95
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %524

113:                                              ; preds = %110, %106
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %114 = load ptr, ptr %58, align 8
  %115 = load i16, ptr %69, align 2
  %116 = zext i16 %115 to i32
  %117 = getelementptr i8, ptr %114, i32 %116
  %118 = getelementptr inbounds %struct.mld_msg, ptr %117, i32 0, i32 1
  %119 = call i32 @__ipv6_addr_type(ptr noundef %118) #16
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %113
  %123 = and i32 %119, 2
  %124 = icmp eq i32 %123, 0
  %125 = icmp slt i32 %73, 24
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %516, label %129

127:                                              ; preds = %113
  %128 = icmp slt i32 %73, 24
  br i1 %128, label %516, label %129

129:                                              ; preds = %127, %122
  %130 = icmp eq i32 %73, 24
  %131 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %132 = getelementptr inbounds %struct.ipv6_devconf, ptr %131, i32 0, i32 11
  %133 = load i32, ptr %132, align 4
  br i1 %130, label %147, label %134

134:                                              ; preds = %129
  %135 = icmp eq i32 %133, 0
  %136 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 32, i32 11
  %137 = select i1 %135, ptr %136, ptr %132
  %138 = load i32, ptr %137, align 4
  switch i32 %138, label %139 [
    i32 2, label %194
    i32 1, label %147
  ]

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 9
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %194, label %143

143:                                              ; preds = %139
  %144 = load volatile i32, ptr @jiffies, align 64
  %145 = sub i32 %144, %141
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %194

147:                                              ; preds = %143, %134, %129
  %148 = getelementptr inbounds %struct.ipv6_devconf, ptr %131, i32 0, i32 11
  %149 = icmp eq i32 %133, 0
  %150 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 32, i32 11
  %151 = select i1 %149, ptr %150, ptr %148
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %516, label %154

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.icmp6hdr, ptr %117, i32 0, i32 3
  %156 = load i16, ptr %155, align 4
  %157 = call i16 @llvm.bswap.i16(i16 %156) #16
  %158 = zext i16 %157 to i32
  %159 = call i32 @llvm.umin.i32(i32 %158, i32 32767) #16
  %160 = select i1 %130, i32 %158, i32 %159
  %161 = call i32 @__msecs_to_jiffies(i32 noundef %160) #16
  %162 = call i32 @llvm.umax.i32(i32 %161, i32 1) #16
  br i1 %130, label %163, label %176

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 5
  %165 = load i8, ptr %164, align 4
  %166 = zext i8 %165 to i32
  %167 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 10
  %168 = load i32, ptr %167, align 4
  %169 = mul i32 %168, %166
  %170 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 11
  %171 = load i32, ptr %170, align 4
  %172 = add i32 %169, %171
  %173 = load volatile i32, ptr @jiffies, align 64
  %174 = add i32 %172, %173
  %175 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 9
  store i32 %174, ptr %175, align 4
  br label %176

176:                                              ; preds = %163, %154
  %177 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 6
  store i8 0, ptr %177, align 1
  %178 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 13
  %179 = call zeroext i1 @cancel_delayed_work(ptr noundef %178) #16
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #16, !srcloc !11
  %181 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #16, !srcloc !24
  %182 = extractvalue { i32, i32, i32 } %181, 0
  %183 = icmp slt i32 %182, 2
  br i1 %183, label %184, label %185, !prof !9

184:                                              ; preds = %180
  call void @refcount_warn_saturate(ptr noundef %102, i32 noundef 4) #16
  br label %185

185:                                              ; preds = %184, %180, %176
  %186 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 7
  store i8 0, ptr %186, align 2
  %187 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 14
  %188 = call zeroext i1 @cancel_delayed_work(ptr noundef %187) #16
  br i1 %188, label %189, label %331

189:                                              ; preds = %185
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #16, !srcloc !11
  %190 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #16, !srcloc !24
  %191 = extractvalue { i32, i32, i32 } %190, 0
  %192 = icmp slt i32 %191, 2
  br i1 %192, label %193, label %331, !prof !9

193:                                              ; preds = %189
  call void @refcount_warn_saturate(ptr noundef %102, i32 noundef 4) #16
  br label %331

194:                                              ; preds = %143, %139, %134
  %195 = icmp ugt i32 %73, 27
  br i1 %195, label %196, label %516

196:                                              ; preds = %194
  %197 = load i32, ptr %45, align 8
  %198 = load i32, ptr %47, align 4
  %199 = sub i32 %197, %198
  %200 = icmp ult i32 %199, 20
  br i1 %200, label %201, label %207, !prof !9

201:                                              ; preds = %196
  %202 = icmp ult i32 %197, 20
  br i1 %202, label %516, label %203, !prof !9

203:                                              ; preds = %201
  %204 = sub nuw nsw i32 20, %199
  %205 = call ptr @__pskb_pull_tail(ptr noundef nonnull %38, i32 noundef %204) #16
  %206 = icmp eq ptr %205, null
  br i1 %206, label %516, label %207

207:                                              ; preds = %203, %196
  %208 = load ptr, ptr %58, align 8
  %209 = load i16, ptr %69, align 2
  %210 = zext i16 %209 to i32
  %211 = getelementptr i8, ptr %208, i32 %210
  %212 = getelementptr inbounds %struct.icmp6hdr, ptr %211, i32 0, i32 3
  %213 = load i16, ptr %212, align 4
  %214 = call i16 @llvm.bswap.i16(i16 %213) #16
  %215 = zext i16 %214 to i32
  %216 = icmp sgt i16 %214, -1
  br i1 %216, label %224, label %217

217:                                              ; preds = %207
  %218 = lshr i32 %215, 12
  %219 = and i32 %218, 7
  %220 = and i32 %215, 4095
  %221 = or i32 %220, 4096
  %222 = add nuw nsw i32 %219, 3
  %223 = shl i32 %221, %222
  br label %224

224:                                              ; preds = %217, %207
  %225 = phi i32 [ %223, %217 ], [ %215, %207 ]
  %226 = call i32 @__msecs_to_jiffies(i32 noundef %225) #16
  %227 = call i32 @llvm.umax.i32(i32 %226, i32 1) #16
  %228 = load i32, ptr @sysctl_mld_qrv, align 4
  %229 = call i32 @llvm.smin.i32(i32 %228, i32 2) #16
  %230 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 5
  %231 = load i8, ptr %230, align 4
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %234, !prof !9

233:                                              ; preds = %224
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1266, i32 noundef 9, ptr noundef null) #16
  br label %234

234:                                              ; preds = %233, %224
  %235 = getelementptr inbounds %struct.mld2_query, ptr %211, i32 0, i32 2
  %236 = load i8, ptr %235, align 4
  %237 = and i8 %236, 7
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %234
  %240 = load i8, ptr %230, align 4
  br label %242

241:                                              ; preds = %234
  store i8 %237, ptr %230, align 4
  br label %242

242:                                              ; preds = %241, %239
  %243 = phi i8 [ %240, %239 ], [ %237, %241 ]
  %244 = zext i8 %243 to i32
  %245 = icmp sgt i32 %229, %244
  br i1 %245, label %246, label %255, !prof !9

246:                                              ; preds = %242
  %247 = call i32 @net_ratelimit() #16
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %246
  %250 = load i8, ptr %230, align 4
  %251 = zext i8 %250 to i32
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %251, i32 noundef %229) #19
  br label %253

253:                                              ; preds = %249, %246
  %254 = trunc i32 %229 to i8
  store i8 %254, ptr %230, align 4
  br label %255

255:                                              ; preds = %253, %242
  %256 = getelementptr inbounds %struct.mld2_query, ptr %211, i32 0, i32 3
  %257 = load i8, ptr %256, align 1
  %258 = zext i8 %257 to i32
  %259 = icmp sgt i8 %257, -1
  br i1 %259, label %267, label %260

260:                                              ; preds = %255
  %261 = lshr i32 %258, 4
  %262 = and i32 %261, 7
  %263 = and i32 %258, 15
  %264 = or i32 %263, 16
  %265 = add nuw nsw i32 %262, 3
  %266 = shl i32 %264, %265
  br label %267

267:                                              ; preds = %260, %255
  %268 = phi i32 [ %266, %260 ], [ %258, %255 ]
  %269 = mul nsw i32 %268, 100
  %270 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 10
  store i32 %269, ptr %270, align 4
  %271 = load i16, ptr %212, align 4
  %272 = call i16 @llvm.bswap.i16(i16 %271) #16
  %273 = zext i16 %272 to i32
  %274 = icmp sgt i16 %272, -1
  br i1 %274, label %282, label %275

275:                                              ; preds = %267
  %276 = lshr i32 %273, 12
  %277 = and i32 %276, 7
  %278 = and i32 %273, 4095
  %279 = or i32 %278, 4096
  %280 = add nuw nsw i32 %277, 3
  %281 = shl i32 %279, %280
  br label %282

282:                                              ; preds = %275, %267
  %283 = phi i32 [ %281, %275 ], [ %273, %267 ]
  %284 = call i32 @__msecs_to_jiffies(i32 noundef %283) #16
  %285 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 11
  store i32 %284, ptr %285, align 4
  %286 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 12
  store i32 %227, ptr %286, align 4
  %287 = getelementptr inbounds %struct.mld2_query, ptr %211, i32 0, i32 4
  %288 = load i16, ptr %287, align 2
  %289 = icmp eq i16 %288, 0
  br i1 %121, label %290, label %310

290:                                              ; preds = %282
  br i1 %289, label %291, label %516

291:                                              ; preds = %290
  %292 = call i32 @prandom_u32() #16
  %293 = load i32, ptr %286, align 4
  %294 = urem i32 %292, %293
  %295 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 6
  store i8 1, ptr %295, align 1
  %296 = load ptr, ptr @mld_wq, align 4
  %297 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 13
  %298 = add i32 %294, 2
  %299 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %296, ptr noundef %297, i32 noundef %298) #16
  br i1 %299, label %516, label %300

300:                                              ; preds = %291
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #16, !srcloc !11
  %301 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #16, !srcloc !21
  %302 = extractvalue { i32, i32, i32 } %301, 0
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %308, label %304, !prof !9

304:                                              ; preds = %300
  %305 = add i32 %302, 1
  %306 = or i32 %305, %302
  %307 = icmp sgt i32 %306, -1
  br i1 %307, label %516, label %308, !prof !22

308:                                              ; preds = %304, %300
  %309 = phi i32 [ 2, %300 ], [ 1, %304 ]
  call void @refcount_warn_saturate(ptr noundef %102, i32 noundef %309) #16
  br label %516

310:                                              ; preds = %282
  br i1 %289, label %341, label %311

311:                                              ; preds = %310
  %312 = call i16 @llvm.bswap.i16(i16 %288) #16
  %313 = zext i16 %312 to i32
  %314 = shl nuw nsw i32 %313, 4
  %315 = add nuw nsw i32 %314, 20
  %316 = load i32, ptr %45, align 8
  %317 = load i32, ptr %47, align 4
  %318 = sub i32 %316, %317
  %319 = icmp ugt i32 %315, %318
  br i1 %319, label %320, label %326, !prof !9

320:                                              ; preds = %311
  %321 = icmp ult i32 %316, %315
  br i1 %321, label %516, label %322, !prof !9

322:                                              ; preds = %320
  %323 = sub i32 %315, %318
  %324 = call ptr @__pskb_pull_tail(ptr noundef nonnull %38, i32 noundef %323) #16
  %325 = icmp eq ptr %324, null
  br i1 %325, label %516, label %326

326:                                              ; preds = %322, %311
  %327 = load ptr, ptr %58, align 8
  %328 = load i16, ptr %69, align 2
  %329 = zext i16 %328 to i32
  %330 = getelementptr i8, ptr %327, i32 %329
  br label %341

331:                                              ; preds = %193, %189, %185
  call fastcc void @mld_clear_delrec(ptr noundef nonnull %99) #16
  br i1 %121, label %332, label %341

332:                                              ; preds = %331
  %333 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 3
  %334 = load ptr, ptr %333, align 4
  %335 = icmp eq ptr %334, null
  br i1 %335, label %516, label %336

336:                                              ; preds = %336, %332
  %337 = phi ptr [ %339, %336 ], [ %334, %332 ]
  call fastcc void @igmp6_group_queried(ptr noundef nonnull %337, i32 noundef %162) #16
  %338 = getelementptr inbounds %struct.ifmcaddr6, ptr %337, i32 0, i32 2
  %339 = load ptr, ptr %338, align 4
  %340 = icmp eq ptr %339, null
  br i1 %340, label %516, label %336

341:                                              ; preds = %331, %326, %310
  %342 = phi i32 [ %162, %331 ], [ %227, %310 ], [ %227, %326 ]
  %343 = phi ptr [ null, %331 ], [ %211, %310 ], [ %330, %326 ]
  %344 = phi i1 [ true, %331 ], [ true, %310 ], [ false, %326 ]
  %345 = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 3
  %346 = load ptr, ptr %345, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %516, label %348

348:                                              ; preds = %341
  %349 = load i32, ptr %118, align 4
  %350 = getelementptr [4 x i32], ptr %118, i32 0, i32 1
  %351 = load i32, ptr %350, align 4
  %352 = getelementptr [4 x i32], ptr %118, i32 0, i32 2
  %353 = load i32, ptr %352, align 4
  %354 = getelementptr [4 x i32], ptr %118, i32 0, i32 3
  %355 = load i32, ptr %354, align 4
  br label %356

356:                                              ; preds = %512, %348
  %357 = phi ptr [ %346, %348 ], [ %514, %512 ]
  %358 = load i32, ptr %357, align 4
  %359 = xor i32 %358, %349
  %360 = getelementptr [4 x i32], ptr %357, i32 0, i32 1
  %361 = load i32, ptr %360, align 4
  %362 = xor i32 %361, %351
  %363 = or i32 %362, %359
  %364 = getelementptr [4 x i32], ptr %357, i32 0, i32 2
  %365 = load i32, ptr %364, align 4
  %366 = xor i32 %365, %353
  %367 = or i32 %363, %366
  %368 = getelementptr [4 x i32], ptr %357, i32 0, i32 3
  %369 = load i32, ptr %368, align 4
  %370 = xor i32 %369, %355
  %371 = or i32 %367, %370
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %512

373:                                              ; preds = %356
  %374 = getelementptr inbounds %struct.ifmcaddr6, ptr %357, i32 0, i32 9
  %375 = load i32, ptr %374, align 4
  %376 = and i32 %375, 1
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %381, label %378

378:                                              ; preds = %373
  br i1 %344, label %379, label %388

379:                                              ; preds = %378
  %380 = and i32 %375, -17
  br label %386

381:                                              ; preds = %373
  br i1 %344, label %384, label %382

382:                                              ; preds = %381
  %383 = or i32 %375, 16
  br label %386

384:                                              ; preds = %381
  %385 = and i32 %375, -17
  br label %386

386:                                              ; preds = %384, %382, %379
  %387 = phi i32 [ %383, %382 ], [ %385, %384 ], [ %380, %379 ]
  store i32 %387, ptr %374, align 4
  br label %388

388:                                              ; preds = %386, %378
  %389 = phi i32 [ %375, %378 ], [ %387, %386 ]
  %390 = and i32 %389, 16
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %511, label %392

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.mld2_query, ptr %343, i32 0, i32 4
  %394 = load i16, ptr %393, align 2
  %395 = call i16 @llvm.bswap.i16(i16 %394) #16
  %396 = zext i16 %395 to i32
  %397 = getelementptr inbounds %struct.mld2_query, ptr %343, i32 0, i32 5
  %398 = getelementptr inbounds %struct.ifmcaddr6, ptr %357, i32 0, i32 5
  %399 = load i32, ptr %398, align 4
  %400 = icmp eq i32 %399, 0
  %401 = getelementptr inbounds %struct.ifmcaddr6, ptr %357, i32 0, i32 3
  %402 = load ptr, ptr %401, align 4
  %403 = icmp eq ptr %402, null
  %404 = icmp eq i16 %394, 0
  %405 = or i1 %404, %403
  br i1 %400, label %406, label %458

406:                                              ; preds = %392
  br i1 %405, label %508, label %407

407:                                              ; preds = %406
  %408 = getelementptr inbounds %struct.ifmcaddr6, ptr %357, i32 0, i32 7
  br label %409

409:                                              ; preds = %452, %407
  %410 = phi ptr [ %402, %407 ], [ %454, %452 ]
  %411 = phi i32 [ 0, %407 ], [ %453, %452 ]
  %412 = getelementptr %struct.ip6_sf_list, ptr %410, i32 0, i32 2, i32 1
  %413 = load i32, ptr %412, align 4
  %414 = icmp eq i32 %413, 0
  %415 = getelementptr inbounds %struct.ip6_sf_list, ptr %410, i32 0, i32 1
  %416 = getelementptr %struct.ip6_sf_list, ptr %410, i32 0, i32 1, i32 0, i32 0, i32 1
  %417 = getelementptr %struct.ip6_sf_list, ptr %410, i32 0, i32 1, i32 0, i32 0, i32 2
  %418 = getelementptr %struct.ip6_sf_list, ptr %410, i32 0, i32 1, i32 0, i32 0, i32 3
  br i1 %414, label %419, label %452

419:                                              ; preds = %409
  %420 = getelementptr inbounds %struct.ip6_sf_list, ptr %410, i32 0, i32 2
  %421 = load i32, ptr %408, align 4
  %422 = load i32, ptr %420, align 4
  %423 = icmp eq i32 %421, %422
  br i1 %423, label %424, label %452

424:                                              ; preds = %419
  %425 = load i32, ptr %415, align 4
  %426 = load i32, ptr %416, align 4
  %427 = load i32, ptr %417, align 4
  %428 = load i32, ptr %418, align 4
  br label %432

429:                                              ; preds = %432
  %430 = add nuw nsw i32 %433, 1
  %431 = icmp eq i32 %430, %396
  br i1 %431, label %452, label %432

432:                                              ; preds = %429, %424
  %433 = phi i32 [ 0, %424 ], [ %430, %429 ]
  %434 = getelementptr %struct.in6_addr, ptr %397, i32 %433
  %435 = load i32, ptr %434, align 4
  %436 = xor i32 %435, %425
  %437 = getelementptr [4 x i32], ptr %434, i32 0, i32 1
  %438 = load i32, ptr %437, align 4
  %439 = xor i32 %438, %426
  %440 = or i32 %439, %436
  %441 = getelementptr [4 x i32], ptr %434, i32 0, i32 2
  %442 = load i32, ptr %441, align 4
  %443 = xor i32 %442, %427
  %444 = or i32 %440, %443
  %445 = getelementptr [4 x i32], ptr %434, i32 0, i32 3
  %446 = load i32, ptr %445, align 4
  %447 = xor i32 %446, %428
  %448 = or i32 %444, %447
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %429

450:                                              ; preds = %432
  %451 = add i32 %411, 1
  br label %452

452:                                              ; preds = %450, %429, %419, %409
  %453 = phi i32 [ %451, %450 ], [ %411, %409 ], [ %411, %419 ], [ %411, %429 ]
  %454 = load ptr, ptr %410, align 4
  %455 = icmp eq ptr %454, null
  %456 = icmp eq i32 %453, %396
  %457 = select i1 %455, i1 true, i1 %456
  br i1 %457, label %508, label %409

458:                                              ; preds = %392
  br i1 %405, label %503, label %459

459:                                              ; preds = %494, %458
  %460 = phi ptr [ %496, %494 ], [ %402, %458 ]
  %461 = phi i32 [ %495, %494 ], [ 0, %458 ]
  %462 = getelementptr inbounds %struct.ip6_sf_list, ptr %460, i32 0, i32 1
  %463 = load i32, ptr %462, align 4
  %464 = getelementptr %struct.ip6_sf_list, ptr %460, i32 0, i32 1, i32 0, i32 0, i32 1
  %465 = load i32, ptr %464, align 4
  %466 = getelementptr %struct.ip6_sf_list, ptr %460, i32 0, i32 1, i32 0, i32 0, i32 2
  %467 = load i32, ptr %466, align 4
  %468 = getelementptr %struct.ip6_sf_list, ptr %460, i32 0, i32 1, i32 0, i32 0, i32 3
  %469 = load i32, ptr %468, align 4
  br label %473

470:                                              ; preds = %473
  %471 = add nuw nsw i32 %474, 1
  %472 = icmp eq i32 %471, %396
  br i1 %472, label %494, label %473

473:                                              ; preds = %470, %459
  %474 = phi i32 [ 0, %459 ], [ %471, %470 ]
  %475 = getelementptr %struct.in6_addr, ptr %397, i32 %474
  %476 = load i32, ptr %475, align 4
  %477 = xor i32 %476, %463
  %478 = getelementptr [4 x i32], ptr %475, i32 0, i32 1
  %479 = load i32, ptr %478, align 4
  %480 = xor i32 %479, %465
  %481 = or i32 %480, %477
  %482 = getelementptr [4 x i32], ptr %475, i32 0, i32 2
  %483 = load i32, ptr %482, align 4
  %484 = xor i32 %483, %467
  %485 = or i32 %481, %484
  %486 = getelementptr [4 x i32], ptr %475, i32 0, i32 3
  %487 = load i32, ptr %486, align 4
  %488 = xor i32 %487, %469
  %489 = or i32 %485, %488
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %470

491:                                              ; preds = %473
  %492 = getelementptr inbounds %struct.ip6_sf_list, ptr %460, i32 0, i32 3
  store i8 1, ptr %492, align 4
  %493 = add i32 %461, 1
  br label %494

494:                                              ; preds = %491, %470
  %495 = phi i32 [ %493, %491 ], [ %461, %470 ]
  %496 = load ptr, ptr %460, align 4
  %497 = icmp eq ptr %496, null
  %498 = icmp eq i32 %495, %396
  %499 = select i1 %497, i1 true, i1 %498
  br i1 %499, label %500, label %459

500:                                              ; preds = %494
  %501 = icmp eq i32 %495, 0
  %502 = load i32, ptr %374, align 4
  br i1 %501, label %503, label %506

503:                                              ; preds = %500, %458
  %504 = phi i32 [ %389, %458 ], [ %502, %500 ]
  %505 = and i32 %504, -17
  store i32 %505, ptr %374, align 4
  br label %516

506:                                              ; preds = %500
  %507 = or i32 %502, 16
  store i32 %507, ptr %374, align 4
  br label %511

508:                                              ; preds = %452, %406
  %509 = phi i1 [ %404, %406 ], [ %456, %452 ]
  %510 = and i32 %389, -17
  store i32 %510, ptr %374, align 4
  br i1 %509, label %516, label %511

511:                                              ; preds = %508, %506, %388
  call fastcc void @igmp6_group_queried(ptr noundef nonnull %357, i32 noundef %342) #16
  br label %516

512:                                              ; preds = %356
  %513 = getelementptr inbounds %struct.ifmcaddr6, ptr %357, i32 0, i32 2
  %514 = load ptr, ptr %513, align 4
  %515 = icmp eq ptr %514, null
  br i1 %515, label %516, label %356

516:                                              ; preds = %512, %511, %508, %503, %341, %336, %332, %322, %320, %308, %304, %291, %290, %203, %201, %194, %147, %127, %122
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #16, !srcloc !11
  %517 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #16, !srcloc !24
  %518 = extractvalue { i32, i32, i32 } %517, 0
  %519 = icmp eq i32 %518, 1
  br i1 %519, label %523, label %520

520:                                              ; preds = %516
  %521 = icmp sgt i32 %518, 0
  br i1 %521, label %524, label %522, !prof !22

522:                                              ; preds = %520
  call void @refcount_warn_saturate(ptr noundef %102, i32 noundef 3) #16
  br label %524

523:                                              ; preds = %516
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  call void @in6_dev_finish_destroy(ptr noundef %99) #16
  br label %524

524:                                              ; preds = %523, %522, %520, %112, %91, %86, %78, %57, %53, %51
  call void @consume_skb(ptr noundef %38) #16
  %525 = load ptr, ptr %2, align 4
  %526 = icmp eq ptr %525, %2
  %527 = icmp eq ptr %525, null
  %528 = or i1 %526, %527
  br i1 %528, label %529, label %37

529:                                              ; preds = %524, %31
  call void @mutex_unlock(ptr noundef %32) #16
  br i1 %15, label %530, label %539

530:                                              ; preds = %529
  %531 = getelementptr i8, ptr %0, i32 156
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %531) #16, !srcloc !11
  %532 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %531, ptr %531, i32 1, ptr elementtype(i32) %531) #16, !srcloc !24
  %533 = extractvalue { i32, i32, i32 } %532, 0
  %534 = icmp eq i32 %533, 1
  br i1 %534, label %538, label %535

535:                                              ; preds = %530
  %536 = icmp sgt i32 %533, 0
  br i1 %536, label %539, label %537, !prof !22

537:                                              ; preds = %535
  call void @refcount_warn_saturate(ptr noundef %531, i32 noundef 3) #16
  br label %539

538:                                              ; preds = %530
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  call void @in6_dev_finish_destroy(ptr noundef %3) #16
  br label %539

539:                                              ; preds = %538, %537, %535, %529
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mld_report_work(ptr noundef %0) #0 {
  %2 = alloca %struct.sk_buff_head, align 4
  %3 = getelementptr i8, ptr %0, i32 -216
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %4 = getelementptr inbounds i8, ptr %2, i32 12
  store i32 0, ptr %4, align 4
  store ptr %2, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.66, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 80
  call void @_raw_spin_lock_bh(ptr noundef %7) #16
  %8 = getelementptr i8, ptr %0, i32 60
  %9 = getelementptr i8, ptr %0, i32 68
  br label %10

10:                                               ; preds = %16, %1
  %11 = phi i32 [ 0, %1 ], [ %26, %16 ]
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, %8
  %14 = icmp eq ptr %12, null
  %15 = or i1 %13, %14
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %9, align 4
  %18 = add i32 %17, -1
  store volatile i32 %18, ptr %9, align 4
  %19 = load ptr, ptr %12, align 8
  %20 = getelementptr inbounds %struct.anon.43, ptr %12, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr null, ptr %20, align 4
  store ptr null, ptr %12, align 8
  %22 = getelementptr inbounds %struct.anon.43, ptr %19, i32 0, i32 1
  store volatile ptr %21, ptr %22, align 4
  store volatile ptr %19, ptr %21, align 8
  %23 = load ptr, ptr %5, align 4
  store volatile ptr %2, ptr %12, align 8
  store volatile ptr %23, ptr %20, align 4
  store volatile ptr %12, ptr %5, align 4
  store volatile ptr %12, ptr %23, align 4
  %24 = load i32, ptr %6, align 4
  %25 = add i32 %24, 1
  store volatile i32 %25, ptr %6, align 4
  %26 = add nuw nsw i32 %11, 1
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %10

28:                                               ; preds = %16
  %29 = load ptr, ptr @system_wq, align 4
  %30 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %0, i32 noundef 0) #16
  br label %31

31:                                               ; preds = %28, %10
  call void @_raw_spin_unlock_bh(ptr noundef %7) #16
  %32 = getelementptr i8, ptr %0, i32 84
  call void @mutex_lock(ptr noundef %32) #16
  %33 = load ptr, ptr %2, align 4
  %34 = icmp eq ptr %33, %2
  %35 = icmp eq ptr %33, null
  %36 = or i1 %34, %35
  br i1 %36, label %159, label %37

37:                                               ; preds = %154, %31
  %38 = phi ptr [ %155, %154 ], [ %33, %31 ]
  %39 = load i32, ptr %6, align 4
  %40 = add i32 %39, -1
  store volatile i32 %40, ptr %6, align 4
  %41 = load ptr, ptr %38, align 8
  %42 = getelementptr inbounds %struct.anon.43, ptr %38, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  store ptr null, ptr %42, align 4
  store ptr null, ptr %38, align 8
  %44 = getelementptr inbounds %struct.anon.43, ptr %41, i32 0, i32 1
  store volatile ptr %43, ptr %44, align 4
  store volatile ptr %41, ptr %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 13
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, 7
  %48 = add nsw i16 %47, -1
  %49 = icmp ult i16 %48, 2
  br i1 %49, label %50, label %154

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 5
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %52, %54
  %56 = icmp ult i32 %55, 16
  br i1 %56, label %57, label %63, !prof !9

57:                                               ; preds = %50
  %58 = icmp ult i32 %52, 16
  br i1 %58, label %154, label %59, !prof !9

59:                                               ; preds = %57
  %60 = sub nuw nsw i32 16, %55
  %61 = call ptr @__pskb_pull_tail(ptr noundef nonnull %38, i32 noundef %60) #16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %154, label %63

63:                                               ; preds = %59, %50
  %64 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 16
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 13, i32 0, i32 17
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %65, i32 %68
  %70 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 13, i32 0, i32 18
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = getelementptr i8, ptr %65, i32 %72
  %74 = getelementptr inbounds %struct.ipv6hdr, ptr %73, i32 0, i32 5
  %75 = call i32 @__ipv6_addr_type(ptr noundef %74) #16
  %76 = and i32 %75, 65535
  %77 = icmp ne i32 %76, 0
  %78 = and i32 %75, 32
  %79 = icmp eq i32 %78, 0
  %80 = and i1 %77, %79
  br i1 %80, label %154, label %81

81:                                               ; preds = %63
  %82 = getelementptr inbounds %struct.anon.43, ptr %38, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %84 = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 69
  %85 = load volatile ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.inet6_dev, ptr %85, i32 0, i32 25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #16, !srcloc !11
  %89 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 1, ptr elementtype(i32) %88) #16, !srcloc !21
  %90 = extractvalue { i32, i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92, !prof !9

92:                                               ; preds = %87
  %93 = add i32 %90, 1
  %94 = or i32 %93, %90
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %99, label %96, !prof !22

96:                                               ; preds = %92, %87
  %97 = phi i32 [ 2, %87 ], [ 1, %92 ]
  call void @refcount_warn_saturate(ptr noundef %88, i32 noundef %97) #16
  br label %99

98:                                               ; preds = %81
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %154

99:                                               ; preds = %96, %92
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %100 = getelementptr inbounds %struct.inet6_dev, ptr %85, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %146, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.mld_msg, ptr %69, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr [4 x i32], ptr %104, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr [4 x i32], ptr %104, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr [4 x i32], ptr %104, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %142, %103
  %113 = phi ptr [ %101, %103 ], [ %144, %142 ]
  %114 = load i32, ptr %113, align 4
  %115 = xor i32 %114, %105
  %116 = getelementptr [4 x i32], ptr %113, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = xor i32 %117, %107
  %119 = or i32 %118, %115
  %120 = getelementptr [4 x i32], ptr %113, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = xor i32 %121, %109
  %123 = or i32 %119, %122
  %124 = getelementptr [4 x i32], ptr %113, i32 0, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = xor i32 %125, %111
  %127 = or i32 %123, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %112
  %130 = getelementptr inbounds %struct.ifmcaddr6, ptr %113, i32 0, i32 8
  %131 = call zeroext i1 @cancel_delayed_work(ptr noundef %130) #16
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.ifmcaddr6, ptr %113, i32 0, i32 11
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #16, !srcloc !11
  %134 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 1, ptr elementtype(i32) %133) #16, !srcloc !24
  %135 = extractvalue { i32, i32, i32 } %134, 0
  %136 = icmp slt i32 %135, 2
  br i1 %136, label %137, label %138, !prof !9

137:                                              ; preds = %132
  call void @refcount_warn_saturate(ptr noundef %133, i32 noundef 4) #16
  br label %138

138:                                              ; preds = %137, %132, %129
  %139 = getelementptr inbounds %struct.ifmcaddr6, ptr %113, i32 0, i32 9
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, -4
  store i32 %141, ptr %139, align 4
  br label %146

142:                                              ; preds = %112
  %143 = getelementptr inbounds %struct.ifmcaddr6, ptr %113, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %112

146:                                              ; preds = %142, %138, %99
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #16, !srcloc !11
  %147 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 1, ptr elementtype(i32) %88) #16, !srcloc !24
  %148 = extractvalue { i32, i32, i32 } %147, 0
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = icmp sgt i32 %148, 0
  br i1 %151, label %154, label %152, !prof !22

152:                                              ; preds = %150
  call void @refcount_warn_saturate(ptr noundef %88, i32 noundef 3) #16
  br label %154

153:                                              ; preds = %146
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  call void @in6_dev_finish_destroy(ptr noundef nonnull %85) #16
  br label %154

154:                                              ; preds = %153, %152, %150, %98, %63, %59, %57, %37
  call void @consume_skb(ptr noundef %38) #16
  %155 = load ptr, ptr %2, align 4
  %156 = icmp eq ptr %155, %2
  %157 = icmp eq ptr %155, null
  %158 = or i1 %156, %157
  br i1 %158, label %159, label %37

159:                                              ; preds = %154, %31
  call void @mutex_unlock(ptr noundef %32) #16
  br i1 %15, label %160, label %169

160:                                              ; preds = %159
  %161 = getelementptr i8, ptr %0, i32 112
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %161) #16, !srcloc !11
  %162 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %161, ptr %161, i32 1, ptr elementtype(i32) %161) #16, !srcloc !24
  %163 = extractvalue { i32, i32, i32 } %162, 0
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = icmp sgt i32 %163, 0
  br i1 %166, label %169, label %167, !prof !22

167:                                              ; preds = %165
  call void @refcount_warn_saturate(ptr noundef %161, i32 noundef 3) #16
  br label %169

168:                                              ; preds = %160
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  call void @in6_dev_finish_destroy(ptr noundef %3) #16
  br label %169

169:                                              ; preds = %168, %167, %165, %159
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_mc_destroy_dev(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ipv6_mc_down(ptr noundef %0)
  %2 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %2) #16
  tail call fastcc void @mld_clear_delrec(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #16
  %4 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = icmp eq ptr %5, null
  %8 = or i1 %6, %7
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 18, i32 1
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %5, %9 ], [ %19, %11 ]
  %13 = load i32, ptr %10, align 4
  %14 = add i32 %13, -1
  store volatile i32 %14, ptr %10, align 4
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr inbounds %struct.anon.43, ptr %12, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr null, ptr %16, align 4
  store ptr null, ptr %12, align 8
  %18 = getelementptr inbounds %struct.anon.43, ptr %15, i32 0, i32 1
  store volatile ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #16
  %19 = load ptr, ptr %4, align 4
  %20 = icmp eq ptr %19, %4
  %21 = icmp eq ptr %19, null
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %11

23:                                               ; preds = %11, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #16
  %24 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  %28 = icmp eq ptr %26, null
  %29 = or i1 %27, %28
  br i1 %29, label %44, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 19, i32 1
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi ptr [ %26, %30 ], [ %40, %32 ]
  %34 = load i32, ptr %31, align 4
  %35 = add i32 %34, -1
  store volatile i32 %35, ptr %31, align 4
  %36 = load ptr, ptr %33, align 8
  %37 = getelementptr inbounds %struct.anon.43, ptr %33, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  store ptr null, ptr %37, align 4
  store ptr null, ptr %33, align 8
  %39 = getelementptr inbounds %struct.anon.43, ptr %36, i32 0, i32 1
  store volatile ptr %38, ptr %39, align 4
  store volatile ptr %36, ptr %38, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %33, i32 noundef 0) #16
  %40 = load ptr, ptr %25, align 4
  %41 = icmp eq ptr %40, %25
  %42 = icmp eq ptr %40, null
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %32

44:                                               ; preds = %32, %23
  tail call void @_raw_spin_unlock_bh(ptr noundef %24) #16
  %45 = tail call i32 @__ipv6_dev_mc_dec(ptr noundef %0, ptr noundef nonnull @in6addr_linklocal_allnodes)
  %46 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call i32 @__ipv6_dev_mc_dec(ptr noundef %0, ptr noundef nonnull @in6addr_linklocal_allrouters)
  br label %51

51:                                               ; preds = %49, %44
  tail call void @mutex_lock(ptr noundef %2) #16
  %52 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %82, label %55

55:                                               ; preds = %76, %51
  %56 = phi ptr [ %80, %76 ], [ %53, %51 ]
  %57 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !37
  store volatile ptr %58, ptr %52, align 4
  %59 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %62, %55
  %63 = phi ptr [ %64, %62 ], [ %60, %55 ]
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ip6_sf_list, ptr %63, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %65, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  %66 = icmp eq ptr %64, null
  br i1 %66, label %67, label %62

67:                                               ; preds = %62, %55
  store volatile ptr null, ptr %59, align 4
  %68 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %71, %67
  %72 = phi ptr [ %73, %71 ], [ %69, %67 ]
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ip6_sf_list, ptr %72, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %74, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %71

76:                                               ; preds = %71, %67
  store volatile ptr null, ptr %68, align 4
  %77 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 5
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.ifmcaddr6, ptr %56, i32 0, i32 7
  %79 = getelementptr %struct.ifmcaddr6, ptr %56, i32 0, i32 7, i32 1
  store i32 0, ptr %79, align 4
  store i32 1, ptr %78, align 4
  tail call fastcc void @ma_put(ptr noundef nonnull %56)
  %80 = load ptr, ptr %52, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %55

82:                                               ; preds = %76, %51
  tail call void @mutex_unlock(ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mld_clear_delrec(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  store volatile ptr null, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %40, %1
  %6 = phi ptr [ %8, %40 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ifmcaddr6, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ifmcaddr6, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %12, %5
  %13 = phi ptr [ %14, %12 ], [ %10, %5 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ip6_sf_list, ptr %13, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %15, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %12

17:                                               ; preds = %12, %5
  store volatile ptr null, ptr %9, align 4
  %18 = getelementptr inbounds %struct.ifmcaddr6, ptr %6, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %23, %21 ], [ %19, %17 ]
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ip6_sf_list, ptr %22, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %24, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %21

26:                                               ; preds = %21, %17
  store volatile ptr null, ptr %18, align 4
  %27 = getelementptr inbounds %struct.ifmcaddr6, ptr %6, i32 0, i32 5
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ifmcaddr6, ptr %6, i32 0, i32 7
  %29 = getelementptr %struct.ifmcaddr6, ptr %6, i32 0, i32 7, i32 1
  store i32 0, ptr %29, align 4
  store i32 1, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ifmcaddr6, ptr %6, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.inet6_dev, ptr %31, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #16, !srcloc !11
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #16, !srcloc !24
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %40, label %38, !prof !22

38:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef %32, i32 noundef 3) #16
  br label %40

39:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void @in6_dev_finish_destroy(ptr noundef %31) #16
  br label %40

40:                                               ; preds = %39, %38, %36
  %41 = getelementptr inbounds %struct.ifmcaddr6, ptr %6, i32 0, i32 14
  tail call void @kvfree_call_rcu(ptr noundef %41, ptr noundef nonnull inttoptr (i32 112 to ptr)) #16
  %42 = icmp eq ptr %8, null
  br i1 %42, label %43, label %5

43:                                               ; preds = %40, %1
  %44 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %57, %43
  %48 = phi ptr [ %59, %57 ], [ %45, %43 ]
  %49 = getelementptr inbounds %struct.ifmcaddr6, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  store volatile ptr null, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %52, %47
  %53 = phi ptr [ %54, %52 ], [ %50, %47 ]
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ip6_sf_list, ptr %53, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %55, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %52

57:                                               ; preds = %52, %47
  %58 = getelementptr inbounds %struct.ifmcaddr6, ptr %48, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %47

61:                                               ; preds = %57, %43
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @igmp6_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @igmp6_net_ops) #16
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.4) #16
  store ptr %4, ptr @mld_wq, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @igmp6_net_ops) #16
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ -12, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @igmp6_late_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @igmp6_netdev_notifier) #16
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igmp6_cleanup() local_unnamed_addr #0 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @igmp6_net_ops) #16
  %1 = load ptr, ptr @mld_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igmp6_late_cleanup() local_unnamed_addr #0 {
  %1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @igmp6_netdev_notifier) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @in6_dev_finish_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mld_mca_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %8 = getelementptr inbounds %struct.ipv6_devconf, ptr %7, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 11
  %12 = select i1 %10, ptr %11, ptr %8
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %14 [
    i32 2, label %24
    i32 1, label %22
  ]

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = sub i32 %19, %16
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %1
  %23 = load ptr, ptr %6, align 4
  tail call fastcc void @igmp6_send(ptr noundef %2, ptr noundef %23, i32 noundef 131)
  br label %58

24:                                               ; preds = %18, %14, %1
  %25 = icmp eq ptr %2, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %43, %26
  %31 = phi ptr [ %46, %43 ], [ %28, %26 ]
  %32 = phi ptr [ %44, %43 ], [ null, %26 ]
  %33 = getelementptr inbounds %struct.ifmcaddr6, ptr %31, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ifmcaddr6, ptr %31, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 1, i32 2
  %42 = tail call fastcc ptr @add_grec(ptr noundef %32, ptr noundef nonnull %31, i32 noundef %41, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %43

43:                                               ; preds = %37, %30
  %44 = phi ptr [ %32, %30 ], [ %42, %37 ]
  %45 = getelementptr inbounds %struct.ifmcaddr6, ptr %31, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %30

48:                                               ; preds = %24
  %49 = getelementptr i8, ptr %0, i32 -8
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 1, i32 2
  %53 = tail call fastcc ptr @add_grec(ptr noundef null, ptr noundef nonnull %2, i32 noundef %52, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi ptr [ %53, %48 ], [ %44, %43 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call fastcc void @mld_sendpack(ptr noundef nonnull %55) #16
  br label %58

58:                                               ; preds = %57, %54, %26, %22
  %59 = getelementptr i8, ptr %0, i32 44
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, -4
  %62 = or i32 %61, 2
  store i32 %62, ptr %59, align 4
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr inbounds %struct.inet6_dev, ptr %63, i32 0, i32 22
  tail call void @mutex_unlock(ptr noundef %64) #16
  tail call fastcc void @ma_put(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @mld_in_v1_mode(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %3 = getelementptr inbounds %struct.ipv6_devconf, ptr %2, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 11
  %7 = select i1 %5, ptr %6, ptr %3
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %9 [
    i32 2, label %19
    i32 1, label %18
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %14, %11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %9
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %17, %13, %1
  %20 = phi i1 [ false, %17 ], [ false, %1 ], [ true, %13 ], [ true, %18 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @igmp6_send(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.flowi6, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 27), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !28
  %8 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %12 = load i16, ptr %11, align 8
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %13, %10
  %15 = and i32 %14, 131056
  %16 = add nuw nsw i32 %15, 16
  %17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 22
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i32 88, i1 false), !annotation !28
  %20 = icmp eq i32 %2, 132
  %21 = select i1 %20, ptr @in6addr_linklocal_allrouters, ptr %0
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %22 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 69
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25, !prof !9

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.inet6_dev, ptr %23, i32 0, i32 33, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !38
  %29 = getelementptr i64, ptr %27, i32 5
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #11, !srcloc !39
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, ptr %35, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #16, !srcloc !40
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !38
  %39 = getelementptr i64, ptr %27, i32 6
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #11, !srcloc !39
  %44 = add i32 %43, %40
  %45 = inttoptr i32 %44 to ptr
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 72
  store i64 %47, ptr %45, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #16, !srcloc !40
  br label %48

48:                                               ; preds = %25, %3
  %49 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !38
  %51 = getelementptr i64, ptr %49, i32 5
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %54 = inttoptr i32 %53 to ptr
  %55 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %54) #11, !srcloc !39
  %56 = add i32 %55, %52
  %57 = inttoptr i32 %56 to ptr
  %58 = load i64, ptr %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, ptr %57, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #16, !srcloc !40
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !38
  %61 = getelementptr i64, ptr %49, i32 6
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %64 = inttoptr i32 %63 to ptr
  %65 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %64) #11, !srcloc !39
  %66 = add i32 %65, %62
  %67 = inttoptr i32 %66 to ptr
  %68 = load i64, ptr %67, align 8
  %69 = add i64 %68, 72
  store i64 %69, ptr %67, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %60) #16, !srcloc !40
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %70 = add nuw nsw i32 %19, 72
  %71 = add nuw nsw i32 %70, %16
  %72 = call ptr @sock_alloc_send_skb(ptr noundef %7, i32 noundef %71, i32 noundef 1, ptr noundef nonnull %5) #16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %117

74:                                               ; preds = %48
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %75 = load volatile ptr, ptr %22, align 4
  %76 = icmp eq ptr %75, null
  %77 = tail call ptr @llvm.thread.pointer() #16
  br i1 %76, label %98, label %78, !prof !9

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %80 = load volatile i32, ptr %79, align 4
  %81 = add i32 %80, 512
  store volatile i32 %81, ptr %79, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  %82 = getelementptr inbounds %struct.inet6_dev, ptr %75, i32 0, i32 33, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = call i32 @llvm.read_register.i32(metadata !0) #16
  %86 = inttoptr i32 %85 to ptr
  %87 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %86) #11, !srcloc !39
  %88 = add i32 %87, %84
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr inbounds %struct.ipstats_mib, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !42
  %93 = getelementptr [37 x i64], ptr %89, i32 0, i32 14
  %94 = load i64, ptr %93, align 8
  %95 = add i64 %94, 1
  store i64 %95, ptr %93, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !43
  %96 = load i32, ptr %90, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %90, align 4
  call fastcc void @local_bh_enable()
  br label %98

98:                                               ; preds = %78, %74
  %99 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %100 = load volatile i32, ptr %99, align 4
  %101 = add i32 %100, 512
  store volatile i32 %101, ptr %99, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  %102 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %103 = ptrtoint ptr %102 to i32
  %104 = call i32 @llvm.read_register.i32(metadata !0) #16
  %105 = inttoptr i32 %104 to ptr
  %106 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %105) #11, !srcloc !39
  %107 = add i32 %106, %103
  %108 = inttoptr i32 %107 to ptr
  %109 = getelementptr inbounds %struct.ipstats_mib, ptr %108, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !42
  %112 = getelementptr [37 x i64], ptr %108, i32 0, i32 14
  %113 = load i64, ptr %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, ptr %112, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !43
  %115 = load i32, ptr %109, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %109, align 4
  call fastcc void @local_bh_enable()
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %289

117:                                              ; preds = %48
  %118 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 13, i32 0, i32 5
  store i32 7, ptr %118, align 8
  %119 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 17
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 %16
  store ptr %121, ptr %119, align 4
  %122 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 14
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr i8, ptr %123, i32 %16
  store ptr %124, ptr %122, align 8
  %125 = call i32 @ipv6_get_lladdr(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 64) #16
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, ptr %4, ptr @in6addr_any
  %128 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %128, align 8
  %129 = getelementptr inbounds %struct.anon.43, ptr %72, i32 0, i32 2
  store ptr %1, ptr %129, align 8
  %130 = load ptr, ptr %119, align 4
  %131 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 16
  %132 = load ptr, ptr %131, align 8
  %133 = ptrtoint ptr %130 to i32
  %134 = ptrtoint ptr %132 to i32
  %135 = sub i32 %133, %134
  %136 = trunc i32 %135 to i16
  %137 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 13, i32 0, i32 18
  store i16 %136, ptr %137, align 4
  %138 = call ptr @skb_put(ptr noundef nonnull %72, i32 noundef 40) #16
  %139 = load ptr, ptr %131, align 8
  %140 = load i16, ptr %137, align 4
  %141 = zext i16 %140 to i32
  %142 = getelementptr i8, ptr %139, i32 %141
  store i32 96, ptr %142, align 4
  %143 = getelementptr inbounds %struct.ipv6hdr, ptr %142, i32 0, i32 2
  store i16 8192, ptr %143, align 4
  %144 = getelementptr inbounds %struct.ipv6hdr, ptr %142, i32 0, i32 3
  store i8 0, ptr %144, align 2
  %145 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %146 = load volatile i8, ptr %145, align 2
  %147 = zext i8 %146 to i32
  %148 = shl nuw i32 1, %147
  %149 = and i32 %148, -4161
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %117
  %152 = getelementptr inbounds %struct.inet_sock, ptr %7, i32 0, i32 1
  %153 = load ptr, ptr %152, align 8
  br label %154

154:                                              ; preds = %151, %117
  %155 = phi ptr [ %153, %151 ], [ null, %117 ]
  %156 = getelementptr inbounds %struct.ipv6_pinfo, ptr %155, i32 0, i32 5
  %157 = load i32, ptr %156, align 4
  %158 = lshr i32 %157, 7
  %159 = trunc i32 %158 to i8
  %160 = getelementptr inbounds %struct.ipv6hdr, ptr %142, i32 0, i32 4
  store i8 %159, ptr %160, align 1
  %161 = getelementptr inbounds %struct.ipv6hdr, ptr %142, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %161, ptr noundef nonnull align 4 dereferenceable(16) %127, i32 16, i1 false) #16
  %162 = getelementptr inbounds %struct.ipv6hdr, ptr %142, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %162, ptr noundef align 4 dereferenceable(16) %21, i32 16, i1 false) #16
  %163 = call ptr @skb_put(ptr noundef nonnull %72, i32 noundef 8) #16
  store i64 281475010592826, ptr %163, align 1
  %164 = call ptr @skb_put(ptr noundef nonnull %72, i32 noundef 24) #16
  %165 = getelementptr inbounds i8, ptr %164, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %165, i8 0, i32 23, i1 false) #16
  %166 = trunc i32 %2 to i8
  store i8 %166, ptr %164, align 4
  %167 = getelementptr inbounds %struct.mld_msg, ptr %164, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %167, ptr noundef align 4 dereferenceable(16) %0, i32 16, i1 false)
  %168 = call i32 @csum_partial(ptr noundef %164, i32 noundef 24, i32 noundef 0) #16
  %169 = call i32 @__csum_ipv6_magic(ptr noundef nonnull %127, ptr noundef %21, i32 noundef 402653184, i32 noundef 973078528, i32 noundef %168) #16
  %170 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %169) #18, !srcloc !44
  %171 = xor i32 %170, -1
  %172 = lshr i32 %171, 16
  %173 = trunc i32 %172 to i16
  %174 = getelementptr inbounds %struct.icmp6hdr, ptr %164, i32 0, i32 2
  store i16 %173, ptr %174, align 2
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %175 = load ptr, ptr %129, align 8
  %176 = getelementptr inbounds %struct.net_device, ptr %175, i32 0, i32 69
  %177 = load volatile ptr, ptr %176, align 4
  %178 = load ptr, ptr %131, align 8
  %179 = load i16, ptr %137, align 4
  %180 = zext i16 %179 to i32
  %181 = getelementptr i8, ptr %178, i32 %180
  %182 = getelementptr inbounds %struct.ipv6hdr, ptr %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.ipv6hdr, ptr %181, i32 0, i32 6
  %184 = getelementptr inbounds %struct.net_device, ptr %175, i32 0, i32 17
  %185 = load i32, ptr %184, align 4
  call void @icmpv6_flow_init(ptr noundef %7, ptr noundef nonnull %6, i8 noundef zeroext %166, ptr noundef %182, ptr noundef %183, i32 noundef %185) #16
  %186 = load ptr, ptr %129, align 8
  %187 = call ptr @icmp6_dst_alloc(ptr noundef %186, ptr noundef nonnull %6) #16
  %188 = icmp ugt ptr %187, inttoptr (i32 -4096 to ptr)
  br i1 %188, label %189, label %192

189:                                              ; preds = %154
  %190 = ptrtoint ptr %187 to i32
  store i32 %190, ptr %5, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %72, i32 noundef 0) #16
  %191 = load i32, ptr %5, align 4
  br label %212

192:                                              ; preds = %154
  %193 = icmp ne ptr %187, null
  %194 = zext i1 %193 to i8
  %195 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 13, i32 0, i32 3
  %196 = load i16, ptr %195, align 2
  %197 = lshr i16 %196, 14
  %198 = trunc i16 %197 to i8
  %199 = and i8 %198, 1
  %200 = or i8 %199, %194
  %201 = zext i8 %200 to i16
  %202 = shl nuw nsw i16 %201, 14
  %203 = and i16 %196, -16385
  %204 = or i16 %202, %203
  store i16 %204, ptr %195, align 2
  %205 = ptrtoint ptr %187 to i32
  %206 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 4
  store i32 %205, ptr %206, align 8
  %207 = and i32 %205, -2
  %208 = inttoptr i32 %207 to ptr
  %209 = getelementptr inbounds %struct.dst_entry, ptr %208, i32 0, i32 6
  %210 = load ptr, ptr %209, align 4
  %211 = call i32 %210(ptr noundef nonnull @init_net, ptr noundef %7, ptr noundef nonnull %72) #16
  store i32 %211, ptr %5, align 4
  br label %212

212:                                              ; preds = %192, %189
  %213 = phi i32 [ %191, %189 ], [ %211, %192 ]
  %214 = icmp eq i32 %213, 0
  %215 = icmp eq ptr %177, null
  br i1 %214, label %216, label %247

216:                                              ; preds = %212
  br i1 %215, label %230, label %217, !prof !9

217:                                              ; preds = %216
  %218 = getelementptr inbounds %struct.inet6_dev, ptr %177, i32 0, i32 33, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = add i32 %2, 256
  %221 = getelementptr [512 x %struct.atomic_t], ptr %219, i32 0, i32 %220
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %221) #16, !srcloc !11
  %222 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %221, ptr %221, i32 1, ptr elementtype(i32) %221) #16, !srcloc !45
  %223 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 11), align 4
  %224 = getelementptr [512 x %struct.atomic_t], ptr %223, i32 0, i32 %220
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %224) #16, !srcloc !11
  %225 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %224, ptr %224, i32 1, ptr elementtype(i32) %224) #16, !srcloc !45
  %226 = getelementptr inbounds %struct.inet6_dev, ptr %177, i32 0, i32 33, i32 2
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr [6 x %struct.atomic_t], ptr %227, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %228) #16, !srcloc !11
  %229 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %228, ptr %228, i32 1, ptr elementtype(i32) %228) #16, !srcloc !45
  br label %235

230:                                              ; preds = %216
  %231 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 11), align 4
  %232 = add i32 %2, 256
  %233 = getelementptr [512 x %struct.atomic_t], ptr %231, i32 0, i32 %232
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %233) #16, !srcloc !11
  %234 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %233, ptr %233, i32 1, ptr elementtype(i32) %233) #16, !srcloc !45
  br label %235

235:                                              ; preds = %230, %217
  %236 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !38
  %237 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %238 = getelementptr [6 x i32], ptr %237, i32 0, i32 3
  %239 = ptrtoint ptr %238 to i32
  %240 = call i32 @llvm.read_register.i32(metadata !0) #16
  %241 = inttoptr i32 %240 to ptr
  %242 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %241) #11, !srcloc !39
  %243 = add i32 %242, %239
  %244 = inttoptr i32 %243 to ptr
  %245 = load i32, ptr %244, align 4
  %246 = add i32 %245, 1
  store i32 %246, ptr %244, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %236) #16, !srcloc !40
  br label %288

247:                                              ; preds = %212
  %248 = tail call ptr @llvm.thread.pointer() #16
  br i1 %215, label %269, label %249, !prof !9

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.thread_info, ptr %248, i32 0, i32 1
  %251 = load volatile i32, ptr %250, align 4
  %252 = add i32 %251, 512
  store volatile i32 %252, ptr %250, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  %253 = getelementptr inbounds %struct.inet6_dev, ptr %177, i32 0, i32 33, i32 1
  %254 = load ptr, ptr %253, align 4
  %255 = ptrtoint ptr %254 to i32
  %256 = call i32 @llvm.read_register.i32(metadata !0) #16
  %257 = inttoptr i32 %256 to ptr
  %258 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %257) #11, !srcloc !39
  %259 = add i32 %258, %255
  %260 = inttoptr i32 %259 to ptr
  %261 = getelementptr inbounds %struct.ipstats_mib, ptr %260, i32 0, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = add i32 %262, 1
  store i32 %263, ptr %261, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !42
  %264 = getelementptr [37 x i64], ptr %260, i32 0, i32 14
  %265 = load i64, ptr %264, align 8
  %266 = add i64 %265, 1
  store i64 %266, ptr %264, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !43
  %267 = load i32, ptr %261, align 4
  %268 = add i32 %267, 1
  store i32 %268, ptr %261, align 4
  call fastcc void @local_bh_enable()
  br label %269

269:                                              ; preds = %249, %247
  %270 = getelementptr inbounds %struct.thread_info, ptr %248, i32 0, i32 1
  %271 = load volatile i32, ptr %270, align 4
  %272 = add i32 %271, 512
  store volatile i32 %272, ptr %270, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  %273 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %274 = ptrtoint ptr %273 to i32
  %275 = call i32 @llvm.read_register.i32(metadata !0) #16
  %276 = inttoptr i32 %275 to ptr
  %277 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %276) #11, !srcloc !39
  %278 = add i32 %277, %274
  %279 = inttoptr i32 %278 to ptr
  %280 = getelementptr inbounds %struct.ipstats_mib, ptr %279, i32 0, i32 1
  %281 = load i32, ptr %280, align 4
  %282 = add i32 %281, 1
  store i32 %282, ptr %280, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !42
  %283 = getelementptr [37 x i64], ptr %279, i32 0, i32 14
  %284 = load i64, ptr %283, align 8
  %285 = add i64 %284, 1
  store i64 %285, ptr %283, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !43
  %286 = load i32, ptr %280, align 4
  %287 = add i32 %286, 1
  store i32 %287, ptr %280, align 4
  call fastcc void @local_bh_enable()
  br label %288

288:                                              ; preds = %269, %235
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %289

289:                                              ; preds = %288, %98
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #10 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_get_lladdr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_flow_init(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icmp6_dst_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @add_grec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %305

13:                                               ; preds = %6
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 20
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 1280
  br i1 %17, label %305, label %18

18:                                               ; preds = %13
  %19 = icmp eq i32 %2, 2
  %20 = add i32 %2, -1
  %21 = icmp ult i32 %20, 2
  %22 = icmp eq i32 %2, 4
  %23 = or i1 %19, %22
  %24 = icmp eq i32 %4, 0
  %25 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 4
  %26 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 3
  %27 = select i1 %24, ptr %26, ptr %25
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %237, label %30

30:                                               ; preds = %18
  %31 = icmp eq ptr %0, null
  br i1 %31, label %90, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = icmp ne ptr %38, null
  %40 = select i1 %23, i1 %39, i1 false
  br i1 %40, label %41, label %90

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.icmp6hdr, ptr %38, i32 0, i32 3
  %43 = getelementptr [2 x i16], ptr %42, i32 0, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %90, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %54 = load ptr, ptr %53, align 8
  %55 = ptrtoint ptr %52 to i32
  %56 = ptrtoint ptr %54 to i32
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, %56
  %60 = sub i32 %55, %59
  %61 = load ptr, ptr %26, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %81, label %66

63:                                               ; preds = %46
  %64 = load ptr, ptr %26, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %63, %50
  %67 = phi i32 [ 0, %63 ], [ %60, %50 ]
  %68 = phi ptr [ %64, %63 ], [ %61, %50 ]
  br label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %75, %69 ], [ %68, %66 ]
  %71 = phi i32 [ %74, %69 ], [ 0, %66 ]
  %72 = tail call fastcc zeroext i1 @is_in(ptr noundef %1, ptr noundef nonnull %70, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  %73 = zext i1 %72 to i32
  %74 = add i32 %71, %73
  %75 = load ptr, ptr %70, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %69

77:                                               ; preds = %69
  %78 = shl i32 %74, 4
  %79 = add i32 %78, 20
  %80 = icmp slt i32 %67, %79
  br i1 %80, label %83, label %86

81:                                               ; preds = %50
  %82 = icmp slt i32 %60, 20
  br i1 %82, label %83, label %90

83:                                               ; preds = %81, %77, %63
  tail call fastcc void @mld_sendpack(ptr noundef nonnull %0)
  %84 = tail call fastcc ptr @mld_newpack(ptr noundef %8, i32 noundef %16)
  %85 = load ptr, ptr %27, align 4
  br label %86

86:                                               ; preds = %83, %77
  %87 = phi ptr [ %85, %83 ], [ %28, %77 ]
  %88 = phi ptr [ %84, %83 ], [ %0, %77 ]
  %89 = icmp eq ptr %87, null
  br i1 %89, label %237, label %90

90:                                               ; preds = %86, %81, %41, %32, %30
  %91 = phi ptr [ %88, %86 ], [ null, %30 ], [ %0, %81 ], [ %0, %32 ], [ %0, %41 ]
  %92 = phi ptr [ %87, %86 ], [ %28, %30 ], [ %28, %81 ], [ %28, %32 ], [ %28, %41 ]
  %93 = icmp ne i32 %5, 0
  %94 = icmp eq i32 %3, 0
  %95 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 5
  %96 = add i32 %2, -5
  %97 = icmp ult i32 %96, 2
  %98 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 6
  %99 = xor i1 %22, %19
  %100 = xor i1 %99, true
  %101 = trunc i32 %2 to i8
  %102 = or i32 %4, %3
  %103 = icmp ne i32 %102, 0
  br label %104

104:                                              ; preds = %223, %90
  %105 = phi ptr [ %91, %90 ], [ %229, %223 ]
  %106 = phi ptr [ %92, %90 ], [ %112, %223 ]
  %107 = phi ptr [ null, %90 ], [ %228, %223 ]
  %108 = phi i32 [ 0, %90 ], [ %227, %223 ]
  %109 = phi i32 [ 0, %90 ], [ %226, %223 ]
  %110 = phi i32 [ 1, %90 ], [ %225, %223 ]
  %111 = phi ptr [ null, %90 ], [ %224, %223 ]
  %112 = load ptr, ptr %106, align 4
  %113 = tail call fastcc zeroext i1 @is_in(ptr noundef %1, ptr noundef nonnull %106, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %114 = or i1 %93, %113
  br i1 %114, label %115, label %223

115:                                              ; preds = %104
  br i1 %94, label %120, label %116

116:                                              ; preds = %115
  %117 = load i32, ptr %95, align 4
  %118 = icmp eq i32 %117, 0
  %119 = and i1 %97, %118
  br i1 %119, label %124, label %128

120:                                              ; preds = %115
  %121 = load i8, ptr %98, align 4
  %122 = icmp ne i8 %121, 0
  %123 = and i1 %97, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120, %116
  %125 = getelementptr inbounds %struct.ip6_sf_list, ptr %106, i32 0, i32 5
  %126 = load i8, ptr %125, align 2
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %207

128:                                              ; preds = %124, %120, %116
  br i1 %21, label %129, label %131

129:                                              ; preds = %128
  %130 = getelementptr inbounds %struct.ip6_sf_list, ptr %106, i32 0, i32 3
  store i8 0, ptr %130, align 4
  br label %131

131:                                              ; preds = %129, %128
  %132 = icmp eq ptr %105, null
  br i1 %132, label %148, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 6
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 15
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 14
  %141 = load ptr, ptr %140, align 8
  %142 = ptrtoint ptr %139 to i32
  %143 = ptrtoint ptr %141 to i32
  %144 = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 13, i32 0, i32 11
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, %143
  %147 = sub i32 %142, %146
  br label %148

148:                                              ; preds = %137, %133, %131
  %149 = phi i32 [ 0, %131 ], [ %147, %137 ], [ 0, %133 ]
  %150 = mul i32 %110, 20
  %151 = add i32 %150, 16
  %152 = icmp ult i32 %149, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = icmp ne i32 %110, 0
  %155 = select i1 %100, i1 true, i1 %154
  br i1 %155, label %156, label %231

156:                                              ; preds = %153
  %157 = icmp eq ptr %111, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %156
  %159 = trunc i32 %108 to i16
  %160 = tail call i16 @llvm.bswap.i16(i16 %159)
  %161 = getelementptr inbounds %struct.mld2_grec, ptr %111, i32 0, i32 2
  store i16 %160, ptr %161, align 2
  br label %162

162:                                              ; preds = %158, %156
  br i1 %132, label %164, label %163

163:                                              ; preds = %162
  tail call fastcc void @mld_sendpack(ptr noundef nonnull %105)
  br label %164

164:                                              ; preds = %163, %162
  %165 = tail call fastcc ptr @mld_newpack(ptr noundef %8, i32 noundef %16)
  br label %168

166:                                              ; preds = %148
  %167 = icmp eq i32 %110, 0
  br i1 %167, label %194, label %168

168:                                              ; preds = %166, %164
  %169 = phi ptr [ %165, %164 ], [ %105, %166 ]
  %170 = phi i32 [ 0, %164 ], [ %108, %166 ]
  %171 = icmp eq ptr %169, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load ptr, ptr %7, align 4
  %174 = tail call fastcc ptr @mld_newpack(ptr noundef %173, i32 noundef %16) #16
  %175 = icmp eq ptr %174, null
  br i1 %175, label %305, label %176

176:                                              ; preds = %172, %168
  %177 = phi ptr [ %169, %168 ], [ %174, %172 ]
  %178 = tail call ptr @skb_put(ptr noundef nonnull %177, i32 noundef 20) #16
  store i8 %101, ptr %178, align 4
  %179 = getelementptr inbounds %struct.mld2_grec, ptr %178, i32 0, i32 1
  store i8 0, ptr %179, align 1
  %180 = getelementptr inbounds %struct.mld2_grec, ptr %178, i32 0, i32 2
  store i16 0, ptr %180, align 2
  %181 = getelementptr inbounds %struct.mld2_grec, ptr %178, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %181, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false) #16
  %182 = getelementptr inbounds %struct.sk_buff, ptr %177, i32 0, i32 16
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.sk_buff, ptr %177, i32 0, i32 13, i32 0, i32 17
  %185 = load i16, ptr %184, align 2
  %186 = zext i16 %185 to i32
  %187 = getelementptr i8, ptr %183, i32 %186
  %188 = getelementptr inbounds %struct.icmp6hdr, ptr %187, i32 0, i32 3
  %189 = getelementptr [2 x i16], ptr %188, i32 0, i32 1
  %190 = load i16, ptr %189, align 2
  %191 = tail call i16 @llvm.bswap.i16(i16 %190) #16
  %192 = add i16 %191, 1
  %193 = tail call i16 @llvm.bswap.i16(i16 %192) #16
  store i16 %193, ptr %189, align 2
  br label %195

194:                                              ; preds = %166
  br i1 %132, label %305, label %195

195:                                              ; preds = %194, %176
  %196 = phi ptr [ %177, %176 ], [ %105, %194 ]
  %197 = phi ptr [ %178, %176 ], [ %111, %194 ]
  %198 = phi i32 [ %170, %176 ], [ %108, %194 ]
  %199 = tail call ptr @skb_put(ptr noundef nonnull %196, i32 noundef 16) #16
  %200 = getelementptr inbounds %struct.ip6_sf_list, ptr %106, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %199, ptr noundef align 4 dereferenceable(16) %200, i32 16, i1 false)
  %201 = add i32 %198, 1
  %202 = add i32 %109, 1
  br i1 %97, label %203, label %223

203:                                              ; preds = %195
  %204 = getelementptr inbounds %struct.ip6_sf_list, ptr %106, i32 0, i32 5
  %205 = load i8, ptr %204, align 2
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %223, label %207

207:                                              ; preds = %203, %124
  %208 = phi i8 [ %205, %203 ], [ %126, %124 ]
  %209 = phi ptr [ %197, %203 ], [ %111, %124 ]
  %210 = phi i32 [ 0, %203 ], [ %110, %124 ]
  %211 = phi i32 [ %202, %203 ], [ %109, %124 ]
  %212 = phi i32 [ %201, %203 ], [ %108, %124 ]
  %213 = phi ptr [ %196, %203 ], [ %105, %124 ]
  %214 = getelementptr inbounds %struct.ip6_sf_list, ptr %106, i32 0, i32 5
  %215 = add i8 %208, -1
  store i8 %215, ptr %214, align 2
  %216 = icmp eq i8 %215, 0
  %217 = select i1 %103, i1 %216, i1 false
  br i1 %217, label %218, label %223

218:                                              ; preds = %207
  %219 = icmp eq ptr %107, null
  %220 = load ptr, ptr %106, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  %221 = select i1 %219, ptr %27, ptr %107
  store volatile ptr %220, ptr %221, align 4
  %222 = getelementptr inbounds %struct.ip6_sf_list, ptr %106, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %222, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %223

223:                                              ; preds = %218, %207, %203, %195, %104
  %224 = phi ptr [ %111, %104 ], [ %197, %195 ], [ %209, %207 ], [ %209, %218 ], [ %197, %203 ]
  %225 = phi i32 [ %110, %104 ], [ 0, %195 ], [ %210, %207 ], [ %210, %218 ], [ 0, %203 ]
  %226 = phi i32 [ %109, %104 ], [ %202, %195 ], [ %211, %207 ], [ %211, %218 ], [ %202, %203 ]
  %227 = phi i32 [ %108, %104 ], [ %201, %195 ], [ %212, %207 ], [ %212, %218 ], [ %201, %203 ]
  %228 = phi ptr [ %106, %104 ], [ %106, %195 ], [ %106, %207 ], [ %107, %218 ], [ %106, %203 ]
  %229 = phi ptr [ %105, %104 ], [ %196, %195 ], [ %213, %207 ], [ %213, %218 ], [ %196, %203 ]
  %230 = icmp eq ptr %112, null
  br i1 %230, label %231, label %104

231:                                              ; preds = %223, %153
  %232 = phi ptr [ %224, %223 ], [ %111, %153 ]
  %233 = phi i32 [ %226, %223 ], [ %109, %153 ]
  %234 = phi i32 [ %227, %223 ], [ %108, %153 ]
  %235 = phi ptr [ %229, %223 ], [ %105, %153 ]
  %236 = icmp eq i32 %233, 0
  br i1 %236, label %237, label %292

237:                                              ; preds = %231, %86, %18
  %238 = phi ptr [ %235, %231 ], [ %0, %18 ], [ %88, %86 ]
  %239 = phi i32 [ %234, %231 ], [ 0, %18 ], [ 0, %86 ]
  %240 = phi ptr [ %232, %231 ], [ null, %18 ], [ null, %86 ]
  %241 = add i32 %2, -5
  %242 = icmp ult i32 %241, 2
  br i1 %242, label %305, label %243

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 6
  %245 = load i8, ptr %244, align 4
  %246 = icmp ne i8 %245, 0
  %247 = or i1 %21, %246
  %248 = icmp ne i32 %5, 0
  %249 = or i1 %248, %247
  br i1 %249, label %250, label %292

250:                                              ; preds = %243
  %251 = icmp eq ptr %238, null
  br i1 %251, label %269, label %252

252:                                              ; preds = %250
  %253 = getelementptr inbounds %struct.sk_buff, ptr %238, i32 0, i32 6
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.sk_buff, ptr %238, i32 0, i32 15
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.sk_buff, ptr %238, i32 0, i32 14
  %260 = load ptr, ptr %259, align 8
  %261 = ptrtoint ptr %258 to i32
  %262 = ptrtoint ptr %260 to i32
  %263 = getelementptr inbounds %struct.sk_buff, ptr %238, i32 0, i32 13, i32 0, i32 11
  %264 = load i32, ptr %263, align 4
  %265 = add i32 %264, %262
  %266 = sub i32 %261, %265
  %267 = icmp ult i32 %266, 20
  br i1 %267, label %268, label %273

268:                                              ; preds = %256, %252
  tail call fastcc void @mld_sendpack(ptr noundef nonnull %238)
  br label %269

269:                                              ; preds = %268, %250
  %270 = load ptr, ptr %7, align 4
  %271 = tail call fastcc ptr @mld_newpack(ptr noundef %270, i32 noundef %16) #16
  %272 = icmp eq ptr %271, null
  br i1 %272, label %292, label %273

273:                                              ; preds = %269, %256
  %274 = phi ptr [ %271, %269 ], [ %238, %256 ]
  %275 = tail call ptr @skb_put(ptr noundef nonnull %274, i32 noundef 20) #16
  %276 = trunc i32 %2 to i8
  store i8 %276, ptr %275, align 4
  %277 = getelementptr inbounds %struct.mld2_grec, ptr %275, i32 0, i32 1
  store i8 0, ptr %277, align 1
  %278 = getelementptr inbounds %struct.mld2_grec, ptr %275, i32 0, i32 2
  store i16 0, ptr %278, align 2
  %279 = getelementptr inbounds %struct.mld2_grec, ptr %275, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %279, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false) #16
  %280 = getelementptr inbounds %struct.sk_buff, ptr %274, i32 0, i32 16
  %281 = load ptr, ptr %280, align 8
  %282 = getelementptr inbounds %struct.sk_buff, ptr %274, i32 0, i32 13, i32 0, i32 17
  %283 = load i16, ptr %282, align 2
  %284 = zext i16 %283 to i32
  %285 = getelementptr i8, ptr %281, i32 %284
  %286 = getelementptr inbounds %struct.icmp6hdr, ptr %285, i32 0, i32 3
  %287 = getelementptr [2 x i16], ptr %286, i32 0, i32 1
  %288 = load i16, ptr %287, align 2
  %289 = tail call i16 @llvm.bswap.i16(i16 %288) #16
  %290 = add i16 %289, 1
  %291 = tail call i16 @llvm.bswap.i16(i16 %290) #16
  store i16 %291, ptr %287, align 2
  br label %292

292:                                              ; preds = %273, %269, %243, %231
  %293 = phi i32 [ %239, %243 ], [ %234, %231 ], [ %239, %269 ], [ %239, %273 ]
  %294 = phi ptr [ %240, %243 ], [ %232, %231 ], [ %240, %269 ], [ %275, %273 ]
  %295 = phi ptr [ %238, %243 ], [ %235, %231 ], [ null, %269 ], [ %274, %273 ]
  %296 = icmp eq ptr %294, null
  br i1 %296, label %301, label %297

297:                                              ; preds = %292
  %298 = trunc i32 %293 to i16
  %299 = tail call i16 @llvm.bswap.i16(i16 %298)
  %300 = getelementptr inbounds %struct.mld2_grec, ptr %294, i32 0, i32 2
  store i16 %299, ptr %300, align 2
  br label %301

301:                                              ; preds = %297, %292
  br i1 %21, label %302, label %305

302:                                              ; preds = %301
  %303 = load i32, ptr %9, align 4
  %304 = and i32 %303, -17
  store i32 %304, ptr %9, align 4
  br label %305

305:                                              ; preds = %302, %301, %237, %194, %172, %13, %6
  %306 = phi ptr [ %0, %6 ], [ %0, %13 ], [ %238, %237 ], [ %295, %302 ], [ %295, %301 ], [ null, %194 ], [ null, %172 ]
  ret ptr %306
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mld_sendpack(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.flowi6, align 8
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %4, i32 %11
  %13 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i32 88, i1 false), !annotation !28
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 69
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18, !prof !9

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.inet6_dev, ptr %16, i32 0, i32 33, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !38
  %22 = getelementptr i64, ptr %20, i32 5
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #11, !srcloc !39
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, ptr %28, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #16, !srcloc !40
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !38
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = zext i32 %33 to i64
  %35 = getelementptr i64, ptr %20, i32 6
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #11, !srcloc !39
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, %34
  store i64 %43, ptr %41, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #16, !srcloc !40
  br label %44

44:                                               ; preds = %18, %1
  %45 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !38
  %47 = getelementptr i64, ptr %45, i32 5
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #11, !srcloc !39
  %52 = add i32 %51, %48
  %53 = inttoptr i32 %52 to ptr
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, ptr %53, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #16, !srcloc !40
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !38
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %58 = load i32, ptr %57, align 8
  %59 = zext i32 %58 to i64
  %60 = getelementptr i64, ptr %45, i32 6
  %61 = ptrtoint ptr %60 to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %63 = inttoptr i32 %62 to ptr
  %64 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %63) #11, !srcloc !39
  %65 = add i32 %64, %61
  %66 = inttoptr i32 %65 to ptr
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %67, %59
  store i64 %68, ptr %66, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #16, !srcloc !40
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = load i16, ptr %5, align 4
  %73 = zext i16 %72 to i32
  %74 = getelementptr i8, ptr %71, i32 %73
  %75 = ptrtoint ptr %70 to i32
  %76 = ptrtoint ptr %74 to i32
  %77 = sub i32 %75, %76
  %78 = load i16, ptr %9, align 2
  %79 = zext i16 %78 to i32
  %80 = getelementptr i8, ptr %71, i32 %79
  %81 = ptrtoint ptr %80 to i32
  %82 = sub i32 %75, %81
  %83 = trunc i32 %77 to i16
  %84 = add i16 %83, -40
  %85 = tail call i16 @llvm.bswap.i16(i16 %84)
  %86 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 2
  store i16 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 5
  %88 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 6
  %89 = load ptr, ptr %3, align 8
  %90 = load i16, ptr %9, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %89, i32 %91
  %93 = tail call i32 @csum_partial(ptr noundef %92, i32 noundef %82, i32 noundef 0) #16
  %94 = tail call i32 @llvm.bswap.i32(i32 %82) #16
  %95 = tail call i32 @__csum_ipv6_magic(ptr noundef %87, ptr noundef %88, i32 noundef %94, i32 noundef 973078528, i32 noundef %93) #16
  %96 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %95) #18, !srcloc !44
  %97 = xor i32 %96, -1
  %98 = lshr i32 %97, 16
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds %struct.icmp6hdr, ptr %12, i32 0, i32 2
  store i16 %99, ptr %100, align 2
  %101 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 27), align 4
  %102 = load ptr, ptr %3, align 8
  %103 = load i16, ptr %5, align 4
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %102, i32 %104
  %106 = getelementptr inbounds %struct.ipv6hdr, ptr %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.ipv6hdr, ptr %105, i32 0, i32 6
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 17
  %110 = load i32, ptr %109, align 4
  call void @icmpv6_flow_init(ptr noundef %101, ptr noundef nonnull %2, i8 noundef zeroext -113, ptr noundef %106, ptr noundef %107, i32 noundef %110) #16
  %111 = load ptr, ptr %13, align 8
  %112 = call ptr @icmp6_dst_alloc(ptr noundef %111, ptr noundef nonnull %2) #16
  %113 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %207, label %114

114:                                              ; preds = %44
  %115 = icmp ne ptr %112, null
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %118 = load i16, ptr %117, align 2
  %119 = lshr i16 %118, 14
  %120 = trunc i16 %119 to i8
  %121 = and i8 %120, 1
  %122 = or i8 %121, %116
  %123 = zext i8 %122 to i16
  %124 = shl nuw nsw i16 %123, 14
  %125 = and i16 %118, -16385
  %126 = or i16 %124, %125
  store i16 %126, ptr %117, align 2
  %127 = ptrtoint ptr %112 to i32
  %128 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 %127, ptr %128, align 8
  %129 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 27), align 4
  %130 = and i32 %127, -2
  %131 = inttoptr i32 %130 to ptr
  %132 = getelementptr inbounds %struct.dst_entry, ptr %131, i32 0, i32 6
  %133 = load ptr, ptr %132, align 4
  %134 = call i32 %133(ptr noundef nonnull @init_net, ptr noundef %129, ptr noundef %0) #16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %114
  br i1 %17, label %149, label %137, !prof !9

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.inet6_dev, ptr %16, i32 0, i32 33, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr [512 x %struct.atomic_t], ptr %139, i32 0, i32 399
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #16, !srcloc !11
  %141 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #16, !srcloc !45
  %142 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 11), align 4
  %143 = getelementptr [512 x %struct.atomic_t], ptr %142, i32 0, i32 399
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %143) #16, !srcloc !11
  %144 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %143, ptr %143, i32 1, ptr elementtype(i32) %143) #16, !srcloc !45
  %145 = getelementptr inbounds %struct.inet6_dev, ptr %16, i32 0, i32 33, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr [6 x %struct.atomic_t], ptr %146, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %147) #16, !srcloc !11
  %148 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %147, ptr %147, i32 1, ptr elementtype(i32) %147) #16, !srcloc !45
  br label %153

149:                                              ; preds = %136
  %150 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 11), align 4
  %151 = getelementptr [512 x %struct.atomic_t], ptr %150, i32 0, i32 399
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %151) #16, !srcloc !11
  %152 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %151, ptr %151, i32 1, ptr elementtype(i32) %151) #16, !srcloc !45
  br label %153

153:                                              ; preds = %149, %137
  %154 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !38
  %155 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %156 = getelementptr [6 x i32], ptr %155, i32 0, i32 3
  %157 = ptrtoint ptr %156 to i32
  %158 = call i32 @llvm.read_register.i32(metadata !0) #16
  %159 = inttoptr i32 %158 to ptr
  %160 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %159) #11, !srcloc !39
  %161 = add i32 %160, %157
  %162 = inttoptr i32 %161 to ptr
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, 1
  store i32 %164, ptr %162, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %154) #16, !srcloc !40
  br label %206

165:                                              ; preds = %207, %114
  %166 = tail call ptr @llvm.thread.pointer() #16
  br i1 %17, label %187, label %167, !prof !9

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 1
  %169 = load volatile i32, ptr %168, align 4
  %170 = add i32 %169, 512
  store volatile i32 %170, ptr %168, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  %171 = getelementptr inbounds %struct.inet6_dev, ptr %16, i32 0, i32 33, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = ptrtoint ptr %172 to i32
  %174 = call i32 @llvm.read_register.i32(metadata !0) #16
  %175 = inttoptr i32 %174 to ptr
  %176 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %175) #11, !srcloc !39
  %177 = add i32 %176, %173
  %178 = inttoptr i32 %177 to ptr
  %179 = getelementptr inbounds %struct.ipstats_mib, ptr %178, i32 0, i32 1
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, 1
  store i32 %181, ptr %179, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !42
  %182 = getelementptr [37 x i64], ptr %178, i32 0, i32 14
  %183 = load i64, ptr %182, align 8
  %184 = add i64 %183, 1
  store i64 %184, ptr %182, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !43
  %185 = load i32, ptr %179, align 4
  %186 = add i32 %185, 1
  store i32 %186, ptr %179, align 4
  call fastcc void @local_bh_enable()
  br label %187

187:                                              ; preds = %167, %165
  %188 = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 1
  %189 = load volatile i32, ptr %188, align 4
  %190 = add i32 %189, 512
  store volatile i32 %190, ptr %188, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  %191 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %192 = ptrtoint ptr %191 to i32
  %193 = call i32 @llvm.read_register.i32(metadata !0) #16
  %194 = inttoptr i32 %193 to ptr
  %195 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %194) #11, !srcloc !39
  %196 = add i32 %195, %192
  %197 = inttoptr i32 %196 to ptr
  %198 = getelementptr inbounds %struct.ipstats_mib, ptr %197, i32 0, i32 1
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, 1
  store i32 %200, ptr %198, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !42
  %201 = getelementptr [37 x i64], ptr %197, i32 0, i32 14
  %202 = load i64, ptr %201, align 8
  %203 = add i64 %202, 1
  store i64 %203, ptr %201, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !43
  %204 = load i32, ptr %198, align 4
  %205 = add i32 %204, 1
  store i32 %205, ptr %198, align 4
  call fastcc void @local_bh_enable()
  br label %206

206:                                              ; preds = %187, %153
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #16
  ret void

207:                                              ; preds = %44
  %208 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 0, ptr %208, align 8
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  br label %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @mld_newpack(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.in6_addr, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 19
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 21
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  %12 = add nuw nsw i32 %11, %8
  %13 = and i32 %12, 131056
  %14 = add nuw nsw i32 %13, 16
  %15 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 22
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !28
  %18 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 27), align 4
  %19 = tail call i32 @llvm.smin.i32(i32 %1, i32 2048)
  %20 = add nsw i32 %19, %17
  %21 = add nsw i32 %20, %14
  %22 = call ptr @sock_alloc_send_skb(ptr noundef %18, i32 noundef %21, i32 noundef 1, ptr noundef nonnull %4) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %105, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 5
  store i32 7, ptr %25, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %14
  store ptr %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %30, i32 %14
  store ptr %31, ptr %29, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !22

35:                                               ; preds = %24
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2502, 0\0A.popsection", ""() #16, !srcloc !46
  unreachable

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = ptrtoint ptr %31 to i32
  %41 = add i32 %40, %17
  %42 = sub i32 %39, %41
  %43 = icmp ugt i32 %42, %1
  %44 = add i32 %40, %1
  %45 = sub i32 %39, %44
  %46 = select i1 %43, i32 %45, i32 %17
  %47 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 11
  store i32 %46, ptr %47, align 4
  %48 = call i32 @ipv6_get_lladdr(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 64) #16
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, ptr %3, ptr @in6addr_any
  %51 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %51, align 8
  %52 = getelementptr inbounds %struct.anon.43, ptr %22, i32 0, i32 2
  store ptr %5, ptr %52, align 8
  %53 = load ptr, ptr %26, align 4
  %54 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 16
  %55 = load ptr, ptr %54, align 8
  %56 = ptrtoint ptr %53 to i32
  %57 = ptrtoint ptr %55 to i32
  %58 = sub i32 %56, %57
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 18
  store i16 %59, ptr %60, align 4
  %61 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 40) #16
  %62 = load ptr, ptr %54, align 8
  %63 = load i16, ptr %60, align 4
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %62, i32 %64
  store i32 96, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ipv6hdr, ptr %65, i32 0, i32 2
  store i16 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.ipv6hdr, ptr %65, i32 0, i32 3
  store i8 0, ptr %67, align 2
  %68 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 4
  %69 = load volatile i8, ptr %68, align 2
  %70 = zext i8 %69 to i32
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, -4161
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %36
  %75 = getelementptr inbounds %struct.inet_sock, ptr %18, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  br label %77

77:                                               ; preds = %74, %36
  %78 = phi ptr [ %76, %74 ], [ null, %36 ]
  %79 = getelementptr inbounds %struct.ipv6_pinfo, ptr %78, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = lshr i32 %80, 7
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds %struct.ipv6hdr, ptr %65, i32 0, i32 4
  store i8 %82, ptr %83, align 1
  %84 = getelementptr inbounds %struct.ipv6hdr, ptr %65, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %84, ptr noundef nonnull align 4 dereferenceable(16) %50, i32 16, i1 false) #16
  %85 = getelementptr inbounds %struct.ipv6hdr, ptr %65, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %85, ptr noundef nonnull align 4 dereferenceable(16) @mld2_all_mcr, i32 16, i1 false) #16
  %86 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 8) #16
  store i64 281475010592826, ptr %86, align 1
  %87 = load ptr, ptr %29, align 8
  %88 = load ptr, ptr %26, align 4
  %89 = ptrtoint ptr %87 to i32
  %90 = ptrtoint ptr %88 to i32
  %91 = sub i32 %89, %90
  %92 = load ptr, ptr %54, align 8
  %93 = ptrtoint ptr %92 to i32
  %94 = sub i32 %90, %93
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 17
  %97 = trunc i32 %91 to i16
  %98 = add i16 %95, %97
  store i16 %98, ptr %96, align 2
  %99 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 8) #16
  %100 = load ptr, ptr %54, align 8
  %101 = load i16, ptr %96, align 2
  %102 = zext i16 %101 to i32
  %103 = getelementptr i8, ptr %100, i32 %102
  store i8 -113, ptr %103, align 4
  %104 = getelementptr inbounds %struct.icmp6hdr, ptr %103, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(7) %104, i8 0, i64 7, i1 false)
  br label %105

105:                                              ; preds = %77, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @is_in(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #12 {
  switch i32 %2, label %87 [
    i32 1, label %6
    i32 2, label %6
    i32 3, label %34
    i32 4, label %41
    i32 5, label %56
    i32 6, label %68
  ]

6:                                                ; preds = %5, %5
  %7 = or i32 %4, %3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %87

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ip6_sf_list, ptr %1, i32 0, i32 3
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %87, label %18

18:                                               ; preds = %14, %9
  %19 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %87, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.ip6_sf_list, ptr %1, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = icmp eq i32 %2, 1
  br label %87

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ip6_sf_list, ptr %1, i32 0, i32 2
  %30 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %31, %32
  br label %87

34:                                               ; preds = %5
  %35 = or i32 %4, %3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %34
  %38 = getelementptr %struct.ip6_sf_list, ptr %1, i32 0, i32 2, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp ne i32 %39, 0
  br label %87

41:                                               ; preds = %5
  %42 = or i32 %4, %3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %87

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %87, label %48

48:                                               ; preds = %44
  %49 = getelementptr %struct.ip6_sf_list, ptr %1, i32 0, i32 2, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ip6_sf_list, ptr %1, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %46, %54
  br label %87

56:                                               ; preds = %5
  %57 = icmp eq i32 %3, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.ip6_sf_list, ptr %1, i32 0, i32 5
  %60 = load i8, ptr %59, align 2
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 1
  %66 = zext i1 %65 to i32
  %67 = icmp ne i32 %66, %4
  br label %87

68:                                               ; preds = %5
  %69 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = icmp eq i32 %3, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.ip6_sf_list, ptr %1, i32 0, i32 5
  %76 = load i8, ptr %75, align 2
  %77 = icmp ne i8 %76, 0
  %78 = icmp ne i32 %4, 0
  %79 = and i1 %78, %77
  br label %87

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.ip6_sf_list, ptr %1, i32 0, i32 5
  %82 = load i8, ptr %81, align 2
  %83 = icmp ne i8 %82, 0
  %84 = or i32 %4, %3
  %85 = icmp eq i32 %84, 0
  %86 = and i1 %85, %83
  br label %87

87:                                               ; preds = %80, %74, %72, %62, %58, %56, %52, %48, %44, %41, %37, %34, %28, %26, %18, %14, %6, %5
  %88 = phi i1 [ %86, %80 ], [ %67, %62 ], [ %55, %52 ], [ %40, %37 ], [ %27, %26 ], [ %33, %28 ], [ false, %6 ], [ true, %18 ], [ false, %14 ], [ false, %34 ], [ false, %41 ], [ false, %48 ], [ false, %44 ], [ false, %58 ], [ false, %56 ], [ true, %72 ], [ %79, %74 ], [ false, %5 ]
  ret i1 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndisc_mc_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mld_ifc_event(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %3 = getelementptr inbounds %struct.ipv6_devconf, ptr %2, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 11
  %7 = select i1 %5, ptr %6, ptr %3
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %9 [
    i32 2, label %17
    i32 1, label %36
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %14, %11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %13, %9, %1
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 5
  %19 = load i8, ptr %18, align 4
  %20 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 7
  store i8 %19, ptr %20, align 2
  %21 = tail call i32 @prandom_u32() #16
  %22 = load ptr, ptr @mld_wq, align 4
  %23 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 14
  %24 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %22, ptr noundef %23, i32 noundef 2) #16
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #16, !srcloc !11
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #16, !srcloc !21
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !9

30:                                               ; preds = %25
  %31 = add i32 %28, 1
  %32 = or i32 %31, %28
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %36, label %34, !prof !22

34:                                               ; preds = %30, %25
  %35 = phi i32 [ 2, %25 ], [ 1, %30 ]
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef %35) #16
  br label %36

36:                                               ; preds = %34, %30, %17, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_mc_del1_src(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 3
  %5 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %6 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %7 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  br label %8

8:                                                ; preds = %13, %3
  %9 = phi ptr [ null, %3 ], [ %11, %13 ]
  %10 = phi ptr [ %4, %3 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ip6_sf_list, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %2, align 4
  %17 = xor i32 %16, %15
  %18 = getelementptr %struct.ip6_sf_list, ptr %11, i32 0, i32 1, i32 0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %5, align 4
  %21 = xor i32 %20, %19
  %22 = or i32 %21, %17
  %23 = getelementptr %struct.ip6_sf_list, ptr %11, i32 0, i32 1, i32 0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = xor i32 %25, %24
  %27 = or i32 %22, %26
  %28 = getelementptr %struct.ip6_sf_list, ptr %11, i32 0, i32 1, i32 0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %7, align 4
  %31 = xor i32 %30, %29
  %32 = or i32 %27, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %8

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.ip6_sf_list, ptr %11, i32 0, i32 2
  %36 = getelementptr %struct.ip6_sf_list, ptr %11, i32 0, i32 2, i32 %1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %34
  %40 = add i32 %37, -1
  store i32 %40, ptr %36, align 4
  %41 = getelementptr %struct.ip6_sf_list, ptr %11, i32 0, i32 2, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %39
  %45 = load i32, ptr %35, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %9, null
  %51 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  %52 = select i1 %50, ptr %4, ptr %9
  store volatile ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ip6_sf_list, ptr %11, i32 0, i32 4
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 9
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = tail call fastcc zeroext i1 @mld_in_v1_mode(ptr noundef %49)
  br i1 %62, label %69, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.inet6_dev, ptr %49, i32 0, i32 5
  %65 = load i8, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ip6_sf_list, ptr %11, i32 0, i32 5
  store i8 %65, ptr %66, align 2
  %67 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !47
  store volatile ptr %68, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !48
  store volatile ptr %11, ptr %67, align 4
  br label %71

69:                                               ; preds = %61, %56, %47
  %70 = getelementptr inbounds %struct.ip6_sf_list, ptr %11, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %70, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %71

71:                                               ; preds = %69, %63, %44, %39, %34, %8
  %72 = phi i32 [ -3, %34 ], [ 0, %39 ], [ 0, %44 ], [ 0, %69 ], [ 1, %63 ], [ -3, %8 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sf_setstate(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %121, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 4
  br label %13

13:                                               ; preds = %119, %11
  %14 = phi i32 [ %3, %11 ], [ %120, %119 ]
  %15 = phi ptr [ %9, %11 ], [ %117, %119 ]
  %16 = phi i32 [ 0, %11 ], [ %116, %119 ]
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ip6_sf_list, ptr %15, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %3, %20
  br i1 %21, label %26, label %70

22:                                               ; preds = %13
  %23 = getelementptr %struct.ip6_sf_list, ptr %15, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %70, label %30

26:                                               ; preds = %18
  %27 = getelementptr %struct.ip6_sf_list, ptr %15, i32 0, i32 2, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.ip6_sf_list, ptr %15, i32 0, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %115

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ip6_sf_list, ptr %15, i32 0, i32 1
  %36 = getelementptr %struct.ip6_sf_list, ptr %15, i32 0, i32 1, i32 0, i32 0, i32 1
  %37 = getelementptr %struct.ip6_sf_list, ptr %15, i32 0, i32 1, i32 0, i32 0, i32 2
  %38 = getelementptr %struct.ip6_sf_list, ptr %15, i32 0, i32 1, i32 0, i32 0, i32 3
  br label %39

39:                                               ; preds = %44, %34
  %40 = phi ptr [ null, %34 ], [ %42, %44 ]
  %41 = phi ptr [ %12, %34 ], [ %42, %44 ]
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %111, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ip6_sf_list, ptr %42, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %35, align 4
  %48 = xor i32 %47, %46
  %49 = getelementptr %struct.ip6_sf_list, ptr %42, i32 0, i32 1, i32 0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %36, align 4
  %52 = xor i32 %51, %50
  %53 = or i32 %52, %48
  %54 = getelementptr %struct.ip6_sf_list, ptr %42, i32 0, i32 1, i32 0, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %37, align 4
  %57 = xor i32 %56, %55
  %58 = or i32 %53, %57
  %59 = getelementptr %struct.ip6_sf_list, ptr %42, i32 0, i32 1, i32 0, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %38, align 4
  %62 = xor i32 %61, %60
  %63 = or i32 %58, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %39

65:                                               ; preds = %44
  %66 = icmp eq ptr %40, null
  %67 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  %68 = select i1 %66, ptr %12, ptr %40
  store volatile ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.ip6_sf_list, ptr %42, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %69, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %111

70:                                               ; preds = %26, %22, %18
  %71 = getelementptr inbounds %struct.ip6_sf_list, ptr %15, i32 0, i32 4
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %115, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ip6_sf_list, ptr %15, i32 0, i32 5
  store i8 0, ptr %75, align 2
  %76 = getelementptr inbounds %struct.ip6_sf_list, ptr %15, i32 0, i32 1
  %77 = getelementptr %struct.ip6_sf_list, ptr %15, i32 0, i32 1, i32 0, i32 0, i32 1
  %78 = getelementptr %struct.ip6_sf_list, ptr %15, i32 0, i32 1, i32 0, i32 0, i32 2
  %79 = getelementptr %struct.ip6_sf_list, ptr %15, i32 0, i32 1, i32 0, i32 0, i32 3
  br label %80

80:                                               ; preds = %84, %74
  %81 = phi ptr [ %12, %74 ], [ %82, %84 ]
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %105, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ip6_sf_list, ptr %82, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr %76, align 4
  %88 = xor i32 %87, %86
  %89 = getelementptr %struct.ip6_sf_list, ptr %82, i32 0, i32 1, i32 0, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = load i32, ptr %77, align 4
  %92 = xor i32 %91, %90
  %93 = or i32 %92, %88
  %94 = getelementptr %struct.ip6_sf_list, ptr %82, i32 0, i32 1, i32 0, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %78, align 4
  %97 = xor i32 %96, %95
  %98 = or i32 %93, %97
  %99 = getelementptr %struct.ip6_sf_list, ptr %82, i32 0, i32 1, i32 0, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %79, align 4
  %102 = xor i32 %101, %100
  %103 = or i32 %98, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %111, label %80

105:                                              ; preds = %80
  %106 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %107 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 3264, i32 noundef 40) #17
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %107, ptr noundef nonnull align 4 dereferenceable(40) %15, i32 40, i1 false)
  %110 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  store volatile ptr %110, ptr %107, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !50
  store volatile ptr %107, ptr %12, align 4
  br label %111

111:                                              ; preds = %109, %84, %65, %39
  %112 = phi ptr [ %15, %65 ], [ %107, %109 ], [ %82, %84 ], [ %15, %39 ]
  %113 = getelementptr inbounds %struct.ip6_sf_list, ptr %112, i32 0, i32 5
  store i8 %7, ptr %113, align 2
  %114 = add i32 %16, 1
  br label %115

115:                                              ; preds = %111, %105, %70, %30
  %116 = phi i32 [ %16, %30 ], [ %16, %105 ], [ %16, %70 ], [ %114, %111 ]
  %117 = load ptr, ptr %15, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %2, align 4
  br label %13

121:                                              ; preds = %115, %1
  %122 = phi i32 [ 0, %1 ], [ %116, %115 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @igmp6_join_group(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %67

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  tail call fastcc void @igmp6_send(ptr noundef %0, ptr noundef %9, i32 noundef 131)
  %10 = tail call i32 @prandom_u32() #16
  %11 = load ptr, ptr %7, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %13 = getelementptr inbounds %struct.ipv6_devconf, ptr %12, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.inet6_dev, ptr %11, i32 0, i32 32, i32 11
  %17 = select i1 %15, ptr %16, ptr %13
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %19 [
    i32 2, label %27
    i32 1, label %29
  ]

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.inet6_dev, ptr %11, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = sub i32 %24, %21
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23, %19, %6
  %28 = getelementptr inbounds %struct.inet6_dev, ptr %11, i32 0, i32 32, i32 13
  br label %31

29:                                               ; preds = %23, %6
  %30 = getelementptr inbounds %struct.inet6_dev, ptr %11, i32 0, i32 32, i32 12
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ]
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 1) #16
  %35 = urem i32 %10, %34
  %36 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 8
  %37 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %36) #16
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #16, !srcloc !11
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #16, !srcloc !24
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %44, !prof !9

43:                                               ; preds = %38
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef 4) #16
  br label %44

44:                                               ; preds = %43, %38
  %45 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 8, i32 1, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = sub i32 %46, %47
  br label %49

49:                                               ; preds = %44, %31
  %50 = phi i32 [ %48, %44 ], [ %35, %31 ]
  %51 = load ptr, ptr @mld_wq, align 4
  %52 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %51, ptr noundef %36, i32 noundef %50) #16
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #16, !srcloc !11
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #16, !srcloc !21
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58, !prof !9

58:                                               ; preds = %53
  %59 = add i32 %56, 1
  %60 = or i32 %59, %56
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %64, label %62, !prof !22

62:                                               ; preds = %58, %53
  %63 = phi i32 [ 2, %53 ], [ 1, %58 ]
  tail call void @refcount_warn_saturate(ptr noundef %54, i32 noundef %63) #16
  br label %64

64:                                               ; preds = %62, %58, %49
  %65 = load i32, ptr %2, align 4
  %66 = or i32 %65, 3
  store i32 %66, ptr %2, align 4
  br label %67

67:                                               ; preds = %64, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @igmp6_group_queried(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = xor i32 %3, 767
  %5 = getelementptr [4 x i32], ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %4, %6
  %8 = getelementptr [4 x i32], ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %7, %9
  %11 = getelementptr [4 x i32], ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, 16777216
  %14 = or i32 %10, %13
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %3, 3584
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %56, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 8
  %21 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %20) #16
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #16, !srcloc !11
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #16, !srcloc !24
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %28, !prof !9

27:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef 4) #16
  br label %28

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 8, i32 1, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = sub i32 %30, %31
  %33 = icmp ult i32 %32, %1
  br i1 %33, label %37, label %34

34:                                               ; preds = %28, %19
  %35 = tail call i32 @prandom_u32() #16
  %36 = urem i32 %35, %1
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i32 [ %36, %34 ], [ %32, %28 ]
  %39 = load ptr, ptr @mld_wq, align 4
  %40 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %39, ptr noundef %20, i32 noundef %38) #16
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #16, !srcloc !11
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #16, !srcloc !21
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !9

46:                                               ; preds = %41
  %47 = add i32 %44, 1
  %48 = or i32 %47, %44
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %52, label %50, !prof !22

50:                                               ; preds = %46, %41
  %51 = phi i32 [ 2, %41 ], [ 1, %46 ]
  tail call void @refcount_warn_saturate(ptr noundef %42, i32 noundef %51) #16
  br label %52

52:                                               ; preds = %50, %46, %37
  %53 = getelementptr inbounds %struct.ifmcaddr6, ptr %0, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, 1
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %52, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @igmp6_net_init(ptr noundef %0) #5 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 27
  %3 = tail call i32 @inet_ctl_sock_create(ptr noundef %2, i16 noundef zeroext 10, i16 noundef zeroext 3, i8 noundef zeroext 58, ptr noundef %0) #16
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %3) #19
  br label %47

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %10 = load volatile i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, -4161
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.inet_sock, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi ptr [ %17, %15 ], [ null, %7 ]
  %20 = getelementptr inbounds %struct.ipv6_pinfo, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -65409
  %23 = or i32 %22, 128
  store i32 %23, ptr %20, align 4
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 41
  store i32 3264, ptr %25, align 8
  %26 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 28
  %27 = tail call i32 @inet_ctl_sock_create(ptr noundef %26, i16 noundef zeroext 10, i16 noundef zeroext 3, i8 noundef zeroext 58, ptr noundef %0) #16
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %27) #19
  br label %40

31:                                               ; preds = %18
  %32 = tail call fastcc i32 @igmp6_proc_init(ptr noundef %0) #20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %26, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 71
  %39 = load ptr, ptr %38, align 8
  tail call void @sock_release(ptr noundef %39) #16
  br label %40

40:                                               ; preds = %37, %34, %29
  %41 = phi i32 [ %27, %29 ], [ %32, %34 ], [ %32, %37 ]
  %42 = load ptr, ptr %2, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 71
  %46 = load ptr, ptr %45, align 8
  tail call void @sock_release(ptr noundef %46) #16
  br label %47

47:                                               ; preds = %44, %40, %31, %5
  %48 = phi i32 [ 0, %31 ], [ %3, %5 ], [ %41, %40 ], [ %41, %44 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igmp6_net_exit(ptr nocapture noundef readonly %0) #14 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  %7 = load ptr, ptr %6, align 8
  tail call void @sock_release(ptr noundef %7) #16
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 28
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 71
  %14 = load ptr, ptr %13, align 8
  tail call void @sock_release(ptr noundef %14) #16
  br label %15

15:                                               ; preds = %12, %8
  tail call fastcc void @igmp6_proc_exit(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @igmp6_proc_init(ptr nocapture noundef readonly %0) unnamed_addr #5 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @igmp6_mc_seq_ops, i32 noundef 8, ptr noundef null) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef %7, ptr noundef nonnull @igmp6_mcf_seq_ops, i32 noundef 12, ptr noundef null) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %12, %6, %1
  %11 = phi i32 [ -12, %12 ], [ -12, %1 ], [ 0, %6 ]
  ret i32 %11

12:                                               ; preds = %6
  %13 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.12, ptr noundef %13) #16
  br label %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @igmp6_mc_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %3 = load i64, ptr %1, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.igmp6_mc_iter_state, ptr %5, i32 0, i32 2
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.igmp6_mc_iter_state, ptr %5, i32 0, i32 1
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %9 = getelementptr i8, ptr %8, i32 -40
  store ptr %9, ptr %7, align 4
  %10 = icmp eq ptr %8, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %10, label %60, label %11

11:                                               ; preds = %20, %2
  %12 = phi ptr [ %21, %20 ], [ %8, %2 ]
  %13 = getelementptr i8, ptr %12, i32 428
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 3
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %11
  %21 = load volatile ptr, ptr %12, align 8
  %22 = getelementptr i8, ptr %21, i32 -40
  store ptr %22, ptr %7, align 4
  %23 = icmp eq ptr %21, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %23, label %60, label %11

24:                                               ; preds = %16
  store ptr %14, ptr %6, align 4
  %25 = icmp eq i64 %3, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %56, %24
  %27 = phi i64 [ %58, %56 ], [ %3, %24 ]
  %28 = phi ptr [ %57, %56 ], [ %18, %24 ]
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.ifmcaddr6, ptr %28, i32 0, i32 2
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.igmp6_mc_iter_state, ptr %29, i32 0, i32 1
  %35 = getelementptr inbounds %struct.igmp6_mc_iter_state, ptr %29, i32 0, i32 2
  %36 = load ptr, ptr %34, align 4
  br label %37

37:                                               ; preds = %52, %33
  %38 = phi ptr [ %36, %33 ], [ %42, %52 ]
  %39 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 7
  %40 = load volatile ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  %42 = getelementptr i8, ptr %40, i32 -40
  %43 = select i1 %41, ptr null, ptr %42
  store ptr %43, ptr %34, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 69
  %47 = load volatile ptr, ptr %46, align 4
  store ptr %47, ptr %35, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.inet6_dev, ptr %47, i32 0, i32 3
  %51 = load volatile ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi ptr [ %51, %49 ], [ null, %45 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %37, label %56

55:                                               ; preds = %37
  store ptr null, ptr %35, align 4
  br label %60

56:                                               ; preds = %52, %26
  %57 = phi ptr [ %31, %26 ], [ %53, %52 ]
  %58 = add i64 %27, -1
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %26

60:                                               ; preds = %56, %55, %24, %20, %2
  %61 = phi ptr [ %18, %24 ], [ null, %2 ], [ null, %55 ], [ %57, %56 ], [ null, %20 ]
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igmp6_mc_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.igmp6_mc_iter_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %2
  store ptr null, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.igmp6_mc_iter_state, ptr %4, i32 0, i32 1
  store ptr null, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @igmp6_mc_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #15 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 2
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.igmp6_mc_iter_state, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.igmp6_mc_iter_state, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %10, align 4
  br label %13

13:                                               ; preds = %29, %9
  %14 = phi ptr [ %12, %9 ], [ %18, %29 ]
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 7
  %16 = load volatile ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  %18 = getelementptr i8, ptr %16, i32 -40
  %19 = select i1 %17, ptr null, ptr %18
  store ptr %19, ptr %10, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store ptr null, ptr %11, align 4
  br label %32

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 69
  %24 = load volatile ptr, ptr %23, align 4
  store ptr %24, ptr %11, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %24, i32 0, i32 3
  %28 = load volatile ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %28, %26 ], [ null, %22 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %13, label %32

32:                                               ; preds = %29, %21, %3
  %33 = phi ptr [ null, %21 ], [ %7, %3 ], [ %30, %29 ]
  %34 = load i64, ptr %2, align 8
  %35 = add i64 %34, 1
  store i64 %35, ptr %2, align 8
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igmp6_mc_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.igmp6_mc_iter_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ifmcaddr6, ptr %1, i32 0, i32 8, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = sub i32 %17, %18
  %20 = tail call i32 @jiffies_to_clock_t(i32 noundef %19) #16
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i32 [ %20, %15 ], [ 0, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %8, ptr noundef %6, ptr noundef %1, i32 noundef %10, i32 noundef %12, i32 noundef %22) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @igmp6_mcf_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %3 = load i64, ptr %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %80, label %5

5:                                                ; preds = %2
  %6 = add i64 %3, -1
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %8, i32 0, i32 2
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %8, i32 0, i32 3
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %8, i32 0, i32 1
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %13 = getelementptr i8, ptr %12, i32 -40
  store ptr %13, ptr %11, align 4
  %14 = icmp eq ptr %12, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %14, label %80, label %15

15:                                               ; preds = %28, %5
  %16 = phi ptr [ %29, %28 ], [ %12, %5 ]
  %17 = getelementptr i8, ptr %16, i32 428
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20, !prof !9

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.inet6_dev, ptr %18, i32 0, i32 3
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24, !prof !9

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ifmcaddr6, ptr %22, i32 0, i32 3
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32, !prof !9

28:                                               ; preds = %24, %20, %15
  %29 = load volatile ptr, ptr %16, align 8
  %30 = getelementptr i8, ptr %29, i32 -40
  store ptr %30, ptr %11, align 4
  %31 = icmp eq ptr %29, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %31, label %80, label %15

32:                                               ; preds = %24
  store ptr %22, ptr %10, align 4
  store ptr %18, ptr %9, align 4
  %33 = icmp eq i64 %6, 0
  br i1 %33, label %80, label %34

34:                                               ; preds = %76, %32
  %35 = phi i64 [ %78, %76 ], [ %6, %32 ]
  %36 = phi ptr [ %77, %76 ], [ %26, %32 ]
  %37 = load ptr, ptr %7, align 8
  %38 = load volatile ptr, ptr %36, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %76

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %37, i32 0, i32 3
  %42 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %37, i32 0, i32 1
  %43 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %37, i32 0, i32 2
  %44 = load ptr, ptr %41, align 4
  br label %45

45:                                               ; preds = %70, %40
  %46 = phi ptr [ %44, %40 ], [ %71, %70 ]
  %47 = getelementptr inbounds %struct.ifmcaddr6, ptr %46, i32 0, i32 2
  %48 = load volatile ptr, ptr %47, align 4
  store ptr %48, ptr %41, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load ptr, ptr %42, align 4
  br label %52

52:                                               ; preds = %67, %50
  %53 = phi ptr [ %51, %50 ], [ %57, %67 ]
  %54 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 7
  %55 = load volatile ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  %57 = getelementptr i8, ptr %55, i32 -40
  %58 = select i1 %56, ptr null, ptr %57
  store ptr %58, ptr %42, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %75, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 69
  %62 = load volatile ptr, ptr %61, align 4
  store ptr %62, ptr %43, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.inet6_dev, ptr %62, i32 0, i32 3
  %66 = load volatile ptr, ptr %65, align 4
  store ptr %66, ptr %41, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi ptr [ %66, %64 ], [ null, %60 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %52, label %70

70:                                               ; preds = %67, %45
  %71 = phi ptr [ %48, %45 ], [ %68, %67 ]
  %72 = getelementptr inbounds %struct.ifmcaddr6, ptr %71, i32 0, i32 3
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %45, label %76

75:                                               ; preds = %52
  store ptr null, ptr %43, align 4
  br label %80

76:                                               ; preds = %70, %34
  %77 = phi ptr [ %38, %34 ], [ %73, %70 ]
  %78 = add i64 %35, -1
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %34

80:                                               ; preds = %76, %75, %32, %28, %5, %2
  %81 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ %26, %32 ], [ null, %5 ], [ null, %75 ], [ %77, %76 ], [ null, %28 ]
  ret ptr %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igmp6_mcf_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %2
  store ptr null, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %9
  store ptr null, ptr %10, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %4, i32 0, i32 1
  store ptr null, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @igmp6_mcf_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #15 {
  %4 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  br i1 %4, label %7, label %32

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %6, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %6, i32 0, i32 3
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %6, i32 0, i32 1
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %12 = getelementptr i8, ptr %11, i32 -40
  store ptr %12, ptr %10, align 4
  %13 = icmp eq ptr %11, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %13, label %71, label %14

14:                                               ; preds = %28, %7
  %15 = phi ptr [ %29, %28 ], [ %11, %7 ]
  %16 = getelementptr i8, ptr %15, i32 428
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19, !prof !9

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.inet6_dev, ptr %17, i32 0, i32 3
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !9

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ifmcaddr6, ptr %21, i32 0, i32 3
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %23
  store ptr %21, ptr %9, align 4
  store ptr %17, ptr %8, align 4
  br label %71

28:                                               ; preds = %23, %19, %14
  %29 = load volatile ptr, ptr %15, align 8
  %30 = getelementptr i8, ptr %29, i32 -40
  store ptr %30, ptr %10, align 4
  %31 = icmp eq ptr %29, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %31, label %71, label %14

32:                                               ; preds = %3
  %33 = load volatile ptr, ptr %1, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %6, i32 0, i32 3
  %37 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %6, i32 0, i32 2
  %39 = load ptr, ptr %36, align 4
  br label %40

40:                                               ; preds = %66, %35
  %41 = phi ptr [ %39, %35 ], [ %67, %66 ]
  %42 = getelementptr inbounds %struct.ifmcaddr6, ptr %41, i32 0, i32 2
  %43 = load volatile ptr, ptr %42, align 4
  store ptr %43, ptr %36, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load ptr, ptr %37, align 4
  br label %47

47:                                               ; preds = %63, %45
  %48 = phi ptr [ %46, %45 ], [ %52, %63 ]
  %49 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 7
  %50 = load volatile ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  %52 = getelementptr i8, ptr %50, i32 -40
  %53 = select i1 %51, ptr null, ptr %52
  store ptr %53, ptr %37, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store ptr null, ptr %38, align 4
  br label %71

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 69
  %58 = load volatile ptr, ptr %57, align 4
  store ptr %58, ptr %38, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.inet6_dev, ptr %58, i32 0, i32 3
  %62 = load volatile ptr, ptr %61, align 4
  store ptr %62, ptr %36, align 4
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi ptr [ %62, %60 ], [ null, %56 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %47, label %66

66:                                               ; preds = %63, %40
  %67 = phi ptr [ %43, %40 ], [ %64, %63 ]
  %68 = getelementptr inbounds %struct.ifmcaddr6, ptr %67, i32 0, i32 3
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %40, label %71

71:                                               ; preds = %66, %55, %32, %28, %27, %7
  %72 = phi ptr [ %25, %27 ], [ null, %7 ], [ null, %55 ], [ %33, %32 ], [ null, %28 ], [ %69, %66 ]
  %73 = load i64, ptr %2, align 8
  %74 = add i64 %73, 1
  store i64 %74, ptr %2, align 8
  ret ptr %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igmp6_mcf_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #16
  br label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.igmp6_mcf_iter_state, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ip6_sf_list, ptr %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ip6_sf_list, ptr %1, i32 0, i32 2
  %16 = getelementptr %struct.ip6_sf_list, ptr %1, i32 0, i32 2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %11, ptr noundef %9, ptr noundef %13, ptr noundef %14, i32 noundef %17, i32 noundef %18) #16
  br label %19

19:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @igmp6_proc_exit(ptr nocapture noundef readonly %0) unnamed_addr #14 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.13, ptr noundef %3) #16
  %4 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.12, ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv6_mc_netdev_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 69
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 22
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %69

10:                                               ; preds = %3
  %11 = tail call i32 @rtnl_is_locked() #16
  %12 = icmp eq i32 %11, 0
  %13 = load i1, ptr @ipv6_mc_rejoin_groups.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %10
  store i1 true, ptr @ipv6_mc_rejoin_groups.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2817, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2817) #16
  br label %17

17:                                               ; preds = %16, %10
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %18) #16
  %19 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %20 = getelementptr inbounds %struct.ipv6_devconf, ptr %19, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 11
  %24 = select i1 %22, ptr %23, ptr %20
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %26 [
    i32 2, label %43
    i32 1, label %34
  ]

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = sub i32 %31, %28
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30, %17
  %35 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %68, label %38

38:                                               ; preds = %38, %34
  %39 = phi ptr [ %41, %38 ], [ %36, %34 ]
  tail call fastcc void @igmp6_join_group(ptr noundef nonnull %39) #16
  %40 = getelementptr inbounds %struct.ifmcaddr6, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %68, label %38

43:                                               ; preds = %30, %26, %17
  %44 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %60, %43
  %48 = phi ptr [ %63, %60 ], [ %45, %43 ]
  %49 = phi ptr [ %61, %60 ], [ null, %43 ]
  %50 = getelementptr inbounds %struct.ifmcaddr6, ptr %48, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.ifmcaddr6, ptr %48, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 1, i32 2
  %59 = tail call fastcc ptr @add_grec(ptr noundef %49, ptr noundef nonnull %48, i32 noundef %58, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %60

60:                                               ; preds = %54, %47
  %61 = phi ptr [ %49, %47 ], [ %59, %54 ]
  %62 = getelementptr inbounds %struct.ifmcaddr6, ptr %48, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %47

65:                                               ; preds = %60
  %66 = icmp eq ptr %61, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %65
  tail call fastcc void @mld_sendpack(ptr noundef nonnull %61) #16
  br label %68

68:                                               ; preds = %67, %65, %43, %38, %34
  tail call void @mutex_unlock(ptr noundef %18) #16
  br label %69

69:                                               ; preds = %68, %3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }
attributes #20 = { cold }

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
!10 = !{i64 2157261524}
!11 = !{i64 617349, i64 2148107320, i64 2148107346, i64 2148107393, i64 2148107415, i64 2148107443, i64 2148107463}
!12 = !{i64 2148121092, i64 2148121118, i64 2148121147, i64 2148121181, i64 2148121212, i64 2148121235}
!13 = !{i64 2157292135}
!14 = !{i64 2157305135}
!15 = !{i64 2151393954, i64 2151393979}
!16 = !{i64 3889488}
!17 = !{i64 3889685}
!18 = !{i64 2151374964}
!19 = !{i64 2149120229}
!20 = !{i64 2149120446}
!21 = !{i64 2148120193, i64 2148120225, i64 2148120254, i64 2148120288, i64 2148120319, i64 2148120342}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148220415}
!24 = !{i64 2148122550, i64 2148122582, i64 2148122611, i64 2148122645, i64 2148122676, i64 2148122699}
!25 = !{i64 2149069862}
!26 = !{i64 2157441796}
!27 = !{i64 2157449188}
!28 = !{!"auto-init"}
!29 = !{i64 2157326984}
!30 = !{i64 2157335601}
!31 = !{i64 2157349165}
!32 = !{i64 2157360649}
!33 = !{i64 2157386720}
!34 = !{i64 2157394348}
!35 = !{i64 2157404268}
!36 = !{i64 2157412163}
!37 = !{i64 2157821881}
!38 = !{i64 523027, i64 523088}
!39 = !{i64 541727}
!40 = !{i64 526044}
!41 = !{i64 2148933999}
!42 = !{i64 2149457749}
!43 = !{i64 2149458050}
!44 = !{i64 5772062}
!45 = !{i64 2148118735, i64 2148118761, i64 2148118790, i64 2148118824, i64 2148118855, i64 2148118878}
!46 = !{i64 2153693838, i64 2153694326, i64 2153693875, i64 2153693931, i64 2153693965, i64 2153693989, i64 2153694030, i64 2153694051, i64 2153694079, i64 2153694113}
!47 = !{i64 2157702736}
!48 = !{i64 2157710246}
!49 = !{i64 2157769191}
!50 = !{i64 2157776732}
