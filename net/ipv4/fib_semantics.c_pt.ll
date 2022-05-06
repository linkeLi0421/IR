; ModuleID = '/llk/IR/net/ipv4/fib_semantics.c_pt.bc'
source_filename = "../net/ipv4/fib_semantics.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_nh_common_release:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_nh_common_release\22\09\09\09\09\09"
module asm "__kstrtabns_fib_nh_common_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_fib_info:\09\09\09\09\09"
module asm "\09.asciz \09\22free_fib_info\22\09\09\09\09\09"
module asm "__kstrtabns_free_fib_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_nh_common_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_nh_common_init\22\09\09\09\09\09"
module asm "__kstrtabns_fib_nh_common_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_nexthop_info:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_nexthop_info\22\09\09\09\09\09"
module asm "__kstrtabns_fib_nexthop_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_add_nexthop:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_add_nexthop\22\09\09\09\09\09"
module asm "__kstrtabns_fib_add_nexthop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fib_prop = type { i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dst_metrics = type { [17 x i32], %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.59, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.59 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.173, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.173 = type { ptr }
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
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.174, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.174 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.fnhe_hash_bucket = type { ptr }
%struct.fib_nh_exception = type { ptr, i32, i32, i32, i8, i32, i32, ptr, ptr, i32, %struct.callback_head }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32 }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.181 }
%union.anon.181 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.183, %struct.list_head, ptr }
%union.anon.183 = type { %struct.anon.185 }
%struct.anon.185 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.182 }
%union.anon.182 = type { %struct.fib_nh }
%struct.fib_rt_info = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.fib_alias = type { %struct.hlist_node, ptr, i8, i8, i8, i8, i32, i16, i8, i8, i8, %struct.callback_head }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.140, [48 x i8], %union.anon.141, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.143, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.140 = type { i64 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, ptr }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.145, i32, i32, i32, i16, i16, %union.anon.147, %union.anon.148, %union.anon.149, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.145 = type { i32 }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { i16 }
%struct.fib_config = type { i8, i8, i8, i8, i8, i8, i32, i32, %union.anon.186, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.nl_info, ptr, i16 }
%union.anon.186 = type { %struct.in6_addr }
%struct.nlattr = type { i16, i16 }
%struct.fib6_config = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i32, ptr, i32, i32, ptr, %struct.nl_info, ptr, i16, i8 }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.rtnexthop = type { i16, i8, i8, i32 }
%struct.fib_nh_notifier_info = type { %struct.fib_notifier_info, ptr }
%struct.fib_notifier_info = type { i32, ptr }
%struct.fib_table = type { %struct.hlist_node, i32, i32, %struct.callback_head, ptr, [0 x i32] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }

@fib_props = dso_local local_unnamed_addr constant [12 x %struct.fib_prop] [%struct.fib_prop { i32 0, i8 -1 }, %struct.fib_prop zeroinitializer, %struct.fib_prop { i32 0, i8 -2 }, %struct.fib_prop { i32 0, i8 -3 }, %struct.fib_prop { i32 0, i8 -3 }, %struct.fib_prop zeroinitializer, %struct.fib_prop { i32 -22, i8 0 }, %struct.fib_prop { i32 -113, i8 0 }, %struct.fib_prop { i32 -13, i8 0 }, %struct.fib_prop { i32 -11, i8 0 }, %struct.fib_prop { i32 -22, i8 -1 }, %struct.fib_prop { i32 -22, i8 -1 }], align 4
@__kstrtab_fib_nh_common_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_nh_common_release = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_nh_common_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_nh_common_release to i32), ptr @__kstrtab_fib_nh_common_release, ptr @__kstrtabns_fib_nh_common_release }, section "___ksymtab_gpl+fib_nh_common_release", align 4
@.str = private unnamed_addr constant [29 x i8] c"\014Freeing alive fib_info %p\0A\00", align 1
@__kstrtab_free_fib_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_fib_info = external dso_local constant [0 x i8], align 1
@__ksymtab_free_fib_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_fib_info to i32), ptr @__kstrtab_free_fib_info, ptr @__kstrtabns_free_fib_info }, section "___ksymtab_gpl+free_fib_info", align 4
@fib_info_lock = internal global %struct.spinlock zeroinitializer, align 4
@fib_info_cnt = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"net/ipv4/fib_semantics.c\00", align 1
@fib_nh_common_init.__msg = internal constant [29 x i8] c"LWT encap type not specified\00", align 1
@__kstrtab_fib_nh_common_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_nh_common_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_nh_common_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_nh_common_init to i32), ptr @__kstrtab_fib_nh_common_init, ptr @__kstrtabns_fib_nh_common_init }, section "___ksymtab_gpl+fib_nh_common_init", align 4
@fib_create_info.__msg = internal constant [14 x i8] c"Invalid scope\00", align 1
@fib_create_info.__msg.2 = internal constant [53 x i8] c"Invalid rtm_flags - can not contain DEAD or LINKDOWN\00", align 1
@fib_create_info.__msg.3 = internal constant [26 x i8] c"Nexthop id does not exist\00", align 1
@fib_info_hash_size = internal unnamed_addr global i32 0, align 4
@fib_create_info.__msg.4 = internal constant [25 x i8] c"Nexthop has been deleted\00", align 1
@fib_create_info.__msg.5 = internal constant [71 x i8] c"Gateway, device and multipath can not be specified for this route type\00", align 1
@fib_create_info.__msg.6 = internal constant [19 x i8] c"Invalid route type\00", align 1
@fib_create_info.__msg.7 = internal constant [14 x i8] c"Invalid scope\00", align 1
@fib_create_info.__msg.8 = internal constant [53 x i8] c"Route with host scope can not have multiple nexthops\00", align 1
@fib_create_info.__msg.9 = internal constant [45 x i8] c"Route with host scope can not have a gateway\00", align 1
@fib_create_info.__msg.10 = internal constant [24 x i8] c"Invalid prefsrc address\00", align 1
@fib_info_hash = internal unnamed_addr global ptr null, align 4
@__kstrtab_fib_nexthop_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_nexthop_info = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_nexthop_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_nexthop_info to i32), ptr @__kstrtab_fib_nexthop_info, ptr @__kstrtabns_fib_nexthop_info }, section "___ksymtab_gpl+fib_nexthop_info", align 4
@__kstrtab_fib_add_nexthop = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_add_nexthop = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_add_nexthop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_add_nexthop to i32), ptr @__kstrtab_fib_add_nexthop, ptr @__kstrtabns_fib_add_nexthop }, section "___ksymtab_gpl+fib_add_nexthop", align 4
@fib_info_laddrhash = internal unnamed_addr global ptr null, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@dst_default_metrics = external dso_local constant %struct.dst_metrics, align 4
@fib_info_devhash = internal global [256 x %struct.hlist_head] zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"include/net/nexthop.h\00", align 1
@fib_check_nh_v4_gw.__msg = internal constant [26 x i8] c"Nexthop has invalid scope\00", align 1
@fib_check_nh_v4_gw.__msg.12 = internal constant [35 x i8] c"Nexthop device required for onlink\00", align 1
@fib_check_nh_v4_gw.__msg.13 = internal constant [25 x i8] c"Nexthop device is not up\00", align 1
@fib_check_nh_v4_gw.__msg.14 = internal constant [28 x i8] c"Nexthop has invalid gateway\00", align 1
@fib_check_nh_v4_gw.__msg.15 = internal constant [28 x i8] c"Nexthop has invalid gateway\00", align 1
@fib_check_nh_v4_gw.__msg.16 = internal constant [28 x i8] c"Nexthop has invalid gateway\00", align 1
@fib_check_nh_v4_gw.__msg.17 = internal constant [37 x i8] c"No egress device for nexthop gateway\00", align 1
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@fib_check_nh_nongw.__msg = internal constant [64 x i8] c"Invalid flags for nexthop - PERVASIVE and ONLINK can not be set\00", align 1
@fib_check_nh_nongw.__msg.18 = internal constant [29 x i8] c"Device for nexthop is not up\00", align 1
@fib_info_hash_bits = internal unnamed_addr global i32 0, align 4
@fib_get_nhs.__msg = internal constant [40 x i8] c"Multipath support not enabled in kernel\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@init_net = external dso_local global %struct.net, align 64
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_fib_add_nexthop, ptr @__ksymtab_fib_nexthop_info, ptr @__ksymtab_fib_nh_common_init, ptr @__ksymtab_fib_nh_common_release, ptr @__ksymtab_free_fib_info], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_nh_common_release(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !9
  %6 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 99
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #13, !srcloc !10
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %13, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #17, !srcloc !11
  br label %16

16:                                               ; preds = %4, %1
  %17 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = ptrtoint ptr %18 to i32
  br label %26

26:                                               ; preds = %37, %24
  %27 = phi i32 [ %22, %24 ], [ %38, %37 ]
  %28 = phi i32 [ %21, %24 ], [ %39, %37 ]
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %25
  %32 = inttoptr i32 %31 to ptr
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  tail call void @dst_dev_put(ptr noundef nonnull %33) #17
  tail call void @dst_release_immediate(ptr noundef nonnull %33) #17
  %36 = load i32, ptr @nr_cpu_ids, align 4
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi i32 [ %36, %35 ], [ %27, %26 ]
  %39 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef nonnull @__cpu_possible_mask) #18
  %40 = icmp ult i32 %39, %38
  br i1 %40, label %26, label %41

41:                                               ; preds = %37, %20
  tail call void @free_percpu(ptr noundef nonnull %18) #17
  br label %42

42:                                               ; preds = %41, %16
  %43 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 12
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @dst_dev_put(ptr noundef nonnull %44) #17
  tail call void @dst_release_immediate(ptr noundef nonnull %44) #17
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 13
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %74, label %51

51:                                               ; preds = %70, %47
  %52 = phi i32 [ %71, %70 ], [ 0, %47 ]
  %53 = getelementptr %struct.fnhe_hash_bucket, ptr %49, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %68, %51
  %57 = phi ptr [ %58, %68 ], [ %54, %51 ]
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.fib_nh_exception, ptr %57, i32 0, i32 7
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  tail call void @dst_dev_put(ptr noundef nonnull %60) #17
  tail call void @dst_release_immediate(ptr noundef nonnull %60) #17
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct.fib_nh_exception, ptr %57, i32 0, i32 8
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void @dst_dev_put(ptr noundef nonnull %65) #17
  tail call void @dst_release_immediate(ptr noundef nonnull %65) #17
  br label %68

68:                                               ; preds = %67, %63
  tail call void @kfree(ptr noundef nonnull %57) #17
  %69 = icmp eq ptr %58, null
  br i1 %69, label %70, label %56

70:                                               ; preds = %68, %51
  %71 = add nuw nsw i32 %52, 1
  %72 = icmp eq i32 %71, 2048
  br i1 %72, label %73, label %51

73:                                               ; preds = %70
  tail call void @kfree(ptr noundef nonnull %49) #17
  br label %74

74:                                               ; preds = %73, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_nh_release(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @fib_nh_common_release(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_fib_info(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #19
  br label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %8, ptr noundef nonnull @free_fib_info_rcu) #17
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_fib_info_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nexthop, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #17, !srcloc !13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #17, !srcloc !14
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %17, label %12, !prof !15

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #17
  br label %17

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %14 = getelementptr inbounds %struct.nexthop, ptr %3, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %14, ptr noundef nonnull @nexthop_free_rcu) #17
  br label %17

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 8
  tail call void @fib_nh_common_release(ptr noundef %16) #17
  br label %17

17:                                               ; preds = %15, %13, %12, %10
  %18 = getelementptr i8, ptr %0, i32 -16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @dst_default_metrics
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dst_metrics, ptr %19, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #17, !srcloc !13
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #17, !srcloc !14
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %30, label %28, !prof !15

28:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef 3) #17
  br label %30

29:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  tail call void @kfree(ptr noundef %19) #17
  br label %30

30:                                               ; preds = %29, %28, %26, %17
  %31 = getelementptr i8, ptr %0, i32 -72
  tail call void @kfree(ptr noundef %31) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_release_info(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fib_info_lock) #17
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #17, !srcloc !13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #17, !srcloc !14
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %74, label %10, !prof !15

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #17
  br label %74

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  store volatile ptr %12, ptr %14, align 4
  %15 = icmp eq ptr %12, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  store volatile ptr %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %11
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %19 = load i32, ptr @fib_info_cnt, align 4
  %20 = add i32 %19, -1
  store volatile i32 %20, ptr @fib_info_cnt, align 4
  %21 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  store volatile ptr %26, ptr %28, align 4
  %29 = icmp eq ptr %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr %28, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %24
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  br label %33

33:                                               ; preds = %32, %18
  %34 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 18
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 2
  %39 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 2, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  br label %55

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 20
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.fib_info, ptr %0, i32 1, i32 13
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.fib_info, ptr %0, i32 1, i32 14
  %51 = load ptr, ptr %50, align 4
  store volatile ptr %49, ptr %51, align 4
  %52 = icmp eq ptr %49, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.hlist_node, ptr %49, i32 0, i32 1
  store volatile ptr %51, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %47, %37
  %56 = phi ptr [ %38, %37 ], [ %48, %47 ], [ %48, %53 ]
  %57 = phi ptr [ %39, %37 ], [ %50, %47 ], [ %50, %53 ]
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %57, align 4
  br label %58

58:                                               ; preds = %55, %43
  %59 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 7
  store i8 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #17, !srcloc !13
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #17, !srcloc !14
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %74, label %66, !prof !15

66:                                               ; preds = %64
  tail call void @refcount_warn_saturate(ptr noundef %60, i32 noundef 3) #17
  br label %74

67:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %68 = load i8, ptr %59, align 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %0) #19
  br label %74

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %73, ptr noundef nonnull @free_fib_info_rcu) #17
  br label %74

74:                                               ; preds = %72, %70, %66, %64, %10, %8, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fib_info_lock) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_fib_check_default(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @fib_info_lock) #17
  %3 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = xor i32 %5, %3
  %7 = mul i32 %6, 1640531527
  %8 = lshr i32 %7, 24
  %9 = getelementptr [256 x %struct.hlist_head], ptr @fib_info_devhash, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -52
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %38, label %15

15:                                               ; preds = %31, %2
  %16 = phi ptr [ %35, %31 ], [ %12, %2 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.fib_nh_common, ptr %16, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fib_nh_common, ptr %16, i32 0, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %29 = load i16, ptr @fib_info_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @fib_info_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  br label %41

31:                                               ; preds = %23, %19, %15
  %32 = getelementptr inbounds %struct.fib_nh, ptr %16, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = getelementptr i8, ptr %33, i32 -52
  %36 = icmp eq ptr %35, null
  %37 = or i1 %34, %36
  br i1 %37, label %38, label %15

38:                                               ; preds = %31, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %39 = load i16, ptr @fib_info_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @fib_info_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  br label %41

41:                                               ; preds = %38, %28
  %42 = phi i32 [ 0, %28 ], [ -1, %38 ]
  ret i32 %42
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_nlmsg_size(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5, !prof !15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nexthop, ptr %3, i32 0, i32 9
  %7 = load i8, ptr %6, align 2, !range !21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nexthop, ptr %3, i32 0, i32 12
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nh_group, ptr %11, i32 0, i32 2
  %13 = load i8, ptr %12, align 2, !range !21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.nh_group, ptr %11, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  br label %22

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ %21, %19 ], [ %18, %15 ]
  %24 = phi i32 [ 204, %19 ], [ 212, %15 ]
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %90, label %26

26:                                               ; preds = %22, %9, %5
  %27 = phi i32 [ %24, %22 ], [ 212, %9 ], [ 212, %5 ]
  %28 = phi i32 [ %23, %22 ], [ 1, %9 ], [ 1, %5 ]
  %29 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 15
  %30 = getelementptr inbounds %struct.nexthop, ptr %3, i32 0, i32 9
  %31 = getelementptr inbounds %struct.nexthop, ptr %3, i32 0, i32 12
  br label %32

32:                                               ; preds = %76, %26
  %33 = phi i32 [ 0, %26 ], [ %82, %76 ]
  %34 = phi i32 [ 0, %26 ], [ %83, %76 ]
  br i1 %4, label %52, label %35, !prof !15

35:                                               ; preds = %32
  %36 = load i8, ptr %30, align 2, !range !21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = load volatile ptr, ptr %31, align 4
  %40 = getelementptr inbounds %struct.nh_group, ptr %39, i32 0, i32 2
  %41 = load i8, ptr %40, align 2, !range !21
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.nh_group, ptr %39, i32 0, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i32 [ %46, %43 ], [ 1, %38 ]
  %49 = icmp ult i32 %34, %48
  br i1 %49, label %55, label %84

50:                                               ; preds = %35
  %51 = icmp eq i32 %34, 0
  br i1 %51, label %69, label %84

52:                                               ; preds = %32
  %53 = load i32, ptr %29, align 4
  %54 = icmp ult i32 %34, %53
  br i1 %54, label %74, label %84

55:                                               ; preds = %47
  %56 = load volatile ptr, ptr %31, align 4
  %57 = getelementptr inbounds %struct.nh_group, ptr %56, i32 0, i32 2
  %58 = load i8, ptr %57, align 2, !range !21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.nh_group, ptr %56, i32 0, i32 1
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  %64 = icmp slt i32 %34, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = getelementptr %struct.nh_group, ptr %56, i32 0, i32 8, i32 %34
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %65, %55, %50
  %70 = phi ptr [ %67, %65 ], [ %3, %55 ], [ %3, %50 ]
  %71 = getelementptr inbounds %struct.nexthop, ptr %70, i32 0, i32 12
  %72 = load volatile ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nh_info, ptr %72, i32 0, i32 5
  br label %76

74:                                               ; preds = %52
  %75 = getelementptr %struct.fib_info, ptr %0, i32 0, i32 20, i32 %34
  br label %76

76:                                               ; preds = %74, %69, %65, %60
  %77 = phi ptr [ %75, %74 ], [ %73, %69 ], [ null, %65 ], [ null, %60 ]
  %78 = getelementptr inbounds %struct.fib_nh_common, ptr %77, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  %81 = add i32 %33, 8
  %82 = select i1 %80, i32 %33, i32 %81
  %83 = add nuw i32 %34, 1
  br label %32

84:                                               ; preds = %52, %50, %47
  %85 = mul i32 %28, 28
  %86 = add i32 %85, 7
  %87 = add i32 %86, %33
  %88 = and i32 %87, -4
  %89 = add i32 %88, %27
  br label %90

90:                                               ; preds = %84, %22
  %91 = phi i32 [ %89, %84 ], [ %24, %22 ]
  ret i32 %91
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc ptr @fib_info_nhc(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6, !prof !15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nexthop, ptr %4, i32 0, i32 9
  %8 = load i8, ptr %7, align 2, !range !21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nexthop, ptr %4, i32 0, i32 12
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nh_group, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 2, !range !21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nh_group, ptr %12, i32 0, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = getelementptr %struct.nh_group, ptr %12, i32 0, i32 8, i32 %1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %10, %6
  %26 = phi ptr [ %4, %6 ], [ %23, %21 ], [ %4, %10 ]
  %27 = getelementptr inbounds %struct.nexthop, ptr %26, i32 0, i32 12
  %28 = load volatile ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nh_info, ptr %28, i32 0, i32 5
  br label %32

30:                                               ; preds = %2
  %31 = getelementptr %struct.fib_info, ptr %0, i32 0, i32 20, i32 %1
  br label %32

32:                                               ; preds = %30, %25, %21, %16
  %33 = phi ptr [ %31, %30 ], [ %29, %25 ], [ null, %21 ], [ null, %16 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtmsg_fib(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.fib_rt_info, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #17
  %9 = getelementptr inbounds i8, ptr %8, i32 16
  store i32 0, ptr %9, align 4, !annotation !22
  %10 = load ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.nlmsghdr, ptr %10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ %14, %12 ], [ 0, %7 ]
  %17 = getelementptr inbounds %struct.fib_alias, ptr %2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @fib_nlmsg_size(ptr noundef %18)
  %20 = add i32 %19, 19
  %21 = and i32 %20, -4
  %22 = tail call ptr @__alloc_skb(i32 noundef %21, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %62, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr %17, align 4
  store ptr %25, ptr %8, align 4
  %26 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 1
  store i32 %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 2
  store i32 %1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 3
  store i32 %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fib_alias, ptr %2, i32 0, i32 2
  %30 = load i8, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 4
  store i8 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fib_alias, ptr %2, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 5
  store i8 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.fib_alias, ptr %2, i32 0, i32 8
  %36 = load volatile i8, ptr %35, align 2
  %37 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 6
  %38 = and i8 %36, 1
  %39 = getelementptr inbounds %struct.fib_alias, ptr %2, i32 0, i32 9
  %40 = load volatile i8, ptr %39, align 1
  %41 = shl i8 %40, 1
  %42 = and i8 %41, 2
  %43 = or i8 %42, %38
  %44 = getelementptr inbounds %struct.fib_alias, ptr %2, i32 0, i32 10
  %45 = load volatile i8, ptr %44, align 4
  %46 = shl i8 %45, 2
  %47 = and i8 %46, 4
  %48 = or i8 %43, %47
  store i8 %48, ptr %37, align 2
  %49 = getelementptr inbounds %struct.nl_info, ptr %5, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = call i32 @fib_dump_info(ptr noundef nonnull %22, i32 noundef %50, i32 noundef %16, i32 noundef %0, ptr noundef nonnull %8, i32 noundef %6)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %24
  %54 = icmp eq i32 %51, -90
  br i1 %54, label %55, label %56, !prof !23

55:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 534, i32 noundef 9, ptr noundef null) #17
  br label %56

56:                                               ; preds = %55, %53
  tail call void @kfree_skb_reason(ptr noundef nonnull %22, i32 noundef 0) #17
  br label %62

57:                                               ; preds = %24
  %58 = getelementptr inbounds %struct.nl_info, ptr %5, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %49, align 4
  %61 = load ptr, ptr %5, align 4
  tail call void @rtnl_notify(ptr noundef nonnull %22, ptr noundef %59, i32 noundef %60, i32 noundef 7, ptr noundef %61, i32 noundef 3264) #17
  br label %66

62:                                               ; preds = %56, %15
  %63 = phi i32 [ %51, %56 ], [ -105, %15 ]
  %64 = getelementptr inbounds %struct.nl_info, ptr %5, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  tail call void @rtnl_set_sk_err(ptr noundef %65, i32 noundef 7, i32 noundef %63) #17
  br label %66

66:                                               ; preds = %62, %57
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #17
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_dump_info(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 18
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17, !prof !15

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 9
  %19 = load i8, ptr %18, align 2, !range !21
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 12
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nh_group, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 2, !range !21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.nh_group, ptr %23, i32 0, i32 1
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  br label %34

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 15
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %27, %21, %17
  %35 = phi i32 [ %33, %31 ], [ 1, %17 ], [ %30, %27 ], [ 1, %21 ]
  %36 = getelementptr inbounds %struct.fib_rt_info, ptr %4, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %196

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %43 to i32
  %47 = ptrtoint ptr %45 to i32
  %48 = sub i32 %46, %47
  %49 = icmp slt i32 %48, 28
  br i1 %49, label %196, label %50, !prof !23

50:                                               ; preds = %41
  %51 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 12, i32 noundef %5) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %196, label %53

53:                                               ; preds = %50
  %54 = getelementptr i8, ptr %51, i32 16
  store i8 2, ptr %54, align 4
  %55 = getelementptr inbounds %struct.fib_rt_info, ptr %4, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = trunc i32 %56 to i8
  %58 = getelementptr i8, ptr %51, i32 17
  store i8 %57, ptr %58, align 1
  %59 = getelementptr i8, ptr %51, i32 18
  store i8 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.fib_rt_info, ptr %4, i32 0, i32 4
  %61 = load i8, ptr %60, align 4
  %62 = getelementptr i8, ptr %51, i32 19
  store i8 %61, ptr %62, align 1
  %63 = icmp ult i32 %37, 256
  %64 = trunc i32 %37 to i8
  %65 = select i1 %63, i8 %64, i8 -4
  %66 = getelementptr i8, ptr %51, i32 20
  store i8 %65, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  store i32 %37, ptr %11, align 4
  %67 = call i32 @nla_put(ptr noundef %0, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %185

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.fib_rt_info, ptr %4, i32 0, i32 5
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr i8, ptr %51, i32 23
  store i8 %71, ptr %72, align 1
  %73 = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %51, i32 24
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 9
  %77 = load i8, ptr %76, align 2
  %78 = getelementptr i8, ptr %51, i32 22
  store i8 %77, ptr %78, align 2
  %79 = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 8
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr i8, ptr %51, i32 21
  store i8 %80, ptr %81, align 1
  %82 = load i8, ptr %58, align 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %69
  %85 = getelementptr inbounds %struct.fib_rt_info, ptr %4, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #17
  store i32 %86, ptr %10, align 4
  %87 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %185

89:                                               ; preds = %84, %69
  %90 = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 13
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store i32 %91, ptr %9, align 4
  %94 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %185

96:                                               ; preds = %93, %89
  %97 = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 14
  %98 = load ptr, ptr %97, align 4
  %99 = call i32 @rtnetlink_put_metrics(ptr noundef %0, ptr noundef %98) #17
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %185, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 11
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store i32 %103, ptr %8, align 4
  %106 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %185

108:                                              ; preds = %105, %101
  %109 = load ptr, ptr %14, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %146, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.nexthop, ptr %109, i32 0, i32 6
  %113 = load i32, ptr %112, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 %113, ptr %7, align 4
  %114 = call i32 @nla_put(ptr noundef %0, i32 noundef 30, i32 noundef 4, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %185

116:                                              ; preds = %111
  %117 = load ptr, ptr %14, align 4
  %118 = getelementptr inbounds %struct.nexthop, ptr %117, i32 0, i32 9
  %119 = load i8, ptr %118, align 2, !range !21
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.nexthop, ptr %117, i32 0, i32 12
  %123 = load volatile ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nh_group, ptr %123, i32 0, i32 1
  %125 = load i16, ptr %124, align 4
  %126 = icmp ugt i16 %125, 1
  br i1 %126, label %138, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.nh_group, ptr %123, i32 0, i32 8
  %129 = load ptr, ptr %128, align 4
  br label %130

130:                                              ; preds = %127, %116
  %131 = phi ptr [ %129, %127 ], [ %117, %116 ]
  %132 = getelementptr inbounds %struct.nexthop, ptr %131, i32 0, i32 12
  %133 = load volatile ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.nh_info, ptr %133, i32 0, i32 3
  %135 = load i8, ptr %134, align 1, !range !21
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  store i8 6, ptr %72, align 1
  br label %138

138:                                              ; preds = %137, %130, %121
  %139 = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.net, ptr %140, i32 0, i32 35, i32 41
  %142 = load i8, ptr %141, align 4
  %143 = icmp ne i8 %142, 0
  %144 = icmp eq i32 %35, 1
  %145 = select i1 %143, i1 %144, i1 false
  br i1 %145, label %148, label %156

146:                                              ; preds = %108
  %147 = icmp eq i32 %35, 1
  br i1 %147, label %148, label %156

148:                                              ; preds = %146, %138
  %149 = call fastcc ptr @fib_info_nhc(ptr noundef %13, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #17
  store i8 0, ptr %12, align 1
  %150 = call i32 @fib_nexthop_info(ptr noundef %0, ptr noundef %149, i8 noundef zeroext 2, ptr noundef nonnull %12, i1 noundef zeroext false)
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load i8, ptr %12, align 1
  %154 = zext i8 %153 to i32
  store i32 %154, ptr %75, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #17
  br label %156

155:                                              ; preds = %148
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #17
  br label %185

156:                                              ; preds = %152, %146, %138
  %157 = getelementptr inbounds %struct.fib_rt_info, ptr %4, i32 0, i32 6
  %158 = load i8, ptr %157, align 2
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %75, align 4
  %163 = or i32 %162, 16384
  store i32 %163, ptr %75, align 4
  %164 = load i8, ptr %157, align 2
  br label %165

165:                                              ; preds = %161, %156
  %166 = phi i8 [ %164, %161 ], [ %158, %156 ]
  %167 = and i8 %166, 2
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i32, ptr %75, align 4
  %171 = or i32 %170, 32768
  store i32 %171, ptr %75, align 4
  %172 = load i8, ptr %157, align 2
  br label %173

173:                                              ; preds = %169, %165
  %174 = phi i8 [ %172, %169 ], [ %166, %165 ]
  %175 = and i8 %174, 4
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load i32, ptr %75, align 4
  %179 = or i32 %178, 536870912
  store i32 %179, ptr %75, align 4
  br label %180

180:                                              ; preds = %177, %173
  %181 = load ptr, ptr %44, align 8
  %182 = ptrtoint ptr %181 to i32
  %183 = ptrtoint ptr %51 to i32
  %184 = sub i32 %182, %183
  store i32 %184, ptr %51, align 4
  br label %196

185:                                              ; preds = %155, %111, %105, %96, %93, %84, %53
  %186 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %187 = load ptr, ptr %186, align 4
  %188 = icmp ugt ptr %187, %51
  br i1 %188, label %189, label %191, !prof !23

189:                                              ; preds = %185
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  %190 = load ptr, ptr %186, align 4
  br label %191

191:                                              ; preds = %189, %185
  %192 = phi ptr [ %190, %189 ], [ %187, %185 ]
  %193 = ptrtoint ptr %51 to i32
  %194 = ptrtoint ptr %192 to i32
  %195 = sub i32 %193, %194
  call void @skb_trim(ptr noundef %0, i32 noundef %195) #17
  br label %196

196:                                              ; preds = %191, %180, %50, %41, %34
  %197 = phi i32 [ -90, %191 ], [ 0, %180 ], [ -90, %50 ], [ -90, %41 ], [ -90, %34 ]
  ret i32 %197
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_nh_common_init(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef readnone %2, i16 noundef zeroext %3, ptr nocapture readnone %4, i32 noundef %5, ptr noundef writeonly %6) #0 {
  %8 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 4, i32 noundef 4, i32 noundef %5) #20
  %9 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 11
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %11
  %14 = icmp eq i16 %3, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nh_common_init.__msg) #17
  %16 = icmp eq ptr %6, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  store ptr @fib_nh_common_init.__msg, ptr %6, align 4
  br label %18

18:                                               ; preds = %17, %15, %13
  %19 = phi i32 [ -22, %17 ], [ -22, %15 ], [ -95, %13 ]
  %20 = load ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = ptrtoint ptr %20 to i32
  br label %28

28:                                               ; preds = %39, %26
  %29 = phi i32 [ %24, %26 ], [ %40, %39 ]
  %30 = phi i32 [ %23, %26 ], [ %41, %39 ]
  %31 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %27
  %34 = inttoptr i32 %33 to ptr
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  tail call void @dst_dev_put(ptr noundef nonnull %35) #17
  tail call void @dst_release_immediate(ptr noundef nonnull %35) #17
  %38 = load i32, ptr @nr_cpu_ids, align 4
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi i32 [ %38, %37 ], [ %29, %28 ]
  %41 = tail call i32 @cpumask_next(i32 noundef %30, ptr noundef nonnull @__cpu_possible_mask) #18
  %42 = icmp ult i32 %41, %40
  br i1 %42, label %28, label %43

43:                                               ; preds = %39, %22
  tail call void @free_percpu(ptr noundef nonnull %20) #17
  br label %44

44:                                               ; preds = %43, %18
  store ptr null, ptr %9, align 4
  br label %45

45:                                               ; preds = %44, %11, %7
  %46 = phi i32 [ %19, %44 ], [ -12, %7 ], [ 0, %11 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_nh_init(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 4
  store i8 2, ptr %6, align 1
  %7 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 22
  %10 = load i16, ptr %9, align 4
  %11 = tail call i32 @fib_nh_common_init(ptr undef, ptr noundef %1, ptr noundef %8, i16 noundef zeroext %10, ptr undef, i32 noundef 3264, ptr noundef %4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 5
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 5
  store i8 %18, ptr %19, align 2
  %20 = load i8, ptr %17, align 1
  switch i8 %20, label %28 [
    i8 2, label %21
    i8 10, label %25
  ]

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 8
  store i32 %23, ptr %24, align 4
  br label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 8
  %27 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %26, ptr noundef align 4 dereferenceable(16) %27, i32 16, i1 false)
  br label %28

28:                                               ; preds = %25, %21, %13
  %29 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 6
  store i8 %31, ptr %32, align 1
  br label %33

33:                                               ; preds = %28, %5
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_nh_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.fib_config, ptr %1, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fib_info, ptr %2, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %68

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.fib_config, ptr %1, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fib_info, ptr %2, i32 0, i32 18
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nexthop, ptr %18, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %14, %22
  br i1 %23, label %68, label %24

24:                                               ; preds = %20, %16
  br label %68

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.fib_config, ptr %1, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fib_config, ptr %1, i32 0, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %68, label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.fib_info, ptr %2, i32 0, i32 18
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !15

37:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 468, i32 noundef 9, ptr noundef null) #17
  %38 = load i32, ptr %26, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %27, %33 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.fib_info, ptr %2, i32 0, i32 20
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.fib_info, ptr %2, i32 1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %40, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.fib_config, ptr %1, i32 0, i32 5
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.fib_nh_common, ptr %41, i32 0, i32 5
  %53 = load i8, ptr %52, align 2
  %54 = icmp eq i8 %49, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  switch i8 %49, label %67 [
    i8 2, label %56
    i8 10, label %62
  ]

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.fib_config, ptr %1, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.fib_info, ptr %2, i32 1, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %67, label %68

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.fib_config, ptr %1, i32 0, i32 8
  %64 = getelementptr inbounds %struct.fib_info, ptr %2, i32 1, i32 2
  %65 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %63, ptr noundef dereferenceable(16) %64, i32 16)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %56, %55, %47
  br label %68

68:                                               ; preds = %67, %62, %56, %51, %43, %29, %24, %20, %8
  %69 = phi i32 [ 1, %24 ], [ 1, %8 ], [ 0, %20 ], [ 0, %67 ], [ 1, %51 ], [ 1, %43 ], [ 1, %56 ], [ 1, %62 ], [ 0, %29 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @fib_metrics_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %62, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 3
  br i1 %11, label %12, label %62

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.fib_info, ptr %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.fib_info, ptr %1, i32 0, i32 14
  br label %15

15:                                               ; preds = %55, %12
  %16 = phi ptr [ %6, %12 ], [ %60, %55 ]
  %17 = phi i32 [ %10, %12 ], [ %59, %55 ]
  %18 = load i16, ptr %16, align 2
  %19 = icmp ult i16 %18, 4
  %20 = zext i16 %18 to i32
  %21 = icmp ult i32 %17, %20
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %62, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.nlattr, ptr %16, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, 16383
  %27 = zext i16 %26 to i32
  %28 = icmp eq i16 %26, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %23
  %30 = icmp ugt i16 %26, 17
  br i1 %30, label %62, label %31

31:                                               ; preds = %29
  %32 = icmp eq i16 %26, 16
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #17
  store i8 0, ptr %4, align 1
  %34 = call i32 @nla_strscpy(ptr noundef nonnull %3, ptr noundef %16, i32 noundef 16) #17
  %35 = load ptr, ptr %13, align 4
  %36 = call i32 @tcp_ca_get_key_by_name(ptr noundef %35, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %42

37:                                               ; preds = %31
  %38 = icmp eq i16 %18, 8
  br i1 %38, label %39, label %62

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %16, i32 4
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i32 [ %36, %33 ], [ %41, %39 ]
  %44 = load ptr, ptr %14, align 4
  %45 = add nsw i32 %27, -1
  %46 = getelementptr [17 x i32], ptr %44, i32 0, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i16 %26, 12
  %49 = and i32 %47, 2147483647
  %50 = select i1 %48, i32 %49, i32 %47
  %51 = icmp eq i32 %50, %43
  br i1 %51, label %52, label %62

52:                                               ; preds = %42
  %53 = load i16, ptr %16, align 2
  %54 = zext i16 %53 to i32
  br label %55

55:                                               ; preds = %52, %23
  %56 = phi i32 [ %54, %52 ], [ %20, %23 ]
  %57 = add nuw nsw i32 %56, 3
  %58 = and i32 %57, 131068
  %59 = sub nsw i32 %17, %58
  %60 = getelementptr i8, ptr %16, i32 %58
  %61 = icmp sgt i32 %59, 3
  br i1 %61, label %15, label %62

62:                                               ; preds = %55, %42, %37, %29, %15, %8, %2
  %63 = phi i1 [ true, %2 ], [ true, %8 ], [ true, %15 ], [ true, %55 ], [ false, %29 ], [ false, %37 ], [ false, %42 ]
  ret i1 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_ca_get_key_by_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_check_nh(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.fib6_config, align 4
  %7 = alloca %struct.fib6_nh, align 4
  %8 = alloca %struct.fib_result, align 4
  %9 = alloca %struct.flowi4, align 8
  %10 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 5
  %11 = load i8, ptr %10, align 2
  switch i8 %11, label %199 [
    i8 2, label %12
    i8 10, label %157
  ]

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false) #17, !annotation !22
  %13 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 6
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %12
  %18 = icmp ugt i8 %3, -4
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg) #17
  %20 = icmp eq ptr %4, null
  br i1 %20, label %155, label %21

21:                                               ; preds = %19
  store ptr @fib_check_nh_v4_gw.__msg, ptr %4, align 4
  br label %155

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @__dev_get_by_index(ptr noundef %0, i32 noundef %24) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.12) #17
  %28 = icmp eq ptr %4, null
  br i1 %28, label %155, label %29

29:                                               ; preds = %27
  store ptr @fib_check_nh_v4_gw.__msg.12, ptr %4, align 4
  br label %155

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 14
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.13) #17
  %36 = icmp eq ptr %4, null
  br i1 %36, label %155, label %37

37:                                               ; preds = %35
  store ptr @fib_check_nh_v4_gw.__msg.13, ptr %4, align 4
  br label %155

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @inet_addr_type_dev_table(ptr noundef %0, ptr noundef nonnull %25, i32 noundef %40) #17
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.14) #17
  %44 = icmp eq ptr %4, null
  br i1 %44, label %155, label %45

45:                                               ; preds = %43
  store ptr @fib_check_nh_v4_gw.__msg.14, ptr %4, align 4
  br label %155

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 6
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i8, ptr %13, align 1
  %53 = or i8 %52, 16
  store i8 %53, ptr %13, align 1
  br label %54

54:                                               ; preds = %51, %46
  store ptr %25, ptr %1, align 4
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !9
  %56 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 99
  %57 = load ptr, ptr %56, align 8
  %58 = ptrtoint ptr %57 to i32
  %59 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %60 = inttoptr i32 %59 to ptr
  %61 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %60) #13, !srcloc !10
  %62 = add i32 %61, %58
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #17, !srcloc !11
  %66 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 3
  store i8 -3, ptr %66, align 4
  br label %155

67:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #17
  %68 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 2
  %69 = getelementptr inbounds i8, ptr %9, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(48) %69, i8 0, i64 48, i1 false) #17
  %70 = load i32, ptr %68, align 4
  store i32 %70, ptr %9, align 8
  %71 = getelementptr inbounds %struct.flowi_common, ptr %9, i32 0, i32 1
  store i32 1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.flowi_common, ptr %9, i32 0, i32 4
  %73 = add i8 %3, 1
  store i8 %73, ptr %72, align 1
  %74 = getelementptr inbounds %struct.flowi4, ptr %9, i32 0, i32 2
  %75 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 8
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %74, align 4
  %77 = icmp ult i8 %73, -3
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  store i8 -3, ptr %72, align 1
  br label %79

79:                                               ; preds = %78, %67
  switch i32 %2, label %80 [
    i32 254, label %91
    i32 0, label %91
  ]

80:                                               ; preds = %79
  %81 = icmp eq i32 %2, 255
  %82 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %83 = load ptr, ptr %82, align 64
  %84 = zext i1 %81 to i32
  %85 = getelementptr %struct.hlist_head, ptr %83, i32 %84
  %86 = load volatile ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = call i32 @fib_table_lookup(ptr noundef nonnull %86, ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef 3) #17
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %88, %80, %79, %79
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  %92 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %93 = load ptr, ptr %92, align 64
  %94 = load volatile ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = call i32 @fib_table_lookup(ptr noundef nonnull %94, ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef 3) #17
  %98 = icmp eq i32 %97, -11
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %91
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  br label %102

100:                                              ; preds = %96
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %101 = icmp eq i32 %97, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ -101, %99 ], [ %97, %100 ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.15) #17
  %104 = icmp eq ptr %4, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store ptr @fib_check_nh_v4_gw.__msg.15, ptr %4, align 4
  br label %106

106:                                              ; preds = %105, %102
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #17
  br label %153

107:                                              ; preds = %100, %88
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #17
  %108 = getelementptr inbounds %struct.fib_result, ptr %8, i32 0, i32 3
  %109 = load i8, ptr %108, align 2
  %110 = add i8 %109, -3
  %111 = icmp ult i8 %110, -2
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.16) #17
  %113 = icmp eq ptr %4, null
  br i1 %113, label %153, label %114

114:                                              ; preds = %112
  store ptr @fib_check_nh_v4_gw.__msg.16, ptr %4, align 4
  br label %153

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.fib_result, ptr %8, i32 0, i32 4
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 3
  store i8 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.fib_result, ptr %8, i32 0, i32 6
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.fib_nh_common, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  store i32 %122, ptr %68, align 4
  %123 = load ptr, ptr %120, align 4
  store ptr %123, ptr %1, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.17) #17
  %126 = icmp eq ptr %4, null
  br i1 %126, label %153, label %127

127:                                              ; preds = %125
  store ptr @fib_check_nh_v4_gw.__msg.17, ptr %4, align 4
  br label %153

128:                                              ; preds = %115
  %129 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !9
  %130 = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 99
  %131 = load ptr, ptr %130, align 8
  %132 = ptrtoint ptr %131 to i32
  %133 = call i32 @llvm.read_register.i32(metadata !0) #17
  %134 = inttoptr i32 %133 to ptr
  %135 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %134) #13, !srcloc !10
  %136 = add i32 %135, %132
  %137 = inttoptr i32 %136 to ptr
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, 1
  store i32 %139, ptr %137, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %129) #17, !srcloc !11
  %140 = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 6
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %141, 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %128
  %145 = load i8, ptr %13, align 1
  %146 = or i8 %145, 16
  store i8 %146, ptr %13, align 1
  br label %147

147:                                              ; preds = %144, %128
  %148 = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 14
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, i32 -100, i32 0
  br label %153

153:                                              ; preds = %147, %127, %125, %114, %112, %106
  %154 = phi i32 [ %103, %106 ], [ %152, %147 ], [ -22, %114 ], [ -22, %112 ], [ -22, %127 ], [ -22, %125 ]
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  br label %155

155:                                              ; preds = %153, %54, %45, %43, %37, %35, %29, %27, %21, %19
  %156 = phi i32 [ %154, %153 ], [ 0, %54 ], [ -22, %21 ], [ -22, %19 ], [ -19, %29 ], [ -19, %27 ], [ -100, %37 ], [ -100, %35 ], [ -22, %45 ], [ -22, %43 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #17
  br label %248

157:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #17
  %158 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(140) %158, i8 0, i64 140, i1 false) #17
  store i32 %2, ptr %6, align 4
  %159 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 4
  %160 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  store i32 %161, ptr %159, align 4
  %162 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 5
  %163 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 6
  %164 = load i8, ptr %163, align 1
  %165 = or i8 %164, 2
  %166 = zext i8 %165 to i32
  store i32 %166, ptr %162, align 4
  %167 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 13
  %168 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %167, ptr noundef align 4 dereferenceable(16) %168, i32 16, i1 false) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false) #17
  %169 = load ptr, ptr @ipv6_stub, align 4
  %170 = getelementptr inbounds %struct.ipv6_stub, ptr %169, i32 0, i32 9
  %171 = load ptr, ptr %170, align 4
  %172 = call i32 %171(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef 3264, ptr noundef %4) #17
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %198

174:                                              ; preds = %157
  %175 = load ptr, ptr %7, align 4
  store ptr %175, ptr %1, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %190, label %177

177:                                              ; preds = %174
  %178 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !9
  %179 = getelementptr inbounds %struct.net_device, ptr %175, i32 0, i32 99
  %180 = load ptr, ptr %179, align 8
  %181 = ptrtoint ptr %180 to i32
  %182 = call i32 @llvm.read_register.i32(metadata !0) #17
  %183 = inttoptr i32 %182 to ptr
  %184 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %183) #13, !srcloc !10
  %185 = add i32 %184, %181
  %186 = inttoptr i32 %185 to ptr
  %187 = load i32, ptr %186, align 4
  %188 = add i32 %187, 1
  store i32 %188, ptr %186, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %178) #17, !srcloc !11
  %189 = load ptr, ptr %1, align 4
  br label %190

190:                                              ; preds = %177, %174
  %191 = phi ptr [ null, %174 ], [ %189, %177 ]
  %192 = getelementptr inbounds %struct.net_device, ptr %191, i32 0, i32 17
  %193 = load i32, ptr %192, align 4
  store i32 %193, ptr %160, align 4
  %194 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 3
  store i8 -3, ptr %194, align 4
  %195 = load ptr, ptr @ipv6_stub, align 4
  %196 = getelementptr inbounds %struct.ipv6_stub, ptr %195, i32 0, i32 10
  %197 = load ptr, ptr %196, align 4
  call void %197(ptr noundef nonnull %7) #17
  br label %198

198:                                              ; preds = %190, %157
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #17
  br label %248

199:                                              ; preds = %5
  %200 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 6
  %201 = load i8, ptr %200, align 1
  %202 = and i8 %201, 6
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_nongw.__msg) #17
  %205 = icmp eq ptr %4, null
  br i1 %205, label %248, label %206

206:                                              ; preds = %204
  store ptr @fib_check_nh_nongw.__msg, ptr %4, align 4
  br label %248

207:                                              ; preds = %199
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  %208 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 2
  %209 = load i32, ptr %208, align 4
  %210 = tail call ptr @inetdev_by_index(ptr noundef %0, i32 noundef %209) #17
  %211 = icmp eq ptr %210, null
  br i1 %211, label %246, label %212

212:                                              ; preds = %207
  %213 = load ptr, ptr %210, align 4
  %214 = getelementptr inbounds %struct.net_device, ptr %213, i32 0, i32 14
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 1
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_nongw.__msg.18) #17
  %219 = icmp eq ptr %4, null
  br i1 %219, label %246, label %220

220:                                              ; preds = %218
  store ptr @fib_check_nh_nongw.__msg.18, ptr %4, align 4
  br label %246

221:                                              ; preds = %212
  store ptr %213, ptr %1, align 4
  %222 = icmp eq ptr %213, null
  br i1 %222, label %236, label %223

223:                                              ; preds = %221
  %224 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !9
  %225 = getelementptr inbounds %struct.net_device, ptr %213, i32 0, i32 99
  %226 = load ptr, ptr %225, align 8
  %227 = ptrtoint ptr %226 to i32
  %228 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %229 = inttoptr i32 %228 to ptr
  %230 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %229) #13, !srcloc !10
  %231 = add i32 %230, %227
  %232 = inttoptr i32 %231 to ptr
  %233 = load i32, ptr %232, align 4
  %234 = add i32 %233, 1
  store i32 %234, ptr %232, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %224) #17, !srcloc !11
  %235 = load ptr, ptr %1, align 4
  br label %236

236:                                              ; preds = %223, %221
  %237 = phi ptr [ null, %221 ], [ %235, %223 ]
  %238 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 3
  store i8 -2, ptr %238, align 4
  %239 = getelementptr inbounds %struct.net_device, ptr %237, i32 0, i32 6
  %240 = load volatile i32, ptr %239, align 4
  %241 = and i32 %240, 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %236
  %244 = load i8, ptr %200, align 1
  %245 = or i8 %244, 16
  store i8 %245, ptr %200, align 1
  br label %246

246:                                              ; preds = %243, %236, %220, %218, %207
  %247 = phi i32 [ -19, %207 ], [ -100, %220 ], [ -100, %218 ], [ 0, %243 ], [ 0, %236 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  br label %248

248:                                              ; preds = %246, %206, %204, %198, %155
  %249 = phi i32 [ %156, %155 ], [ %172, %198 ], [ %247, %246 ], [ -22, %206 ], [ -22, %204 ]
  ret i32 %249
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_info_update_nhc_saddr(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 2
  %7 = load ptr, ptr %1, align 4
  br i1 %6, label %11, label %8

8:                                                ; preds = %3
  %9 = zext i8 %2 to i32
  %10 = tail call i32 @inet_select_addr(ptr noundef %7, i32 noundef 0, i32 noundef %9) #17
  br label %20

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = zext i8 %2 to i32
  %15 = tail call i32 @inet_select_addr(ptr noundef %7, i32 noundef %13, i32 noundef %14) #17
  %16 = getelementptr inbounds %struct.fib_nh, ptr %1, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 115
  %18 = load volatile i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fib_nh, ptr %1, i32 0, i32 4
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi i32 [ %10, %8 ], [ %15, %11 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_result_prefsrc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fib_info, ptr %6, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fib_nh_common, ptr %4, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fib_nh, ptr %4, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 115
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.fib_nh, ptr %4, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  br label %39

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.fib_info, ptr %6, i32 0, i32 9
  %25 = load i8, ptr %24, align 2
  %26 = load ptr, ptr %4, align 4
  %27 = zext i8 %25 to i32
  %28 = tail call i32 @inet_select_addr(ptr noundef %26, i32 noundef 0, i32 noundef %27) #17
  br label %39

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.fib_info, ptr %6, i32 0, i32 9
  %31 = load i8, ptr %30, align 2
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.fib_nh_common, ptr %4, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = zext i8 %31 to i32
  %36 = tail call i32 @inet_select_addr(ptr noundef %32, i32 noundef %34, i32 noundef %35) #17
  %37 = getelementptr inbounds %struct.fib_nh, ptr %4, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = load volatile i32, ptr %17, align 4
  store i32 %38, ptr %15, align 4
  br label %39

39:                                               ; preds = %29, %23, %20, %2
  %40 = phi i32 [ %8, %2 ], [ %22, %20 ], [ %28, %23 ], [ %36, %29 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib_create_info(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 20, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 11
  br i1 %7, label %368, label %8

8:                                                ; preds = %2
  %9 = zext i8 %6 to i32
  %10 = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %9, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg) #17
  %16 = icmp eq ptr %1, null
  br i1 %16, label %368, label %17

17:                                               ; preds = %15
  store ptr @fib_create_info.__msg, ptr %1, align 4
  br label %368

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.2) #17
  %24 = icmp eq ptr %1, null
  br i1 %24, label %368, label %25

25:                                               ; preds = %23
  store ptr @fib_create_info.__msg.2, ptr %1, align 4
  br label %368

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %114, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %108

34:                                               ; preds = %30
  %35 = mul i32 %28, 1640531527
  %36 = lshr i32 %35, 24
  %37 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  %43 = zext i8 %38 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = zext i8 %13 to i32
  %46 = or i32 %44, %45
  %47 = xor i32 %40, %36
  %48 = xor i32 %47, %42
  %49 = xor i32 %48, %46
  %50 = load i32, ptr @fib_info_hash_size, align 4
  %51 = add i32 %50, -1
  %52 = lshr i32 %49, 7
  %53 = xor i32 %52, %49
  %54 = lshr i32 %49, 12
  %55 = xor i32 %53, %54
  %56 = and i32 %55, %51
  %57 = load ptr, ptr @fib_info_hash, align 4
  %58 = getelementptr %struct.hlist_head, ptr %57, i32 %56
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %108, label %61

61:                                               ; preds = %34
  %62 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 6
  br label %63

63:                                               ; preds = %103, %61
  %64 = phi ptr [ %59, %61 ], [ %104, %103 ]
  %65 = getelementptr inbounds %struct.fib_info, ptr %64, i32 0, i32 18
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %103, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.nexthop, ptr %66, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, %28
  br i1 %71, label %72, label %103

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.fib_info, ptr %64, i32 0, i32 8
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %38, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.fib_info, ptr %64, i32 0, i32 9
  %78 = load i8, ptr %77, align 2
  %79 = icmp eq i8 %13, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.fib_info, ptr %64, i32 0, i32 11
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %40, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.fib_info, ptr %64, i32 0, i32 13
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %42, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.fib_info, ptr %64, i32 0, i32 10
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %6, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i32, ptr %62, align 4
  %94 = getelementptr inbounds %struct.fib_info, ptr %64, i32 0, i32 12
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.fib_info, ptr %64, i32 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = xor i32 %99, %20
  %101 = and i32 %100, -90
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %97, %92, %88, %84, %80, %76, %72, %68, %63
  %104 = load ptr, ptr %64, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %63

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.fib_info, ptr %64, i32 0, i32 4
  tail call fastcc void @refcount_inc(ptr noundef %107)
  br label %371

108:                                              ; preds = %103, %34, %30
  %109 = tail call ptr @nexthop_find_by_id(ptr noundef %4, i32 noundef %28) #17
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.3) #17
  %112 = icmp eq ptr %1, null
  br i1 %112, label %368, label %113

113:                                              ; preds = %111
  store ptr @fib_create_info.__msg.3, ptr %1, align 4
  br label %368

114:                                              ; preds = %108, %26
  %115 = phi ptr [ null, %26 ], [ %109, %108 ]
  %116 = phi i32 [ 1, %26 ], [ 0, %108 ]
  %117 = load volatile i32, ptr @fib_info_cnt, align 4
  %118 = load i32, ptr @fib_info_hash_size, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %149, label %120

120:                                              ; preds = %114
  %121 = shl i32 %118, 1
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i32 16, i32 %121
  %124 = shl i32 %123, 2
  %125 = icmp ult i32 %124, 4097
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %124, i32 noundef 3520) #20
  %128 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %124, i32 noundef 3520) #20
  br label %138

129:                                              ; preds = %120
  %130 = add i32 %124, -1
  %131 = lshr i32 %130, 12
  %132 = tail call i32 @llvm.ctlz.i32(i32 %131, i1 false) #17, !range !26
  %133 = sub nuw nsw i32 32, %132
  %134 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef %133) #17
  %135 = inttoptr i32 %134 to ptr
  %136 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef %133) #17
  %137 = inttoptr i32 %136 to ptr
  br label %138

138:                                              ; preds = %129, %126
  %139 = phi ptr [ %135, %129 ], [ %127, %126 ]
  %140 = phi ptr [ %137, %129 ], [ %128, %126 ]
  %141 = icmp ne ptr %139, null
  %142 = icmp ne ptr %140, null
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  tail call fastcc void @fib_info_hash_free(ptr noundef %139, i32 noundef %124)
  tail call fastcc void @fib_info_hash_free(ptr noundef %140, i32 noundef %124)
  br label %146

145:                                              ; preds = %138
  tail call fastcc void @fib_info_hash_move(ptr noundef nonnull %139, ptr noundef nonnull %140, i32 noundef %123)
  br label %146

146:                                              ; preds = %145, %144
  %147 = load i32, ptr @fib_info_hash_size, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %368, label %149

149:                                              ; preds = %146, %114
  %150 = mul nuw nsw i32 %116, 72
  %151 = add nuw nsw i32 %150, 80
  %152 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %151, i32 noundef 3520) #20
  %153 = icmp eq ptr %152, null
  br i1 %153, label %368, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 3
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 14
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 16
  %160 = load i32, ptr %159, align 4
  %161 = tail call ptr @ip_fib_metrics_init(ptr noundef %156, ptr noundef %158, i32 noundef %160, ptr noundef %1) #17
  %162 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 14
  store ptr %161, ptr %162, align 8
  %163 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  tail call void @kfree(ptr noundef nonnull %152) #17
  br label %371

165:                                              ; preds = %154
  store ptr %4, ptr %155, align 8
  %166 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 2
  %167 = load i8, ptr %166, align 2
  %168 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 8
  store i8 %167, ptr %168, align 1
  %169 = load i8, ptr %12, align 1
  %170 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 9
  store i8 %169, ptr %170, align 2
  %171 = load i32, ptr %19, align 4
  %172 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 6
  store i32 %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 11
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 13
  store i32 %174, ptr %175, align 4
  %176 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 12
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 11
  store i32 %177, ptr %178, align 4
  %179 = load i8, ptr %5, align 4
  %180 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 10
  store i8 %179, ptr %180, align 1
  %181 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 6
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 12
  store i32 %182, ptr %183, align 16
  %184 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 15
  store i32 %116, ptr %184, align 4
  %185 = icmp eq ptr %115, null
  br i1 %185, label %192, label %186

186:                                              ; preds = %165
  %187 = tail call fastcc zeroext i1 @nexthop_get(ptr noundef nonnull %115)
  br i1 %187, label %190, label %188

188:                                              ; preds = %186
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.4) #17
  %189 = icmp eq ptr %1, null
  br i1 %189, label %364, label %362

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 18
  store ptr %115, ptr %191, align 4
  br label %203

192:                                              ; preds = %165
  %193 = getelementptr inbounds %struct.fib_info, ptr %152, i32 1, i32 15
  store ptr %152, ptr %193, align 4
  %194 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 15
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %192
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_get_nhs.__msg) #17
  %198 = icmp eq ptr %1, null
  br i1 %198, label %364, label %362

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 20
  %201 = tail call i32 @fib_nh_init(ptr undef, ptr noundef %200, ptr noundef %0, i32 undef, ptr noundef %1)
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %364

203:                                              ; preds = %199, %190
  %204 = load i8, ptr %5, align 4
  %205 = zext i8 %204 to i32
  %206 = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %205
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %223, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 5
  %211 = load i8, ptr %210, align 1
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 9
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 15
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %293, label %221

221:                                              ; preds = %217, %213, %209
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.5) #17
  %222 = icmp eq ptr %1, null
  br i1 %222, label %364, label %362

223:                                              ; preds = %203
  %224 = add i8 %204, -1
  %225 = icmp ult i8 %224, 5
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.6) #17
  %227 = icmp eq ptr %1, null
  br i1 %227, label %364, label %362

228:                                              ; preds = %223
  %229 = load i8, ptr %12, align 1
  %230 = icmp eq i8 %229, -1
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.7) #17
  %232 = icmp eq ptr %1, null
  br i1 %232, label %364, label %362

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 18
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = tail call i32 @fib_check_nexthop(ptr noundef nonnull %235, i8 noundef zeroext %229, ptr noundef %1) #17
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %274, label %364

240:                                              ; preds = %233
  %241 = icmp eq i8 %229, -2
  %242 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 20
  br i1 %241, label %243, label %258

243:                                              ; preds = %240
  br i1 %29, label %246, label %244

244:                                              ; preds = %243
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.8) #17
  %245 = icmp eq ptr %1, null
  br i1 %245, label %364, label %362

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.fib_nh_common, ptr %242, i32 0, i32 5
  %248 = load i8, ptr %247, align 2
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %246
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.9) #17
  %251 = icmp eq ptr %1, null
  br i1 %251, label %364, label %362

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.fib_info, ptr %152, i32 1, i32 1
  store i8 -1, ptr %253, align 8
  %254 = getelementptr inbounds %struct.fib_info, ptr %152, i32 1, i32 0, i32 1
  %255 = load i32, ptr %254, align 4
  %256 = tail call ptr @dev_get_by_index(ptr noundef %4, i32 noundef %255) #17
  store ptr %256, ptr %242, align 16
  %257 = icmp eq ptr %256, null
  br i1 %257, label %364, label %274

258:                                              ; preds = %240
  %259 = load ptr, ptr %3, align 4
  %260 = load i32, ptr %181, align 4
  %261 = tail call i32 @fib_check_nh(ptr noundef %259, ptr noundef %242, i32 noundef %260, i8 noundef zeroext %229, ptr noundef %1)
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %364

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.fib_nh_common, ptr %242, i32 0, i32 6
  %265 = load i8, ptr %264, align 1
  %266 = lshr i8 %265, 4
  %267 = and i8 %266, 1
  %268 = zext i8 %267 to i32
  %269 = load i32, ptr %184, align 4
  %270 = icmp eq i32 %269, %268
  br i1 %270, label %271, label %274

271:                                              ; preds = %263
  %272 = load i32, ptr %172, align 4
  %273 = or i32 %272, 16
  store i32 %273, ptr %172, align 4
  br label %274

274:                                              ; preds = %271, %263, %252, %237
  %275 = load i32, ptr %178, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %274
  %278 = tail call fastcc zeroext i1 @fib_valid_prefsrc(ptr noundef %0, i32 noundef %275)
  br i1 %278, label %281, label %279

279:                                              ; preds = %277
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.10) #17
  %280 = icmp eq ptr %1, null
  br i1 %280, label %364, label %362

281:                                              ; preds = %277, %274
  %282 = load ptr, ptr %234, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %293

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 20
  %286 = load i8, ptr %170, align 2
  %287 = tail call i32 @fib_info_update_nhc_saddr(ptr noundef %4, ptr noundef %285, i8 noundef zeroext %286)
  %288 = getelementptr inbounds %struct.fib_nh_common, ptr %285, i32 0, i32 5
  %289 = load i8, ptr %288, align 2
  %290 = icmp eq i8 %289, 10
  br i1 %290, label %291, label %293

291:                                              ; preds = %284
  %292 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 16
  store i8 1, ptr %292, align 64
  br label %293

293:                                              ; preds = %291, %284, %281, %217
  %294 = tail call fastcc ptr @fib_find_info(ptr noundef nonnull %152)
  %295 = icmp eq ptr %294, null
  br i1 %295, label %299, label %296

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 7
  store i8 1, ptr %297, align 8
  tail call void @free_fib_info(ptr noundef nonnull %152)
  %298 = getelementptr inbounds %struct.fib_info, ptr %294, i32 0, i32 4
  tail call fastcc void @refcount_inc(ptr noundef %298)
  br label %371

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 4
  store volatile i32 1, ptr %300, align 4
  %301 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 5
  store volatile i32 1, ptr %301, align 32
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fib_info_lock) #17
  %302 = load i32, ptr @fib_info_cnt, align 4
  %303 = add i32 %302, 1
  store i32 %303, ptr @fib_info_cnt, align 4
  %304 = load ptr, ptr @fib_info_hash, align 4
  %305 = tail call fastcc i32 @fib_info_hashfn(ptr noundef nonnull %152)
  %306 = getelementptr %struct.hlist_head, ptr %304, i32 %305
  %307 = load ptr, ptr %306, align 4
  store volatile ptr %307, ptr %152, align 64
  %308 = icmp eq ptr %307, null
  br i1 %308, label %311, label %309

309:                                              ; preds = %299
  %310 = getelementptr inbounds %struct.hlist_node, ptr %307, i32 0, i32 1
  store volatile ptr %152, ptr %310, align 4
  br label %311

311:                                              ; preds = %309, %299
  store volatile ptr %152, ptr %306, align 4
  %312 = getelementptr inbounds %struct.hlist_node, ptr %152, i32 0, i32 1
  store volatile ptr %306, ptr %312, align 4
  %313 = load i32, ptr %178, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %332, label %315

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 26
  %317 = load i32, ptr %316, align 4
  %318 = xor i32 %317, %313
  %319 = load i32, ptr @fib_info_hash_bits, align 4
  %320 = mul i32 %318, 1640531527
  %321 = sub i32 32, %319
  %322 = lshr i32 %320, %321
  %323 = load ptr, ptr @fib_info_laddrhash, align 4
  %324 = getelementptr %struct.hlist_head, ptr %323, i32 %322
  %325 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 1
  %326 = load ptr, ptr %324, align 4
  store volatile ptr %326, ptr %325, align 8
  %327 = icmp eq ptr %326, null
  br i1 %327, label %330, label %328

328:                                              ; preds = %315
  %329 = getelementptr inbounds %struct.hlist_node, ptr %326, i32 0, i32 1
  store volatile ptr %325, ptr %329, align 4
  br label %330

330:                                              ; preds = %328, %315
  store volatile ptr %325, ptr %324, align 4
  %331 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 1, i32 1
  store volatile ptr %324, ptr %331, align 4
  br label %332

332:                                              ; preds = %330, %311
  %333 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 18
  %334 = load ptr, ptr %333, align 4
  %335 = icmp eq ptr %334, null
  br i1 %335, label %342, label %336

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 2
  %338 = getelementptr inbounds %struct.nexthop, ptr %115, i32 0, i32 1
  %339 = load ptr, ptr %338, align 4
  %340 = getelementptr inbounds %struct.list_head, ptr %339, i32 0, i32 1
  store ptr %337, ptr %340, align 4
  store ptr %339, ptr %337, align 16
  %341 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 2, i32 1
  store ptr %338, ptr %341, align 4
  store volatile ptr %337, ptr %338, align 4
  br label %361

342:                                              ; preds = %332
  %343 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 20
  %344 = load ptr, ptr %343, align 16
  %345 = icmp eq ptr %344, null
  br i1 %345, label %361, label %346

346:                                              ; preds = %342
  %347 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %348 = getelementptr inbounds %struct.net_device, ptr %344, i32 0, i32 17
  %349 = load i32, ptr %348, align 4
  %350 = xor i32 %349, %347
  %351 = mul i32 %350, 1640531527
  %352 = lshr i32 %351, 24
  %353 = getelementptr [256 x %struct.hlist_head], ptr @fib_info_devhash, i32 0, i32 %352
  %354 = getelementptr inbounds %struct.fib_info, ptr %152, i32 1, i32 13
  %355 = load ptr, ptr %353, align 4
  store volatile ptr %355, ptr %354, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %359, label %357

357:                                              ; preds = %346
  %358 = getelementptr inbounds %struct.hlist_node, ptr %355, i32 0, i32 1
  store volatile ptr %354, ptr %358, align 4
  br label %359

359:                                              ; preds = %357, %346
  store volatile ptr %354, ptr %353, align 4
  %360 = getelementptr inbounds %struct.fib_info, ptr %152, i32 1, i32 14
  store volatile ptr %353, ptr %360, align 8
  br label %361

361:                                              ; preds = %359, %342, %336
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fib_info_lock) #17
  br label %371

362:                                              ; preds = %279, %250, %244, %231, %226, %221, %197, %188
  %363 = phi ptr [ @fib_create_info.__msg.4, %188 ], [ @fib_get_nhs.__msg, %197 ], [ @fib_create_info.__msg.5, %221 ], [ @fib_create_info.__msg.6, %226 ], [ @fib_create_info.__msg.7, %231 ], [ @fib_create_info.__msg.8, %244 ], [ @fib_create_info.__msg.9, %250 ], [ @fib_create_info.__msg.10, %279 ]
  store ptr %363, ptr %1, align 4
  br label %364

364:                                              ; preds = %362, %279, %258, %252, %250, %244, %237, %231, %226, %221, %199, %197, %188
  %365 = phi i32 [ -22, %221 ], [ -22, %226 ], [ -22, %231 ], [ -19, %252 ], [ %238, %237 ], [ %201, %199 ], [ -22, %188 ], [ -22, %197 ], [ -22, %244 ], [ -22, %250 ], [ -22, %279 ], [ %261, %258 ], [ -22, %362 ]
  %366 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 7
  store i8 1, ptr %366, align 8
  %367 = getelementptr inbounds %struct.fib_info, ptr %152, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %367, ptr noundef nonnull @free_fib_info_rcu) #17
  br label %368

368:                                              ; preds = %364, %149, %146, %113, %111, %25, %23, %17, %15, %2
  %369 = phi i32 [ %365, %364 ], [ -22, %2 ], [ -22, %17 ], [ -22, %15 ], [ -22, %25 ], [ -22, %23 ], [ -22, %113 ], [ -22, %111 ], [ -105, %149 ], [ -105, %146 ]
  %370 = inttoptr i32 %369 to ptr
  br label %371

371:                                              ; preds = %368, %361, %296, %164, %106
  %372 = phi ptr [ %370, %368 ], [ %161, %164 ], [ %294, %296 ], [ %152, %361 ], [ %64, %106 ]
  ret ptr %372
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #9 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #17, !srcloc !13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #17, !srcloc !27
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !23

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !15

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #17
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nexthop_find_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fib_info_hash_free(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = icmp ult i32 %1, 4097
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @kfree(ptr noundef nonnull %0) #17
  br label %13

7:                                                ; preds = %4
  %8 = ptrtoint ptr %0 to i32
  %9 = add i32 %1, -1
  %10 = lshr i32 %9, 12
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 false) #17, !range !26
  %12 = sub nuw nsw i32 32, %11
  tail call void @free_pages(i32 noundef %8, i32 noundef %12) #17
  br label %13

13:                                               ; preds = %7, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fib_info_hash_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr @fib_info_hash_size, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fib_info_lock) #17
  %5 = load ptr, ptr @fib_info_hash, align 4
  %6 = load ptr, ptr @fib_info_laddrhash, align 4
  store i32 %2, ptr @fib_info_hash_size, align 4
  %7 = icmp eq i32 %2, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #17, !range !26
  %9 = sub nsw i32 31, %8
  %10 = select i1 %7, i32 -1, i32 %9
  store i32 %10, ptr @fib_info_hash_bits, align 4
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store ptr %0, ptr @fib_info_hash, align 4
  store ptr %1, ptr @fib_info_laddrhash, align 4
  br label %108

13:                                               ; preds = %67, %3
  %14 = phi ptr [ %68, %67 ], [ %5, %3 ]
  %15 = phi i32 [ %65, %67 ], [ 0, %3 ]
  %16 = getelementptr %struct.hlist_head, ptr %14, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %61, %13
  %20 = phi ptr [ %21, %61 ], [ %17, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fib_info, ptr %20, i32 0, i32 15
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fib_info, ptr %20, i32 0, i32 8
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.fib_info, ptr %20, i32 0, i32 9
  %27 = load i8, ptr %26, align 2
  %28 = getelementptr inbounds %struct.fib_info, ptr %20, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fib_info, ptr %20, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.fib_info, ptr %20, i32 0, i32 18
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.nexthop, ptr %33, i32 0, i32 6
  %36 = getelementptr inbounds %struct.fib_info, ptr %20, i32 1, i32 0, i32 1
  %37 = select i1 %34, ptr %36, ptr %35
  %38 = xor i32 %29, %23
  %39 = zext i8 %25 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = zext i8 %27 to i32
  %42 = or i32 %40, %41
  %43 = xor i32 %38, %42
  %44 = xor i32 %43, %31
  %45 = load i32, ptr %37, align 4
  %46 = mul i32 %45, 1640531527
  %47 = lshr i32 %46, 24
  %48 = xor i32 %47, %44
  %49 = load i32, ptr @fib_info_hash_size, align 4
  %50 = add i32 %49, -1
  %51 = lshr i32 %48, 7
  %52 = lshr i32 %44, 12
  %53 = xor i32 %48, %52
  %54 = xor i32 %53, %51
  %55 = and i32 %54, %50
  %56 = getelementptr %struct.hlist_head, ptr %0, i32 %55
  %57 = load ptr, ptr %56, align 4
  store volatile ptr %57, ptr %20, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %19
  %60 = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  store volatile ptr %20, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %19
  store volatile ptr %20, ptr %56, align 4
  %62 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  store volatile ptr %56, ptr %62, align 4
  %63 = icmp eq ptr %21, null
  br i1 %63, label %64, label %19

64:                                               ; preds = %61, %13
  %65 = add nuw i32 %15, 1
  %66 = icmp eq i32 %65, %4
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @fib_info_hash, align 4
  br label %13

69:                                               ; preds = %64
  store ptr %0, ptr @fib_info_hash, align 4
  store ptr %1, ptr @fib_info_laddrhash, align 4
  br i1 %11, label %108, label %70

70:                                               ; preds = %69
  %71 = load i32, ptr @fib_info_hash_bits, align 4
  %72 = sub i32 32, %71
  br label %73

73:                                               ; preds = %105, %70
  %74 = phi i32 [ 0, %70 ], [ %106, %105 ]
  %75 = getelementptr %struct.hlist_head, ptr %6, i32 %74
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  %78 = getelementptr i8, ptr %76, i32 -8
  %79 = icmp eq ptr %78, null
  %80 = or i1 %77, %79
  br i1 %80, label %105, label %81

81:                                               ; preds = %99, %73
  %82 = phi ptr [ %102, %99 ], [ %78, %73 ]
  %83 = getelementptr inbounds %struct.fib_info, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.fib_info, ptr %82, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.fib_info, ptr %82, i32 0, i32 11
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.net, ptr %86, i32 0, i32 26
  %90 = load i32, ptr %89, align 4
  %91 = xor i32 %90, %88
  %92 = mul i32 %91, 1640531527
  %93 = lshr i32 %92, %72
  %94 = getelementptr %struct.hlist_head, ptr %1, i32 %93
  %95 = load ptr, ptr %94, align 4
  store volatile ptr %95, ptr %83, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %81
  %98 = getelementptr inbounds %struct.hlist_node, ptr %95, i32 0, i32 1
  store volatile ptr %83, ptr %98, align 4
  br label %99

99:                                               ; preds = %97, %81
  store volatile ptr %83, ptr %94, align 4
  %100 = getelementptr inbounds %struct.fib_info, ptr %82, i32 0, i32 1, i32 1
  store volatile ptr %94, ptr %100, align 4
  %101 = icmp eq ptr %84, null
  %102 = getelementptr i8, ptr %84, i32 -8
  %103 = icmp eq ptr %102, null
  %104 = or i1 %101, %103
  br i1 %104, label %105, label %81

105:                                              ; preds = %99, %73
  %106 = add nuw i32 %74, 1
  %107 = icmp eq i32 %106, %4
  br i1 %107, label %108, label %73

108:                                              ; preds = %105, %69, %12
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fib_info_lock) #17
  %109 = shl i32 %4, 2
  %110 = icmp eq ptr %5, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = icmp ult i32 %109, 4097
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  tail call void @kfree(ptr noundef nonnull %5) #17
  br label %120

114:                                              ; preds = %111
  %115 = ptrtoint ptr %5 to i32
  %116 = add i32 %109, -1
  %117 = lshr i32 %116, 12
  %118 = tail call i32 @llvm.ctlz.i32(i32 %117, i1 false) #17, !range !26
  %119 = sub nuw nsw i32 32, %118
  tail call void @free_pages(i32 noundef %115, i32 noundef %119) #17
  br label %120

120:                                              ; preds = %114, %113, %108
  %121 = icmp eq ptr %6, null
  br i1 %121, label %131, label %122

122:                                              ; preds = %120
  %123 = icmp ult i32 %109, 4097
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  tail call void @kfree(ptr noundef nonnull %6) #17
  br label %131

125:                                              ; preds = %122
  %126 = ptrtoint ptr %6 to i32
  %127 = add i32 %109, -1
  %128 = lshr i32 %127, 12
  %129 = tail call i32 @llvm.ctlz.i32(i32 %128, i1 false) #17, !range !26
  %130 = sub nuw nsw i32 32, %129
  tail call void @free_pages(i32 noundef %126, i32 noundef %130) #17
  br label %131

131:                                              ; preds = %125, %124, %120
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_fib_metrics_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nexthop_get(ptr noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 10
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %15, %1
  %6 = phi i32 [ %13, %15 ], [ %3, %1 ]
  %7 = add i32 %6, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #17, !srcloc !13
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %6, i32 %7, ptr elementtype(i32) %2) #17, !srcloc !28
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = icmp eq i32 %13, %6
  br i1 %14, label %17, label %15, !prof !15

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %5

17:                                               ; preds = %15, %12, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %15 ], [ %6, %12 ]
  %19 = add i32 %18, 1
  %20 = or i32 %19, %18
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %23, label %22, !prof !15

22:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 0) #17
  br label %23

23:                                               ; preds = %22, %17
  %24 = icmp ne i32 %18, 0
  ret i1 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_check_nexthop(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fib_valid_prefsrc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = icmp eq i32 %8, %1
  %11 = and i1 %9, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 254
  %16 = select i1 %15, i32 255, i32 %14
  %17 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 20, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @inet_addr_type_table(ptr noundef %18, i32 noundef %1, i32 noundef %16) #17
  %20 = icmp ne i32 %19, 2
  %21 = icmp ne i32 %16, 255
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load ptr, ptr %17, align 4
  %25 = tail call i32 @inet_addr_type_table(ptr noundef %24, i32 noundef %1, i32 noundef 255) #17
  br label %26

26:                                               ; preds = %23, %12
  %27 = phi i32 [ %25, %23 ], [ %19, %12 ]
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %6
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i1 [ false, %26 ], [ true, %29 ]
  ret i1 %31
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @fib_find_info(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 9
  %7 = load i8, ptr %6, align 2
  %8 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.nexthop, ptr %13, i32 0, i32 6
  %16 = getelementptr inbounds %struct.fib_info, ptr %0, i32 1, i32 0, i32 1
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = xor i32 %9, %3
  %19 = zext i8 %5 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = zext i8 %7 to i32
  %22 = or i32 %20, %21
  %23 = xor i32 %18, %22
  %24 = xor i32 %23, %11
  %25 = load i32, ptr %17, align 4
  %26 = mul i32 %25, 1640531527
  %27 = lshr i32 %26, 24
  %28 = xor i32 %27, %24
  %29 = load i32, ptr @fib_info_hash_size, align 4
  %30 = add i32 %29, -1
  %31 = lshr i32 %28, 7
  %32 = lshr i32 %24, 12
  %33 = xor i32 %28, %32
  %34 = xor i32 %33, %31
  %35 = and i32 %34, %30
  %36 = load ptr, ptr @fib_info_hash, align 4
  %37 = getelementptr %struct.hlist_head, ptr %36, i32 %35
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %132, label %40

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 10
  %42 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 14
  %43 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 6
  %44 = icmp eq i32 %3, 0
  %45 = getelementptr inbounds %struct.fib_info, ptr %0, i32 1, i32 2
  %46 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 20
  %47 = getelementptr inbounds %struct.fib_info, ptr %0, i32 1, i32 1
  %48 = getelementptr inbounds %struct.fib_nh_common, ptr %46, i32 0, i32 6
  %49 = getelementptr inbounds %struct.fib_nh_common, ptr %46, i32 0, i32 5
  br label %50

50:                                               ; preds = %129, %40
  %51 = phi ptr [ %38, %40 ], [ %130, %129 ]
  %52 = getelementptr inbounds %struct.fib_info, ptr %51, i32 0, i32 15
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %3
  br i1 %54, label %55, label %129

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.fib_info, ptr %51, i32 0, i32 8
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %5, %57
  br i1 %58, label %59, label %129

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.fib_info, ptr %51, i32 0, i32 9
  %61 = load i8, ptr %60, align 2
  %62 = icmp eq i8 %7, %61
  br i1 %62, label %63, label %129

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.fib_info, ptr %51, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %9, %65
  br i1 %66, label %67, label %129

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.fib_info, ptr %51, i32 0, i32 13
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %11, %69
  br i1 %70, label %71, label %129

71:                                               ; preds = %67
  %72 = load i8, ptr %41, align 1
  %73 = getelementptr inbounds %struct.fib_info, ptr %51, i32 0, i32 10
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %72, %74
  br i1 %75, label %76, label %129

76:                                               ; preds = %71
  %77 = load ptr, ptr %42, align 4
  %78 = getelementptr inbounds %struct.fib_info, ptr %51, i32 0, i32 14
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @bcmp(ptr noundef dereferenceable(68) %77, ptr noundef dereferenceable(68) %79, i32 68)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %129

82:                                               ; preds = %76
  %83 = load i32, ptr %43, align 4
  %84 = getelementptr inbounds %struct.fib_info, ptr %51, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = xor i32 %85, %83
  %87 = and i32 %86, -90
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.fib_info, ptr %51, i32 0, i32 18
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, i1 %14, i1 false
  br i1 %93, label %94, label %127

94:                                               ; preds = %89
  br i1 %44, label %132, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.fib_info, ptr %51, i32 0, i32 20
  %97 = getelementptr inbounds %struct.fib_info, ptr %51, i32 1, i32 1
  %98 = getelementptr inbounds %struct.fib_nh_common, ptr %96, i32 0, i32 6
  %99 = getelementptr inbounds %struct.fib_info, ptr %51, i32 1, i32 2
  %100 = getelementptr inbounds %struct.fib_info, ptr %51, i32 1, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %16, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.fib_nh_common, ptr %96, i32 0, i32 5
  %106 = load i8, ptr %105, align 2
  %107 = load i8, ptr %49, align 2
  %108 = icmp eq i8 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %104
  %110 = load i8, ptr %97, align 4
  %111 = load i8, ptr %47, align 4
  %112 = icmp eq i8 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load i8, ptr %98, align 1
  %115 = load i8, ptr %48, align 1
  %116 = xor i8 %115, %114
  %117 = and i8 %116, -90
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  switch i8 %106, label %132 [
    i8 2, label %120
    i8 10, label %124
  ]

120:                                              ; preds = %119
  %121 = load i32, ptr %99, align 4
  %122 = load i32, ptr %45, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %132, label %129

124:                                              ; preds = %119
  %125 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %99, ptr noundef dereferenceable(16) %45, i32 16) #17
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %129

127:                                              ; preds = %89
  %128 = icmp eq ptr %91, %13
  br i1 %128, label %132, label %129

129:                                              ; preds = %127, %124, %120, %113, %109, %104, %95, %82, %76, %71, %67, %63, %59, %55, %50
  %130 = load ptr, ptr %51, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %50

132:                                              ; preds = %129, %127, %124, %120, %119, %94, %1
  %133 = phi ptr [ null, %1 ], [ %51, %119 ], [ %51, %120 ], [ %51, %124 ], [ %51, %94 ], [ null, %129 ], [ %51, %127 ]
  ret ptr %133
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @fib_info_hashfn(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 9
  %7 = load i8, ptr %6, align 2
  %8 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.nexthop, ptr %13, i32 0, i32 6
  %16 = getelementptr inbounds %struct.fib_info, ptr %0, i32 1, i32 0, i32 1
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = xor i32 %9, %3
  %19 = zext i8 %5 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = zext i8 %7 to i32
  %22 = or i32 %20, %21
  %23 = xor i32 %18, %22
  %24 = xor i32 %23, %11
  %25 = load i32, ptr %17, align 4
  %26 = mul i32 %25, 1640531527
  %27 = lshr i32 %26, 24
  %28 = xor i32 %27, %24
  %29 = load i32, ptr @fib_info_hash_size, align 4
  %30 = add i32 %29, -1
  %31 = lshr i32 %28, 7
  %32 = xor i32 %31, %28
  %33 = lshr i32 %24, 12
  %34 = xor i32 %32, %33
  %35 = and i32 %34, %30
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_nexthop_info(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3, i1 noundef zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = load i8, ptr %3, align 1
  %14 = or i8 %13, 1
  store i8 %14, ptr %3, align 1
  %15 = load i8, ptr %8, align 1
  br label %16

16:                                               ; preds = %12, %5
  %17 = phi i8 [ %15, %12 ], [ %9, %5 ]
  %18 = and i8 %17, 16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %16
  %21 = load i8, ptr %3, align 1
  %22 = or i8 %21, 16
  store i8 %22, ptr %3, align 1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  %23 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 4
  %24 = load i8, ptr %23, align 1
  switch i8 %24, label %49 [
    i8 2, label %25
    i8 10, label %39
  ]

25:                                               ; preds = %20
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 68
  %28 = load volatile ptr, ptr %27, align 16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %32 = getelementptr %struct.ipv4_devconf, ptr %31, i32 0, i32 1, i32 28
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = getelementptr %struct.in_device, ptr %28, i32 0, i32 21, i32 1, i32 28
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %46

39:                                               ; preds = %20
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 69
  %42 = load volatile ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.inet6_dev, ptr %42, i32 0, i32 32, i32 24
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39, %35, %30
  %47 = load i8, ptr %3, align 1
  %48 = or i8 %47, 1
  store i8 %48, ptr %3, align 1
  br label %49

49:                                               ; preds = %46, %39, %35, %25, %20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  br label %50

50:                                               ; preds = %49, %16
  %51 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 5
  %52 = load i8, ptr %51, align 2
  switch i8 %52, label %71 [
    i8 2, label %53
    i8 10, label %58
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 %55, ptr %7, align 4
  %56 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %71, label %85

58:                                               ; preds = %50
  %59 = icmp eq i8 %2, 10
  br i1 %59, label %67, label %60

60:                                               ; preds = %58
  %61 = tail call ptr @nla_reserve(ptr noundef %0, i32 noundef 18, i32 noundef 18) #17
  %62 = icmp eq ptr %61, null
  br i1 %62, label %85, label %63

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %61, i32 4
  store i16 10, ptr %64, align 2
  %65 = getelementptr i8, ptr %61, i32 6
  %66 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %65, ptr noundef align 4 dereferenceable(16) %66, i32 16, i1 false)
  br label %71

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 8
  %69 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 16, ptr noundef %68) #17
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %67, %63, %53, %50
  %72 = load i8, ptr %8, align 1
  %73 = and i8 %72, 76
  %74 = load i8, ptr %3, align 1
  %75 = or i8 %74, %73
  store i8 %75, ptr %3, align 1
  br i1 %4, label %84, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %1, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 17
  %81 = load i32, ptr %80, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 %81, ptr %6, align 4
  %82 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %76, %71
  br label %85

85:                                               ; preds = %84, %79, %67, %60, %53
  %86 = phi i32 [ -90, %79 ], [ -90, %67 ], [ -90, %53 ], [ -90, %60 ], [ 0, %84 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_add_nexthop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #17
  store i8 0, ptr %7, align 1
  %9 = tail call ptr @nla_reserve_nohdr(ptr noundef %0, i32 noundef 8) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %5
  %12 = trunc i32 %2 to i8
  %13 = add i8 %12, -1
  %14 = getelementptr inbounds %struct.rtnexthop, ptr %9, i32 0, i32 2
  store i8 %13, ptr %14, align 1
  %15 = icmp eq ptr %8, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %18, %16 ], [ 0, %11 ]
  %21 = getelementptr inbounds %struct.rtnexthop, ptr %9, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = call i32 @fib_nexthop_info(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %3, ptr noundef nonnull %7, i1 noundef zeroext true)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = load i8, ptr %7, align 1
  %26 = getelementptr inbounds %struct.rtnexthop, ptr %9, i32 0, i32 1
  store i8 %25, ptr %26, align 2
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 %4, ptr %6, align 4
  %29 = call i32 @nla_put(ptr noundef %0, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  %34 = ptrtoint ptr %33 to i32
  %35 = ptrtoint ptr %9 to i32
  %36 = sub i32 %34, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, ptr %9, align 4
  br label %38

38:                                               ; preds = %31, %28, %19, %5
  %39 = phi i32 [ 0, %31 ], [ -90, %28 ], [ -90, %19 ], [ -90, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_nohdr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnetlink_put_metrics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_sync_down_addr(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = load ptr, ptr @fib_info_laddrhash, align 4
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i32 %1, 0
  %6 = or i1 %5, %4
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %9 = xor i32 %8, %1
  %10 = load i32, ptr @fib_info_hash_bits, align 4
  %11 = mul i32 %9, 1640531527
  %12 = sub i32 32, %10
  %13 = lshr i32 %11, %12
  %14 = getelementptr %struct.hlist_head, ptr %3, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -8
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %43, label %20

20:                                               ; preds = %35, %7
  %21 = phi ptr [ %40, %35 ], [ %17, %7 ]
  %22 = phi i32 [ %36, %35 ], [ 0, %7 ]
  %23 = getelementptr inbounds %struct.fib_info, ptr %21, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 254
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.fib_info, ptr %21, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.fib_info, ptr %21, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 1
  store i32 %33, ptr %31, align 4
  %34 = add i32 %22, 1
  br label %35

35:                                               ; preds = %30, %26, %20
  %36 = phi i32 [ %22, %20 ], [ %34, %30 ], [ %22, %26 ]
  %37 = getelementptr inbounds %struct.fib_info, ptr %21, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = getelementptr i8, ptr %38, i32 -8
  %41 = icmp eq ptr %40, null
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %20

43:                                               ; preds = %35, %7, %2
  %44 = phi i32 [ 0, %2 ], [ 0, %7 ], [ %36, %35 ]
  ret i32 %44
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_nhc_update_mtu(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %30, %3
  %8 = phi i32 [ %31, %30 ], [ 0, %3 ]
  %9 = getelementptr %struct.fnhe_hash_bucket, ptr %5, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %27, %7
  %13 = phi ptr [ %28, %27 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.fib_nh_exception, ptr %13, i32 0, i32 4
  %15 = load i8, ptr %14, align 4, !range !21
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.fib_nh_exception, ptr %13, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  br i1 %16, label %22, label %19

19:                                               ; preds = %12
  %20 = icmp ult i32 %18, %1
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  store i32 %1, ptr %17, align 4
  store i8 0, ptr %14, align 4
  br label %27

22:                                               ; preds = %12
  %23 = icmp ugt i32 %18, %1
  %24 = icmp eq i32 %18, %2
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 %1, ptr %17, align 4
  br label %27

27:                                               ; preds = %26, %22, %21, %19
  %28 = load ptr, ptr %13, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %12

30:                                               ; preds = %27, %7
  %31 = add nuw nsw i32 %8, 1
  %32 = icmp eq i32 %31, 2048
  br i1 %32, label %33, label %7

33:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_sync_mtu(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = xor i32 %5, %3
  %7 = mul i32 %6, 1640531527
  %8 = lshr i32 %7, 24
  %9 = getelementptr [256 x %struct.hlist_head], ptr @fib_info_devhash, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -52
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %59, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  br label %17

17:                                               ; preds = %52, %15
  %18 = phi ptr [ %12, %15 ], [ %56, %52 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load i32, ptr %16, align 4
  %23 = getelementptr inbounds %struct.fib_nh_common, ptr %18, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %49, %21
  %27 = phi i32 [ %50, %49 ], [ 0, %21 ]
  %28 = getelementptr %struct.fnhe_hash_bucket, ptr %24, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %46, %26
  %32 = phi ptr [ %47, %46 ], [ %29, %26 ]
  %33 = getelementptr inbounds %struct.fib_nh_exception, ptr %32, i32 0, i32 4
  %34 = load i8, ptr %33, align 4, !range !21
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds %struct.fib_nh_exception, ptr %32, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  br i1 %35, label %41, label %38

38:                                               ; preds = %31
  %39 = icmp ult i32 %37, %22
  br i1 %39, label %46, label %40

40:                                               ; preds = %38
  store i32 %22, ptr %36, align 4
  store i8 0, ptr %33, align 4
  br label %46

41:                                               ; preds = %31
  %42 = icmp ugt i32 %37, %22
  %43 = icmp eq i32 %37, %1
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 %22, ptr %36, align 4
  br label %46

46:                                               ; preds = %45, %41, %40, %38
  %47 = load ptr, ptr %32, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %31

49:                                               ; preds = %46, %26
  %50 = add nuw nsw i32 %27, 1
  %51 = icmp eq i32 %50, 2048
  br i1 %51, label %52, label %26

52:                                               ; preds = %49, %21, %17
  %53 = getelementptr inbounds %struct.fib_nh, ptr %18, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = getelementptr i8, ptr %54, i32 -52
  %57 = icmp eq ptr %56, null
  %58 = or i1 %55, %57
  br i1 %58, label %59, label %17

59:                                               ; preds = %52, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_sync_down_dev(ptr noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.fib_nh_notifier_info, align 8
  %5 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %7, %5
  %9 = mul i32 %8, 1640531527
  %10 = lshr i32 %9, 24
  %11 = getelementptr [256 x %struct.hlist_head], ptr @fib_info_devhash, i32 0, i32 %10
  %12 = select i1 %2, i32 -1, i32 255
  %13 = load ptr, ptr %11, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %13, i32 -52
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %110, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.fib_nh_notifier_info, ptr %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 68
  br label %21

21:                                               ; preds = %101, %18
  %22 = phi ptr [ null, %18 ], [ %103, %101 ]
  %23 = phi ptr [ %15, %18 ], [ %107, %101 ]
  %24 = phi i32 [ 0, %18 ], [ %102, %101 ]
  %25 = getelementptr inbounds %struct.fib_nh, ptr %23, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fib_info, ptr %26, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31, !prof !23

30:                                               ; preds = %21
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_semantics.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2004, 0\0A.popsection", ""() #17, !srcloc !29
  unreachable

31:                                               ; preds = %21
  %32 = load ptr, ptr %23, align 4
  %33 = icmp ne ptr %32, %0
  %34 = icmp eq ptr %26, %22
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %101, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.fib_info, ptr %26, i32 0, i32 20
  %38 = getelementptr inbounds %struct.fib_nh_common, ptr %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.fib_info, ptr %26, i32 1, i32 1
  %40 = load i8, ptr %38, align 1
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %36
  %44 = load ptr, ptr %37, align 4
  %45 = icmp eq ptr %44, %0
  br i1 %45, label %46, label %83

46:                                               ; preds = %43
  %47 = load i8, ptr %39, align 4
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %12, %48
  br i1 %49, label %83, label %50

50:                                               ; preds = %46
  switch i32 %1, label %56 [
    i32 2, label %51
    i32 6, label %51
    i32 4, label %53
  ]

51:                                               ; preds = %50, %50
  %52 = or i8 %40, 1
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i8 [ %40, %50 ], [ %52, %51 ]
  %55 = or i8 %54, 16
  store i8 %55, ptr %38, align 1
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i8 [ %40, %50 ], [ %55, %53 ]
  %58 = load volatile ptr, ptr %20, align 16
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %62 = getelementptr %struct.ipv4_devconf, ptr %61, i32 0, i32 1, i32 28
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = getelementptr %struct.in_device, ptr %58, i32 0, i32 21, i32 1, i32 28
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %65, %56
  %71 = phi i1 [ false, %69 ], [ true, %65 ], [ true, %56 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  store i64 0, ptr %4, align 8
  store ptr %37, ptr %19, align 8
  %72 = and i8 %57, 16
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %71, i1 true, i1 %73
  %75 = and i8 %57, 1
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = call i32 @call_fib4_notifiers(ptr noundef nonnull @init_net, i32 noundef 7, ptr noundef nonnull %4) #17
  %80 = load i32, ptr %27, align 4
  br label %81

81:                                               ; preds = %78, %70
  %82 = phi i32 [ %28, %70 ], [ %80, %78 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %83

83:                                               ; preds = %81, %46, %43, %36
  %84 = phi i32 [ %82, %81 ], [ %28, %46 ], [ %28, %43 ], [ %28, %36 ]
  %85 = phi i32 [ 1, %81 ], [ 0, %46 ], [ 0, %43 ], [ 1, %36 ]
  %86 = icmp eq i32 %85, %84
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  switch i32 %1, label %99 [
    i32 2, label %91
    i32 6, label %91
    i32 4, label %88
  ]

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.fib_info, ptr %26, i32 0, i32 6
  %90 = load i32, ptr %89, align 4
  br label %95

91:                                               ; preds = %87, %87
  %92 = getelementptr inbounds %struct.fib_info, ptr %26, i32 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = or i32 %93, 1
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i32 [ %90, %88 ], [ %94, %91 ]
  %97 = getelementptr inbounds %struct.fib_info, ptr %26, i32 0, i32 6
  %98 = or i32 %96, 16
  store i32 %98, ptr %97, align 4
  br label %99

99:                                               ; preds = %95, %87
  %100 = add i32 %24, 1
  br label %101

101:                                              ; preds = %99, %83, %31
  %102 = phi i32 [ %24, %31 ], [ %100, %99 ], [ %24, %83 ]
  %103 = phi ptr [ %22, %31 ], [ %26, %99 ], [ %26, %83 ]
  %104 = getelementptr inbounds %struct.fib_nh, ptr %23, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  %107 = getelementptr i8, ptr %105, i32 -52
  %108 = icmp eq ptr %107, null
  %109 = or i1 %106, %108
  br i1 %109, label %110, label %21

110:                                              ; preds = %101, %3
  %111 = phi i32 [ 0, %3 ], [ %102, %101 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_sync_up(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.fib_nh_notifier_info, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %111, label %8

8:                                                ; preds = %2
  %9 = and i8 %1, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @dev_get_flags(ptr noundef %0) #17
  %13 = and i32 %12, 65600
  %14 = icmp eq i32 %13, 0
  %15 = or i8 %1, 16
  %16 = select i1 %14, i8 %1, i8 %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i8 [ %16, %11 ], [ %1, %8 ]
  %19 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %21, %19
  %23 = mul i32 %22, 1640531527
  %24 = lshr i32 %23, 24
  %25 = getelementptr [256 x %struct.hlist_head], ptr @fib_info_devhash, i32 0, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = getelementptr i8, ptr %26, i32 -52
  %29 = icmp eq ptr %28, null
  %30 = or i1 %27, %29
  br i1 %30, label %111, label %31

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 68
  %33 = xor i8 %18, -1
  %34 = getelementptr inbounds %struct.fib_nh_notifier_info, ptr %3, i32 0, i32 1
  %35 = zext i8 %18 to i32
  %36 = xor i32 %35, -1
  br label %37

37:                                               ; preds = %102, %31
  %38 = phi ptr [ null, %31 ], [ %104, %102 ]
  %39 = phi ptr [ %28, %31 ], [ %108, %102 ]
  %40 = phi i32 [ 0, %31 ], [ %103, %102 ]
  %41 = getelementptr inbounds %struct.fib_nh, ptr %39, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.fib_info, ptr %42, i32 0, i32 15
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47, !prof !23

46:                                               ; preds = %37
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_semantics.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2162, 0\0A.popsection", ""() #17, !srcloc !30
  unreachable

47:                                               ; preds = %37
  %48 = load ptr, ptr %39, align 4
  %49 = icmp ne ptr %48, %0
  %50 = icmp eq ptr %42, %38
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %102, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.fib_info, ptr %42, i32 0, i32 20
  %54 = getelementptr inbounds %struct.fib_nh_common, ptr %53, i32 0, i32 6
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, %18
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %97, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %53, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %102, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 14
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  %66 = icmp eq ptr %59, %0
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %102

68:                                               ; preds = %61
  %69 = load ptr, ptr %32, align 16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %102, label %71

71:                                               ; preds = %68
  %72 = and i8 %55, %33
  store i8 %72, ptr %54, align 1
  %73 = load volatile ptr, ptr %32, align 16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %77 = getelementptr %struct.ipv4_devconf, ptr %76, i32 0, i32 1, i32 28
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = getelementptr %struct.in_device, ptr %73, i32 0, i32 21, i32 1, i32 28
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80, %75
  br label %85

85:                                               ; preds = %84, %80, %71
  %86 = phi i1 [ false, %84 ], [ true, %80 ], [ true, %71 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8
  store ptr %53, ptr %34, align 8
  %87 = zext i8 %72 to i32
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = and i32 %87, 16
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %86, i1 true, i1 %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @call_fib4_notifiers(ptr noundef nonnull @init_net, i32 noundef 6, ptr noundef nonnull %3) #17
  br label %96

96:                                               ; preds = %94, %90, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %97

97:                                               ; preds = %96, %52
  %98 = getelementptr inbounds %struct.fib_info, ptr %42, i32 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, %36
  store i32 %100, ptr %98, align 4
  %101 = add i32 %40, 1
  br label %102

102:                                              ; preds = %97, %68, %61, %58, %47
  %103 = phi i32 [ %40, %47 ], [ %101, %97 ], [ %40, %61 ], [ %40, %58 ], [ %40, %68 ]
  %104 = phi ptr [ %38, %47 ], [ %42, %97 ], [ %42, %61 ], [ %42, %58 ], [ %42, %68 ]
  %105 = getelementptr inbounds %struct.fib_nh, ptr %39, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  %108 = getelementptr i8, ptr %106, i32 -52
  %109 = icmp eq ptr %108, null
  %110 = or i1 %107, %109
  br i1 %110, label %111, label %37

111:                                              ; preds = %102, %17, %2
  %112 = phi i32 [ 0, %2 ], [ 0, %17 ], [ %103, %102 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_select_path(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %278, label %14

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %278

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fib_table, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %278

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 3
  %26 = load i8, ptr %25, align 2
  %27 = icmp eq i8 %26, 1
  br i1 %27, label %28, label %278

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4
  %29 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 -1, ptr %6, align 4
  %31 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fib_info, ptr %32, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = load volatile ptr, ptr %30, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %277, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 3
  %39 = getelementptr inbounds %struct.fib_table, ptr %20, i32 0, i32 1
  %40 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 4
  br label %41

41:                                               ; preds = %180, %37
  %42 = phi ptr [ %35, %37 ], [ %186, %180 ]
  %43 = phi ptr [ null, %37 ], [ %185, %180 ]
  %44 = phi i32 [ -1, %37 ], [ %184, %180 ]
  %45 = phi ptr [ null, %37 ], [ %183, %180 ]
  %46 = phi i32 [ %34, %37 ], [ %182, %180 ]
  %47 = phi i8 [ 0, %37 ], [ %181, %180 ]
  %48 = getelementptr inbounds %struct.fib_alias, ptr %42, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.fib_alias, ptr %42, i32 0, i32 5
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 32
  br i1 %52, label %53, label %180

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.fib_alias, ptr %42, i32 0, i32 2
  %55 = load i8, ptr %54, align 4
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i8, ptr %38, align 4
  %59 = icmp eq i8 %55, %58
  br i1 %59, label %60, label %180

60:                                               ; preds = %57, %53
  %61 = getelementptr inbounds %struct.fib_alias, ptr %42, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %39, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %180

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.fib_info, ptr %49, i32 0, i32 13
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %67, %46
  %69 = icmp eq i8 %55, %47
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = icmp eq i8 %47, 0
  br i1 %72, label %188, label %180

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.fib_info, ptr %49, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %180

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.fib_info, ptr %49, i32 0, i32 9
  %80 = load i8, ptr %79, align 2
  %81 = load i8, ptr %40, align 1
  %82 = icmp eq i8 %80, %81
  br i1 %82, label %83, label %180

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.fib_alias, ptr %42, i32 0, i32 3
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 1
  br i1 %86, label %87, label %180

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.fib_info, ptr %49, i32 0, i32 18
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %114, label %91, !prof !15

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.nexthop, ptr %89, i32 0, i32 9
  %93 = load i8, ptr %92, align 2, !range !21
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.nexthop, ptr %89, i32 0, i32 12
  %97 = load volatile ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nh_group, ptr %97, i32 0, i32 2
  %99 = load i8, ptr %98, align 2, !range !21
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.nh_group, ptr %97, i32 0, i32 1
  %103 = load i16, ptr %102, align 4
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %101
  %106 = getelementptr %struct.nh_group, ptr %97, i32 0, i32 8, i32 0
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %105, %95, %91
  %110 = phi ptr [ %89, %91 ], [ %107, %105 ], [ %89, %95 ]
  %111 = getelementptr inbounds %struct.nexthop, ptr %110, i32 0, i32 12
  %112 = load volatile ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.nh_info, ptr %112, i32 0, i32 5
  br label %116

114:                                              ; preds = %87
  %115 = getelementptr %struct.fib_info, ptr %49, i32 0, i32 20, i32 0
  br label %116

116:                                              ; preds = %114, %109, %105, %101
  %117 = phi ptr [ %115, %114 ], [ %113, %109 ], [ null, %105 ], [ null, %101 ]
  %118 = getelementptr inbounds %struct.fib_nh_common, ptr %117, i32 0, i32 5
  %119 = load i8, ptr %118, align 2
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %180, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.fib_nh_common, ptr %117, i32 0, i32 3
  %123 = load i8, ptr %122, align 4
  %124 = icmp eq i8 %123, -3
  br i1 %124, label %125, label %180

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.fib_alias, ptr %42, i32 0, i32 4
  %127 = load i8, ptr %126, align 2
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = or i8 %127, 1
  store i8 %131, ptr %126, align 2
  br label %132

132:                                              ; preds = %130, %125
  %133 = icmp eq ptr %43, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load ptr, ptr %31, align 4
  %136 = icmp eq ptr %49, %135
  br i1 %136, label %173, label %195

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.fib_alias, ptr %45, i32 0, i32 7
  %139 = load i16, ptr %138, align 4
  %140 = sext i16 %139 to i32
  %141 = call fastcc i32 @fib_detect_death(ptr noundef nonnull %43, i32 noundef %44, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %140) #17
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.fib_alias, ptr %45, i32 0, i32 7
  store ptr %43, ptr %31, align 4
  %145 = getelementptr inbounds %struct.fib_info, ptr %43, i32 0, i32 18
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %171, label %148, !prof !15

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.nexthop, ptr %146, i32 0, i32 9
  %150 = load i8, ptr %149, align 2, !range !21
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.nexthop, ptr %146, i32 0, i32 12
  %154 = load volatile ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.nh_group, ptr %154, i32 0, i32 2
  %156 = load i8, ptr %155, align 2, !range !21
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.nh_group, ptr %154, i32 0, i32 1
  %160 = load i16, ptr %159, align 4
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %176, label %162

162:                                              ; preds = %158
  %163 = getelementptr %struct.nh_group, ptr %154, i32 0, i32 8, i32 0
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %176, label %166

166:                                              ; preds = %162, %152, %148
  %167 = phi ptr [ %146, %148 ], [ %164, %162 ], [ %146, %152 ]
  %168 = getelementptr inbounds %struct.nexthop, ptr %167, i32 0, i32 12
  %169 = load volatile ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.nh_info, ptr %169, i32 0, i32 5
  br label %176

171:                                              ; preds = %143
  %172 = getelementptr %struct.fib_info, ptr %43, i32 0, i32 20, i32 0
  br label %176

173:                                              ; preds = %137, %134
  %174 = phi ptr [ %45, %137 ], [ %42, %134 ]
  %175 = add i32 %44, 1
  br label %180

176:                                              ; preds = %171, %166, %162, %158
  %177 = phi ptr [ %172, %171 ], [ %170, %166 ], [ null, %162 ], [ null, %158 ]
  %178 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 6
  store ptr %177, ptr %178, align 4
  %179 = trunc i32 %44 to i16
  store i16 %179, ptr %144, align 4
  br label %277

180:                                              ; preds = %173, %121, %116, %83, %78, %73, %71, %60, %57, %41
  %181 = phi i8 [ %55, %116 ], [ %55, %121 ], [ %55, %78 ], [ %55, %83 ], [ %47, %73 ], [ %47, %71 ], [ %47, %60 ], [ %47, %57 ], [ %47, %41 ], [ %55, %173 ]
  %182 = phi i32 [ %67, %116 ], [ %67, %121 ], [ %67, %78 ], [ %67, %83 ], [ %46, %73 ], [ %46, %71 ], [ %46, %60 ], [ %46, %57 ], [ %46, %41 ], [ %67, %173 ]
  %183 = phi ptr [ %45, %116 ], [ %45, %121 ], [ %45, %78 ], [ %45, %83 ], [ %45, %73 ], [ %45, %71 ], [ %45, %60 ], [ %45, %57 ], [ %45, %41 ], [ %174, %173 ]
  %184 = phi i32 [ %44, %116 ], [ %44, %121 ], [ %44, %78 ], [ %44, %83 ], [ %44, %73 ], [ %44, %71 ], [ %44, %60 ], [ %44, %57 ], [ %44, %41 ], [ %175, %173 ]
  %185 = phi ptr [ %43, %116 ], [ %43, %121 ], [ %43, %78 ], [ %43, %83 ], [ %43, %73 ], [ %43, %71 ], [ %43, %60 ], [ %43, %57 ], [ %43, %41 ], [ %49, %173 ]
  %186 = load volatile ptr, ptr %42, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %41

188:                                              ; preds = %180, %71
  %189 = phi ptr [ %183, %180 ], [ %45, %71 ]
  %190 = phi i32 [ %184, %180 ], [ %44, %71 ]
  %191 = phi ptr [ %185, %180 ], [ %43, %71 ]
  %192 = icmp sgt i32 %190, 0
  %193 = icmp ne ptr %191, null
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %200, label %195

195:                                              ; preds = %188, %134
  %196 = phi ptr [ %189, %188 ], [ %45, %134 ]
  %197 = icmp eq ptr %196, null
  br i1 %197, label %277, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.fib_alias, ptr %196, i32 0, i32 7
  store i16 -1, ptr %199, align 4
  br label %277

200:                                              ; preds = %188
  %201 = getelementptr inbounds %struct.fib_alias, ptr %189, i32 0, i32 7
  %202 = load i16, ptr %201, align 4
  %203 = sext i16 %202 to i32
  %204 = call fastcc i32 @fib_detect_death(ptr noundef nonnull %191, i32 noundef %190, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %203) #17
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %239

206:                                              ; preds = %200
  store ptr %191, ptr %31, align 4
  %207 = getelementptr inbounds %struct.fib_info, ptr %191, i32 0, i32 18
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %233, label %210, !prof !15

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.nexthop, ptr %208, i32 0, i32 9
  %212 = load i8, ptr %211, align 2, !range !21
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %228, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.nexthop, ptr %208, i32 0, i32 12
  %216 = load volatile ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.nh_group, ptr %216, i32 0, i32 2
  %218 = load i8, ptr %217, align 2, !range !21
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.nh_group, ptr %216, i32 0, i32 1
  %222 = load i16, ptr %221, align 4
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %235, label %224

224:                                              ; preds = %220
  %225 = getelementptr %struct.nh_group, ptr %216, i32 0, i32 8, i32 0
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %235, label %228

228:                                              ; preds = %224, %214, %210
  %229 = phi ptr [ %208, %210 ], [ %226, %224 ], [ %208, %214 ]
  %230 = getelementptr inbounds %struct.nexthop, ptr %229, i32 0, i32 12
  %231 = load volatile ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.nh_info, ptr %231, i32 0, i32 5
  br label %235

233:                                              ; preds = %206
  %234 = getelementptr %struct.fib_info, ptr %191, i32 0, i32 20, i32 0
  br label %235

235:                                              ; preds = %233, %228, %224, %220
  %236 = phi ptr [ %234, %233 ], [ %232, %228 ], [ null, %224 ], [ null, %220 ]
  %237 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 6
  store ptr %236, ptr %237, align 4
  %238 = trunc i32 %190 to i16
  store i16 %238, ptr %201, align 4
  br label %277

239:                                              ; preds = %200
  %240 = load i32, ptr %6, align 4
  %241 = icmp sgt i32 %240, -1
  br i1 %241, label %242, label %275

242:                                              ; preds = %239
  %243 = load ptr, ptr %5, align 4
  store ptr %243, ptr %31, align 4
  %244 = getelementptr inbounds %struct.fib_info, ptr %243, i32 0, i32 18
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %270, label %247, !prof !15

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.nexthop, ptr %245, i32 0, i32 9
  %249 = load i8, ptr %248, align 2, !range !21
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %265, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.nexthop, ptr %245, i32 0, i32 12
  %253 = load volatile ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.nh_group, ptr %253, i32 0, i32 2
  %255 = load i8, ptr %254, align 2, !range !21
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.nh_group, ptr %253, i32 0, i32 1
  %259 = load i16, ptr %258, align 4
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %272, label %261

261:                                              ; preds = %257
  %262 = getelementptr %struct.nh_group, ptr %253, i32 0, i32 8, i32 0
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %272, label %265

265:                                              ; preds = %261, %251, %247
  %266 = phi ptr [ %245, %247 ], [ %263, %261 ], [ %245, %251 ]
  %267 = getelementptr inbounds %struct.nexthop, ptr %266, i32 0, i32 12
  %268 = load volatile ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.nh_info, ptr %268, i32 0, i32 5
  br label %272

270:                                              ; preds = %242
  %271 = getelementptr %struct.fib_info, ptr %243, i32 0, i32 20, i32 0
  br label %272

272:                                              ; preds = %270, %265, %261, %257
  %273 = phi ptr [ %271, %270 ], [ %269, %265 ], [ null, %261 ], [ null, %257 ]
  %274 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 6
  store ptr %273, ptr %274, align 4
  br label %275

275:                                              ; preds = %272, %239
  %276 = trunc i32 %240 to i16
  store i16 %276, ptr %201, align 4
  br label %277

277:                                              ; preds = %275, %235, %198, %195, %176, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %278

278:                                              ; preds = %277, %24, %18, %14, %9
  %279 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 1
  %280 = load i32, ptr %279, align 8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %321

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 6
  %284 = load ptr, ptr %283, align 4
  %285 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 7
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.fib_info, ptr %286, i32 0, i32 11
  %288 = load i32, ptr %287, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %319

290:                                              ; preds = %282
  %291 = getelementptr inbounds %struct.fib_nh_common, ptr %284, i32 0, i32 4
  %292 = load i8, ptr %291, align 1
  %293 = icmp eq i8 %292, 2
  br i1 %293, label %294, label %303

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.fib_nh, ptr %284, i32 0, i32 4
  %296 = load i32, ptr %295, align 4
  %297 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 115
  %298 = load volatile i32, ptr %297, align 4
  %299 = icmp eq i32 %296, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.fib_nh, ptr %284, i32 0, i32 3
  %302 = load i32, ptr %301, align 4
  br label %319

303:                                              ; preds = %290
  %304 = getelementptr inbounds %struct.fib_info, ptr %286, i32 0, i32 9
  %305 = load i8, ptr %304, align 2
  %306 = load ptr, ptr %284, align 4
  %307 = zext i8 %305 to i32
  %308 = tail call i32 @inet_select_addr(ptr noundef %306, i32 noundef 0, i32 noundef %307) #17
  br label %319

309:                                              ; preds = %294
  %310 = getelementptr inbounds %struct.fib_info, ptr %286, i32 0, i32 9
  %311 = load i8, ptr %310, align 2
  %312 = load ptr, ptr %284, align 4
  %313 = getelementptr inbounds %struct.fib_nh_common, ptr %284, i32 0, i32 8
  %314 = load i32, ptr %313, align 4
  %315 = zext i8 %311 to i32
  %316 = tail call i32 @inet_select_addr(ptr noundef %312, i32 noundef %314, i32 noundef %315) #17
  %317 = getelementptr inbounds %struct.fib_nh, ptr %284, i32 0, i32 3
  store i32 %316, ptr %317, align 4
  %318 = load volatile i32, ptr %297, align 4
  store i32 %318, ptr %295, align 4
  br label %319

319:                                              ; preds = %309, %303, %300, %282
  %320 = phi i32 [ %288, %282 ], [ %302, %300 ], [ %308, %303 ], [ %316, %309 ]
  store i32 %320, ptr %279, align 8
  br label %321

321:                                              ; preds = %319, %278
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release_immediate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nexthop_free_rcu(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_dev_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inetdev_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib4_notifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fib_detect_death(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9, !prof !15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nexthop, ptr %7, i32 0, i32 9
  %11 = load i8, ptr %10, align 2, !range !21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nexthop, ptr %7, i32 0, i32 12
  %15 = load volatile ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nh_group, ptr %15, i32 0, i32 2
  %17 = load i8, ptr %16, align 2, !range !21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nh_group, ptr %15, i32 0, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.nh_group, ptr %15, i32 0, i32 8, i32 0
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23, %13, %9
  %28 = phi ptr [ %7, %9 ], [ %25, %23 ], [ %7, %13 ]
  %29 = getelementptr inbounds %struct.nexthop, ptr %28, i32 0, i32 12
  %30 = load volatile ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nh_info, ptr %30, i32 0, i32 5
  br label %34

32:                                               ; preds = %5
  %33 = getelementptr %struct.fib_info, ptr %0, i32 0, i32 20, i32 0
  br label %34

34:                                               ; preds = %32, %27, %23, %19
  %35 = phi ptr [ %33, %32 ], [ %31, %27 ], [ null, %23 ], [ null, %19 ]
  %36 = getelementptr inbounds %struct.fib_nh_common, ptr %35, i32 0, i32 5
  %37 = load i8, ptr %36, align 2
  switch i8 %37, label %79 [
    i8 2, label %38
    i8 10, label %42
  ], !prof !31

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.fib_nh_common, ptr %35, i32 0, i32 8
  %40 = load ptr, ptr %35, align 4
  %41 = tail call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef %39, ptr noundef %40) #17
  br label %49

42:                                               ; preds = %34
  %43 = load ptr, ptr @ipv6_stub, align 4
  %44 = getelementptr inbounds %struct.ipv6_stub, ptr %43, i32 0, i32 20
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.fib_nh_common, ptr %35, i32 0, i32 8
  %47 = load ptr, ptr %35, align 4
  %48 = tail call ptr @neigh_lookup(ptr noundef %45, ptr noundef %46, ptr noundef %47) #17
  br label %49

49:                                               ; preds = %42, %38
  %50 = phi ptr [ %41, %38 ], [ %48, %42 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %79, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.neighbour, ptr %50, i32 0, i32 12
  %54 = load i8, ptr %53, align 4
  %55 = getelementptr inbounds %struct.neighbour, ptr %50, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #17, !srcloc !13
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #17, !srcloc !14
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = icmp sgt i32 %57, 0
  br i1 %60, label %63, label %61, !prof !15

61:                                               ; preds = %59
  tail call void @refcount_warn_saturate(ptr noundef %55, i32 noundef 3) #17
  br label %63

62:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  tail call void @neigh_destroy(ptr noundef nonnull %50) #17
  br label %63

63:                                               ; preds = %62, %61, %59
  %64 = icmp eq i8 %54, 2
  br i1 %64, label %79, label %65

65:                                               ; preds = %63
  %66 = and i8 %54, -34
  %67 = icmp eq i8 %66, 0
  %68 = icmp eq i32 %1, %4
  %69 = or i1 %68, %67
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  br i1 %67, label %71, label %78

71:                                               ; preds = %70
  %72 = load i32, ptr %3, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = icmp sgt i32 %1, %4
  %76 = icmp ne i8 %54, 1
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %70
  store ptr %0, ptr %2, align 4
  store i32 %1, ptr %3, align 4
  br label %79

79:                                               ; preds = %78, %74, %71, %65, %63, %49, %34
  %80 = phi i32 [ 0, %49 ], [ 0, %63 ], [ 0, %65 ], [ 1, %78 ], [ 1, %74 ], [ 1, %71 ], [ 0, %34 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }

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
!9 = !{i64 622304, i64 622365}
!10 = !{i64 629409}
!11 = !{i64 625321}
!12 = !{i64 2148260065}
!13 = !{i64 593557, i64 2148095123, i64 2148095149, i64 2148095196, i64 2148095218, i64 2148095246, i64 2148095266}
!14 = !{i64 2148162200, i64 2148162232, i64 2148162261, i64 2148162295, i64 2148162326, i64 2148162349}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2149305595}
!17 = !{i64 2149231680}
!18 = !{i64 2149227504}
!19 = !{i64 2149227579, i64 2149227606, i64 2149227653, i64 2149227675, i64 2149227703, i64 2149227723}
!20 = !{i64 2149254683}
!21 = !{i8 0, i8 2}
!22 = !{!"auto-init"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2149005481}
!25 = !{i64 2149005698}
!26 = !{i32 0, i32 33}
!27 = !{i64 2148159843, i64 2148159875, i64 2148159904, i64 2148159938, i64 2148159969, i64 2148159992}
!28 = !{i64 579620, i64 579644, i64 579665, i64 579682, i64 579699}
!29 = !{i64 2157272001, i64 2157272491, i64 2157272038, i64 2157272094, i64 2157272128, i64 2157272152, i64 2157272193, i64 2157272214, i64 2157272242, i64 2157272276}
!30 = !{i64 2157295783, i64 2157296273, i64 2157295820, i64 2157295876, i64 2157295910, i64 2157295934, i64 2157295975, i64 2157295996, i64 2157296024, i64 2157296058}
!31 = !{!"branch_weights", i32 1, i32 4000, i32 1}
