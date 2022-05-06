; ModuleID = '/llk/IR/net/ipv4/igmp.c_pt.bc'
source_filename = "../net/ipv4/igmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_mc_inc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_mc_inc_group\22\09\09\09\09\09"
module asm "__kstrtabns___ip_mc_inc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_mc_inc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_mc_inc_group\22\09\09\09\09\09"
module asm "__kstrtabns_ip_mc_inc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_mc_check_igmp:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_mc_check_igmp\22\09\09\09\09\09"
module asm "__kstrtabns_ip_mc_check_igmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_mc_dec_group:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_mc_dec_group\22\09\09\09\09\09"
module asm "__kstrtabns___ip_mc_dec_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_mc_join_group:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_mc_join_group\22\09\09\09\09\09"
module asm "__kstrtabns_ip_mc_join_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_mc_leave_group:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_mc_leave_group\22\09\09\09\09\09"
module asm "__kstrtabns_ip_mc_leave_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.58, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.58 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.netdevice_tracker = type {}
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.ip_mc_list = type { ptr, i32, i32, ptr, ptr, [2 x i32], %union.anon.132, ptr, %struct.timer_list, i32, %struct.refcount_struct, %struct.spinlock, i8, i8, i8, i8, i8, i8, %struct.callback_head }
%union.anon.132 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.102, [48 x i8], %union.anon.103, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.105, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.102 = type { i64 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { i32, ptr }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.107, i32, i32, i32, i16, i16, %union.anon.109, %union.anon.110, %union.anon.111, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.107 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.igmphdr = type { i8, i8, i16, i32 }
%struct.ip_mreqn = type { %struct.in_addr, %struct.in_addr, i32 }
%struct.in_addr = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.98, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.99, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.100, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.94, [0 x i32], %union.anon.95, i16, i16, %union.anon.96, %struct.refcount_struct, [0 x i32], %union.anon.97 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.94 = type { i32 }
%union.anon.95 = type { %struct.hlist_node }
%union.anon.96 = type { i32 }
%union.anon.97 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.98 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.99 = type { ptr }
%union.anon.100 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.53 }
%union.anon.53 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ip_mc_socklist = type { ptr, %struct.ip_mreqn, i32, ptr, %struct.callback_head }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.131, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.131 = type { ptr }
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
%struct.ip_sf_socklist = type { i32, i32, %struct.callback_head, [0 x i32] }
%struct.ip_mreq_source = type { i32, i32, i32 }
%struct.ip_sf_list = type { ptr, [2 x i32], i32, i8, i8, i8 }
%struct.anon.142 = type { i32, i32, i32, i32, [0 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.145 }
%union.anon.145 = type { ptr, [124 x i8] }
%struct.anon.147 = type { i32, %struct.__kernel_sockaddr_storage, i32, i32, [0 x %struct.__kernel_sockaddr_storage] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.igmp_mc_iter_state = type { %struct.seq_net_private, ptr, ptr }
%struct.seq_net_private = type {}
%struct.igmp_mcf_iter_state = type { %struct.seq_net_private, ptr, ptr, ptr }

@__kstrtab___ip_mc_inc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_mc_inc_group = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_mc_inc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_mc_inc_group to i32), ptr @__kstrtab___ip_mc_inc_group, ptr @__kstrtabns___ip_mc_inc_group }, section "___ksymtab+__ip_mc_inc_group", align 4
@__kstrtab_ip_mc_inc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_mc_inc_group = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_mc_inc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_mc_inc_group to i32), ptr @__kstrtab_ip_mc_inc_group, ptr @__kstrtabns_ip_mc_inc_group }, section "___ksymtab+ip_mc_inc_group", align 4
@__kstrtab_ip_mc_check_igmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_mc_check_igmp = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_mc_check_igmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_mc_check_igmp to i32), ptr @__kstrtab_ip_mc_check_igmp, ptr @__kstrtabns_ip_mc_check_igmp }, section "___ksymtab+ip_mc_check_igmp", align 4
@__ip_mc_dec_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [16 x i8] c"net/ipv4/igmp.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@__kstrtab___ip_mc_dec_group = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_mc_dec_group = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_mc_dec_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_mc_dec_group to i32), ptr @__kstrtab___ip_mc_dec_group, ptr @__kstrtabns___ip_mc_dec_group }, section "___ksymtab+__ip_mc_dec_group", align 4
@ip_mc_unmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_remap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_down.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_init_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_up.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_destroy_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ip_mc_join_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_mc_join_group = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_mc_join_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_mc_join_group to i32), ptr @__kstrtab_ip_mc_join_group, ptr @__kstrtabns_ip_mc_join_group }, section "___ksymtab+ip_mc_join_group", align 4
@ip_mc_leave_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ip_mc_leave_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_mc_leave_group = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_mc_leave_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_mc_leave_group to i32), ptr @__kstrtab_ip_mc_leave_group, ptr @__kstrtabns_ip_mc_leave_group }, section "___ksymtab+ip_mc_leave_group", align 4
@ip_mc_source.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_msfilter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_msfget.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_gsfget.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@igmp_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @igmp_net_init, ptr null, ptr @igmp_net_exit, ptr null, ptr null, i32 0 }, align 4
@igmp_notifier = internal global %struct.notifier_block { ptr @igmp_netdev_event, ptr null, i32 0 }, align 4
@____ip_mc_inc_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__ip_mc_join_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_net = external dso_local global %struct.net, align 64
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"igmp\00", align 1
@igmp_mc_seq_ops = internal constant %struct.seq_operations { ptr @igmp_mc_seq_start, ptr @igmp_mc_seq_stop, ptr @igmp_mc_seq_next, ptr @igmp_mc_seq_show }, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"mcfilter\00", align 1
@igmp_mcf_seq_ops = internal constant %struct.seq_operations { ptr @igmp_mcf_seq_start, ptr @igmp_mcf_seq_stop, ptr @igmp_mcf_seq_next, ptr @igmp_mcf_seq_show }, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"\013Failed to initialize the IGMP autojoin socket (err %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Idx\09Device    : Count Querier\09Group    Users Timer\09Reporter\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"%d\09%-10s: %5d %7s\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.10 = private unnamed_addr constant [27 x i8] c"\09\09\09\09%08X %5d %d:%08lX\09\09%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Idx Device        MCA        SRC    INC    EXC\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%3d %6.6s 0x%08x 0x%08x %6lu %6lu\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab___ip_mc_dec_group, ptr @__ksymtab___ip_mc_inc_group, ptr @__ksymtab_ip_mc_check_igmp, ptr @__ksymtab_ip_mc_inc_group, ptr @__ksymtab_ip_mc_join_group, ptr @__ksymtab_ip_mc_leave_group], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ip_mc_inc_group(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @____ip_mc_inc_group(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @____ip_mc_inc_group(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [32 x i8], align 1
  %6 = tail call i32 @rtnl_is_locked() #14
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @____ip_mc_inc_group.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %4
  store i1 true, ptr @____ip_mc_inc_group.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1432, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1432) #14
  br label %12

12:                                               ; preds = %11, %4
  %13 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %63, label %16

16:                                               ; preds = %59, %12
  %17 = phi ptr [ %61, %59 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.ip_mc_list, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ip_mc_list, ptr %17, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = icmp eq ptr %0, null
  br i1 %25, label %151, label %26

26:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %27 = load volatile ptr, ptr %13, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %34, %26
  %30 = phi ptr [ %36, %34 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.ip_mc_list, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ip_mc_list, ptr %30, i32 0, i32 6
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %29

38:                                               ; preds = %34, %26
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %151

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.ip_mc_list, ptr %30, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %40) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %41 = getelementptr inbounds %struct.ip_mc_list, ptr %30, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = getelementptr %struct.ip_mc_list, ptr %30, i32 0, i32 5, i32 %2
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.ip_mc_list, ptr %30, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %43, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %39
  br i1 %49, label %56, label %52

52:                                               ; preds = %51
  %53 = getelementptr %struct.ip_mc_list, ptr %30, i32 0, i32 5, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52, %51
  %57 = phi i32 [ 0, %51 ], [ 1, %52 ]
  store i32 %57, ptr %41, align 4
  br label %58

58:                                               ; preds = %56, %52, %39
  tail call void @_raw_spin_unlock_bh(ptr noundef %40) #14
  br label %151

59:                                               ; preds = %16
  %60 = getelementptr inbounds %struct.ip_mc_list, ptr %17, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %16

63:                                               ; preds = %59, %12
  %64 = or i32 %3, 256
  %65 = and i32 %3, 17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !11

67:                                               ; preds = %63
  %68 = and i32 %3, 1
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 1, i32 2
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ 0, %63 ], [ %70, %67 ]
  %73 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %72, i32 7
  %74 = load ptr, ptr %73, align 4
  %75 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef %64, i32 noundef 84) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %151, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.ip_mc_list, ptr %75, i32 0, i32 9
  store i32 1, ptr %78, align 8
  store ptr %0, ptr %75, align 8
  %79 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #14, !srcloc !12
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #14, !srcloc !13
  %81 = extractvalue { i32, i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83, !prof !8

83:                                               ; preds = %77
  %84 = add i32 %81, 1
  %85 = or i32 %84, %81
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %89, label %87, !prof !11

87:                                               ; preds = %83, %77
  %88 = phi i32 [ 2, %77 ], [ 1, %83 ]
  tail call void @refcount_warn_saturate(ptr noundef %79, i32 noundef %88) #14
  br label %89

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds %struct.ip_mc_list, ptr %75, i32 0, i32 1
  store i32 %1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.ip_mc_list, ptr %75, i32 0, i32 2
  store i32 %2, ptr %91, align 8
  %92 = getelementptr %struct.ip_mc_list, ptr %75, i32 0, i32 5, i32 %2
  store i32 1, ptr %92, align 4
  %93 = getelementptr inbounds %struct.ip_mc_list, ptr %75, i32 0, i32 10
  store volatile i32 1, ptr %93, align 4
  %94 = getelementptr inbounds %struct.ip_mc_list, ptr %75, i32 0, i32 11
  store i32 0, ptr %94, align 8
  %95 = load ptr, ptr %13, align 4
  %96 = getelementptr inbounds %struct.ip_mc_list, ptr %75, i32 0, i32 6
  store ptr %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 7
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  store volatile ptr %75, ptr %13, align 4
  %100 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 6
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %89
  %104 = load i32, ptr %90, align 4
  %105 = mul i32 %104, 1640531527
  %106 = lshr i32 %105, 23
  %107 = getelementptr ptr, ptr %101, i32 %106
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.ip_mc_list, ptr %75, i32 0, i32 7
  store ptr %108, ptr %109, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !15
  store volatile ptr %75, ptr %107, align 4
  br label %133

110:                                              ; preds = %89
  %111 = load i32, ptr %97, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %133, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %115 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %114, i32 noundef 3520, i32 noundef 2048) #15
  %116 = icmp eq ptr %115, null
  br i1 %116, label %133, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %13, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %132, label %120

120:                                              ; preds = %120, %117
  %121 = phi ptr [ %130, %120 ], [ %118, %117 ]
  %122 = getelementptr inbounds %struct.ip_mc_list, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = mul i32 %123, 1640531527
  %125 = lshr i32 %124, 23
  %126 = getelementptr ptr, ptr %115, i32 %125
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.ip_mc_list, ptr %121, i32 0, i32 7
  store ptr %127, ptr %128, align 4
  store volatile ptr %121, ptr %126, align 4
  %129 = getelementptr inbounds %struct.ip_mc_list, ptr %121, i32 0, i32 6
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %120

132:                                              ; preds = %120, %117
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  store volatile ptr %115, ptr %100, align 4
  br label %133

133:                                              ; preds = %132, %113, %110, %103
  %134 = getelementptr inbounds %struct.ip_mc_list, ptr %75, i32 0, i32 15
  %135 = load i8, ptr %134, align 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load ptr, ptr %75, align 8
  store i8 1, ptr %134, align 1
  %139 = load i32, ptr %90, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false) #14, !annotation !17
  %140 = load ptr, ptr %138, align 4
  %141 = call i32 @arp_mc_map(i32 noundef %139, ptr noundef nonnull %5, ptr noundef %140, i32 noundef 0) #14
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = call i32 @dev_mc_add(ptr noundef %140, ptr noundef nonnull %5) #14
  br label %145

145:                                              ; preds = %143, %137
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %146

146:                                              ; preds = %145, %133
  %147 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 3
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  call void @ip_rt_multicast_event(ptr noundef %0) #14
  br label %151

151:                                              ; preds = %150, %146, %71, %58, %38, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_mc_inc_group(ptr noundef %0, i32 noundef %1) #0 {
  tail call fastcc void @____ip_mc_inc_group(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 3264) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_check_igmp(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %7 to i32
  %11 = ptrtoint ptr %9 to i32
  %12 = sub i32 %10, %11
  %13 = add i32 %12, 20
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %15, %17
  %19 = icmp ugt i32 %13, %18
  br i1 %19, label %20, label %30, !prof !8

20:                                               ; preds = %1
  %21 = icmp ult i32 %15, %13
  br i1 %21, label %224, label %22, !prof !8

22:                                               ; preds = %20
  %23 = sub i32 %13, %18
  %24 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %23) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %224, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 8
  %28 = load i16, ptr %4, align 4
  %29 = zext i16 %28 to i32
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i32 [ %29, %26 ], [ %6, %1 ]
  %32 = phi i16 [ %28, %26 ], [ %5, %1 ]
  %33 = phi ptr [ %27, %26 ], [ %3, %1 ]
  %34 = getelementptr i8, ptr %33, i32 %31
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, -16
  %37 = icmp eq i8 %36, 64
  br i1 %37, label %38, label %224

38:                                               ; preds = %30
  %39 = shl i8 %35, 2
  %40 = and i8 %39, 60
  %41 = icmp ult i8 %40, 20
  br i1 %41, label %224, label %42

42:                                               ; preds = %38
  %43 = zext i8 %40 to i32
  %44 = add i32 %12, %43
  %45 = load i32, ptr %14, align 8
  %46 = load i32, ptr %16, align 4
  %47 = sub i32 %45, %46
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %51, label %49, !prof !8

49:                                               ; preds = %42
  %50 = zext i16 %32 to i32
  br label %63

51:                                               ; preds = %42
  %52 = icmp ult i32 %45, %44
  br i1 %52, label %224, label %53, !prof !8

53:                                               ; preds = %51
  %54 = sub i32 %44, %47
  %55 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %54) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %224, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %2, align 8
  %59 = load i16, ptr %4, align 4
  %60 = zext i16 %59 to i32
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = load i8, ptr %61, align 4
  br label %63

63:                                               ; preds = %57, %49
  %64 = phi i32 [ %50, %49 ], [ %60, %57 ]
  %65 = phi i8 [ %35, %49 ], [ %62, %57 ]
  %66 = phi ptr [ %33, %49 ], [ %58, %57 ]
  %67 = getelementptr i8, ptr %66, i32 %64
  %68 = and i8 %65, 15
  %69 = zext i8 %68 to i32
  %70 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %67, i32 %69) #14, !srcloc !18
  %71 = extractvalue { i32, ptr, i32, i32 } %70, 0
  %72 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %71) #16, !srcloc !19
  %73 = icmp ugt i32 %72, -65537
  br i1 %73, label %74, label %224, !prof !11

74:                                               ; preds = %63
  %75 = load ptr, ptr %2, align 8
  %76 = load i16, ptr %4, align 4
  %77 = zext i16 %76 to i32
  %78 = getelementptr i8, ptr %75, i32 %77
  %79 = load ptr, ptr %8, align 4
  %80 = ptrtoint ptr %78 to i32
  %81 = ptrtoint ptr %79 to i32
  %82 = sub i32 %80, %81
  %83 = getelementptr inbounds %struct.iphdr, ptr %67, i32 0, i32 2
  %84 = load i16, ptr %83, align 2
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #14
  %86 = zext i16 %85 to i32
  %87 = add i32 %82, %86
  %88 = load i32, ptr %14, align 8
  %89 = icmp ult i32 %88, %87
  %90 = icmp ult i32 %87, %44
  %91 = or i1 %89, %90
  br i1 %91, label %224, label %92

92:                                               ; preds = %74
  %93 = ptrtoint ptr %75 to i32
  %94 = sub i32 %81, %93
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %97 = trunc i32 %44 to i16
  %98 = add i16 %95, %97
  store i16 %98, ptr %96, align 2
  %99 = getelementptr inbounds %struct.iphdr, ptr %78, i32 0, i32 6
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 2
  br i1 %101, label %102, label %224

102:                                              ; preds = %92
  %103 = zext i16 %98 to i32
  %104 = getelementptr i8, ptr %75, i32 %103
  %105 = ptrtoint ptr %104 to i32
  %106 = sub i32 %105, %81
  %107 = add i32 %106, 8
  %108 = getelementptr inbounds %struct.iphdr, ptr %78, i32 0, i32 2
  %109 = load i16, ptr %108, align 2
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #14
  %111 = zext i16 %110 to i32
  %112 = sub nsw i32 %77, %103
  %113 = add nsw i32 %112, %111
  %114 = add i32 %103, %81
  %115 = sub i32 %77, %114
  %116 = add i32 %115, %105
  %117 = add i32 %116, %111
  %118 = icmp ult i32 %117, %107
  br i1 %118, label %224, label %119

119:                                              ; preds = %102
  %120 = load i32, ptr %16, align 4
  %121 = sub i32 %88, %120
  %122 = icmp ugt i32 %107, %121
  br i1 %122, label %123, label %129, !prof !8

123:                                              ; preds = %119
  %124 = icmp ult i32 %88, %107
  br i1 %124, label %224, label %125, !prof !8

125:                                              ; preds = %123
  %126 = sub i32 %107, %121
  %127 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %126) #14
  %128 = icmp eq ptr %127, null
  br i1 %128, label %224, label %129

129:                                              ; preds = %125, %119
  %130 = tail call ptr @skb_checksum_trimmed(ptr noundef %0, i32 noundef %113, ptr noundef nonnull @ip_mc_validate_checksum) #14
  %131 = icmp eq ptr %130, null
  br i1 %131, label %224, label %132

132:                                              ; preds = %129
  %133 = icmp eq ptr %130, %0
  br i1 %133, label %135, label %134

134:                                              ; preds = %132
  tail call void @kfree_skb_reason(ptr noundef nonnull %130, i32 noundef 0) #14
  br label %135

135:                                              ; preds = %134, %132
  %136 = load ptr, ptr %2, align 8
  %137 = load i16, ptr %96, align 2
  %138 = zext i16 %137 to i32
  %139 = getelementptr i8, ptr %136, i32 %138
  %140 = load i8, ptr %139, align 4
  switch i8 %140, label %223 [
    i8 23, label %224
    i8 18, label %224
    i8 22, label %224
    i8 34, label %141
    i8 17, label %171
  ]

141:                                              ; preds = %135
  %142 = load ptr, ptr %8, align 4
  %143 = ptrtoint ptr %139 to i32
  %144 = ptrtoint ptr %142 to i32
  %145 = sub i32 %143, %144
  %146 = add i32 %145, 8
  %147 = load i16, ptr %4, align 4
  %148 = zext i16 %147 to i32
  %149 = getelementptr i8, ptr %136, i32 %148
  %150 = getelementptr inbounds %struct.iphdr, ptr %149, i32 0, i32 2
  %151 = load i16, ptr %150, align 2
  %152 = tail call i16 @llvm.bswap.i16(i16 %151) #14
  %153 = zext i16 %152 to i32
  %154 = add i32 %138, %144
  %155 = sub i32 %143, %154
  %156 = add i32 %155, %148
  %157 = add i32 %156, %153
  %158 = icmp ult i32 %157, %146
  br i1 %158, label %170, label %159

159:                                              ; preds = %141
  %160 = load i32, ptr %14, align 8
  %161 = load i32, ptr %16, align 4
  %162 = sub i32 %160, %161
  %163 = icmp ugt i32 %146, %162
  br i1 %163, label %164, label %224, !prof !8

164:                                              ; preds = %159
  %165 = icmp ult i32 %160, %146
  br i1 %165, label %170, label %166, !prof !8

166:                                              ; preds = %164
  %167 = sub i32 %146, %162
  %168 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %167) #14
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %224

170:                                              ; preds = %166, %164, %141
  br label %224

171:                                              ; preds = %135
  %172 = load i16, ptr %4, align 4
  %173 = zext i16 %172 to i32
  %174 = getelementptr i8, ptr %136, i32 %173
  %175 = getelementptr inbounds %struct.iphdr, ptr %174, i32 0, i32 2
  %176 = load i16, ptr %175, align 2
  %177 = tail call i16 @llvm.bswap.i16(i16 %176) #14
  %178 = zext i16 %177 to i32
  %179 = sub nsw i32 %173, %138
  %180 = add nsw i32 %179, %178
  %181 = icmp eq i32 %180, 8
  br i1 %181, label %208, label %182

182:                                              ; preds = %171
  %183 = icmp ult i32 %180, 12
  br i1 %183, label %224, label %184

184:                                              ; preds = %182
  %185 = load ptr, ptr %8, align 4
  %186 = ptrtoint ptr %139 to i32
  %187 = ptrtoint ptr %185 to i32
  %188 = sub i32 %186, %187
  %189 = add i32 %188, 12
  %190 = add i32 %180, %186
  %191 = sub i32 %190, %187
  %192 = icmp ult i32 %191, %189
  br i1 %192, label %224, label %193

193:                                              ; preds = %184
  %194 = load i32, ptr %14, align 8
  %195 = load i32, ptr %16, align 4
  %196 = sub i32 %194, %195
  %197 = icmp ugt i32 %189, %196
  br i1 %197, label %198, label %208, !prof !8

198:                                              ; preds = %193
  %199 = icmp ult i32 %194, %189
  br i1 %199, label %224, label %200, !prof !8

200:                                              ; preds = %198
  %201 = sub i32 %189, %196
  %202 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %201) #14
  %203 = icmp eq ptr %202, null
  br i1 %203, label %224, label %204

204:                                              ; preds = %200
  %205 = load ptr, ptr %2, align 8
  %206 = load i16, ptr %96, align 2
  %207 = zext i16 %206 to i32
  br label %208

208:                                              ; preds = %204, %193, %171
  %209 = phi i32 [ %207, %204 ], [ %138, %193 ], [ %138, %171 ]
  %210 = phi ptr [ %205, %204 ], [ %136, %193 ], [ %136, %171 ]
  %211 = getelementptr i8, ptr %210, i32 %209
  %212 = getelementptr inbounds %struct.igmphdr, ptr %211, i32 0, i32 3
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %208
  %216 = load i16, ptr %4, align 4
  %217 = zext i16 %216 to i32
  %218 = getelementptr i8, ptr %210, i32 %217
  %219 = getelementptr inbounds %struct.iphdr, ptr %218, i32 0, i32 9
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 16777440
  br i1 %221, label %222, label %224

222:                                              ; preds = %215, %208
  br label %224

223:                                              ; preds = %135
  br label %224

224:                                              ; preds = %223, %222, %215, %200, %198, %184, %182, %170, %166, %159, %135, %135, %135, %129, %125, %123, %102, %92, %74, %63, %53, %51, %38, %30, %22, %20
  %225 = phi i32 [ -42, %92 ], [ -42, %223 ], [ 0, %135 ], [ 0, %135 ], [ 0, %135 ], [ -22, %170 ], [ 0, %166 ], [ 0, %159 ], [ 0, %222 ], [ -22, %182 ], [ -22, %200 ], [ -22, %215 ], [ -22, %184 ], [ -22, %198 ], [ -22, %22 ], [ -22, %38 ], [ -22, %30 ], [ -22, %53 ], [ -22, %63 ], [ -22, %74 ], [ -22, %20 ], [ -22, %51 ], [ -22, %125 ], [ -22, %129 ], [ -22, %102 ], [ -22, %123 ]
  ret i32 %225
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ip_mc_dec_group(ptr noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = alloca [32 x i8], align 1
  %5 = tail call i32 @rtnl_is_locked() #14
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @__ip_mc_dec_group.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @__ip_mc_dec_group.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1671, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1671) #14
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ip_mc_list, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %23, label %91

19:                                               ; preds = %91
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %94, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %91

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %13, %15 ], [ %94, %19 ]
  %25 = phi ptr [ %12, %15 ], [ %93, %19 ]
  %26 = getelementptr inbounds %struct.ip_mc_list, ptr %24, i32 0, i32 1
  %27 = getelementptr inbounds %struct.ip_mc_list, ptr %24, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %96

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = mul i32 %1, 1640531527
  %37 = lshr i32 %36, 23
  %38 = getelementptr ptr, ptr %33, i32 %37
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi ptr [ %38, %35 ], [ %43, %39 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %24
  %43 = getelementptr inbounds %struct.ip_mc_list, ptr %41, i32 0, i32 7
  br i1 %42, label %44, label %39

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ip_mc_list, ptr %24, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  store ptr %46, ptr %40, align 4
  br label %47

47:                                               ; preds = %44, %31
  %48 = getelementptr inbounds %struct.ip_mc_list, ptr %24, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  store ptr %49, ptr %25, align 4
  %50 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  store i32 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.ip_mc_list, ptr %24, i32 0, i32 15
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %47
  %57 = load ptr, ptr %24, align 4
  store i8 0, ptr %53, align 1
  %58 = load i32, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false) #14, !annotation !17
  %59 = load ptr, ptr %57, align 4
  %60 = call i32 @arp_mc_map(i32 noundef %58, ptr noundef nonnull %4, ptr noundef %59, i32 noundef 0) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @dev_mc_del(ptr noundef %59, ptr noundef nonnull %4) #14
  br label %64

64:                                               ; preds = %62, %56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  br label %65

65:                                               ; preds = %64, %47
  %66 = getelementptr inbounds %struct.ip_mc_list, ptr %24, i32 0, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %66) #14
  %67 = getelementptr inbounds %struct.ip_mc_list, ptr %24, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  store ptr null, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ip_mc_list, ptr %24, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  store ptr null, ptr %69, align 4
  %71 = getelementptr inbounds %struct.ip_mc_list, ptr %24, i32 0, i32 2
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ip_mc_list, ptr %24, i32 0, i32 5
  %73 = getelementptr %struct.ip_mc_list, ptr %24, i32 0, i32 5, i32 1
  store i32 0, ptr %73, align 4
  store i32 1, ptr %72, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %66) #14
  %74 = icmp eq ptr %68, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %75, %65
  %76 = phi ptr [ %77, %75 ], [ %68, %65 ]
  %77 = load ptr, ptr %76, align 4
  call void @kfree(ptr noundef nonnull %76) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %75

79:                                               ; preds = %75, %65
  %80 = icmp eq ptr %70, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %81, %79
  %82 = phi ptr [ %83, %81 ], [ %70, %79 ]
  %83 = load ptr, ptr %82, align 4
  call void @kfree(ptr noundef nonnull %82) #14
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %81

85:                                               ; preds = %81, %79
  %86 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  call void @ip_rt_multicast_event(ptr noundef %0) #14
  br label %90

90:                                               ; preds = %89, %85
  call fastcc void @ip_ma_put(ptr noundef nonnull %24)
  br label %96

91:                                               ; preds = %19, %15
  %92 = phi ptr [ %94, %19 ], [ %13, %15 ]
  %93 = getelementptr inbounds %struct.ip_mc_list, ptr %92, i32 0, i32 6
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %19

96:                                               ; preds = %91, %90, %23, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_rt_multicast_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip_ma_put(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ip_mc_list, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #14, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #14, !srcloc !21
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %23, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #14
  br label %23

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.in_device, ptr %10, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #14, !srcloc !12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #14, !srcloc !21
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14
  br label %19

18:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  tail call void @in_dev_finish_destroy(ptr noundef %10) #14
  br label %19

19:                                               ; preds = %18, %17, %15
  %20 = icmp eq ptr %0, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.ip_mc_list, ptr %0, i32 0, i32 18
  tail call void @kvfree_call_rcu(ptr noundef %22, ptr noundef nonnull inttoptr (i32 76 to ptr)) #14
  br label %23

23:                                               ; preds = %21, %19, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_mc_unmap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  %3 = tail call i32 @rtnl_is_locked() #14
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @ip_mc_unmap.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @ip_mc_unmap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1702, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1702) #14
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %28, %9
  %14 = phi ptr [ %30, %28 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 15
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 4
  store i8 0, ptr %15, align 1
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #14, !annotation !17
  %22 = load ptr, ptr %19, align 4
  %23 = call i32 @arp_mc_map(i32 noundef %21, ptr noundef nonnull %2, ptr noundef %22, i32 noundef 0) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @dev_mc_del(ptr noundef %22, ptr noundef nonnull %2) #14
  br label %27

27:                                               ; preds = %25, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  br label %28

28:                                               ; preds = %27, %13
  %29 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13

32:                                               ; preds = %28, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_mc_remap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  %3 = tail call i32 @rtnl_is_locked() #14
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @ip_mc_remap.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @ip_mc_remap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1712, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1712) #14
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %28, %9
  %14 = phi ptr [ %30, %28 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 15
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 4
  store i8 1, ptr %15, align 1
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #14, !annotation !17
  %22 = load ptr, ptr %19, align 4
  %23 = call i32 @arp_mc_map(i32 noundef %21, ptr noundef nonnull %2, ptr noundef %22, i32 noundef 0) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @dev_mc_add(ptr noundef %22, ptr noundef nonnull %2) #14
  br label %27

27:                                               ; preds = %25, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  br label %28

28:                                               ; preds = %27, %13
  %29 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13

32:                                               ; preds = %28, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_mc_down(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  %3 = tail call i32 @rtnl_is_locked() #14
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @ip_mc_down.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @ip_mc_down.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1728, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1728) #14
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %28, %9
  %14 = phi ptr [ %30, %28 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 15
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 4
  store i8 0, ptr %15, align 1
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #14, !annotation !17
  %22 = load ptr, ptr %19, align 4
  %23 = call i32 @arp_mc_map(i32 noundef %21, ptr noundef nonnull %2, ptr noundef %22, i32 noundef 0) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @dev_mc_del(ptr noundef %22, ptr noundef nonnull %2) #14
  br label %27

27:                                               ; preds = %25, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  br label %28

28:                                               ; preds = %27, %13
  %29 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13

32:                                               ; preds = %28, %9
  call void @__ip_mc_dec_group(ptr noundef %0, i32 noundef 16777440, i32 undef) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_mc_init_dev(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @rtnl_is_locked() #14
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @ip_mc_init_dev.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  store i1 true, ptr @ip_mc_init_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1762, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1762) #14
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 8
  store i32 0, ptr %9, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_mc_up(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  %3 = tail call i32 @rtnl_is_locked() #14
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @ip_mc_up.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @ip_mc_up.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1779, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1779) #14
  br label %9

9:                                                ; preds = %8, %1
  tail call fastcc void @____ip_mc_inc_group(ptr noundef %0, i32 noundef 16777440, i32 noundef 0, i32 noundef 3264) #14
  %10 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %28, %9
  %14 = phi ptr [ %30, %28 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 15
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 4
  store i8 1, ptr %15, align 1
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #14, !annotation !17
  %22 = load ptr, ptr %19, align 4
  %23 = call i32 @arp_mc_map(i32 noundef %21, ptr noundef nonnull %2, ptr noundef %22, i32 noundef 0) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @dev_mc_add(ptr noundef %22, ptr noundef nonnull %2) #14
  br label %27

27:                                               ; preds = %25, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  br label %28

28:                                               ; preds = %27, %13
  %29 = getelementptr inbounds %struct.ip_mc_list, ptr %14, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13

32:                                               ; preds = %28, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_mc_destroy_dev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @rtnl_is_locked() #14
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @ip_mc_destroy_dev.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  store i1 true, ptr @ip_mc_destroy_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1800, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1800) #14
  br label %8

8:                                                ; preds = %7, %1
  tail call void @ip_mc_down(ptr noundef %0)
  %9 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 7
  br label %14

14:                                               ; preds = %39, %12
  %15 = phi ptr [ %10, %12 ], [ %40, %39 ]
  %16 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  store ptr %17, ptr %9, align 4
  %18 = load i32, ptr %13, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %13, align 4
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %20) #14
  %21 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  store ptr null, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  store ptr null, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 2
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 5
  %27 = getelementptr %struct.ip_mc_list, ptr %15, i32 0, i32 5, i32 1
  store i32 0, ptr %27, align 4
  store i32 1, ptr %26, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %20) #14
  %28 = icmp eq ptr %22, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %29, %14
  %30 = phi ptr [ %31, %29 ], [ %22, %14 ]
  %31 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef nonnull %30) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29

33:                                               ; preds = %29, %14
  %34 = icmp eq ptr %24, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %37, %35 ], [ %24, %33 ]
  %37 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef nonnull %36) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %35

39:                                               ; preds = %35, %33
  tail call fastcc void @ip_ma_put(ptr noundef nonnull %15)
  %40 = load ptr, ptr %9, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %14

42:                                               ; preds = %39, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_join_group(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @__ip_mc_join_group(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ip_mc_join_group(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = tail call i32 @rtnl_is_locked() #14
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @__ip_mc_join_group.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @__ip_mc_join_group.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2174, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2174) #14
  br label %11

11:                                               ; preds = %10, %3
  %12 = and i32 %4, 240
  %13 = icmp eq i32 %12, 224
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @ip_mc_find_dev(ptr noundef %1)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ip_mreqn, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %33, %17
  %24 = phi ptr [ %35, %33 ], [ %21, %17 ]
  %25 = phi i32 [ %34, %33 ], [ 0, %17 ]
  %26 = getelementptr inbounds %struct.ip_mc_socklist, ptr %24, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ip_mc_socklist, ptr %24, i32 0, i32 1, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %19
  br i1 %32, label %49, label %33

33:                                               ; preds = %29, %23
  %34 = add i32 %25, 1
  %35 = load ptr, ptr %24, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %23

37:                                               ; preds = %33, %17
  %38 = phi i32 [ 0, %17 ], [ %34, %33 ]
  %39 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 111), align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = tail call ptr @sock_kmalloc(ptr noundef %0, i32 noundef 32, i32 noundef 3264) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ip_mc_socklist, ptr %42, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %45, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false)
  %46 = load ptr, ptr %20, align 8
  store ptr %46, ptr %42, align 4
  %47 = getelementptr inbounds %struct.ip_mc_socklist, ptr %42, i32 0, i32 3
  store ptr null, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ip_mc_socklist, ptr %42, i32 0, i32 2
  store i32 %2, ptr %48, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  store volatile ptr %42, ptr %20, align 8
  tail call fastcc void @____ip_mc_inc_group(ptr noundef nonnull %15, i32 noundef %4, i32 noundef %2, i32 noundef 3264)
  br label %49

49:                                               ; preds = %44, %41, %37, %29, %14, %11
  %50 = phi i32 [ -22, %11 ], [ -105, %37 ], [ 0, %44 ], [ -105, %41 ], [ -19, %14 ], [ -98, %29 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_join_group_ssm(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__ip_mc_join_group(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_leave_group(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @rtnl_is_locked() #14
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @ip_mc_leave_group.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %2
  store i1 true, ptr @ip_mc_leave_group.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2259, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2259) #14
  br label %10

10:                                               ; preds = %9, %2
  %11 = tail call fastcc ptr @ip_mc_find_dev(ptr noundef %1)
  %12 = getelementptr inbounds %struct.ip_mreqn, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ip_mreqn, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = icmp ne ptr %11, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %15, %10
  %22 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 18
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %56, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ip_mreqn, ptr %1, i32 0, i32 1
  br label %27

27:                                               ; preds = %53, %25
  %28 = phi ptr [ %23, %25 ], [ %54, %53 ]
  %29 = phi ptr [ %22, %25 ], [ %28, %53 ]
  %30 = getelementptr inbounds %struct.ip_mc_socklist, ptr %28, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  br i1 %14, label %38, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.ip_mc_socklist, ptr %28, i32 0, i32 1, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %13
  br i1 %37, label %45, label %53

38:                                               ; preds = %33
  %39 = load i32, ptr %26, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ip_mc_socklist, ptr %28, i32 0, i32 1, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41, %38, %34
  tail call fastcc void @ip_mc_leave_src(ptr noundef %0, ptr noundef nonnull %28, ptr noundef %11)
  %46 = load ptr, ptr %28, align 4
  store ptr %46, ptr %29, align 4
  %47 = icmp eq ptr %11, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @__ip_mc_dec_group(ptr noundef nonnull %11, i32 noundef %3, i32 undef) #14
  br label %49

49:                                               ; preds = %48, %45
  %50 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #14, !srcloc !12
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 32, ptr elementtype(i32) %50) #14, !srcloc !24
  %52 = getelementptr inbounds %struct.ip_mc_socklist, ptr %28, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %52, ptr noundef nonnull inttoptr (i32 24 to ptr)) #14
  br label %56

53:                                               ; preds = %41, %34, %27
  %54 = load ptr, ptr %28, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %27

56:                                               ; preds = %53, %49, %21, %15
  %57 = phi i32 [ 0, %49 ], [ -19, %15 ], [ -99, %21 ], [ -99, %53 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip_mc_find_dev(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.flowi4, align 8
  %3 = getelementptr inbounds %struct.ip_mreqn, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @inetdev_by_index(ptr noundef nonnull @init_net, i32 noundef %4) #14
  br label %29

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ip_mreqn, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @__ip_dev_find(ptr noundef nonnull @init_net, i32 noundef %10, i1 noundef zeroext false) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %23

15:                                               ; preds = %8
  %16 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #14
  %17 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false) #14
  store i32 %16, ptr %17, align 4
  %18 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %2, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #14
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 4
  call void @dst_release(ptr noundef %18) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %12
  %24 = phi ptr [ %21, %20 ], [ %13, %12 ]
  %25 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %3, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 68
  %28 = load ptr, ptr %27, align 16
  br label %29

29:                                               ; preds = %23, %20, %15, %12, %6
  %30 = phi ptr [ %7, %6 ], [ null, %12 ], [ %28, %23 ], [ null, %20 ], [ null, %15 ]
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip_mc_leave_src(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ip_mc_socklist, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.ip_mc_socklist, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ip_mc_socklist, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  br i1 %6, label %10, label %48

10:                                               ; preds = %3
  %11 = icmp eq ptr %2, null
  br i1 %11, label %62, label %12

12:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %13 = getelementptr inbounds %struct.in_device, ptr %2, i32 0, i32 5
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %7, align 4
  br label %18

18:                                               ; preds = %23, %16
  %19 = phi ptr [ %14, %16 ], [ %25, %23 ]
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ip_mc_list, ptr %19, i32 0, i32 6
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18

27:                                               ; preds = %23, %12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %62

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.ip_mc_list, ptr %19, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %29) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %30 = getelementptr %struct.ip_mc_list, ptr %19, i32 0, i32 5, i32 %9
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %28
  %34 = add i32 %31, -1
  store i32 %34, ptr %30, align 4
  %35 = getelementptr inbounds %struct.ip_mc_list, ptr %19, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ip_mc_list, ptr %19, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr %struct.ip_mc_list, ptr %19, i32 0, i32 5, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 1, ptr %35, align 4
  br label %47

47:                                               ; preds = %46, %42, %38, %33, %28
  tail call void @_raw_spin_unlock_bh(ptr noundef %29) #14
  br label %62

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.ip_sf_socklist, ptr %5, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ip_sf_socklist, ptr %5, i32 0, i32 3
  %52 = tail call fastcc i32 @ip_mc_del_src(ptr noundef %2, ptr noundef %7, i32 noundef %9, i32 noundef %50, ptr noundef %51, i32 noundef 0)
  store volatile ptr null, ptr %4, align 4
  %53 = load i32, ptr %5, align 4
  %54 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 4) #14
  %55 = extractvalue { i32, i1 } %54, 1
  %56 = extractvalue { i32, i1 } %54, 0
  %57 = tail call i32 @llvm.uadd.sat.i32(i32 %56, i32 16) #14
  %58 = select i1 %55, i32 -1, i32 %57
  %59 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #14, !srcloc !12
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 %58, ptr elementtype(i32) %59) #14, !srcloc !24
  %61 = getelementptr inbounds %struct.ip_sf_socklist, ptr %5, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %61, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %62

62:                                               ; preds = %48, %47, %27, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_source(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.flowi4, align 8
  %7 = alloca %struct.ip_mreqn, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %8 = load i32, ptr %3, align 4
  %9 = and i32 %8, 240
  %10 = icmp eq i32 %9, 224
  br i1 %10, label %11, label %206

11:                                               ; preds = %5
  %12 = tail call i32 @rtnl_is_locked() #14
  %13 = icmp eq i32 %12, 0
  %14 = load i1, ptr @ip_mc_source.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %11
  store i1 true, ptr @ip_mc_source.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2313, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2313) #14
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i32, ptr %3, align 4
  store i32 %19, ptr %7, align 4
  %20 = getelementptr inbounds %struct.ip_mreq_source, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ip_mreqn, ptr %7, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ip_mreqn, ptr %7, i32 0, i32 2
  store i32 %4, ptr %23, align 4
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = tail call ptr @inetdev_by_index(ptr noundef nonnull @init_net, i32 noundef %4) #14
  br label %45

27:                                               ; preds = %18
  %28 = icmp eq i32 %21, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = tail call ptr @__ip_dev_find(ptr noundef nonnull @init_net, i32 noundef %21, i1 noundef zeroext false) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %206, label %39

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #14
  %33 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #14
  store i32 %19, ptr %33, align 4
  %34 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %6, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #14
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %206, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %34, align 4
  call void @dst_release(ptr noundef %34) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %206, label %39

39:                                               ; preds = %36, %29
  %40 = phi ptr [ %37, %36 ], [ %30, %29 ]
  %41 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %23, align 4
  %43 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 68
  %44 = load ptr, ptr %43, align 16
  br label %45

45:                                               ; preds = %39, %25
  %46 = phi i32 [ %4, %25 ], [ %42, %39 ]
  %47 = phi ptr [ %26, %25 ], [ %44, %39 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %206, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.inet_sock, ptr %2, i32 0, i32 18
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %206, label %53

53:                                               ; preds = %62, %49
  %54 = phi ptr [ %63, %62 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.ip_mc_socklist, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %19
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ip_mc_socklist, ptr %54, i32 0, i32 1, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, %46
  br i1 %61, label %65, label %62

62:                                               ; preds = %58, %53
  %63 = load ptr, ptr %54, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %206, label %53

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.ip_mc_socklist, ptr %54, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = getelementptr inbounds %struct.ip_mc_socklist, ptr %54, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, %1
  br i1 %68, label %73, label %72

72:                                               ; preds = %65
  br i1 %71, label %79, label %206

73:                                               ; preds = %65
  br i1 %71, label %83, label %74

74:                                               ; preds = %73
  %75 = call fastcc i32 @ip_mc_add_src(ptr noundef nonnull %47, ptr noundef %3, i32 noundef %1, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %76 = load i32, ptr %69, align 4
  %77 = call fastcc i32 @ip_mc_del_src(ptr noundef nonnull %47, ptr noundef %3, i32 noundef %76, i32 noundef 0, ptr noundef null, i32 noundef 0)
  store i32 %1, ptr %69, align 4
  %78 = load ptr, ptr %66, align 4
  br label %79

79:                                               ; preds = %74, %72
  %80 = phi ptr [ %67, %72 ], [ %78, %74 ]
  %81 = icmp eq i32 %0, 0
  %82 = icmp eq ptr %80, null
  br i1 %81, label %85, label %121

83:                                               ; preds = %73
  %84 = icmp eq i32 %0, 0
  br i1 %84, label %206, label %132

85:                                               ; preds = %79
  br i1 %82, label %206, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.ip_sf_socklist, ptr %80, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %206, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ip_mreq_source, ptr %3, i32 0, i32 2
  br label %92

92:                                               ; preds = %97, %90
  %93 = phi i32 [ 0, %90 ], [ %98, %97 ]
  %94 = getelementptr %struct.ip_sf_socklist, ptr %80, i32 0, i32 3, i32 %93
  %95 = call i32 @bcmp(ptr noundef dereferenceable(4) %94, ptr noundef dereferenceable(4) %91, i32 4)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = add nuw i32 %93, 1
  %99 = icmp eq i32 %98, %88
  br i1 %99, label %206, label %92

100:                                              ; preds = %92
  %101 = icmp eq i32 %88, 1
  %102 = icmp eq i32 %1, 1
  %103 = and i1 %102, %101
  br i1 %103, label %204, label %104

104:                                              ; preds = %100
  %105 = call fastcc i32 @ip_mc_del_src(ptr noundef nonnull %47, ptr noundef %3, i32 noundef %1, i32 noundef 1, ptr noundef %91, i32 noundef 1)
  %106 = add i32 %93, 1
  %107 = load i32, ptr %87, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %109, %104
  %110 = phi i32 [ %115, %109 ], [ %106, %104 ]
  %111 = phi i32 [ %110, %109 ], [ %93, %104 ]
  %112 = getelementptr %struct.ip_sf_socklist, ptr %80, i32 0, i32 3, i32 %110
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr %struct.ip_sf_socklist, ptr %80, i32 0, i32 3, i32 %111
  store i32 %113, ptr %114, align 4
  %115 = add nuw i32 %110, 1
  %116 = load i32, ptr %87, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %109, label %118

118:                                              ; preds = %109, %104
  %119 = phi i32 [ %107, %104 ], [ %116, %109 ]
  %120 = add i32 %119, -1
  store i32 %120, ptr %87, align 4
  br label %206

121:                                              ; preds = %79
  br i1 %82, label %132, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.ip_sf_socklist, ptr %80, i32 0, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 112), align 16
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %206

127:                                              ; preds = %122
  %128 = load i32, ptr %80, align 4
  %129 = icmp eq i32 %124, %128
  br i1 %129, label %130, label %170

130:                                              ; preds = %127
  %131 = add i32 %124, 10
  br label %132

132:                                              ; preds = %130, %121, %83
  %133 = phi i1 [ false, %130 ], [ true, %121 ], [ true, %83 ]
  %134 = phi ptr [ %80, %130 ], [ null, %121 ], [ null, %83 ]
  %135 = phi i32 [ %131, %130 ], [ 10, %121 ], [ 10, %83 ]
  %136 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %135, i32 4) #14
  %137 = extractvalue { i32, i1 } %136, 1
  %138 = extractvalue { i32, i1 } %136, 0
  %139 = call i32 @llvm.uadd.sat.i32(i32 %138, i32 16) #14
  %140 = select i1 %137, i32 -1, i32 %139
  %141 = call ptr @sock_kmalloc(ptr noundef %2, i32 noundef %140, i32 noundef 3264) #14
  %142 = icmp eq ptr %141, null
  br i1 %142, label %206, label %143

143:                                              ; preds = %132
  store i32 %135, ptr %141, align 4
  %144 = add i32 %135, -10
  %145 = getelementptr inbounds %struct.ip_sf_socklist, ptr %141, i32 0, i32 1
  store i32 %144, ptr %145, align 4
  br i1 %133, label %168, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.ip_sf_socklist, ptr %134, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %150, %146
  %151 = phi i32 [ %155, %150 ], [ 0, %146 ]
  %152 = getelementptr %struct.ip_sf_socklist, ptr %134, i32 0, i32 3, i32 %151
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr %struct.ip_sf_socklist, ptr %141, i32 0, i32 3, i32 %151
  store i32 %153, ptr %154, align 4
  %155 = add nuw i32 %151, 1
  %156 = load i32, ptr %147, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %150, label %158

158:                                              ; preds = %150, %146
  %159 = load i32, ptr %134, align 4
  %160 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %159, i32 4) #14
  %161 = extractvalue { i32, i1 } %160, 1
  %162 = extractvalue { i32, i1 } %160, 0
  %163 = call i32 @llvm.uadd.sat.i32(i32 %162, i32 16) #14
  %164 = select i1 %161, i32 -1, i32 %163
  %165 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %165) #14, !srcloc !12
  %166 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %165, ptr %165, i32 %164, ptr elementtype(i32) %165) #14, !srcloc !24
  %167 = getelementptr inbounds %struct.ip_sf_socklist, ptr %134, i32 0, i32 2
  call void @kvfree_call_rcu(ptr noundef %167, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %168

168:                                              ; preds = %158, %143
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  store volatile ptr %141, ptr %66, align 4
  %169 = load i32, ptr %145, align 4
  br label %170

170:                                              ; preds = %168, %127
  %171 = phi i32 [ %124, %127 ], [ %169, %168 ]
  %172 = phi ptr [ %80, %127 ], [ %141, %168 ]
  %173 = getelementptr inbounds %struct.ip_sf_socklist, ptr %172, i32 0, i32 1
  %174 = icmp eq i32 %171, 0
  br i1 %174, label %197, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.ip_mreq_source, ptr %3, i32 0, i32 2
  br label %181

177:                                              ; preds = %186
  %178 = icmp eq i32 %171, -2147483648
  br i1 %178, label %179, label %197

179:                                              ; preds = %177
  %180 = add i32 %171, -1
  br label %189

181:                                              ; preds = %186, %175
  %182 = phi i32 [ 0, %175 ], [ %187, %186 ]
  %183 = getelementptr %struct.ip_sf_socklist, ptr %172, i32 0, i32 3, i32 %182
  %184 = call i32 @bcmp(ptr noundef dereferenceable(4) %183, ptr noundef dereferenceable(4) %176, i32 4)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %206, label %186

186:                                              ; preds = %181
  %187 = add nuw i32 %182, 1
  %188 = icmp eq i32 %187, %171
  br i1 %188, label %177, label %181

189:                                              ; preds = %189, %179
  %190 = phi i32 [ %195, %189 ], [ %180, %179 ]
  %191 = phi i32 [ %190, %189 ], [ %171, %179 ]
  %192 = getelementptr %struct.ip_sf_socklist, ptr %172, i32 0, i32 3, i32 %190
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr %struct.ip_sf_socklist, ptr %172, i32 0, i32 3, i32 %191
  store i32 %193, ptr %194, align 4
  %195 = add i32 %190, -1
  %196 = icmp slt i32 %195, %171
  br i1 %196, label %197, label %189

197:                                              ; preds = %189, %177, %170
  %198 = getelementptr inbounds %struct.ip_mreq_source, ptr %3, i32 0, i32 2
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr %struct.ip_sf_socklist, ptr %172, i32 0, i32 3, i32 %171
  store i32 %199, ptr %200, align 4
  %201 = load i32, ptr %173, align 4
  %202 = add i32 %201, 1
  store i32 %202, ptr %173, align 4
  %203 = call fastcc i32 @ip_mc_add_src(ptr noundef nonnull %47, ptr noundef %3, i32 noundef %1, i32 noundef 1, ptr noundef %198, i32 noundef 1)
  br label %206

204:                                              ; preds = %100
  %205 = call i32 @ip_mc_leave_group(ptr noundef %2, ptr noundef nonnull %7)
  br label %206

206:                                              ; preds = %204, %197, %181, %132, %122, %118, %97, %86, %85, %83, %72, %62, %49, %45, %36, %32, %29, %5
  %207 = phi i32 [ -22, %5 ], [ %205, %204 ], [ -105, %132 ], [ -105, %122 ], [ -22, %72 ], [ -19, %45 ], [ 0, %118 ], [ 0, %197 ], [ -99, %85 ], [ -19, %29 ], [ -19, %36 ], [ -19, %32 ], [ -99, %86 ], [ -22, %49 ], [ -99, %83 ], [ -99, %181 ], [ -99, %97 ], [ -22, %62 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  ret i32 %207
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip_mc_add_src(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %132, label %8

8:                                                ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %9 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 4
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi ptr [ %10, %12 ], [ %21, %19 ]
  %16 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 6
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14

23:                                               ; preds = %19, %8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %132

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %25) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %26 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = icmp eq i32 %5, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr %struct.ip_mc_list, ptr %15, i32 0, i32 5, i32 %2
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = icmp sgt i32 %3, 0
  br i1 %35, label %36, label %118

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 3
  br label %38

38:                                               ; preds = %71, %36
  %39 = phi i32 [ 0, %36 ], [ %72, %71 ]
  %40 = getelementptr i32, ptr %4, i32 %39
  %41 = load ptr, ptr %37, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load i32, ptr %40, align 4
  br label %48

45:                                               ; preds = %48
  %46 = load ptr, ptr %49, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45, %43
  %49 = phi ptr [ %41, %43 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.ip_sf_list, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %44
  br i1 %52, label %63, label %45

53:                                               ; preds = %45, %38
  %54 = phi ptr [ null, %38 ], [ %49, %45 ]
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 2848, i32 noundef 20) #15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %74, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %40, align 4
  %60 = getelementptr inbounds %struct.ip_sf_list, ptr %56, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  %61 = icmp eq ptr %54, null
  %62 = select i1 %61, ptr %37, ptr %54
  store ptr %56, ptr %62, align 4
  br label %63

63:                                               ; preds = %58, %48
  %64 = phi ptr [ %56, %58 ], [ %49, %48 ]
  %65 = getelementptr %struct.ip_sf_list, ptr %64, i32 0, i32 1, i32 %2
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load ptr, ptr %15, align 4
  tail call void @ip_rt_multicast_event(ptr noundef %70) #14
  br label %71

71:                                               ; preds = %69, %63
  %72 = add nuw nsw i32 %39, 1
  %73 = icmp eq i32 %72, %3
  br i1 %73, label %118, label %38

74:                                               ; preds = %53
  br i1 %29, label %75, label %79

75:                                               ; preds = %74
  %76 = getelementptr %struct.ip_mc_list, ptr %15, i32 0, i32 5, i32 %2
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, -1
  store i32 %78, ptr %76, align 4
  br label %79

79:                                               ; preds = %75, %74
  %80 = icmp eq i32 %39, 0
  br i1 %80, label %130, label %81

81:                                               ; preds = %115, %79
  %82 = phi i32 [ %116, %115 ], [ 0, %79 ]
  %83 = getelementptr i32, ptr %4, i32 %82
  br label %84

84:                                               ; preds = %89, %81
  %85 = phi ptr [ %37, %81 ], [ %87, %89 ]
  %86 = phi ptr [ null, %81 ], [ %87, %89 ]
  %87 = load ptr, ptr %85, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %115, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.ip_sf_list, ptr %87, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr %83, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %84

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ip_sf_list, ptr %87, i32 0, i32 1
  %96 = getelementptr %struct.ip_sf_list, ptr %87, i32 0, i32 1, i32 %2
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %94
  %100 = add i32 %97, -1
  store i32 %100, ptr %96, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load ptr, ptr %15, align 4
  tail call void @ip_rt_multicast_event(ptr noundef %103) #14
  br label %104

104:                                              ; preds = %102, %99
  %105 = getelementptr %struct.ip_sf_list, ptr %87, i32 0, i32 1, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, ptr %95, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = icmp eq ptr %86, null
  %113 = load ptr, ptr %87, align 4
  %114 = select i1 %112, ptr %37, ptr %86
  store ptr %113, ptr %114, align 4
  tail call void @kfree(ptr noundef nonnull %87) #14
  br label %115

115:                                              ; preds = %111, %108, %104, %94, %84
  %116 = add nuw nsw i32 %82, 1
  %117 = icmp eq i32 %116, %39
  br i1 %117, label %130, label %81

118:                                              ; preds = %71, %34
  %119 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %28, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  br i1 %121, label %128, label %124

124:                                              ; preds = %123
  %125 = getelementptr %struct.ip_mc_list, ptr %15, i32 0, i32 5, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124, %123
  %129 = phi i32 [ 0, %123 ], [ 1, %124 ]
  store i32 %129, ptr %26, align 4
  br label %130

130:                                              ; preds = %128, %124, %118, %115, %79
  %131 = phi i32 [ 0, %118 ], [ 0, %124 ], [ -105, %79 ], [ 0, %128 ], [ -105, %115 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %25) #14
  br label %132

132:                                              ; preds = %130, %23, %6
  %133 = phi i32 [ %131, %130 ], [ -3, %23 ], [ -19, %6 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip_mc_del_src(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %96, label %8

8:                                                ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %9 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 4
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi ptr [ %10, %12 ], [ %21, %19 ]
  %16 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 6
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14

23:                                               ; preds = %19, %8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %96

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %25) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %26 = icmp eq i32 %5, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = getelementptr %struct.ip_mc_list, ptr %15, i32 0, i32 5, i32 %2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %94, label %31

31:                                               ; preds = %27
  %32 = add i32 %29, -1
  store i32 %32, ptr %28, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = icmp sgt i32 %3, 0
  br i1 %34, label %35, label %80

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 3
  br label %37

37:                                               ; preds = %72, %35
  %38 = phi i32 [ 0, %35 ], [ %78, %72 ]
  %39 = phi i32 [ 0, %35 ], [ %77, %72 ]
  %40 = getelementptr i32, ptr %4, i32 %38
  br label %41

41:                                               ; preds = %46, %37
  %42 = phi ptr [ %36, %37 ], [ %44, %46 ]
  %43 = phi ptr [ null, %37 ], [ %44, %46 ]
  %44 = load ptr, ptr %42, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %72, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ip_sf_list, ptr %44, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %40, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %41

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ip_sf_list, ptr %44, i32 0, i32 1
  %53 = getelementptr %struct.ip_sf_list, ptr %44, i32 0, i32 1, i32 %2
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = add i32 %54, -1
  store i32 %57, ptr %53, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load ptr, ptr %15, align 4
  tail call void @ip_rt_multicast_event(ptr noundef %60) #14
  br label %61

61:                                               ; preds = %59, %56
  %62 = getelementptr %struct.ip_sf_list, ptr %44, i32 0, i32 1, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, ptr %52, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = icmp eq ptr %43, null
  %70 = load ptr, ptr %44, align 4
  %71 = select i1 %69, ptr %36, ptr %43
  store ptr %70, ptr %71, align 4
  tail call void @kfree(ptr noundef nonnull %44) #14
  br label %72

72:                                               ; preds = %68, %65, %61, %51, %41
  %73 = phi i1 [ true, %51 ], [ false, %61 ], [ false, %65 ], [ false, %68 ], [ true, %41 ]
  %74 = phi i32 [ -3, %51 ], [ 0, %61 ], [ 0, %65 ], [ 0, %68 ], [ -3, %41 ]
  %75 = icmp eq i32 %39, 0
  %76 = and i1 %75, %73
  %77 = select i1 %76, i32 %74, i32 %39
  %78 = add nuw nsw i32 %38, 1
  %79 = icmp eq i32 %78, %3
  br i1 %79, label %80, label %37

80:                                               ; preds = %72, %33
  %81 = phi i32 [ 0, %33 ], [ %77, %72 ]
  %82 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = getelementptr %struct.ip_mc_list, ptr %15, i32 0, i32 5, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 1, ptr %82, align 4
  br label %94

94:                                               ; preds = %93, %89, %85, %80, %27
  %95 = phi i32 [ %81, %93 ], [ %81, %89 ], [ %81, %85 ], [ %81, %80 ], [ -22, %27 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %25) #14
  br label %96

96:                                               ; preds = %94, %23, %6
  %97 = phi i32 [ %95, %94 ], [ -3, %23 ], [ -19, %6 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_msfilter(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.flowi4, align 8
  %5 = alloca %struct.ip_mreqn, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %6 = load i32, ptr %1, align 4
  %7 = and i32 %6, 240
  %8 = icmp eq i32 %7, 224
  br i1 %8, label %9, label %138

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.anon.142, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %138

13:                                               ; preds = %9
  %14 = tail call i32 @rtnl_is_locked() #14
  %15 = icmp eq i32 %14, 0
  %16 = load i1, ptr @ip_mc_msfilter.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %13
  store i1 true, ptr @ip_mc_msfilter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2452, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2452) #14
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i32, ptr %1, align 4
  store i32 %21, ptr %5, align 4
  %22 = getelementptr inbounds %struct.anon.142, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ip_mreqn, ptr %5, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ip_mreqn, ptr %5, i32 0, i32 2
  store i32 %2, ptr %25, align 4
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = tail call ptr @inetdev_by_index(ptr noundef nonnull @init_net, i32 noundef %2) #14
  br label %47

29:                                               ; preds = %20
  %30 = icmp eq i32 %23, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = tail call ptr @__ip_dev_find(ptr noundef nonnull @init_net, i32 noundef %23, i1 noundef zeroext false) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %138, label %41

34:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %35 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #14
  store i32 %21, ptr %35, align 4
  %36 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %4, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %138, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 4
  call void @dst_release(ptr noundef %36) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %138, label %41

41:                                               ; preds = %38, %31
  %42 = phi ptr [ %39, %38 ], [ %32, %31 ]
  %43 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 17
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %25, align 4
  %45 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 68
  %46 = load ptr, ptr %45, align 16
  br label %47

47:                                               ; preds = %41, %27
  %48 = phi i32 [ %2, %27 ], [ %44, %41 ]
  %49 = phi ptr [ %28, %27 ], [ %46, %41 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %138, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %10, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.anon.142, ptr %1, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %136, label %58

58:                                               ; preds = %54, %51
  %59 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 18
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %138, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %1, align 4
  br label %64

64:                                               ; preds = %73, %62
  %65 = phi ptr [ %60, %62 ], [ %74, %73 ]
  %66 = getelementptr inbounds %struct.ip_mc_socklist, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %63
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ip_mc_socklist, ptr %65, i32 0, i32 1, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, %48
  br i1 %72, label %76, label %73

73:                                               ; preds = %69, %64
  %74 = load ptr, ptr %65, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %138, label %64

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.anon.142, ptr %1, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %76
  %81 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 4) #14
  %82 = extractvalue { i32, i1 } %81, 1
  %83 = extractvalue { i32, i1 } %81, 0
  %84 = call i32 @llvm.uadd.sat.i32(i32 %83, i32 16) #14
  %85 = select i1 %82, i32 -1, i32 %84
  %86 = call ptr @sock_kmalloc(ptr noundef %0, i32 noundef %85, i32 noundef 3264) #14
  %87 = icmp eq ptr %86, null
  br i1 %87, label %138, label %88

88:                                               ; preds = %80
  %89 = load i32, ptr %77, align 4
  %90 = getelementptr inbounds %struct.ip_sf_socklist, ptr %86, i32 0, i32 1
  store i32 %89, ptr %90, align 4
  store i32 %89, ptr %86, align 4
  %91 = getelementptr inbounds %struct.ip_sf_socklist, ptr %86, i32 0, i32 3
  %92 = getelementptr inbounds %struct.anon.142, ptr %1, i32 0, i32 4
  %93 = load i32, ptr %77, align 4
  %94 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %93, i32 4) #14
  %95 = extractvalue { i32, i1 } %94, 1
  %96 = extractvalue { i32, i1 } %94, 0
  %97 = select i1 %95, i32 -1, i32 %96
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %91, ptr align 4 %92, i32 %97, i1 false)
  %98 = load i32, ptr %10, align 4
  %99 = call fastcc i32 @ip_mc_add_src(ptr noundef nonnull %49, ptr noundef %1, i32 noundef %98, i32 noundef %89, ptr noundef %91, i32 noundef 0)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %88
  %102 = load i32, ptr %86, align 4
  %103 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %102, i32 4) #14
  %104 = extractvalue { i32, i1 } %103, 1
  %105 = extractvalue { i32, i1 } %103, 0
  %106 = call i32 @llvm.uadd.sat.i32(i32 %105, i32 16) #14
  %107 = select i1 %104, i32 -1, i32 %106
  call void @sock_kfree_s(ptr noundef %0, ptr noundef nonnull %86, i32 noundef %107) #14
  br label %138

108:                                              ; preds = %76
  %109 = call fastcc i32 @ip_mc_add_src(ptr noundef nonnull %49, ptr noundef %1, i32 noundef %52, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %110

110:                                              ; preds = %108, %88
  %111 = phi ptr [ %86, %88 ], [ null, %108 ]
  %112 = getelementptr inbounds %struct.ip_mc_socklist, ptr %65, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  %115 = getelementptr inbounds %struct.ip_mc_socklist, ptr %65, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  br i1 %114, label %131, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.ip_sf_socklist, ptr %113, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.ip_sf_socklist, ptr %113, i32 0, i32 3
  %121 = call fastcc i32 @ip_mc_del_src(ptr noundef nonnull %49, ptr noundef %1, i32 noundef %116, i32 noundef %119, ptr noundef %120, i32 noundef 0)
  %122 = load i32, ptr %113, align 4
  %123 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %122, i32 4) #14
  %124 = extractvalue { i32, i1 } %123, 1
  %125 = extractvalue { i32, i1 } %123, 0
  %126 = call i32 @llvm.uadd.sat.i32(i32 %125, i32 16) #14
  %127 = select i1 %124, i32 -1, i32 %126
  %128 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %128) #14, !srcloc !12
  %129 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %128, ptr %128, i32 %127, ptr elementtype(i32) %128) #14, !srcloc !24
  %130 = getelementptr inbounds %struct.ip_sf_socklist, ptr %113, i32 0, i32 2
  call void @kvfree_call_rcu(ptr noundef %130, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %133

131:                                              ; preds = %110
  %132 = call fastcc i32 @ip_mc_del_src(ptr noundef nonnull %49, ptr noundef %1, i32 noundef %116, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %133

133:                                              ; preds = %131, %117
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  store volatile ptr %111, ptr %112, align 4
  %134 = load i32, ptr %10, align 4
  %135 = getelementptr inbounds %struct.ip_mc_socklist, ptr %65, i32 0, i32 2
  store i32 %134, ptr %135, align 4
  br label %138

136:                                              ; preds = %54
  %137 = call i32 @ip_mc_leave_group(ptr noundef %0, ptr noundef nonnull %5)
  br label %138

138:                                              ; preds = %136, %133, %101, %80, %73, %58, %47, %38, %34, %31, %9, %3
  %139 = phi i32 [ -22, %3 ], [ -22, %9 ], [ %137, %136 ], [ -105, %80 ], [ -19, %47 ], [ %99, %101 ], [ 0, %133 ], [ -19, %31 ], [ -19, %38 ], [ -19, %34 ], [ -22, %58 ], [ -22, %73 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_msfget(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.flowi4, align 8
  %6 = load i32, ptr %1, align 4
  %7 = tail call i32 @rtnl_is_locked() #14
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @ip_mc_msfget.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %4
  store i1 true, ptr @ip_mc_msfget.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2535, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2535) #14
  br label %13

13:                                               ; preds = %12, %4
  %14 = and i32 %6, 240
  %15 = icmp eq i32 %14, 224
  br i1 %15, label %16, label %116

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.anon.142, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @__ip_dev_find(ptr noundef nonnull @init_net, i32 noundef %18, i1 noundef zeroext false) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %116, label %31

23:                                               ; preds = %16
  %24 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %25 = getelementptr inbounds %struct.flowi4, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #14
  store i32 %24, ptr %25, align 4
  %26 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %5, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %116, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %26, align 4
  call void @dst_release(ptr noundef %26) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %116, label %31

31:                                               ; preds = %28, %20
  %32 = phi ptr [ %29, %28 ], [ %21, %20 ]
  %33 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 17
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 68
  %36 = load ptr, ptr %35, align 16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %116, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 18
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %116, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %1, align 4
  br label %44

44:                                               ; preds = %53, %42
  %45 = phi ptr [ %40, %42 ], [ %54, %53 ]
  %46 = getelementptr inbounds %struct.ip_mc_socklist, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %43
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ip_mc_socklist, ptr %45, i32 0, i32 1, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %34
  br i1 %52, label %56, label %53

53:                                               ; preds = %49, %44
  %54 = load ptr, ptr %45, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %116, label %44

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.ip_mc_socklist, ptr %45, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.anon.142, ptr %1, i32 0, i32 2
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ip_mc_socklist, ptr %45, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.ip_sf_socklist, ptr %61, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %56
  %67 = phi i32 [ %65, %63 ], [ 0, %56 ]
  %68 = getelementptr inbounds %struct.anon.142, ptr %1, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = call i32 @llvm.umin.i32(i32 %67, i32 %69)
  %71 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %70, i32 4) #14
  %72 = extractvalue { i32, i1 } %71, 1
  %73 = extractvalue { i32, i1 } %71, 0
  %74 = select i1 %72, i32 -1, i32 %73
  store i32 %67, ptr %68, align 4
  %75 = shl i32 %70, 2
  %76 = add i32 %75, 16
  %77 = tail call ptr @llvm.thread.pointer() #14
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %79 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %78) #17, !srcloc !27
  %80 = and i32 %79, -13
  %81 = or i32 %80, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #14, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !29
  %82 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %76, i32 -1090519041) #14, !srcloc !30
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #14, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !29
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %66
  %85 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1090519040) #16, !srcloc !31
  %86 = extractvalue { i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %84
  %89 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %78) #17, !srcloc !27
  %90 = and i32 %89, -13
  %91 = or i32 %90, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #14, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !29
  %92 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %1, i32 noundef 16) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #14, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !29
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %88
  %95 = icmp eq i32 %74, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.anon.142, ptr %2, i32 0, i32 4
  %98 = getelementptr inbounds %struct.ip_sf_socklist, ptr %61, i32 0, i32 3
  %99 = icmp slt i32 %74, 0
  %100 = load i1, ptr @check_copy_size.__already_done, align 1
  %101 = xor i1 %100, true
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %103, label %104, !prof !8

103:                                              ; preds = %96
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %104

104:                                              ; preds = %103, %96
  br i1 %99, label %116, label %105, !prof !8

105:                                              ; preds = %104
  %106 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %97, i32 %74, i32 -1090519040) #16, !srcloc !31
  %107 = extractvalue { i32, i32 } %106, 0
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %78) #17, !srcloc !27
  %111 = and i32 %110, -13
  %112 = or i32 %111, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #14, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !29
  %113 = call i32 @arm_copy_to_user(ptr noundef %97, ptr noundef %98, i32 noundef %74) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #14, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !29
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109, %94
  br label %116

116:                                              ; preds = %115, %109, %105, %104, %88, %84, %66, %53, %38, %31, %28, %23, %20, %13
  %117 = phi i32 [ 0, %115 ], [ -22, %13 ], [ -14, %88 ], [ -14, %66 ], [ -14, %109 ], [ -19, %31 ], [ -19, %20 ], [ -19, %28 ], [ -19, %23 ], [ -14, %84 ], [ -14, %104 ], [ -14, %105 ], [ -99, %38 ], [ -99, %53 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_gsfget(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__kernel_sockaddr_storage, align 4
  %5 = tail call i32 @rtnl_is_locked() #14
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @ip_mc_gsfget.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @ip_mc_gsfget.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2590, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2590) #14
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.anon.147, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %76

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.anon.147, ptr %1, i32 0, i32 1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 240
  %19 = icmp eq i32 %18, 224
  br i1 %19, label %20, label %76

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 18
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %76, label %24

24:                                               ; preds = %34, %20
  %25 = phi ptr [ %35, %34 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.ip_mc_socklist, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %17
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ip_mc_socklist, ptr %25, i32 0, i32 1, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %1, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %24
  %35 = load ptr, ptr %25, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %76, label %24

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.ip_mc_socklist, ptr %25, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.anon.147, ptr %1, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ip_mc_socklist, ptr %25, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.ip_sf_socklist, ptr %42, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %37
  %48 = phi i32 [ %46, %44 ], [ 0, %37 ]
  %49 = getelementptr inbounds %struct.anon.147, ptr %1, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @llvm.umin.i32(i32 %48, i32 %50)
  store i32 %48, ptr %49, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 2
  br label %55

55:                                               ; preds = %72, %53
  %56 = phi ptr [ %2, %53 ], [ %74, %72 ]
  %57 = phi i32 [ 0, %53 ], [ %73, %72 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  store i16 2, ptr %4, align 4
  %58 = getelementptr %struct.ip_sf_socklist, ptr %42, i32 0, i32 3, i32 %57
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %54, align 4
  %60 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %56, i32 128, i32 -1090519040) #16, !srcloc !31
  %61 = extractvalue { i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #14
  br label %76

64:                                               ; preds = %55
  %65 = tail call ptr @llvm.thread.pointer() #14
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #17, !srcloc !27
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #14, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !29
  %70 = call i32 @arm_copy_to_user(ptr noundef %56, ptr noundef nonnull %4, i32 noundef 128) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #14, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !29
  %71 = icmp eq i32 %70, 0
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #14
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = add nuw nsw i32 %57, 1
  %74 = getelementptr %struct.__kernel_sockaddr_storage, ptr %56, i32 1
  %75 = icmp eq i32 %73, %51
  br i1 %75, label %76, label %55

76:                                               ; preds = %72, %64, %63, %47, %34, %20, %15, %11
  %77 = phi i32 [ -22, %11 ], [ -22, %15 ], [ -14, %63 ], [ 0, %47 ], [ -99, %20 ], [ -14, %64 ], [ 0, %72 ], [ -99, %34 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_sf_allow(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %1, 240
  %7 = icmp eq i32 %6, 224
  br i1 %7, label %8, label %61

8:                                                ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 18
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = icmp ne i32 %4, 0
  br label %14

14:                                               ; preds = %26, %12
  %15 = phi ptr [ %10, %12 ], [ %27, %26 ]
  %16 = getelementptr inbounds %struct.ip_mc_socklist, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ip_mc_socklist, ptr %15, i32 0, i32 1, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %3
  %23 = icmp eq i32 %21, %4
  %24 = select i1 %13, i1 %23, i1 false
  %25 = or i1 %22, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %19, %14
  %27 = load volatile ptr, ptr %15, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %14

29:                                               ; preds = %26, %8
  %30 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %31 = load i16, ptr %30, align 8
  %32 = lshr i16 %31, 6
  %33 = and i16 %32, 1
  %34 = zext i16 %33 to i32
  br label %59

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.ip_mc_socklist, ptr %15, i32 0, i32 3
  %37 = load volatile ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ip_mc_socklist, ptr %15, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = icmp eq ptr %37, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.ip_sf_socklist, ptr %37, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %50

47:                                               ; preds = %50
  %48 = add nuw i32 %51, 1
  %49 = icmp eq i32 %48, %45
  br i1 %49, label %55, label %50

50:                                               ; preds = %47, %43
  %51 = phi i32 [ %48, %47 ], [ 0, %43 ]
  %52 = getelementptr %struct.ip_sf_socklist, ptr %37, i32 0, i32 3, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %2
  br i1 %54, label %57, label %47

55:                                               ; preds = %47, %43
  %56 = icmp eq i32 %39, 1
  br i1 %56, label %59, label %58

57:                                               ; preds = %50
  br i1 %40, label %59, label %58

58:                                               ; preds = %57, %55
  br label %59

59:                                               ; preds = %58, %57, %55, %35, %29
  %60 = phi i32 [ 1, %58 ], [ %41, %35 ], [ %34, %29 ], [ 0, %55 ], [ 0, %57 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %61

61:                                               ; preds = %59, %5
  %62 = phi i32 [ %60, %59 ], [ 1, %5 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_mc_drop_socket(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  tail call void @rtnl_lock() #14
  %6 = load ptr, ptr %2, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  br label %10

10:                                               ; preds = %20, %8
  %11 = phi ptr [ %6, %8 ], [ %23, %20 ]
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %2, align 8
  %13 = getelementptr inbounds %struct.ip_mc_socklist, ptr %11, i32 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @inetdev_by_index(ptr noundef nonnull @init_net, i32 noundef %14) #14
  tail call fastcc void @ip_mc_leave_src(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %15)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ip_mc_socklist, ptr %11, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  tail call void @__ip_mc_dec_group(ptr noundef nonnull %15, i32 noundef %19, i32 undef) #14
  br label %20

20:                                               ; preds = %17, %10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #14, !srcloc !12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 32, ptr elementtype(i32) %9) #14, !srcloc !24
  %22 = getelementptr inbounds %struct.ip_mc_socklist, ptr %11, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %22, ptr noundef nonnull inttoptr (i32 24 to ptr)) #14
  %23 = load ptr, ptr %2, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %10

25:                                               ; preds = %20, %5
  tail call void @rtnl_unlock() #14
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inetdev_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_check_mc_rcu(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 6
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = mul i32 %1, 1640531527
  %10 = lshr i32 %9, 23
  %11 = getelementptr ptr, ptr %6, i32 %10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %69, label %14

14:                                               ; preds = %19, %8
  %15 = phi ptr [ %21, %19 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %15, i32 0, i32 7
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %69, label %14

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %69, label %27

27:                                               ; preds = %32, %23
  %28 = phi ptr [ %34, %32 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.ip_mc_list, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ip_mc_list, ptr %28, i32 0, i32 6
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %69, label %27

36:                                               ; preds = %27, %14
  %37 = phi ptr [ %28, %27 ], [ %15, %14 ]
  %38 = icmp eq i8 %3, 2
  br i1 %38, label %69, label %39

39:                                               ; preds = %36
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ip_mc_list, ptr %37, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %42) #14
  %43 = getelementptr inbounds %struct.ip_mc_list, ptr %37, i32 0, i32 3
  br label %44

44:                                               ; preds = %48, %41
  %45 = phi ptr [ %43, %41 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ip_sf_list, ptr %46, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %2
  br i1 %51, label %52, label %44

52:                                               ; preds = %48
  %53 = getelementptr %struct.ip_sf_list, ptr %46, i32 0, i32 1, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ip_sf_list, ptr %46, i32 0, i32 1
  %58 = getelementptr inbounds %struct.ip_mc_list, ptr %37, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  br label %62

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.ip_mc_list, ptr %37, i32 0, i32 5
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %59, %56 ], [ 0, %60 ]
  %64 = phi ptr [ %57, %56 ], [ %61, %60 ]
  %65 = load i32, ptr %64, align 4
  %66 = icmp ne i32 %65, %63
  br label %67

67:                                               ; preds = %62, %52
  %68 = phi i1 [ true, %52 ], [ %66, %62 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %42) #14
  br label %69

69:                                               ; preds = %67, %39, %36, %32, %23, %19, %8
  %70 = phi i1 [ %68, %67 ], [ %38, %36 ], [ true, %39 ], [ false, %23 ], [ false, %8 ], [ false, %32 ], [ false, %19 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @igmp_mc_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @igmp_net_ops) #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @igmp_notifier) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @igmp_net_ops) #14
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_checksum_trimmed(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @ip_mc_validate_checksum(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 32767
  store i16 %4, ptr %2, align 8
  %5 = lshr i16 %3, 5
  %6 = trunc i16 %5 to i2
  switch i2 %6, label %38 [
    i2 1, label %20
    i2 -1, label %7
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %10, %15
  %18 = add i32 %17, %16
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %7, %1
  %21 = or i16 %3, -32768
  store i16 %21, ptr %2, align 8
  %22 = and i16 %3, 96
  %23 = icmp eq i16 %22, 32
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = trunc i16 %26 to i8
  %28 = and i8 %27, 12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = and i16 %21, -97
  store i16 %31, ptr %2, align 8
  br label %59

32:                                               ; preds = %24
  %33 = add i8 %27, 12
  %34 = and i8 %33, 12
  %35 = zext i8 %34 to i16
  %36 = and i16 %26, -13
  %37 = or i16 %36, %35
  store i16 %37, ptr %25, align 2
  br label %59

38:                                               ; preds = %7, %1
  %39 = and i16 %3, 96
  %40 = icmp eq i16 %39, 64
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %43) #16, !srcloc !19
  %45 = icmp ugt i32 %44, -65537
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = or i16 %3, -32768
  br label %56

48:                                               ; preds = %41, %38
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 0, ptr %49, align 4
  %50 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #14
  %51 = icmp eq i16 %50, 0
  %52 = load i16, ptr %2, align 8
  %53 = select i1 %51, i16 -32768, i16 0
  %54 = and i16 %52, 32767
  %55 = or i16 %54, %53
  br label %56

56:                                               ; preds = %48, %46
  %57 = phi i16 [ %55, %48 ], [ %47, %46 ]
  %58 = phi i16 [ %50, %48 ], [ 0, %46 ]
  store i16 %57, ptr %2, align 8
  br label %59

59:                                               ; preds = %56, %32, %30, %20
  %60 = phi i16 [ %58, %56 ], [ 0, %20 ], [ 0, %30 ], [ 0, %32 ]
  ret i16 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arp_mc_map(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @in_dev_finish_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @igmp_net_init(ptr noundef %0) #5 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @igmp_mc_seq_ops, i32 noundef 8, ptr noundef null) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %7, ptr noundef nonnull @igmp_mcf_seq_ops, i32 noundef 12, ptr noundef null) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 15
  %12 = tail call i32 @inet_ctl_sock_create(ptr noundef %11, i16 noundef zeroext 2, i16 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef %0) #14
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %12) #18
  %16 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %16) #14
  br label %17

17:                                               ; preds = %14, %6
  %18 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef %18) #14
  br label %19

19:                                               ; preds = %17, %10, %1
  %20 = phi i32 [ 0, %10 ], [ -12, %1 ], [ -12, %17 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igmp_net_exit(ptr nocapture noundef readonly %0) #9 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %3) #14
  %4 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef %4) #14
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 71
  %10 = load ptr, ptr %9, align 8
  tail call void @sock_release(ptr noundef %10) #14
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @igmp_mc_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %3 = load i64, ptr %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = add i64 %3, -1
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %8, i32 0, i32 2
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %8, i32 0, i32 1
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %12 = getelementptr i8, ptr %11, i32 -40
  store ptr %12, ptr %10, align 4
  %13 = icmp eq ptr %11, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %13, label %63, label %14

14:                                               ; preds = %23, %5
  %15 = phi ptr [ %24, %23 ], [ %11, %5 ]
  %16 = getelementptr i8, ptr %15, i32 424
  %17 = load volatile ptr, ptr %16, align 16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.in_device, ptr %17, i32 0, i32 5
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %14
  %24 = load volatile ptr, ptr %15, align 8
  %25 = getelementptr i8, ptr %24, i32 -40
  store ptr %25, ptr %10, align 4
  %26 = icmp eq ptr %24, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %26, label %63, label %14

27:                                               ; preds = %19
  store ptr %17, ptr %9, align 4
  %28 = icmp eq i64 %6, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %59, %27
  %30 = phi i64 [ %61, %59 ], [ %6, %27 ]
  %31 = phi ptr [ %60, %59 ], [ %21, %27 ]
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds %struct.ip_mc_list, ptr %31, i32 0, i32 6
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %32, i32 0, i32 1
  %38 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %32, i32 0, i32 2
  %39 = load ptr, ptr %37, align 4
  br label %40

40:                                               ; preds = %55, %36
  %41 = phi ptr [ %39, %36 ], [ %45, %55 ]
  %42 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 7
  %43 = load volatile ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  %45 = getelementptr i8, ptr %43, i32 -40
  %46 = select i1 %44, ptr null, ptr %45
  store ptr %46, ptr %37, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 68
  %50 = load volatile ptr, ptr %49, align 16
  store ptr %50, ptr %38, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.in_device, ptr %50, i32 0, i32 5
  %54 = load volatile ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi ptr [ %54, %52 ], [ null, %48 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %40, label %59

58:                                               ; preds = %40
  store ptr null, ptr %38, align 4
  br label %63

59:                                               ; preds = %55, %29
  %60 = phi ptr [ %34, %29 ], [ %56, %55 ]
  %61 = add i64 %30, -1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %29

63:                                               ; preds = %59, %58, %27, %23, %5, %2
  %64 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ %21, %27 ], [ null, %5 ], [ null, %58 ], [ %60, %59 ], [ null, %23 ]
  ret ptr %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igmp_mc_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %4, i32 0, i32 2
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %4, i32 0, i32 1
  store ptr null, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @igmp_mc_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #11 {
  %4 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  br i1 %4, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %6, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %6, i32 0, i32 1
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %11 = getelementptr i8, ptr %10, i32 -40
  store ptr %11, ptr %9, align 4
  %12 = icmp eq ptr %10, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %12, label %54, label %13

13:                                               ; preds = %23, %7
  %14 = phi ptr [ %24, %23 ], [ %10, %7 ]
  %15 = getelementptr i8, ptr %14, i32 424
  %16 = load volatile ptr, ptr %15, align 16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.in_device, ptr %16, i32 0, i32 5
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store ptr %16, ptr %8, align 4
  br label %54

23:                                               ; preds = %18, %13
  %24 = load volatile ptr, ptr %14, align 8
  %25 = getelementptr i8, ptr %24, i32 -40
  store ptr %25, ptr %9, align 4
  %26 = icmp eq ptr %24, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %26, label %54, label %13

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 6
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %6, i32 0, i32 1
  %33 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %6, i32 0, i32 2
  %34 = load ptr, ptr %32, align 4
  br label %35

35:                                               ; preds = %51, %31
  %36 = phi ptr [ %34, %31 ], [ %40, %51 ]
  %37 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 7
  %38 = load volatile ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  %40 = getelementptr i8, ptr %38, i32 -40
  %41 = select i1 %39, ptr null, ptr %40
  store ptr %41, ptr %32, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store ptr null, ptr %33, align 4
  br label %54

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 68
  %46 = load volatile ptr, ptr %45, align 16
  store ptr %46, ptr %33, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.in_device, ptr %46, i32 0, i32 5
  %50 = load volatile ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi ptr [ %50, %48 ], [ null, %44 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %35, label %54

54:                                               ; preds = %51, %43, %27, %23, %22, %7
  %55 = phi ptr [ %20, %22 ], [ null, %7 ], [ null, %43 ], [ %29, %27 ], [ null, %23 ], [ %52, %51 ]
  %56 = load i64, ptr %2, align 8
  %57 = add i64 %56, 1
  store i64 %57, ptr %2, align 8
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igmp_mc_seq_show(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #14
  br label %41

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.in_device, ptr %9, i32 0, i32 5
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.in_device, ptr %9, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %17, ptr noundef %15, i32 noundef %19, ptr noundef nonnull @.str.8) #14
  br label %20

20:                                               ; preds = %13, %5
  %21 = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 8, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 12
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = icmp eq i8 %29, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = sub i32 %22, %23
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0) #14
  %35 = tail call i32 @jiffies_to_clock_t(i32 noundef %34) #14
  br label %36

36:                                               ; preds = %32, %20
  %37 = phi i32 [ %35, %32 ], [ 0, %20 ]
  %38 = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 13
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %25, i32 noundef %27, i32 noundef %30, i32 noundef %37, i32 noundef %40) #14
  br label %41

41:                                               ; preds = %36, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @igmp_mcf_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %3 = load i64, ptr %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %90, label %5

5:                                                ; preds = %2
  %6 = add i64 %3, -1
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %8, i32 0, i32 2
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %8, i32 0, i32 3
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %8, i32 0, i32 1
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %13 = getelementptr i8, ptr %12, i32 -40
  store ptr %13, ptr %11, align 4
  %14 = icmp eq ptr %12, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %14, label %90, label %15

15:                                               ; preds = %32, %5
  %16 = phi ptr [ %36, %32 ], [ %13, %5 ]
  %17 = phi ptr [ %35, %32 ], [ %12, %5 ]
  %18 = getelementptr i8, ptr %17, i32 424
  %19 = load volatile ptr, ptr %18, align 16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21, !prof !8

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.in_device, ptr %19, i32 0, i32 5
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25, !prof !8

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ip_mc_list, ptr %23, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %26) #14
  %27 = getelementptr inbounds %struct.ip_mc_list, ptr %23, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %38, !prof !8

30:                                               ; preds = %25
  tail call void @_raw_spin_unlock_bh(ptr noundef %26) #14
  %31 = load ptr, ptr %11, align 4
  br label %32

32:                                               ; preds = %30, %21, %15
  %33 = phi ptr [ %16, %15 ], [ %31, %30 ], [ %16, %21 ]
  %34 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 7
  %35 = load volatile ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i32 -40
  store ptr %36, ptr %11, align 4
  %37 = icmp eq ptr %35, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %37, label %90, label %15

38:                                               ; preds = %25
  store ptr %23, ptr %10, align 4
  store ptr %19, ptr %9, align 4
  %39 = icmp eq i64 %6, 0
  br i1 %39, label %90, label %40

40:                                               ; preds = %86, %38
  %41 = phi i64 [ %88, %86 ], [ %6, %38 ]
  %42 = phi ptr [ %87, %86 ], [ %28, %38 ]
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %86

45:                                               ; preds = %40
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %46, i32 0, i32 1
  %49 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %46, i32 0, i32 2
  %50 = load ptr, ptr %47, align 4
  br label %51

51:                                               ; preds = %78, %45
  %52 = phi ptr [ %50, %45 ], [ %81, %78 ]
  %53 = getelementptr inbounds %struct.ip_mc_list, ptr %52, i32 0, i32 11
  tail call void @_raw_spin_unlock_bh(ptr noundef %53) #14
  %54 = load ptr, ptr %47, align 4
  %55 = getelementptr inbounds %struct.ip_mc_list, ptr %54, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %47, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %51
  %59 = load ptr, ptr %48, align 4
  br label %60

60:                                               ; preds = %75, %58
  %61 = phi ptr [ %59, %58 ], [ %65, %75 ]
  %62 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 7
  %63 = load volatile ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  %65 = getelementptr i8, ptr %63, i32 -40
  %66 = select i1 %64, ptr null, ptr %65
  store ptr %66, ptr %48, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %85, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 68
  %70 = load volatile ptr, ptr %69, align 16
  store ptr %70, ptr %49, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.in_device, ptr %70, i32 0, i32 5
  %74 = load volatile ptr, ptr %73, align 4
  store ptr %74, ptr %47, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi ptr [ %74, %72 ], [ null, %68 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %60, label %78

78:                                               ; preds = %75, %51
  %79 = phi ptr [ %56, %51 ], [ %76, %75 ]
  %80 = getelementptr inbounds %struct.ip_mc_list, ptr %79, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %80) #14
  %81 = load ptr, ptr %47, align 4
  %82 = getelementptr inbounds %struct.ip_mc_list, ptr %81, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %51, label %86

85:                                               ; preds = %60
  store ptr null, ptr %49, align 4
  br label %90

86:                                               ; preds = %78, %40
  %87 = phi ptr [ %43, %40 ], [ %83, %78 ]
  %88 = add i64 %41, -1
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %40

90:                                               ; preds = %86, %85, %38, %32, %5, %2
  %91 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ %28, %38 ], [ null, %5 ], [ null, %85 ], [ %87, %86 ], [ null, %32 ]
  ret ptr %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igmp_mcf_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ip_mc_list, ptr %6, i32 0, i32 11
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #14
  store ptr null, ptr %5, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %4, i32 0, i32 2
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %4, i32 0, i32 1
  store ptr null, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @igmp_mcf_seq_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %4, label %5, label %38

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %7, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %7, i32 0, i32 3
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %7, i32 0, i32 1
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %12 = getelementptr i8, ptr %11, i32 -40
  store ptr %12, ptr %10, align 4
  %13 = icmp eq ptr %11, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %13, label %83, label %14

14:                                               ; preds = %32, %5
  %15 = phi ptr [ %36, %32 ], [ %12, %5 ]
  %16 = phi ptr [ %35, %32 ], [ %11, %5 ]
  %17 = getelementptr i8, ptr %16, i32 424
  %18 = load volatile ptr, ptr %17, align 16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20, !prof !8

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.in_device, ptr %18, i32 0, i32 5
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24, !prof !8

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ip_mc_list, ptr %22, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %25) #14
  %26 = getelementptr inbounds %struct.ip_mc_list, ptr %22, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31, !prof !8

29:                                               ; preds = %24
  tail call void @_raw_spin_unlock_bh(ptr noundef %25) #14
  %30 = load ptr, ptr %10, align 4
  br label %32

31:                                               ; preds = %24
  store ptr %22, ptr %9, align 4
  store ptr %18, ptr %8, align 4
  br label %83

32:                                               ; preds = %29, %20, %14
  %33 = phi ptr [ %15, %14 ], [ %30, %29 ], [ %15, %20 ]
  %34 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 7
  %35 = load volatile ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i32 -40
  store ptr %36, ptr %10, align 4
  %37 = icmp eq ptr %35, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %37, label %83, label %14

38:                                               ; preds = %3
  %39 = load ptr, ptr %1, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %83

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %43, i32 0, i32 1
  %46 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %43, i32 0, i32 2
  %47 = load ptr, ptr %44, align 4
  br label %48

48:                                               ; preds = %76, %41
  %49 = phi ptr [ %47, %41 ], [ %79, %76 ]
  %50 = getelementptr inbounds %struct.ip_mc_list, ptr %49, i32 0, i32 11
  tail call void @_raw_spin_unlock_bh(ptr noundef %50) #14
  %51 = load ptr, ptr %44, align 4
  %52 = getelementptr inbounds %struct.ip_mc_list, ptr %51, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  store ptr %53, ptr %44, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %76

55:                                               ; preds = %48
  %56 = load ptr, ptr %45, align 4
  br label %57

57:                                               ; preds = %73, %55
  %58 = phi ptr [ %56, %55 ], [ %62, %73 ]
  %59 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 7
  %60 = load volatile ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  %62 = getelementptr i8, ptr %60, i32 -40
  %63 = select i1 %61, ptr null, ptr %62
  store ptr %63, ptr %45, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store ptr null, ptr %46, align 4
  br label %83

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 68
  %68 = load volatile ptr, ptr %67, align 16
  store ptr %68, ptr %46, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.in_device, ptr %68, i32 0, i32 5
  %72 = load volatile ptr, ptr %71, align 4
  store ptr %72, ptr %44, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi ptr [ %72, %70 ], [ null, %66 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %57, label %76

76:                                               ; preds = %73, %48
  %77 = phi ptr [ %53, %48 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.ip_mc_list, ptr %77, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %78) #14
  %79 = load ptr, ptr %44, align 4
  %80 = getelementptr inbounds %struct.ip_mc_list, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %48, label %83

83:                                               ; preds = %76, %65, %38, %32, %31, %5
  %84 = phi ptr [ %27, %31 ], [ null, %5 ], [ null, %65 ], [ %39, %38 ], [ null, %32 ], [ %81, %76 ]
  %85 = load i64, ptr %2, align 8
  %86 = add i64 %85, 1
  store i64 %86, ptr %2, align 8
  ret ptr %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igmp_mcf_seq_show(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.11) #14
  br label %24

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ip_mc_list, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = getelementptr inbounds %struct.ip_sf_list, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = getelementptr inbounds %struct.ip_sf_list, ptr %1, i32 0, i32 1
  %21 = getelementptr %struct.ip_sf_list, ptr %1, i32 0, i32 1, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %11, ptr noundef %9, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %23) #14
  br label %24

24:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @igmp_netdev_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #12 {
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }
attributes #18 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2149117455}
!10 = !{i64 2149117672}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 614575, i64 2148104546, i64 2148104572, i64 2148104619, i64 2148104641, i64 2148104669, i64 2148104689}
!13 = !{i64 2148117419, i64 2148117451, i64 2148117480, i64 2148117514, i64 2148117545, i64 2148117568}
!14 = !{i64 2155914606}
!15 = !{i64 2155891840}
!16 = !{i64 2155903124}
!17 = !{!"auto-init"}
!18 = !{i64 5586012, i64 5586051, i64 5586077, i64 5586101, i64 5586126, i64 5586152, i64 5586177, i64 5586203, i64 5586230, i64 5586256, i64 5586295, i64 5586339, i64 5586370, i64 5586395}
!19 = !{i64 5585629}
!20 = !{i64 2148217641}
!21 = !{i64 2148119776, i64 2148119808, i64 2148119837, i64 2148119871, i64 2148119902, i64 2148119925}
!22 = !{i64 2149067088}
!23 = !{i64 2155962257}
!24 = !{i64 2148118318, i64 2148118344, i64 2148118373, i64 2148118407, i64 2148118438, i64 2148118461}
!25 = !{i64 2155992453}
!26 = !{i64 2156007210}
!27 = !{i64 3590816}
!28 = !{i64 3591013}
!29 = !{i64 2151076292}
!30 = !{i64 2156018481, i64 2156018761, i64 2156019095, i64 2156019429}
!31 = !{i64 2151095282, i64 2151095307}
