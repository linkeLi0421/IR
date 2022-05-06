; ModuleID = '/llk/IR/net/ipv4/nexthop.c_pt.bc'
source_filename = "../net/ipv4/nexthop.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nexthop_free_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22nexthop_free_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_nexthop_free_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nexthop_find_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22nexthop_find_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_nexthop_find_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nexthop_select_path:\09\09\09\09\09"
module asm "\09.asciz \09\22nexthop_select_path\22\09\09\09\09\09"
module asm "__kstrtabns_nexthop_select_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nexthop_for_each_fib6_nh:\09\09\09\09\09"
module asm "\09.asciz \09\22nexthop_for_each_fib6_nh\22\09\09\09\09\09"
module asm "__kstrtabns_nexthop_for_each_fib6_nh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib6_check_nexthop:\09\09\09\09\09"
module asm "\09.asciz \09\22fib6_check_nexthop\22\09\09\09\09\09"
module asm "__kstrtabns_fib6_check_nexthop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_nexthop_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_nexthop_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_nexthop_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_nexthop_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_nexthop_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_nexthop_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nexthop_set_hw_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22nexthop_set_hw_flags\22\09\09\09\09\09"
module asm "__kstrtabns_nexthop_set_hw_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nexthop_bucket_set_hw_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22nexthop_bucket_set_hw_flags\22\09\09\09\09\09"
module asm "__kstrtabns_nexthop_bucket_set_hw_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nexthop_res_grp_activity_update:\09\09\09\09\09"
module asm "\09.asciz \09\22nexthop_res_grp_activity_update\22\09\09\09\09\09"
module asm "__kstrtabns_nexthop_res_grp_activity_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type {}
%struct.netdevice_tracker = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.133, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.133 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.nla_policy = type { i8, i8, i16, %union.anon.84 }
%union.anon.84 = type { i32 }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.136, %struct.list_head, ptr }
%union.anon.136 = type { %struct.anon.138 }
%struct.anon.138 = type { %struct.list_head, i16, i16 }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.134 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.134 = type { ptr }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.135 }
%union.anon.135 = type { %struct.fib_nh }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32 }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.98, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.98 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.100, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.100 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.nh_res_table = type { ptr, i32, %struct.delayed_work, %struct.list_head, i32, i32, i32, i16, [0 x %struct.nh_res_bucket] }
%struct.nh_res_bucket = type { ptr, %struct.atomic_t, i32, i8, i8 }
%struct.fib6_config = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i32, ptr, i32, i32, ptr, %struct.nl_info, ptr, i16, i8 }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.nh_notifier_info = type { ptr, ptr, i32, i32, %union.anon.143 }
%union.anon.143 = type { ptr }
%struct.nh_notifier_res_table_info = type { i16, [0 x %struct.nh_notifier_single_info] }
%struct.nh_notifier_single_info = type { ptr, i8, %union.anon.144, i8 }
%union.anon.144 = type { %struct.in6_addr }
%struct.nh_notifier_grp_info = type { i16, i8, [0 x %struct.nh_notifier_grp_entry_info] }
%struct.nh_notifier_grp_entry_info = type { i8, i32, %struct.nh_notifier_single_info }
%struct.fib_config = type { i8, i8, i8, i8, i8, i8, i32, i32, %union.anon.147, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.nl_info, ptr, i16 }
%union.anon.147 = type { %struct.in6_addr }
%struct.nh_config = type { i32, i8, i8, i8, i8, i32, i32, ptr, %union.anon.146, ptr, i16, i16, i32, i32, i8, i8, i8, ptr, i16, i32, %struct.nl_info }
%union.anon.146 = type { %struct.in6_addr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.75, %union.anon.101, %union.anon.102, [48 x i8], %union.anon.103, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.105, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.101 = type { ptr }
%union.anon.102 = type { i64 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { i32, ptr }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.107, i32, i32, i32, i16, i16, %union.anon.109, %union.anon.110, %union.anon.111, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.107 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i16 }
%struct.nexthop_grp = type { i32, i8, i8, i16 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.86 }
%union.anon.86 = type { [6 x i32], [24 x i8] }
%struct.rtm_dump_nexthop_bucket_data = type { ptr, %struct.nh_dump_filter }
%struct.nh_dump_filter = type { i32, i32, i32, i8, i8, i32 }
%struct.nh_notifier_res_bucket_info = type { i16, i32, i8, %struct.nh_notifier_single_info, %struct.nh_notifier_single_info }
%struct.netdev_notifier_info_ext = type { %struct.netdev_notifier_info, %union.anon.145 }
%struct.netdev_notifier_info = type { ptr, ptr }
%union.anon.145 = type { i32 }
%struct.rtm_dump_res_bucket_ctx = type { %struct.rtm_dump_nh_ctx, i16, i32 }
%struct.rtm_dump_nh_ctx = type { i32 }

@__kstrtab_nexthop_free_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_nexthop_free_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_nexthop_free_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nexthop_free_rcu to i32), ptr @__kstrtab_nexthop_free_rcu, ptr @__kstrtabns_nexthop_free_rcu }, section "___ksymtab_gpl+nexthop_free_rcu", align 4
@__kstrtab_nexthop_find_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_nexthop_find_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_nexthop_find_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nexthop_find_by_id to i32), ptr @__kstrtab_nexthop_find_by_id, ptr @__kstrtabns_nexthop_find_by_id }, section "___ksymtab_gpl+nexthop_find_by_id", align 4
@__kstrtab_nexthop_select_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_nexthop_select_path = external dso_local constant [0 x i8], align 1
@__ksymtab_nexthop_select_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nexthop_select_path to i32), ptr @__kstrtab_nexthop_select_path, ptr @__kstrtabns_nexthop_select_path }, section "___ksymtab_gpl+nexthop_select_path", align 4
@__kstrtab_nexthop_for_each_fib6_nh = external dso_local constant [0 x i8], align 1
@__kstrtabns_nexthop_for_each_fib6_nh = external dso_local constant [0 x i8], align 1
@__ksymtab_nexthop_for_each_fib6_nh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nexthop_for_each_fib6_nh to i32), ptr @__kstrtab_nexthop_for_each_fib6_nh, ptr @__kstrtabns_nexthop_for_each_fib6_nh }, section "___ksymtab_gpl+nexthop_for_each_fib6_nh", align 4
@fib6_check_nexthop.__msg = internal constant [36 x i8] c"Route cannot point to a fdb nexthop\00", align 1
@fib6_check_nexthop.__msg.1 = internal constant [40 x i8] c"IPv6 routes can not use an IPv4 nexthop\00", align 1
@__kstrtab_fib6_check_nexthop = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib6_check_nexthop = external dso_local constant [0 x i8], align 1
@__ksymtab_fib6_check_nexthop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib6_check_nexthop to i32), ptr @__kstrtab_fib6_check_nexthop, ptr @__kstrtabns_fib6_check_nexthop }, section "___ksymtab_gpl+fib6_check_nexthop", align 4
@fib_check_nexthop.__msg = internal constant [36 x i8] c"Route cannot point to a fdb nexthop\00", align 1
@fib_check_nexthop.__msg.2 = internal constant [53 x i8] c"Route with host scope can not have multiple nexthops\00", align 1
@fib_check_nexthop.__msg.3 = internal constant [36 x i8] c"Route cannot point to a fdb nexthop\00", align 1
@__kstrtab_register_nexthop_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_nexthop_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_nexthop_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_nexthop_notifier to i32), ptr @__kstrtab_register_nexthop_notifier, ptr @__kstrtabns_register_nexthop_notifier }, section "___ksymtab+register_nexthop_notifier", align 4
@__kstrtab_unregister_nexthop_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_nexthop_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_nexthop_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_nexthop_notifier to i32), ptr @__kstrtab_unregister_nexthop_notifier, ptr @__kstrtabns_unregister_nexthop_notifier }, section "___ksymtab+unregister_nexthop_notifier", align 4
@__kstrtab_nexthop_set_hw_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_nexthop_set_hw_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_nexthop_set_hw_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nexthop_set_hw_flags to i32), ptr @__kstrtab_nexthop_set_hw_flags, ptr @__kstrtabns_nexthop_set_hw_flags }, section "___ksymtab+nexthop_set_hw_flags", align 4
@__kstrtab_nexthop_bucket_set_hw_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_nexthop_bucket_set_hw_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_nexthop_bucket_set_hw_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nexthop_bucket_set_hw_flags to i32), ptr @__kstrtab_nexthop_bucket_set_hw_flags, ptr @__kstrtabns_nexthop_bucket_set_hw_flags }, section "___ksymtab+nexthop_bucket_set_hw_flags", align 4
@__kstrtab_nexthop_res_grp_activity_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_nexthop_res_grp_activity_update = external dso_local constant [0 x i8], align 1
@__ksymtab_nexthop_res_grp_activity_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nexthop_res_grp_activity_update to i32), ptr @__kstrtab_nexthop_res_grp_activity_update, ptr @__kstrtabns_nexthop_res_grp_activity_update }, section "___ksymtab+nexthop_res_grp_activity_update", align 4
@__initcall__kmod_nexthop__601_3784_nexthop_init4 = internal global ptr @nexthop_init, section ".initcall4.init", align 4
@.str = private unnamed_addr constant [19 x i8] c"net/ipv4/nexthop.c\00", align 1
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@check_src_addr.__msg = internal constant [61 x i8] c"IPv6 routes using source address can not use nexthop objects\00", align 1
@nexthop_check_scope.__msg = internal constant [45 x i8] c"Route with host scope can not have a gateway\00", align 1
@nexthop_check_scope.__msg.4 = internal constant [28 x i8] c"Scope mismatch with nexthop\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@nexthop_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @nexthop_net_init, ptr null, ptr @nexthop_net_exit, ptr null, ptr null, i32 0 }, align 4
@nh_netdev_notifier = internal global %struct.notifier_block { ptr @nh_netdev_event, ptr null, i32 0 }, align 4
@nexthop_net_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"&(&net->nexthop.notifier_chain)->rwsem\00", align 1
@call_nexthop_notifiers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@call_nexthop_notifiers.__msg = internal constant [43 x i8] c"Failed to initialize nexthop notifier info\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\013%s\0A\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@nh_res_bucket_migrate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nh_res_bucket_migrate._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.nh_res_bucket_migrate = private unnamed_addr constant [22 x i8] c"nh_res_bucket_migrate\00", align 1
@init_net = external dso_local global %struct.net, align 64
@rtm_nh_policy_new = internal constant [13 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@rtm_to_nh_config.__msg = internal constant [35 x i8] c"Invalid values in ancillary header\00", align 1
@rtm_to_nh_config.__msg.9 = internal constant [42 x i8] c"Invalid nexthop flags in ancillary header\00", align 1
@rtm_to_nh_config.__msg.10 = internal constant [23 x i8] c"Invalid address family\00", align 1
@rtm_to_nh_config.__msg.11 = internal constant [59 x i8] c"Fdb attribute can not be used with encap, oif or blackhole\00", align 1
@rtm_to_nh_config.__msg.12 = internal constant [46 x i8] c"Unsupported nexthop flags in ancillary header\00", align 1
@rtm_to_nh_config.__msg.13 = internal constant [25 x i8] c"Invalid family for group\00", align 1
@rtm_to_nh_config.__msg.14 = internal constant [19 x i8] c"Invalid group type\00", align 1
@rtm_to_nh_config.__msg.15 = internal constant [68 x i8] c"Blackhole attribute can not be used with gateway, oif, encap or fdb\00", align 1
@rtm_to_nh_config.__msg.16 = internal constant [65 x i8] c"Device attribute required for non-blackhole and non-fdb nexthops\00", align 1
@rtm_to_nh_config.__msg.17 = internal constant [21 x i8] c"Invalid device index\00", align 1
@rtm_to_nh_config.__msg.18 = internal constant [25 x i8] c"Nexthop device is not up\00", align 1
@rtm_to_nh_config.__msg.19 = internal constant [35 x i8] c"Carrier for nexthop device is down\00", align 1
@rtm_to_nh_config.__msg.20 = internal constant [16 x i8] c"Invalid gateway\00", align 1
@rtm_to_nh_config.__msg.21 = internal constant [16 x i8] c"Invalid gateway\00", align 1
@rtm_to_nh_config.__msg.22 = internal constant [35 x i8] c"Unknown address family for gateway\00", align 1
@rtm_to_nh_config.__msg.23 = internal constant [57 x i8] c"ONLINK flag can not be set for nexthop without a gateway\00", align 1
@rtm_to_nh_config.__msg.24 = internal constant [34 x i8] c"LWT encapsulation type is missing\00", align 1
@rtm_to_nh_config.__msg.25 = internal constant [39 x i8] c"LWT encapsulation attribute is missing\00", align 1
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@nh_check_attr_group.__msg = internal constant [43 x i8] c"Invalid length for nexthop group attribute\00", align 1
@nh_check_attr_group.__msg.26 = internal constant [41 x i8] c"Reserved fields in nexthop_grp must be 0\00", align 1
@nh_check_attr_group.__msg.27 = internal constant [25 x i8] c"Invalid value for weight\00", align 1
@nh_check_attr_group.__msg.28 = internal constant [44 x i8] c"Nexthop id can not be used twice in a group\00", align 1
@nh_check_attr_group.__msg.29 = internal constant [19 x i8] c"Invalid nexthop id\00", align 1
@nh_check_attr_group.__msg.30 = internal constant [47 x i8] c"Non FDB nexthop group cannot have fdb nexthops\00", align 1
@nh_check_attr_group.__msg.31 = internal constant [49 x i8] c"No other attributes can be set in nexthop groups\00", align 1
@valid_group_nh.__msg = internal constant [57 x i8] c"Hash-threshold group can not be a nexthop within a group\00", align 1
@valid_group_nh.__msg.32 = internal constant [52 x i8] c"Resilient group can not be a nexthop within a group\00", align 1
@valid_group_nh.__msg.33 = internal constant [67 x i8] c"Blackhole nexthop can not be used in a group with more than 1 path\00", align 1
@nh_check_attr_fdb_group.__msg = internal constant [45 x i8] c"FDB nexthop group can only have fdb nexthops\00", align 1
@nh_check_attr_fdb_group.__msg.34 = internal constant [52 x i8] c"FDB nexthop group cannot have mixed family nexthops\00", align 1
@rtm_nh_res_policy_new = internal constant [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@rtm_to_nh_config_grp_res.__msg = internal constant [36 x i8] c"Number of buckets needs to be non-0\00", align 1
@nla_parse_nested.__msg = internal constant [24 x i8] c"NLA_F_NESTED is missing\00", align 1
@rtm_nh_get_timer.__msg = internal constant [22 x i8] c"Timer value too large\00", align 1
@lwtunnel_valid_encap_type.__msg = internal constant [46 x i8] c"CONFIG_LWTUNNEL is not enabled in this kernel\00", align 1
@nexthop_add.__msg = internal constant [28 x i8] c"Replace requires nexthop id\00", align 1
@nexthop_add.__msg.35 = internal constant [13 x i8] c"No unused id\00", align 1
@nexthop_create_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@insert_nexthop.__msg = internal constant [53 x i8] c"Replace specified without create and no entry exists\00", align 1
@insert_nexthop.__msg.36 = internal constant [60 x i8] c"Number of buckets not specified for nexthop group insertion\00", align 1
@replace_nexthop.__msg = internal constant [73 x i8] c"Blackhole nexthop can not be a member of a group with more than one path\00", align 1
@replace_nexthop_grp.__msg = internal constant [48 x i8] c"Can not replace a nexthop group with a nexthop.\00", align 1
@replace_nexthop_grp.__msg.37 = internal constant [62 x i8] c"Can not replace a nexthop group with one of a different type.\00", align 1
@replace_nexthop_grp.__msg.38 = internal constant [63 x i8] c"Can not change number of buckets of a resilient nexthop group.\00", align 1
@call_nexthop_res_table_notifiers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@call_nexthop_res_table_notifiers.__msg = internal constant [43 x i8] c"Failed to initialize nexthop notifier info\00", align 1
@replace_nexthop_single.__msg = internal constant [48 x i8] c"Can not replace a nexthop with a nexthop group.\00", align 1
@rtm_nh_policy_get = internal constant [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@__nh_valid_get_del_req.__msg = internal constant [25 x i8] c"Invalid values in header\00", align 1
@__nh_valid_get_del_req.__msg.39 = internal constant [22 x i8] c"Nexthop id is missing\00", align 1
@__nh_valid_get_del_req.__msg.40 = internal constant [19 x i8] c"Invalid nexthop id\00", align 1
@rtm_nh_policy_dump = internal constant [12 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@__nh_valid_dump_req.__msg = internal constant [21 x i8] c"Invalid device index\00", align 1
@__nh_valid_dump_req.__msg.41 = internal constant [28 x i8] c"Invalid master device index\00", align 1
@__nh_valid_dump_req.__msg.42 = internal constant [50 x i8] c"Invalid values in header for nexthop dump request\00", align 1
@rtm_get_nexthop_bucket.__msg = internal constant [27 x i8] c"Bucket index out of bounds\00", align 1
@rtm_nh_policy_get_bucket = internal constant [14 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@nh_valid_get_bucket_req.__msg = internal constant [30 x i8] c"Bucket information is missing\00", align 1
@rtm_nh_res_bucket_policy_get = internal constant [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@nh_valid_get_bucket_req_res_bucket.__msg = internal constant [24 x i8] c"Bucket index is missing\00", align 1
@nexthop_find_group_resilient.__msg = internal constant [20 x i8] c"Not a nexthop group\00", align 1
@nexthop_find_group_resilient.__msg.43 = internal constant [36 x i8] c"Nexthop group not of type resilient\00", align 1
@rtm_nh_policy_dump_bucket = internal constant [14 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@rtm_nh_res_bucket_policy_dump = internal constant [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@nh_valid_dump_nhid.__msg = internal constant [19 x i8] c"Invalid nexthop id\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__initcall__kmod_nexthop__601_3784_nexthop_init4, ptr @__ksymtab_fib6_check_nexthop, ptr @__ksymtab_nexthop_bucket_set_hw_flags, ptr @__ksymtab_nexthop_find_by_id, ptr @__ksymtab_nexthop_for_each_fib6_nh, ptr @__ksymtab_nexthop_free_rcu, ptr @__ksymtab_nexthop_res_grp_activity_update, ptr @__ksymtab_nexthop_select_path, ptr @__ksymtab_nexthop_set_hw_flags, ptr @__ksymtab_register_nexthop_notifier, ptr @__ksymtab_unregister_nexthop_notifier], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nexthop_free_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -6
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr i8, ptr %0, i32 8
  %6 = load volatile ptr, ptr %5, align 4
  br i1 %4, label %47, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nh_group, ptr %6, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %29, %7
  %12 = phi i32 [ %30, %29 ], [ 0, %7 ]
  %13 = getelementptr %struct.nh_group, ptr %6, i32 0, i32 8, i32 %12
  %14 = getelementptr %struct.nh_group, ptr %6, i32 0, i32 8, i32 %12, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %18, label %17, !prof !9

17:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef null) #14
  br label %18

18:                                               ; preds = %17, %11
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr inbounds %struct.nexthop, ptr %19, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #14, !srcloc !11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #14, !srcloc !12
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %29, label %26, !prof !9

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 3) #14
  br label %29

27:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !13
  %28 = getelementptr inbounds %struct.nexthop, ptr %19, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %28, ptr noundef nonnull @nexthop_free_rcu) #14
  br label %29

29:                                               ; preds = %27, %26, %24
  %30 = add nuw nsw i32 %12, 1
  %31 = load i16, ptr %8, align 4
  %32 = zext i16 %31 to i32
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %11, label %34

34:                                               ; preds = %29, %7
  %35 = load ptr, ptr %6, align 4
  %36 = icmp eq ptr %35, %6
  br i1 %36, label %37, label %38, !prof !14

37:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 480, i32 noundef 9, ptr noundef null) #14
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr inbounds %struct.nh_group, ptr %6, i32 0, i32 4
  %40 = load i8, ptr %39, align 4, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nh_group, ptr %6, i32 0, i32 7
  %44 = load volatile ptr, ptr %43, align 4
  tail call void @vfree(ptr noundef %44) #14
  br label %45

45:                                               ; preds = %42, %38
  %46 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %46) #14
  br label %59

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.nh_info, ptr %6, i32 0, i32 2
  %49 = load i8, ptr %48, align 4
  switch i8 %49, label %59 [
    i8 2, label %50
    i8 10, label %54
  ]

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %0, i32 -16
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nh_info, ptr %6, i32 0, i32 5
  tail call void @fib_nh_release(ptr noundef %52, ptr noundef %53) #14
  br label %59

54:                                               ; preds = %47
  %55 = load ptr, ptr @ipv6_stub, align 4
  %56 = getelementptr inbounds %struct.ipv6_stub, ptr %55, i32 0, i32 10
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nh_info, ptr %6, i32 0, i32 5
  tail call void %57(ptr noundef %58) #14
  br label %59

59:                                               ; preds = %54, %50, %47, %45
  tail call void @kfree(ptr noundef %6) #14
  %60 = getelementptr i8, ptr %0, i32 -60
  tail call void @kfree(ptr noundef %60) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nexthop_find_by_id(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %17, %2
  %7 = phi ptr [ %19, %17 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.nexthop, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  br label %17

13:                                               ; preds = %6
  %14 = icmp ult i32 %9, %1
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %12, %11 ], [ %16, %15 ]
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6

21:                                               ; preds = %17, %13, %2
  %22 = phi ptr [ null, %2 ], [ %7, %13 ], [ null, %17 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nexthop_select_path(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 2, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %183, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 12
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nh_group, ptr %8, i32 0, i32 3
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %164, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nh_group, ptr %8, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %183, label %16

16:                                               ; preds = %157, %12
  %17 = phi ptr [ %158, %157 ], [ null, %12 ]
  %18 = phi i32 [ %159, %157 ], [ 0, %12 ]
  %19 = getelementptr %struct.nh_group, ptr %8, i32 0, i32 8, i32 %18
  %20 = getelementptr %struct.nh_group, ptr %8, i32 0, i32 8, i32 %18, i32 2
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp slt i32 %21, %1
  br i1 %22, label %157, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.nexthop, ptr %24, i32 0, i32 12
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nh_info, ptr %26, i32 0, i32 4
  %28 = load i8, ptr %27, align 2, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %183

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.nh_info, ptr %26, i32 0, i32 2
  %32 = load i8, ptr %31, align 4
  switch i8 %32, label %153 [
    i8 2, label %33
    i8 10, label %78
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.nh_info, ptr %26, i32 0, i32 5
  %35 = tail call ptr @llvm.thread.pointer() #14
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = add i32 %37, 512
  store volatile i32 %38, ptr %36, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %39 = load ptr, ptr %34, align 4
  %40 = getelementptr inbounds %struct.nh_info, ptr %26, i32 0, i32 5, i32 0, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 14
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 24
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %41, i32 0
  %47 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %48 = getelementptr inbounds %struct.neigh_hash_table, ptr %47, i32 0, i32 2
  %49 = ptrtoint ptr %39 to i32
  %50 = xor i32 %46, %49
  %51 = load i32, ptr %48, align 4
  %52 = mul i32 %50, %51
  %53 = getelementptr inbounds %struct.neigh_hash_table, ptr %47, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 32, %54
  %56 = lshr i32 %52, %55
  %57 = load ptr, ptr %47, align 4
  %58 = getelementptr ptr, ptr %57, i32 %56
  %59 = load volatile ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %163, label %61

61:                                               ; preds = %70, %33
  %62 = phi ptr [ %71, %70 ], [ %59, %33 ]
  %63 = getelementptr inbounds %struct.neighbour, ptr %62, i32 0, i32 26
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %39
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.neighbour, ptr %62, i32 0, i32 28
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, %46
  br i1 %69, label %73, label %70

70:                                               ; preds = %66, %61
  %71 = load volatile ptr, ptr %62, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %163, label %61

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.neighbour, ptr %62, i32 0, i32 12
  %75 = load i8, ptr %74, align 4
  %76 = and i8 %75, -34
  %77 = icmp eq i8 %76, 0
  tail call fastcc void @local_bh_enable() #14
  br i1 %77, label %153, label %180

78:                                               ; preds = %30
  %79 = getelementptr inbounds %struct.nh_info, ptr %26, i32 0, i32 5
  %80 = tail call ptr @llvm.thread.pointer() #14
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %82 = load volatile i32, ptr %81, align 4
  %83 = add i32 %82, 512
  store volatile i32 %83, ptr %81, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %84 = load ptr, ptr %79, align 4
  %85 = getelementptr inbounds %struct.nh_info, ptr %26, i32 0, i32 5, i32 0, i32 0, i32 8
  %86 = load ptr, ptr @ipv6_stub, align 4
  %87 = getelementptr inbounds %struct.ipv6_stub, ptr %86, i32 0, i32 20
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.neigh_table, ptr %88, i32 0, i32 31
  %90 = load volatile ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.neigh_hash_table, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %85, align 4
  %93 = ptrtoint ptr %84 to i32
  %94 = xor i32 %92, %93
  %95 = load i32, ptr %91, align 4
  %96 = mul i32 %94, %95
  %97 = getelementptr %struct.nh_info, ptr %26, i32 0, i32 5, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr %struct.neigh_hash_table, ptr %90, i32 0, i32 2, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = mul i32 %100, %98
  %102 = add i32 %101, %96
  %103 = getelementptr %struct.nh_info, ptr %26, i32 0, i32 5, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr %struct.neigh_hash_table, ptr %90, i32 0, i32 2, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = mul i32 %106, %104
  %108 = add i32 %102, %107
  %109 = getelementptr %struct.nh_info, ptr %26, i32 0, i32 5, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr %struct.neigh_hash_table, ptr %90, i32 0, i32 2, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = mul i32 %112, %110
  %114 = add i32 %108, %113
  %115 = getelementptr inbounds %struct.neigh_hash_table, ptr %90, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = sub i32 32, %116
  %118 = lshr i32 %114, %117
  %119 = load ptr, ptr %90, align 4
  %120 = getelementptr ptr, ptr %119, i32 %118
  %121 = load volatile ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %163, label %123

123:                                              ; preds = %145, %78
  %124 = phi ptr [ %146, %145 ], [ %121, %78 ]
  %125 = getelementptr inbounds %struct.neighbour, ptr %124, i32 0, i32 26
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %84
  br i1 %127, label %128, label %145

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.neighbour, ptr %124, i32 0, i32 28
  %130 = load i32, ptr %129, align 4
  %131 = xor i32 %130, %92
  %132 = getelementptr %struct.neighbour, ptr %124, i32 1, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = xor i32 %133, %98
  %135 = or i32 %134, %131
  %136 = getelementptr %struct.neighbour, ptr %124, i32 1, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = xor i32 %137, %104
  %139 = or i32 %135, %138
  %140 = getelementptr %struct.neighbour, ptr %124, i32 1, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = xor i32 %141, %110
  %143 = or i32 %139, %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %128, %123
  %146 = load volatile ptr, ptr %124, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %163, label %123

148:                                              ; preds = %128
  %149 = getelementptr inbounds %struct.neighbour, ptr %124, i32 0, i32 12
  %150 = load i8, ptr %149, align 4
  %151 = and i8 %150, -34
  %152 = icmp eq i8 %151, 0
  tail call fastcc void @local_bh_enable() #14
  br i1 %152, label %153, label %180

153:                                              ; preds = %148, %73, %30
  %154 = icmp eq ptr %17, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %153
  %156 = load ptr, ptr %19, align 4
  br label %157

157:                                              ; preds = %155, %153, %16
  %158 = phi ptr [ %17, %16 ], [ %17, %153 ], [ %156, %155 ]
  %159 = add nuw nsw i32 %18, 1
  %160 = load i16, ptr %13, align 4
  %161 = zext i16 %160 to i32
  %162 = icmp ult i32 %159, %161
  br i1 %162, label %16, label %183

163:                                              ; preds = %145, %78, %70, %33
  tail call fastcc void @local_bh_enable() #14
  br label %180

164:                                              ; preds = %6
  %165 = getelementptr inbounds %struct.nh_group, ptr %8, i32 0, i32 4
  %166 = load i8, ptr %165, align 4, !range !8
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %183, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.nh_group, ptr %8, i32 0, i32 7
  %170 = load volatile ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.nh_res_table, ptr %170, i32 0, i32 7
  %172 = load i16, ptr %171, align 4
  %173 = zext i16 %172 to i32
  %174 = srem i32 %1, %173
  %175 = and i32 %174, 65535
  %176 = getelementptr %struct.nh_res_table, ptr %170, i32 0, i32 8, i32 %175
  %177 = getelementptr %struct.nh_res_table, ptr %170, i32 0, i32 8, i32 %175, i32 1
  %178 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %178, ptr %177, align 4
  %179 = load volatile ptr, ptr %176, align 4
  br label %180

180:                                              ; preds = %168, %163, %148, %73
  %181 = phi ptr [ %179, %168 ], [ %19, %163 ], [ %19, %148 ], [ %19, %73 ]
  %182 = load ptr, ptr %181, align 4
  br label %183

183:                                              ; preds = %180, %164, %157, %23, %12, %2
  %184 = phi ptr [ %0, %2 ], [ null, %164 ], [ null, %12 ], [ %182, %180 ], [ %24, %23 ], [ %158, %157 ]
  ret ptr %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nexthop_for_each_fib6_nh(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 2, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 12
  %8 = load volatile ptr, ptr %7, align 4
  br i1 %6, label %27, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nh_group, ptr %8, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %31, label %18

13:                                               ; preds = %18
  %14 = add nuw nsw i32 %19, 1
  %15 = load i16, ptr %10, align 4
  %16 = zext i16 %15 to i32
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %13, %9
  %19 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %20 = getelementptr %struct.nh_group, ptr %8, i32 0, i32 8, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nexthop, ptr %21, i32 0, i32 12
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nh_info, ptr %23, i32 0, i32 5
  %25 = tail call i32 %1(ptr noundef %24, ptr noundef %2) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %13, label %32

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.nh_info, ptr %8, i32 0, i32 5
  %29 = tail call i32 %1(ptr noundef %28, ptr noundef %2) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %13, %9
  br label %32

32:                                               ; preds = %31, %27, %18
  %33 = phi i32 [ 0, %31 ], [ %29, %27 ], [ %25, %18 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib6_check_nexthop(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef writeonly %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.fib6_config, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.fib6_config, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  %11 = getelementptr %struct.fib6_config, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %10, %12
  %14 = getelementptr %struct.fib6_config, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @check_src_addr.__msg) #14
  %19 = icmp eq ptr %2, null
  br i1 %19, label %48, label %46

20:                                               ; preds = %5, %3
  %21 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 9
  %22 = load i8, ptr %21, align 2, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  br i1 %23, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.nh_group, ptr %25, i32 0, i32 6
  %28 = load i8, ptr %27, align 2, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %44

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.nh_info, ptr %25, i32 0, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 2
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nh_info, ptr %25, i32 0, i32 4
  %36 = load i8, ptr %35, align 2, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %48, label %42

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.nh_group, ptr %25, i32 0, i32 5
  %40 = load i8, ptr %39, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38, %34
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib6_check_nexthop.__msg) #14
  %43 = icmp eq ptr %2, null
  br i1 %43, label %48, label %46

44:                                               ; preds = %30, %26
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib6_check_nexthop.__msg.1) #14
  %45 = icmp eq ptr %2, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %44, %42, %18
  %47 = phi ptr [ @check_src_addr.__msg, %18 ], [ @fib6_check_nexthop.__msg, %42 ], [ @fib6_check_nexthop.__msg.1, %44 ]
  store ptr %47, ptr %2, align 4
  br label %48

48:                                               ; preds = %46, %44, %42, %38, %34, %18
  %49 = phi i32 [ -22, %42 ], [ 0, %38 ], [ -22, %44 ], [ 0, %34 ], [ -22, %18 ], [ -22, %46 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_check_nexthop(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 2, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %32, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nh_group, ptr %8, i32 0, i32 5
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nexthop.__msg) #14
  %14 = icmp eq ptr %2, null
  br i1 %14, label %57, label %55

15:                                               ; preds = %9
  %16 = icmp eq i8 %1, -2
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nexthop.__msg.2) #14
  %18 = icmp eq ptr %2, null
  br i1 %18, label %57, label %55

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nh_group, ptr %8, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nexthop, ptr %21, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nh_info, ptr %23, i32 0, i32 5, i32 0, i32 0, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 4
  %27 = icmp ne i8 %26, 0
  %28 = icmp ugt i8 %1, -4
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %57

30:                                               ; preds = %19
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_check_scope.__msg.4) #14
  %31 = icmp eq ptr %2, null
  br i1 %31, label %57, label %55

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.nh_info, ptr %8, i32 0, i32 4
  %34 = load i8, ptr %33, align 2, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nexthop.__msg.3) #14
  %37 = icmp eq ptr %2, null
  br i1 %37, label %57, label %55

38:                                               ; preds = %32
  %39 = icmp eq i8 %1, -2
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.nh_info, ptr %8, i32 0, i32 5, i32 0, i32 0, i32 5
  %42 = load i8, ptr %41, align 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_check_scope.__msg) #14
  %45 = icmp eq ptr %2, null
  br i1 %45, label %57, label %55

46:                                               ; preds = %40, %38
  %47 = getelementptr inbounds %struct.nh_info, ptr %8, i32 0, i32 5, i32 0, i32 0, i32 6
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 4
  %50 = icmp ne i8 %49, 0
  %51 = icmp ugt i8 %1, -4
  %52 = and i1 %51, %50
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_check_scope.__msg.4) #14
  %54 = icmp eq ptr %2, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %53, %44, %36, %30, %17, %13
  %56 = phi ptr [ @fib_check_nexthop.__msg, %13 ], [ @fib_check_nexthop.__msg.2, %17 ], [ @nexthop_check_scope.__msg.4, %30 ], [ @fib_check_nexthop.__msg.3, %36 ], [ @nexthop_check_scope.__msg, %44 ], [ @nexthop_check_scope.__msg.4, %53 ]
  store ptr %56, ptr %2, align 4
  br label %57

57:                                               ; preds = %55, %53, %46, %44, %36, %30, %19, %17, %13
  %58 = phi i32 [ -22, %36 ], [ -22, %13 ], [ -22, %17 ], [ -22, %30 ], [ 0, %19 ], [ -22, %44 ], [ -22, %53 ], [ 0, %46 ], [ -22, %55 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_nexthop_notifier(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @rtnl_lock() #14
  %4 = tail call fastcc i32 @nexthops_dump(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 4
  %8 = tail call i32 @blocking_notifier_chain_register(ptr noundef %7, ptr noundef %1) #14
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %4, %3 ], [ %8, %6 ]
  tail call void @rtnl_unlock() #14
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nexthops_dump(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.nh_notifier_info, align 4
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33
  %7 = tail call ptr @rb_first(ptr noundef %6) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 3
  %13 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 4
  br label %14

14:                                               ; preds = %44, %9
  %15 = phi ptr [ %7, %9 ], [ %45, %44 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  store ptr %0, ptr %5, align 4
  store ptr %3, ptr %10, align 4
  store i32 0, ptr %11, align 4
  store i32 0, ptr %12, align 4
  store i32 0, ptr %13, align 4
  %16 = call fastcc i32 @nh_notifier_info_init(ptr noundef nonnull %5, ptr noundef nonnull %15) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  br label %49

19:                                               ; preds = %14
  %20 = load ptr, ptr %1, align 4
  %21 = call i32 %20(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #14
  %22 = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 9
  %23 = load i8, ptr %22, align 2, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 12
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nh_group, ptr %27, i32 0, i32 3
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %13, align 4
  call void @kfree(ptr noundef %32) #14
  br label %41

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.nh_group, ptr %27, i32 0, i32 4
  %35 = load i8, ptr %34, align 4, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %13, align 4
  call void @vfree(ptr noundef %38) #14
  br label %41

39:                                               ; preds = %19
  %40 = load ptr, ptr %13, align 4
  call void @kfree(ptr noundef %40) #14
  br label %41

41:                                               ; preds = %39, %37, %33, %31
  %42 = and i32 %21, -32769
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  %45 = call ptr @rb_next(ptr noundef nonnull %15) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %14

47:                                               ; preds = %41
  %48 = sub nsw i32 1, %42
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  br label %49

49:                                               ; preds = %47, %44, %18, %4
  %50 = phi i32 [ %48, %47 ], [ %16, %18 ], [ 0, %4 ], [ 0, %44 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_nexthop_notifier(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @rtnl_lock() #14
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 4
  %4 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %3, ptr noundef %1) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @nexthops_dump(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null)
  br label %8

8:                                                ; preds = %6, %2
  tail call void @rtnl_unlock() #14
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nexthop_set_hw_flags(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %19, %4
  %9 = phi ptr [ %21, %19 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.nexthop, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %19

15:                                               ; preds = %8
  %16 = icmp ult i32 %11, %1
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %14, %13 ], [ %18, %17 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %8

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.nexthop, ptr %9, i32 0, i32 8
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, -73
  %27 = or i8 %26, 8
  %28 = select i1 %2, i8 %27, i8 %26
  store i8 %28, ptr %24, align 1
  br i1 %3, label %29, label %31

29:                                               ; preds = %23
  %30 = or i8 %28, 64
  store i8 %30, ptr %24, align 1
  br label %31

31:                                               ; preds = %29, %23, %19, %4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nexthop_bucket_set_hw_flags(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %20, %5
  %10 = phi ptr [ %22, %20 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.nexthop, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  br label %20

16:                                               ; preds = %9
  %17 = icmp ult i32 %12, %1
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %15, %14 ], [ %19, %18 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %9

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.nexthop, ptr %10, i32 0, i32 9
  %26 = load i8, ptr %25, align 2, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nexthop, ptr %10, i32 0, i32 12
  %30 = load volatile ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nh_group, ptr %30, i32 0, i32 4
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.nh_group, ptr %30, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nh_res_table, ptr %36, i32 0, i32 7
  %38 = load i16, ptr %37, align 4
  %39 = icmp ugt i16 %38, %2
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = zext i16 %2 to i32
  %42 = load volatile ptr, ptr %35, align 4
  %43 = getelementptr %struct.nh_res_table, ptr %42, i32 0, i32 8, i32 %41, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, -73
  %46 = or i8 %45, 8
  %47 = select i1 %3, i8 %46, i8 %45
  store i8 %47, ptr %43, align 1
  br i1 %4, label %48, label %50

48:                                               ; preds = %40
  %49 = or i8 %47, 64
  store i8 %49, ptr %43, align 1
  br label %50

50:                                               ; preds = %48, %40, %34, %28, %24, %20, %5
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nexthop_res_grp_activity_update(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %19, %4
  %9 = phi ptr [ %21, %19 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.nexthop, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %19

15:                                               ; preds = %8
  %16 = icmp ult i32 %11, %1
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %14, %13 ], [ %18, %17 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %58, label %8

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.nexthop, ptr %9, i32 0, i32 9
  %25 = load i8, ptr %24, align 2, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nexthop, ptr %9, i32 0, i32 12
  %29 = load volatile ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nh_group, ptr %29, i32 0, i32 4
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.nh_group, ptr %29, i32 0, i32 7
  %35 = load volatile ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nh_res_table, ptr %35, i32 0, i32 7
  %37 = load i16, ptr %36, align 4
  %38 = icmp eq i16 %37, %2
  %39 = icmp ne i16 %2, 0
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %33
  %42 = zext i16 %2 to i32
  br label %43

43:                                               ; preds = %55, %41
  %44 = phi i32 [ 0, %41 ], [ %56, %55 ]
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr %3, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = getelementptr %struct.nh_res_table, ptr %35, i32 0, i32 8, i32 %44, i32 1
  %54 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %54, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %43
  %56 = add nuw nsw i32 %44, 1
  %57 = icmp eq i32 %56, %42
  br i1 %57, label %58, label %43

58:                                               ; preds = %55, %33, %27, %23, %19, %4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nexthop_init() #4 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nexthop_net_ops) #14
  %2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @nh_netdev_notifier) #14
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 104, ptr noundef nonnull @rtm_new_nexthop, ptr noundef null, i32 noundef 0) #14
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 105, ptr noundef nonnull @rtm_del_nexthop, ptr noundef null, i32 noundef 0) #14
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 106, ptr noundef nonnull @rtm_get_nexthop, ptr noundef nonnull @rtm_dump_nexthop, i32 noundef 0) #14
  tail call void @rtnl_register(i32 noundef 2, i32 noundef 104, ptr noundef nonnull @rtm_new_nexthop, ptr noundef null, i32 noundef 0) #14
  tail call void @rtnl_register(i32 noundef 2, i32 noundef 106, ptr noundef null, ptr noundef nonnull @rtm_dump_nexthop, i32 noundef 0) #14
  tail call void @rtnl_register(i32 noundef 10, i32 noundef 104, ptr noundef nonnull @rtm_new_nexthop, ptr noundef null, i32 noundef 0) #14
  tail call void @rtnl_register(i32 noundef 10, i32 noundef 106, ptr noundef null, ptr noundef nonnull @rtm_dump_nexthop, i32 noundef 0) #14
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 118, ptr noundef nonnull @rtm_get_nexthop_bucket, ptr noundef nonnull @rtm_dump_nexthop_bucket, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_nh_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nh_notifier_info_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nh_notifier_info, ptr %0, i32 0, i32 2
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 9
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %78, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nh_group, ptr %10, i32 0, i32 3
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @nh_notifier_mpath_info_init(ptr noundef %0, ptr noundef %10) #14
  br label %113

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.nh_group, ptr %10, i32 0, i32 4
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %113, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nh_group, ptr %10, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nh_res_table, ptr %23, i32 0, i32 7
  %25 = load i16, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nh_notifier_info, ptr %0, i32 0, i32 3
  store i32 2, ptr %26, align 4
  %27 = zext i16 %25 to i32
  %28 = mul nuw nsw i32 %27, 28
  %29 = add nuw nsw i32 %28, 4
  %30 = tail call noalias ptr @__vmalloc(i32 noundef %29, i32 noundef 11712) #15
  %31 = getelementptr inbounds %struct.nh_notifier_info, ptr %0, i32 0, i32 4
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %113, label %33

33:                                               ; preds = %21
  store i16 %25, ptr %30, align 4
  %34 = icmp eq i16 %25, 0
  br i1 %34, label %113, label %35

35:                                               ; preds = %76, %33
  %36 = phi ptr [ %77, %76 ], [ %30, %33 ]
  %37 = phi i32 [ %74, %76 ], [ 0, %33 ]
  %38 = getelementptr %struct.nh_res_table, ptr %23, i32 0, i32 8, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nexthop, ptr %40, i32 0, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.nh_notifier_res_table_info, ptr %36, i32 0, i32 1, i32 %37
  %44 = getelementptr inbounds %struct.nh_info, ptr %42, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  store ptr %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.nh_info, ptr %42, i32 0, i32 5, i32 0, i32 0, i32 5
  %47 = load i8, ptr %46, align 2
  %48 = getelementptr %struct.nh_notifier_res_table_info, ptr %36, i32 0, i32 1, i32 %37, i32 1
  store i8 %47, ptr %48, align 4
  switch i8 %47, label %56 [
    i8 2, label %49
    i8 10, label %53
  ]

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.nh_info, ptr %42, i32 0, i32 5, i32 0, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.nh_notifier_res_table_info, ptr %36, i32 0, i32 1, i32 %37, i32 2
  store i32 %51, ptr %52, align 4
  br label %56

53:                                               ; preds = %35
  %54 = getelementptr %struct.nh_notifier_res_table_info, ptr %36, i32 0, i32 1, i32 %37, i32 2
  %55 = getelementptr inbounds %struct.nh_info, ptr %42, i32 0, i32 5, i32 0, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %54, ptr noundef align 4 dereferenceable(16) %55, i32 16, i1 false) #14
  br label %56

56:                                               ; preds = %53, %49, %35
  %57 = getelementptr inbounds %struct.nh_info, ptr %42, i32 0, i32 3
  %58 = load i8, ptr %57, align 1, !range !8
  %59 = getelementptr %struct.nh_notifier_res_table_info, ptr %36, i32 0, i32 1, i32 %37, i32 3
  %60 = load i8, ptr %59, align 4
  %61 = and i8 %60, -2
  %62 = or i8 %61, %58
  store i8 %62, ptr %59, align 4
  %63 = getelementptr inbounds %struct.nh_info, ptr %42, i32 0, i32 4
  %64 = load i8, ptr %63, align 2, !range !8
  %65 = shl nuw nsw i8 %64, 1
  %66 = and i8 %62, -3
  %67 = or i8 %66, %65
  store i8 %67, ptr %59, align 4
  %68 = getelementptr inbounds %struct.nh_info, ptr %42, i32 0, i32 5, i32 0, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  %71 = select i1 %70, i8 0, i8 4
  %72 = and i8 %67, -5
  %73 = or i8 %71, %72
  store i8 %73, ptr %59, align 4
  %74 = add nuw nsw i32 %37, 1
  %75 = icmp eq i32 %74, %27
  br i1 %75, label %113, label %76

76:                                               ; preds = %56
  %77 = load ptr, ptr %31, align 4
  br label %35

78:                                               ; preds = %2
  %79 = getelementptr inbounds %struct.nh_notifier_info, ptr %0, i32 0, i32 3
  store i32 0, ptr %79, align 4
  %80 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %81 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3520, i32 noundef 28) #16
  %82 = getelementptr inbounds %struct.nh_notifier_info, ptr %0, i32 0, i32 4
  store ptr %81, ptr %82, align 4
  %83 = icmp eq ptr %81, null
  br i1 %83, label %113, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.nh_info, ptr %10, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  store ptr %86, ptr %81, align 8
  %87 = getelementptr inbounds %struct.nh_info, ptr %10, i32 0, i32 5, i32 0, i32 0, i32 5
  %88 = load i8, ptr %87, align 2
  %89 = getelementptr inbounds %struct.nh_notifier_single_info, ptr %81, i32 0, i32 1
  store i8 %88, ptr %89, align 4
  switch i8 %88, label %97 [
    i8 2, label %90
    i8 10, label %94
  ]

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.nh_info, ptr %10, i32 0, i32 5, i32 0, i32 0, i32 8
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nh_notifier_single_info, ptr %81, i32 0, i32 2
  store i32 %92, ptr %93, align 8
  br label %97

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.nh_notifier_single_info, ptr %81, i32 0, i32 2
  %96 = getelementptr inbounds %struct.nh_info, ptr %10, i32 0, i32 5, i32 0, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %95, ptr noundef align 4 dereferenceable(16) %96, i32 16, i1 false) #14
  br label %97

97:                                               ; preds = %94, %90, %84
  %98 = getelementptr inbounds %struct.nh_info, ptr %10, i32 0, i32 3
  %99 = load i8, ptr %98, align 1, !range !8
  %100 = getelementptr inbounds %struct.nh_notifier_single_info, ptr %81, i32 0, i32 3
  %101 = load i8, ptr %100, align 8
  %102 = and i8 %101, -8
  %103 = or i8 %99, %102
  %104 = getelementptr inbounds %struct.nh_info, ptr %10, i32 0, i32 4
  %105 = load i8, ptr %104, align 2, !range !8
  %106 = shl nuw nsw i8 %105, 1
  %107 = or i8 %103, %106
  %108 = getelementptr inbounds %struct.nh_info, ptr %10, i32 0, i32 5, i32 0, i32 0, i32 7
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  %111 = select i1 %110, i8 0, i8 4
  %112 = or i8 %111, %107
  store i8 %112, ptr %100, align 8
  br label %113

113:                                              ; preds = %97, %78, %56, %33, %21, %17, %15
  %114 = phi i32 [ %16, %15 ], [ -22, %17 ], [ -12, %21 ], [ 0, %33 ], [ 0, %97 ], [ -12, %78 ], [ 0, %56 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nh_notifier_mpath_info_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nh_group, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nh_notifier_info, ptr %0, i32 0, i32 3
  store i32 1, ptr %5, align 4
  %6 = zext i16 %4 to i32
  %7 = mul nuw nsw i32 %6, 36
  %8 = add nuw nsw i32 %7, 4
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #15
  %10 = getelementptr inbounds %struct.nh_notifier_info, ptr %0, i32 0, i32 4
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %2
  store i16 %4, ptr %9, align 64
  %13 = getelementptr inbounds %struct.nh_group, ptr %1, i32 0, i32 5
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = getelementptr inbounds %struct.nh_notifier_grp_info, ptr %9, i32 0, i32 1
  store i8 %14, ptr %15, align 2
  %16 = icmp eq i16 %4, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %65, %12
  %18 = phi ptr [ %66, %65 ], [ %9, %12 ]
  %19 = phi i32 [ %63, %65 ], [ 0, %12 ]
  %20 = getelementptr %struct.nh_group, ptr %1, i32 0, i32 8, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nexthop, ptr %21, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nexthop, ptr %21, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.nh_notifier_grp_info, ptr %18, i32 0, i32 2, i32 %19, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.nh_group, ptr %1, i32 0, i32 8, i32 %19, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr %struct.nh_notifier_grp_info, ptr %29, i32 0, i32 2, i32 %19
  store i8 %28, ptr %30, align 4
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr %struct.nh_notifier_grp_info, ptr %31, i32 0, i32 2, i32 %19, i32 2
  %33 = getelementptr inbounds %struct.nh_info, ptr %23, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.nh_info, ptr %23, i32 0, i32 5, i32 0, i32 0, i32 5
  %36 = load i8, ptr %35, align 2
  %37 = getelementptr %struct.nh_notifier_grp_info, ptr %31, i32 0, i32 2, i32 %19, i32 2, i32 1
  store i8 %36, ptr %37, align 4
  switch i8 %36, label %45 [
    i8 2, label %38
    i8 10, label %42
  ]

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.nh_info, ptr %23, i32 0, i32 5, i32 0, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.nh_notifier_grp_info, ptr %31, i32 0, i32 2, i32 %19, i32 2, i32 2
  store i32 %40, ptr %41, align 4
  br label %45

42:                                               ; preds = %17
  %43 = getelementptr %struct.nh_notifier_grp_info, ptr %31, i32 0, i32 2, i32 %19, i32 2, i32 2
  %44 = getelementptr inbounds %struct.nh_info, ptr %23, i32 0, i32 5, i32 0, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %43, ptr noundef align 4 dereferenceable(16) %44, i32 16, i1 false) #14
  br label %45

45:                                               ; preds = %42, %38, %17
  %46 = getelementptr inbounds %struct.nh_info, ptr %23, i32 0, i32 3
  %47 = load i8, ptr %46, align 1, !range !8
  %48 = getelementptr %struct.nh_notifier_grp_info, ptr %31, i32 0, i32 2, i32 %19, i32 2, i32 3
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, -2
  %51 = or i8 %50, %47
  store i8 %51, ptr %48, align 4
  %52 = getelementptr inbounds %struct.nh_info, ptr %23, i32 0, i32 4
  %53 = load i8, ptr %52, align 2, !range !8
  %54 = shl nuw nsw i8 %53, 1
  %55 = and i8 %51, -3
  %56 = or i8 %55, %54
  store i8 %56, ptr %48, align 4
  %57 = getelementptr inbounds %struct.nh_info, ptr %23, i32 0, i32 5, i32 0, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, i8 0, i8 4
  %61 = and i8 %56, -5
  %62 = or i8 %60, %61
  store i8 %62, ptr %48, align 4
  %63 = add nuw nsw i32 %19, 1
  %64 = icmp eq i32 %63, %6
  br i1 %64, label %67, label %65

65:                                               ; preds = %45
  %66 = load ptr, ptr %10, align 4
  br label %17

67:                                               ; preds = %45, %12, %2
  %68 = phi i32 [ -12, %2 ], [ 0, %12 ], [ 0, %45 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_register(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtm_new_nexthop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [4 x ptr], align 4
  %5 = alloca %struct.nh_notifier_info, align 4
  %6 = alloca %struct.fib6_config, align 4
  %7 = alloca %struct.fib_config, align 4
  %8 = alloca [13 x ptr], align 4
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca %struct.nh_config, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %10) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %10, i8 0, i32 84, i1 false), !annotation !18
  %11 = getelementptr i8, ptr %1, i32 16
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i32 52, i1 false) #14, !annotation !18
  %12 = load i32, ptr %1, align 4
  %13 = icmp ult i32 %12, 24
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #14
  %15 = icmp eq ptr %2, null
  br i1 %15, label %461, label %458

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %1, i32 24
  %18 = add i32 %12, -24
  %19 = call i32 @__nla_parse(ptr noundef nonnull %8, i32 noundef 12, ptr noundef %17, i32 noundef %18, ptr noundef nonnull @rtm_nh_policy_new, i32 noundef 31, ptr noundef %2) #14
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %461, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %1, i32 19
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %1, i32 17
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %21
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg) #14
  %30 = icmp eq ptr %2, null
  br i1 %30, label %461, label %458

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %1, i32 20
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, -5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.9) #14
  %37 = icmp eq ptr %2, null
  br i1 %37, label %461, label %458

38:                                               ; preds = %31
  %39 = load i8, ptr %11, align 4
  switch i8 %39, label %44 [
    i8 2, label %46
    i8 10, label %46
    i8 0, label %40
  ]

40:                                               ; preds = %38
  %41 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %38
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.10) #14
  %45 = icmp eq ptr %2, null
  br i1 %45, label %461, label %458

46:                                               ; preds = %40, %38, %38
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %10, i8 0, i32 84, i1 false) #14
  %47 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 19
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 20
  %54 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 20, i32 2
  store i32 %52, ptr %54, align 4
  store ptr %1, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 1
  store i8 %39, ptr %56, align 4
  %57 = getelementptr i8, ptr %1, i32 18
  %58 = load i8, ptr %57, align 2
  %59 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 2
  store i8 %58, ptr %59, align 1
  %60 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 5
  store i32 %33, ptr %60, align 4
  %61 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %46
  %65 = getelementptr i8, ptr %62, i32 4
  %66 = load i32, ptr %65, align 4
  store i32 %66, ptr %10, align 4
  br label %67

67:                                               ; preds = %64, %46
  %68 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %95, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = icmp ne ptr %73, null
  %75 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = icmp ne ptr %76, null
  %78 = select i1 %74, i1 true, i1 %77
  %79 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 8
  %80 = load ptr, ptr %79, align 4
  %81 = icmp ne ptr %80, null
  %82 = select i1 %78, i1 true, i1 %81
  %83 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 7
  %84 = load ptr, ptr %83, align 4
  %85 = icmp ne ptr %84, null
  %86 = select i1 %82, i1 true, i1 %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.11) #14
  %88 = icmp eq ptr %2, null
  br i1 %88, label %461, label %458

89:                                               ; preds = %71
  %90 = icmp eq i32 %33, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %89
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.12) #14
  %92 = icmp eq ptr %2, null
  br i1 %92, label %461, label %458

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 4
  store i8 1, ptr %94, align 1
  br label %95

95:                                               ; preds = %93, %67
  %96 = xor i1 %70, true
  %97 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %345, label %100

100:                                              ; preds = %95
  %101 = icmp eq i8 %39, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %100
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.13) #14
  %103 = icmp eq ptr %2, null
  br i1 %103, label %461, label %458

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 9
  store ptr %98, ptr %105, align 4
  %106 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 10
  store i16 0, ptr %106, align 4
  %107 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = getelementptr i8, ptr %108, i32 4
  %112 = load i16, ptr %111, align 2
  store i16 %112, ptr %106, align 4
  %113 = icmp ugt i16 %112, 1
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.14) #14
  %115 = icmp eq ptr %2, null
  br i1 %115, label %461, label %458

116:                                              ; preds = %110, %104
  %117 = phi i16 [ %112, %110 ], [ 0, %104 ]
  %118 = load i16, ptr %98, align 2
  %119 = zext i16 %118 to i32
  %120 = add nsw i32 %119, -4
  %121 = icmp ne i32 %120, 0
  %122 = and i32 %120, 7
  %123 = icmp eq i32 %122, 0
  %124 = and i1 %121, %123
  br i1 %124, label %127, label %125

125:                                              ; preds = %116
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group.__msg) #14
  %126 = icmp eq ptr %2, null
  br i1 %126, label %461, label %458

127:                                              ; preds = %116
  %128 = lshr i32 %120, 3
  %129 = getelementptr i8, ptr %98, i32 4
  %130 = icmp ult i32 %120, 8
  br i1 %130, label %170, label %131

131:                                              ; preds = %127
  %132 = call i32 @llvm.umax.i32(i32 %128, i32 1) #14
  br label %135

133:                                              ; preds = %158, %153
  %134 = icmp eq i32 %154, %132
  br i1 %134, label %168, label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %154, %133 ], [ 0, %131 ]
  %137 = getelementptr %struct.nexthop_grp, ptr %129, i32 %136
  %138 = getelementptr %struct.nexthop_grp, ptr %129, i32 %136, i32 2
  %139 = load i8, ptr %138, align 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = getelementptr %struct.nexthop_grp, ptr %129, i32 %136, i32 3
  %143 = load i16, ptr %142, align 2
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141, %135
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group.__msg.26) #14
  %146 = icmp eq ptr %2, null
  br i1 %146, label %461, label %458

147:                                              ; preds = %141
  %148 = getelementptr %struct.nexthop_grp, ptr %129, i32 %136, i32 1
  %149 = load i8, ptr %148, align 4
  %150 = icmp eq i8 %149, -1
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group.__msg.27) #14
  %152 = icmp eq ptr %2, null
  br i1 %152, label %461, label %458

153:                                              ; preds = %147
  %154 = add nuw nsw i32 %136, 1
  %155 = icmp ult i32 %154, %128
  br i1 %155, label %156, label %133

156:                                              ; preds = %153
  %157 = load i32, ptr %137, align 4
  br label %161

158:                                              ; preds = %161
  %159 = add nuw nsw i32 %162, 1
  %160 = icmp eq i32 %159, %128
  br i1 %160, label %133, label %161

161:                                              ; preds = %158, %156
  %162 = phi i32 [ %154, %156 ], [ %159, %158 ]
  %163 = getelementptr %struct.nexthop_grp, ptr %129, i32 %162
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %157, %164
  br i1 %165, label %166, label %158

166:                                              ; preds = %161
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group.__msg.28) #14
  %167 = icmp eq ptr %2, null
  br i1 %167, label %461, label %458

168:                                              ; preds = %133
  %169 = icmp ugt i32 %120, 15
  br label %198

170:                                              ; preds = %272, %127
  %171 = getelementptr inbounds ptr, ptr %8, i32 4
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  %174 = getelementptr inbounds ptr, ptr %8, i32 5
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  %177 = select i1 %173, i1 %176, i1 false
  %178 = getelementptr inbounds ptr, ptr %8, i32 6
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  %181 = select i1 %177, i1 %180, i1 false
  %182 = getelementptr inbounds ptr, ptr %8, i32 7
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  %185 = select i1 %181, i1 %184, i1 false
  %186 = getelementptr inbounds ptr, ptr %8, i32 8
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  %189 = select i1 %185, i1 %188, i1 false
  %190 = getelementptr inbounds ptr, ptr %8, i32 9
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  %193 = select i1 %189, i1 %192, i1 false
  %194 = getelementptr inbounds ptr, ptr %8, i32 10
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  %197 = select i1 %193, i1 %196, i1 false
  br i1 %197, label %278, label %276

198:                                              ; preds = %272, %168
  %199 = phi i32 [ 0, %168 ], [ %274, %272 ]
  %200 = phi i8 [ 0, %168 ], [ %273, %272 ]
  %201 = getelementptr %struct.nexthop_grp, ptr %129, i32 %199
  %202 = load i32, ptr %201, align 4
  %203 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33), align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %220, label %205

205:                                              ; preds = %216, %198
  %206 = phi ptr [ %218, %216 ], [ %203, %198 ]
  %207 = getelementptr inbounds %struct.nexthop, ptr %206, i32 0, i32 6
  %208 = load i32, ptr %207, align 4
  %209 = icmp ugt i32 %208, %202
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.rb_node, ptr %206, i32 0, i32 2
  br label %216

212:                                              ; preds = %205
  %213 = icmp ult i32 %208, %202
  br i1 %213, label %214, label %222

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.rb_node, ptr %206, i32 0, i32 1
  br label %216

216:                                              ; preds = %214, %210
  %217 = phi ptr [ %211, %210 ], [ %215, %214 ]
  %218 = load volatile ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %205

220:                                              ; preds = %216, %198
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group.__msg.29) #14
  %221 = icmp eq ptr %2, null
  br i1 %221, label %461, label %458

222:                                              ; preds = %212
  %223 = getelementptr inbounds %struct.nexthop, ptr %206, i32 0, i32 9
  %224 = load i8, ptr %223, align 2, !range !8
  %225 = icmp eq i8 %224, 0
  %226 = getelementptr inbounds %struct.nexthop, ptr %206, i32 0, i32 12
  %227 = load ptr, ptr %226, align 4
  br i1 %225, label %242, label %228

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.nh_group, ptr %227, i32 0, i32 3
  %230 = load i8, ptr %229, align 1, !range !8
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %228
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_group_nh.__msg) #14
  %233 = icmp eq ptr %2, null
  br i1 %233, label %461, label %458

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.nh_group, ptr %227, i32 0, i32 4
  %236 = load i8, ptr %235, align 4, !range !8
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %234
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_group_nh.__msg.32) #14
  %239 = icmp eq ptr %2, null
  br i1 %239, label %461, label %458

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.nh_group, ptr %227, i32 0, i32 5
  br label %251

242:                                              ; preds = %222
  %243 = getelementptr inbounds %struct.nh_info, ptr %227, i32 0, i32 3
  %244 = load i8, ptr %243, align 1, !range !8
  %245 = icmp ne i8 %244, 0
  %246 = and i1 %169, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_group_nh.__msg.33) #14
  %248 = icmp eq ptr %2, null
  br i1 %248, label %461, label %458

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.nh_info, ptr %227, i32 0, i32 4
  br label %251

251:                                              ; preds = %249, %240
  %252 = phi ptr [ %250, %249 ], [ %241, %240 ]
  br i1 %70, label %267, label %253

253:                                              ; preds = %251
  %254 = getelementptr inbounds %struct.nh_info, ptr %227, i32 0, i32 4
  %255 = load i8, ptr %254, align 2, !range !8
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_fdb_group.__msg) #14
  %258 = icmp eq ptr %2, null
  br i1 %258, label %461, label %458

259:                                              ; preds = %253
  %260 = icmp eq i8 %200, 0
  %261 = getelementptr inbounds %struct.nh_info, ptr %227, i32 0, i32 2
  %262 = load i8, ptr %261, align 4
  br i1 %260, label %272, label %263

263:                                              ; preds = %259
  %264 = icmp eq i8 %200, %262
  br i1 %264, label %272, label %265

265:                                              ; preds = %263
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_fdb_group.__msg.34) #14
  %266 = icmp eq ptr %2, null
  br i1 %266, label %461, label %458

267:                                              ; preds = %251
  %268 = load i8, ptr %252, align 1, !range !8
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %267
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group.__msg.30) #14
  %271 = icmp eq ptr %2, null
  br i1 %271, label %461, label %458

272:                                              ; preds = %267, %263, %259
  %273 = phi i8 [ %200, %267 ], [ %200, %263 ], [ %262, %259 ]
  %274 = add nuw nsw i32 %199, 1
  %275 = icmp eq i32 %274, %132
  br i1 %275, label %170, label %198

276:                                              ; preds = %278, %170
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group.__msg.31) #14
  %277 = icmp eq ptr %2, null
  br i1 %277, label %461, label %458

278:                                              ; preds = %170
  %279 = icmp eq i16 %117, 1
  %280 = getelementptr inbounds ptr, ptr %8, i32 12
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  %283 = or i1 %279, %282
  br i1 %283, label %284, label %276

284:                                              ; preds = %278
  br i1 %279, label %285, label %463

285:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14
  br i1 %282, label %315, label %286

286:                                              ; preds = %285
  %287 = getelementptr inbounds %struct.nlattr, ptr %281, i32 0, i32 1
  %288 = load i16, ptr %287, align 2
  %289 = icmp sgt i16 %288, -1
  br i1 %289, label %290, label %295

290:                                              ; preds = %286
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #14
  %291 = icmp eq ptr %2, null
  br i1 %291, label %464, label %292

292:                                              ; preds = %290
  store ptr @nla_parse_nested.__msg, ptr %2, align 4
  %293 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %281, ptr %293, align 4
  %294 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %294, align 4
  br label %464

295:                                              ; preds = %286
  %296 = getelementptr i8, ptr %281, i32 4
  %297 = load i16, ptr %281, align 2
  %298 = zext i16 %297 to i32
  %299 = add nsw i32 %298, -4
  %300 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 3, ptr noundef %296, i32 noundef %299, ptr noundef nonnull @rtm_nh_res_policy_new, i32 noundef 31, ptr noundef %2) #14
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %464, label %302

302:                                              ; preds = %295
  %303 = getelementptr inbounds [4 x ptr], ptr %4, i32 0, i32 1
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %315, label %306

306:                                              ; preds = %302
  %307 = getelementptr i8, ptr %304, i32 4
  %308 = load i16, ptr %307, align 2
  %309 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 11
  store i16 %308, ptr %309, align 2
  %310 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 14
  store i8 1, ptr %310, align 4
  %311 = icmp eq i16 %308, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %306
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config_grp_res.__msg) #14
  %313 = icmp eq ptr %2, null
  br i1 %313, label %464, label %314

314:                                              ; preds = %312
  store ptr @rtm_to_nh_config_grp_res.__msg, ptr %2, align 4
  br label %464

315:                                              ; preds = %306, %302, %285
  %316 = getelementptr inbounds [4 x ptr], ptr %4, i32 0, i32 2
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 12
  %319 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 15
  %320 = icmp eq ptr %317, null
  br i1 %320, label %329, label %321

321:                                              ; preds = %315
  %322 = getelementptr i8, ptr %317, i32 4
  %323 = load i32, ptr %322, align 4
  %324 = call i32 @clock_t_to_jiffies(i32 noundef %323) #14
  %325 = icmp eq i32 %324, -1
  br i1 %325, label %326, label %329

326:                                              ; preds = %321
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_nh_get_timer.__msg) #14
  %327 = icmp eq ptr %2, null
  br i1 %327, label %464, label %328

328:                                              ; preds = %326
  store ptr @rtm_nh_get_timer.__msg, ptr %2, align 4
  br label %464

329:                                              ; preds = %321, %315
  %330 = phi i32 [ 12000, %315 ], [ %324, %321 ]
  %331 = phi i8 [ 0, %315 ], [ 1, %321 ]
  store i32 %330, ptr %318, align 4
  store i8 %331, ptr %319, align 1
  %332 = getelementptr inbounds [4 x ptr], ptr %4, i32 0, i32 3
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 13
  %335 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 16
  %336 = icmp eq ptr %333, null
  br i1 %336, label %466, label %337

337:                                              ; preds = %329
  %338 = getelementptr i8, ptr %333, i32 4
  %339 = load i32, ptr %338, align 4
  %340 = call i32 @clock_t_to_jiffies(i32 noundef %339) #14
  %341 = icmp eq i32 %340, -1
  br i1 %341, label %342, label %466

342:                                              ; preds = %337
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_nh_get_timer.__msg) #14
  %343 = icmp eq ptr %2, null
  br i1 %343, label %464, label %344

344:                                              ; preds = %342
  store ptr @rtm_nh_get_timer.__msg, ptr %2, align 4
  br label %464

345:                                              ; preds = %95
  %346 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 4
  %347 = load ptr, ptr %346, align 4
  %348 = icmp eq ptr %347, null
  br i1 %348, label %371, label %349

349:                                              ; preds = %345
  %350 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 6
  %351 = load ptr, ptr %350, align 4
  %352 = icmp ne ptr %351, null
  %353 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 5
  %354 = load ptr, ptr %353, align 4
  %355 = icmp ne ptr %354, null
  %356 = select i1 %352, i1 true, i1 %355
  %357 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 8
  %358 = load ptr, ptr %357, align 4
  %359 = icmp ne ptr %358, null
  %360 = select i1 %356, i1 true, i1 %359
  %361 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 7
  %362 = load ptr, ptr %361, align 4
  %363 = icmp ne ptr %362, null
  %364 = select i1 %360, i1 true, i1 %363
  %365 = icmp ne ptr %69, null
  %366 = select i1 %364, i1 true, i1 %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %349
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.15) #14
  %368 = icmp eq ptr %2, null
  br i1 %368, label %461, label %458

369:                                              ; preds = %349
  %370 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 3
  store i8 1, ptr %370, align 2
  br label %463

371:                                              ; preds = %345
  %372 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 5
  %373 = load ptr, ptr %372, align 4
  %374 = icmp ne ptr %373, null
  %375 = select i1 %96, i1 true, i1 %374
  br i1 %375, label %378, label %376

376:                                              ; preds = %371
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.16) #14
  %377 = icmp eq ptr %2, null
  br i1 %377, label %461, label %458

378:                                              ; preds = %371
  %379 = select i1 %70, i1 %374, i1 false
  br i1 %379, label %380, label %405

380:                                              ; preds = %378
  %381 = getelementptr i8, ptr %373, i32 4
  %382 = load i32, ptr %381, align 4
  %383 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 6
  store i32 %382, ptr %383, align 4
  %384 = icmp eq i32 %382, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %380
  %386 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %382) #14
  %387 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 7
  store ptr %386, ptr %387, align 4
  %388 = icmp eq ptr %386, null
  br i1 %388, label %389, label %391

389:                                              ; preds = %385, %380
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.17) #14
  %390 = icmp eq ptr %2, null
  br i1 %390, label %461, label %458

391:                                              ; preds = %385
  %392 = getelementptr inbounds %struct.net_device, ptr %386, i32 0, i32 14
  %393 = load i32, ptr %392, align 8
  %394 = and i32 %393, 1
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %391
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.18) #14
  %397 = icmp eq ptr %2, null
  br i1 %397, label %461, label %458

398:                                              ; preds = %391
  %399 = getelementptr inbounds %struct.net_device, ptr %386, i32 0, i32 6
  %400 = load volatile i32, ptr %399, align 4
  %401 = and i32 %400, 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %405, label %403

403:                                              ; preds = %398
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.19) #14
  %404 = icmp eq ptr %2, null
  br i1 %404, label %461, label %458

405:                                              ; preds = %398, %378
  %406 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 6
  %407 = load ptr, ptr %406, align 4
  %408 = icmp eq ptr %407, null
  br i1 %408, label %430, label %409

409:                                              ; preds = %405
  %410 = load i8, ptr %56, align 4
  switch i8 %410, label %428 [
    i8 2, label %411
    i8 10, label %420
  ]

411:                                              ; preds = %409
  %412 = load i16, ptr %407, align 2
  %413 = icmp eq i16 %412, 8
  br i1 %413, label %416, label %414

414:                                              ; preds = %411
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.20) #14
  %415 = icmp eq ptr %2, null
  br i1 %415, label %461, label %458

416:                                              ; preds = %411
  %417 = getelementptr i8, ptr %407, i32 4
  %418 = load i32, ptr %417, align 4
  %419 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 8
  store i32 %418, ptr %419, align 4
  br label %436

420:                                              ; preds = %409
  %421 = load i16, ptr %407, align 2
  %422 = icmp eq i16 %421, 20
  br i1 %422, label %425, label %423

423:                                              ; preds = %420
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.21) #14
  %424 = icmp eq ptr %2, null
  br i1 %424, label %461, label %458

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false) #14, !alias.scope !19, !annotation !18
  %427 = call i32 @nla_memcpy(ptr noundef nonnull %9, ptr noundef nonnull %407, i32 noundef 16) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %426, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  br label %436

428:                                              ; preds = %409
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.22) #14
  %429 = icmp eq ptr %2, null
  br i1 %429, label %461, label %458

430:                                              ; preds = %405
  %431 = load i32, ptr %60, align 4
  %432 = and i32 %431, 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %436, label %434

434:                                              ; preds = %430
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.23) #14
  %435 = icmp eq ptr %2, null
  br i1 %435, label %461, label %458

436:                                              ; preds = %430, %425, %416
  %437 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 8
  %438 = load ptr, ptr %437, align 4
  %439 = icmp eq ptr %438, null
  br i1 %439, label %452, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 17
  store ptr %438, ptr %441, align 4
  %442 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 7
  %443 = load ptr, ptr %442, align 4
  %444 = icmp eq ptr %443, null
  br i1 %444, label %445, label %447

445:                                              ; preds = %440
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.24) #14
  %446 = icmp eq ptr %2, null
  br i1 %446, label %461, label %458

447:                                              ; preds = %440
  %448 = getelementptr i8, ptr %443, i32 4
  %449 = load i16, ptr %448, align 2
  %450 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 18
  store i16 %449, ptr %450, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @lwtunnel_valid_encap_type.__msg) #14
  %451 = icmp eq ptr %2, null
  br i1 %451, label %461, label %458

452:                                              ; preds = %436
  %453 = getelementptr inbounds [13 x ptr], ptr %8, i32 0, i32 7
  %454 = load ptr, ptr %453, align 4
  %455 = icmp eq ptr %454, null
  br i1 %455, label %463, label %456

456:                                              ; preds = %452
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.25) #14
  %457 = icmp eq ptr %2, null
  br i1 %457, label %461, label %458

458:                                              ; preds = %456, %447, %445, %434, %428, %423, %414, %403, %396, %389, %376, %367, %276, %270, %265, %257, %247, %238, %232, %220, %166, %151, %145, %125, %114, %102, %91, %87, %44, %36, %29, %14
  %459 = phi ptr [ @__nlmsg_parse.__msg, %14 ], [ @rtm_to_nh_config.__msg, %29 ], [ @rtm_to_nh_config.__msg.9, %36 ], [ @rtm_to_nh_config.__msg.10, %44 ], [ @rtm_to_nh_config.__msg.11, %87 ], [ @rtm_to_nh_config.__msg.12, %91 ], [ @rtm_to_nh_config.__msg.13, %102 ], [ @rtm_to_nh_config.__msg.14, %114 ], [ @nh_check_attr_group.__msg, %125 ], [ @nh_check_attr_group.__msg.26, %145 ], [ @nh_check_attr_group.__msg.27, %151 ], [ @nh_check_attr_group.__msg.28, %166 ], [ @nh_check_attr_group.__msg.29, %220 ], [ @valid_group_nh.__msg, %232 ], [ @valid_group_nh.__msg.32, %238 ], [ @valid_group_nh.__msg.33, %247 ], [ @nh_check_attr_fdb_group.__msg, %257 ], [ @nh_check_attr_fdb_group.__msg.34, %265 ], [ @nh_check_attr_group.__msg.30, %270 ], [ @nh_check_attr_group.__msg.31, %276 ], [ @rtm_to_nh_config.__msg.15, %367 ], [ @rtm_to_nh_config.__msg.16, %376 ], [ @rtm_to_nh_config.__msg.17, %389 ], [ @rtm_to_nh_config.__msg.18, %396 ], [ @rtm_to_nh_config.__msg.19, %403 ], [ @rtm_to_nh_config.__msg.20, %414 ], [ @rtm_to_nh_config.__msg.21, %423 ], [ @rtm_to_nh_config.__msg.22, %428 ], [ @rtm_to_nh_config.__msg.23, %434 ], [ @rtm_to_nh_config.__msg.24, %445 ], [ @lwtunnel_valid_encap_type.__msg, %447 ], [ @rtm_to_nh_config.__msg.25, %456 ]
  %460 = phi i32 [ -22, %14 ], [ -22, %29 ], [ -22, %36 ], [ -22, %44 ], [ -22, %87 ], [ -22, %91 ], [ -22, %102 ], [ -22, %114 ], [ -22, %125 ], [ -22, %145 ], [ -22, %151 ], [ -22, %166 ], [ -22, %220 ], [ -22, %232 ], [ -22, %238 ], [ -22, %247 ], [ -22, %257 ], [ -22, %265 ], [ -22, %270 ], [ -22, %276 ], [ -22, %367 ], [ -22, %376 ], [ -22, %389 ], [ -100, %396 ], [ -100, %403 ], [ -22, %414 ], [ -22, %423 ], [ -22, %428 ], [ -22, %434 ], [ -22, %445 ], [ -95, %447 ], [ -22, %456 ]
  store ptr %459, ptr %2, align 4
  br label %461

461:                                              ; preds = %458, %456, %447, %445, %434, %428, %423, %414, %403, %396, %389, %376, %367, %276, %270, %265, %257, %247, %238, %232, %220, %166, %151, %145, %125, %114, %102, %91, %87, %44, %36, %29, %16, %14
  %462 = phi i32 [ -22, %428 ], [ -22, %423 ], [ -22, %414 ], [ -22, %14 ], [ -95, %447 ], [ -22, %456 ], [ -22, %445 ], [ -22, %434 ], [ -100, %403 ], [ -100, %396 ], [ -22, %389 ], [ -22, %376 ], [ -22, %367 ], [ -22, %114 ], [ -22, %102 ], [ -22, %91 ], [ -22, %87 ], [ -22, %44 ], [ -22, %36 ], [ -22, %29 ], [ %19, %16 ], [ -22, %125 ], [ -22, %145 ], [ -22, %151 ], [ -22, %166 ], [ -22, %276 ], [ -22, %270 ], [ -22, %220 ], [ -22, %232 ], [ -22, %238 ], [ -22, %247 ], [ -22, %257 ], [ -22, %265 ], [ %460, %458 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %8) #14
  br label %1478

463:                                              ; preds = %452, %369, %284
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %8) #14
  br label %469

464:                                              ; preds = %344, %342, %328, %326, %314, %312, %295, %292, %290
  %465 = phi i32 [ -22, %290 ], [ -22, %292 ], [ -22, %342 ], [ -22, %344 ], [ -22, %326 ], [ -22, %328 ], [ -22, %312 ], [ -22, %314 ], [ %300, %295 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %8) #14
  br label %1478

466:                                              ; preds = %337, %329
  %467 = phi i32 [ 0, %329 ], [ %340, %337 ]
  %468 = phi i8 [ 0, %329 ], [ 1, %337 ]
  store i32 %467, ptr %334, align 4
  store i8 %468, ptr %335, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %8) #14
  br label %469

469:                                              ; preds = %466, %463
  %470 = load i32, ptr %50, align 4
  %471 = and i32 %470, 256
  %472 = icmp eq i32 %471, 0
  %473 = load i32, ptr %10, align 4
  %474 = icmp eq i32 %473, 0
  br i1 %472, label %479, label %475

475:                                              ; preds = %469
  br i1 %474, label %476, label %511

476:                                              ; preds = %475
  call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_add.__msg) #14
  %477 = icmp eq ptr %2, null
  br i1 %477, label %1475, label %478

478:                                              ; preds = %476
  store ptr @nexthop_add.__msg, ptr %2, align 4
  br label %1475

479:                                              ; preds = %469
  br i1 %474, label %480, label %511

480:                                              ; preds = %479
  %481 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 3), align 8
  %482 = add i32 %481, 1
  store i32 %482, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 3), align 8
  br label %487

483:                                              ; preds = %498
  %484 = add i32 %488, 1
  store i32 %484, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 3), align 8
  %485 = icmp eq i32 %484, %481
  br i1 %485, label %486, label %487

486:                                              ; preds = %483
  store i32 0, ptr %10, align 4
  br label %508

487:                                              ; preds = %483, %480
  %488 = phi i32 [ %484, %483 ], [ %482, %480 ]
  %489 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33), align 4
  %490 = icmp eq ptr %489, null
  br i1 %490, label %506, label %491

491:                                              ; preds = %502, %487
  %492 = phi ptr [ %504, %502 ], [ %489, %487 ]
  %493 = getelementptr inbounds %struct.nexthop, ptr %492, i32 0, i32 6
  %494 = load i32, ptr %493, align 4
  %495 = icmp ugt i32 %494, %488
  br i1 %495, label %496, label %498

496:                                              ; preds = %491
  %497 = getelementptr inbounds %struct.rb_node, ptr %492, i32 0, i32 2
  br label %502

498:                                              ; preds = %491
  %499 = icmp ult i32 %494, %488
  br i1 %499, label %500, label %483

500:                                              ; preds = %498
  %501 = getelementptr inbounds %struct.rb_node, ptr %492, i32 0, i32 1
  br label %502

502:                                              ; preds = %500, %496
  %503 = phi ptr [ %497, %496 ], [ %501, %500 ]
  %504 = load volatile ptr, ptr %503, align 4
  %505 = icmp eq ptr %504, null
  br i1 %505, label %506, label %491

506:                                              ; preds = %502, %487
  store i32 %488, ptr %10, align 4
  %507 = icmp eq i32 %488, 0
  br i1 %507, label %508, label %511

508:                                              ; preds = %506, %486
  call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_add.__msg.35) #14
  %509 = icmp eq ptr %2, null
  br i1 %509, label %1475, label %510

510:                                              ; preds = %508
  store ptr @nexthop_add.__msg.35, ptr %2, align 4
  br label %1475

511:                                              ; preds = %506, %479, %475
  %512 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 9
  %513 = load ptr, ptr %512, align 4
  %514 = icmp eq ptr %513, null
  br i1 %514, label %753, label %515

515:                                              ; preds = %511
  %516 = getelementptr i8, ptr %513, i32 4
  %517 = load i16, ptr %513, align 2
  %518 = zext i16 %517 to i32
  %519 = add nuw nsw i32 %518, 524284
  %520 = lshr i32 %519, 3
  %521 = trunc i32 %520 to i16
  %522 = icmp eq i16 %521, 0
  br i1 %522, label %523, label %524, !prof !14

523:                                              ; preds = %515
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2418, i32 noundef 9, ptr noundef null) #14
  br label %1475

524:                                              ; preds = %515
  %525 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %526 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %525, i32 noundef 3520, i32 noundef 72) #16
  %527 = icmp eq ptr %526, null
  br i1 %527, label %1475, label %528

528:                                              ; preds = %524
  %529 = getelementptr inbounds %struct.nexthop, ptr %526, i32 0, i32 1
  store volatile ptr %529, ptr %529, align 4
  %530 = getelementptr inbounds %struct.nexthop, ptr %526, i32 0, i32 1, i32 1
  store ptr %529, ptr %530, align 8
  %531 = getelementptr inbounds %struct.nexthop, ptr %526, i32 0, i32 2
  store volatile ptr %531, ptr %531, align 4
  %532 = getelementptr inbounds %struct.nexthop, ptr %526, i32 0, i32 2, i32 1
  store ptr %531, ptr %532, align 8
  %533 = getelementptr inbounds %struct.nexthop, ptr %526, i32 0, i32 4
  store volatile ptr %533, ptr %533, align 4
  %534 = getelementptr inbounds %struct.nexthop, ptr %526, i32 0, i32 4, i32 1
  store ptr %533, ptr %534, align 8
  %535 = getelementptr inbounds %struct.nexthop, ptr %526, i32 0, i32 3
  store volatile ptr %535, ptr %535, align 4
  %536 = getelementptr inbounds %struct.nexthop, ptr %526, i32 0, i32 3, i32 1
  store ptr %535, ptr %536, align 8
  %537 = getelementptr inbounds %struct.nexthop, ptr %526, i32 0, i32 9
  store i8 1, ptr %537, align 2
  %538 = shl nuw nsw i32 %520, 5
  %539 = and i32 %538, 2097120
  %540 = or i32 %539, 16
  %541 = call noalias align 64 ptr @__kmalloc(i32 noundef %540, i32 noundef 3520) #15
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %544

543:                                              ; preds = %528
  call void @kfree(ptr noundef nonnull %526) #14
  br label %1475

544:                                              ; preds = %528
  %545 = getelementptr inbounds %struct.nh_group, ptr %541, i32 0, i32 1
  store i16 %521, ptr %545, align 4
  %546 = call noalias align 64 ptr @__kmalloc(i32 noundef %540, i32 noundef 3520) #15
  %547 = icmp eq ptr %546, null
  br i1 %547, label %548, label %549

548:                                              ; preds = %544
  store ptr null, ptr %541, align 64
  call void @kfree(ptr noundef nonnull %541) #14
  call void @kfree(ptr noundef nonnull %526) #14
  br label %1475

549:                                              ; preds = %544
  %550 = getelementptr inbounds %struct.nh_group, ptr %546, i32 0, i32 1
  store i16 %521, ptr %550, align 4
  store ptr %546, ptr %541, align 64
  store ptr %541, ptr %546, align 64
  %551 = getelementptr inbounds %struct.nh_group, ptr %541, i32 0, i32 1
  %552 = load i16, ptr %551, align 4
  %553 = icmp eq i16 %552, 0
  br i1 %553, label %625, label %554

554:                                              ; preds = %549
  %555 = getelementptr inbounds %struct.nh_group, ptr %541, i32 0, i32 6
  br label %556

556:                                              ; preds = %609, %554
  %557 = phi i32 [ 0, %554 ], [ %621, %609 ]
  %558 = getelementptr %struct.nexthop_grp, ptr %516, i32 %557
  %559 = load i32, ptr %558, align 4
  %560 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33), align 4
  %561 = icmp eq ptr %560, null
  br i1 %561, label %577, label %562

562:                                              ; preds = %573, %556
  %563 = phi ptr [ %575, %573 ], [ %560, %556 ]
  %564 = getelementptr inbounds %struct.nexthop, ptr %563, i32 0, i32 6
  %565 = load i32, ptr %564, align 4
  %566 = icmp ugt i32 %565, %559
  br i1 %566, label %567, label %569

567:                                              ; preds = %562
  %568 = getelementptr inbounds %struct.rb_node, ptr %563, i32 0, i32 2
  br label %573

569:                                              ; preds = %562
  %570 = icmp ult i32 %565, %559
  br i1 %570, label %571, label %577

571:                                              ; preds = %569
  %572 = getelementptr inbounds %struct.rb_node, ptr %563, i32 0, i32 1
  br label %573

573:                                              ; preds = %571, %567
  %574 = phi ptr [ %568, %567 ], [ %572, %571 ]
  %575 = load volatile ptr, ptr %574, align 4
  %576 = icmp eq ptr %575, null
  br i1 %576, label %577, label %562

577:                                              ; preds = %573, %569, %556
  %578 = phi ptr [ null, %556 ], [ null, %573 ], [ %563, %569 ]
  %579 = getelementptr inbounds %struct.nexthop, ptr %578, i32 0, i32 10
  %580 = load volatile i32, ptr %579, align 4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %594, label %582

582:                                              ; preds = %592, %577
  %583 = phi i32 [ %590, %592 ], [ %580, %577 ]
  %584 = add i32 %583, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %579) #14, !srcloc !11
  br label %585

585:                                              ; preds = %585, %582
  %586 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %579, ptr %579, i32 %583, i32 %584, ptr elementtype(i32) %579) #14, !srcloc !22
  %587 = extractvalue { i32, i32 } %586, 0
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %585

589:                                              ; preds = %585
  %590 = extractvalue { i32, i32 } %586, 1
  %591 = icmp eq i32 %590, %583
  br i1 %591, label %594, label %592, !prof !9

592:                                              ; preds = %589
  %593 = icmp eq i32 %590, 0
  br i1 %593, label %594, label %582

594:                                              ; preds = %592, %589, %577
  %595 = phi i32 [ 0, %577 ], [ %583, %589 ], [ 0, %592 ]
  %596 = add i32 %595, 1
  %597 = or i32 %596, %595
  %598 = icmp sgt i32 %597, -1
  br i1 %598, label %600, label %599, !prof !9

599:                                              ; preds = %594
  call void @refcount_warn_saturate(ptr noundef %579, i32 noundef 0) #14
  br label %600

600:                                              ; preds = %599, %594
  %601 = icmp eq i32 %595, 0
  br i1 %601, label %725, label %602

602:                                              ; preds = %600
  %603 = getelementptr inbounds %struct.nexthop, ptr %578, i32 0, i32 12
  %604 = load ptr, ptr %603, align 4
  %605 = getelementptr inbounds %struct.nh_info, ptr %604, i32 0, i32 2
  %606 = load i8, ptr %605, align 4
  %607 = icmp eq i8 %606, 2
  br i1 %607, label %608, label %609

608:                                              ; preds = %602
  store i8 1, ptr %555, align 2
  br label %609

609:                                              ; preds = %608, %602
  %610 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %557
  store ptr %578, ptr %610, align 16
  %611 = getelementptr %struct.nexthop_grp, ptr %516, i32 %557, i32 1
  %612 = load i8, ptr %611, align 4
  %613 = add i8 %612, 1
  %614 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %557, i32 1
  store i8 %613, ptr %614, align 4
  %615 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %557, i32 3
  %616 = getelementptr inbounds %struct.nexthop, ptr %578, i32 0, i32 4
  %617 = load ptr, ptr %616, align 4
  %618 = getelementptr inbounds %struct.list_head, ptr %617, i32 0, i32 1
  store ptr %615, ptr %618, align 4
  store ptr %617, ptr %615, align 4
  %619 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %557, i32 3, i32 1
  store ptr %616, ptr %619, align 8
  store volatile ptr %615, ptr %616, align 4
  %620 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %557, i32 4
  store ptr %526, ptr %620, align 4
  %621 = add nuw nsw i32 %557, 1
  %622 = load i16, ptr %551, align 4
  %623 = zext i16 %622 to i32
  %624 = icmp ult i32 %621, %623
  br i1 %624, label %556, label %625

625:                                              ; preds = %609, %549
  %626 = phi i32 [ 0, %549 ], [ %621, %609 ]
  %627 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 10
  %628 = load i16, ptr %627, align 4
  switch i16 %628, label %662 [
    i16 0, label %629
    i16 1, label %631
  ]

629:                                              ; preds = %625
  %630 = getelementptr inbounds %struct.nh_group, ptr %541, i32 0, i32 3
  store i8 1, ptr %630, align 1
  br label %660

631:                                              ; preds = %625
  %632 = load i32, ptr %10, align 4
  %633 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 11
  %634 = load i16, ptr %633, align 2
  %635 = zext i16 %634 to i32
  %636 = shl nuw nsw i32 %635, 4
  %637 = add nuw nsw i32 %636, 76
  %638 = call noalias ptr @__vmalloc(i32 noundef %637, i32 noundef 11712) #15
  %639 = icmp eq ptr %638, null
  br i1 %639, label %725, label %640

640:                                              ; preds = %631
  store ptr @init_net, ptr %638, align 4
  %641 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 1
  store i32 %632, ptr %641, align 4
  %642 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 2
  store i32 -32, ptr %642, align 4
  %643 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 2, i32 0, i32 1
  store volatile ptr %643, ptr %643, align 4
  %644 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 2, i32 0, i32 1, i32 1
  store ptr %643, ptr %644, align 4
  %645 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 2, i32 0, i32 2
  store ptr @nh_res_table_upkeep_dw, ptr %645, align 4
  %646 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 2, i32 1
  call void @init_timer_key(ptr noundef %646, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #14
  %647 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 3
  store volatile ptr %647, ptr %647, align 4
  %648 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 3, i32 1
  store ptr %647, ptr %648, align 4
  %649 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 12
  %650 = load i32, ptr %649, align 4
  %651 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 5
  store i32 %650, ptr %651, align 4
  %652 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 13
  %653 = load i32, ptr %652, align 4
  %654 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 6
  store i32 %653, ptr %654, align 4
  %655 = getelementptr inbounds %struct.nh_res_table, ptr %638, i32 0, i32 7
  store i16 %634, ptr %655, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  %656 = load ptr, ptr %541, align 64
  %657 = getelementptr inbounds %struct.nh_group, ptr %656, i32 0, i32 7
  store volatile ptr %638, ptr %657, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  %658 = getelementptr inbounds %struct.nh_group, ptr %541, i32 0, i32 7
  store volatile ptr %638, ptr %658, align 4
  %659 = getelementptr inbounds %struct.nh_group, ptr %541, i32 0, i32 4
  store i8 1, ptr %659, align 8
  br label %660

660:                                              ; preds = %640, %629
  %661 = getelementptr inbounds %struct.nh_group, ptr %541, i32 0, i32 2
  store i8 1, ptr %661, align 2
  br label %662

662:                                              ; preds = %660, %625
  %663 = getelementptr inbounds %struct.nh_group, ptr %541, i32 0, i32 3
  %664 = load i8, ptr %663, align 1, !range !8
  %665 = getelementptr inbounds %struct.nh_group, ptr %541, i32 0, i32 4
  %666 = load i8, ptr %665, align 8, !range !8
  %667 = add nuw nsw i8 %666, %664
  %668 = icmp ne i8 %667, 1
  %669 = load i1, ptr @nexthop_create_group.__already_done, align 1
  %670 = xor i1 %669, true
  %671 = select i1 %668, i1 %670, i1 false
  br i1 %671, label %672, label %674, !prof !14

672:                                              ; preds = %662
  store i1 true, ptr @nexthop_create_group.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2480, i32 noundef 9, ptr noundef null) #14
  %673 = load i8, ptr %663, align 1, !range !8
  br label %674

674:                                              ; preds = %672, %662
  %675 = phi i8 [ %673, %672 ], [ %664, %662 ]
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %717, label %677

677:                                              ; preds = %674
  %678 = load i16, ptr %551, align 4
  %679 = zext i16 %678 to i32
  %680 = icmp eq i16 %678, 0
  br i1 %680, label %717, label %684

681:                                              ; preds = %684
  %682 = sdiv i32 %690, 2
  %683 = sext i32 %682 to i64
  br label %693

684:                                              ; preds = %684, %677
  %685 = phi i32 [ %690, %684 ], [ 0, %677 ]
  %686 = phi i32 [ %691, %684 ], [ 0, %677 ]
  %687 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %686, i32 1
  %688 = load i8, ptr %687, align 4
  %689 = zext i8 %688 to i32
  %690 = add i32 %685, %689
  %691 = add nuw nsw i32 %686, 1
  %692 = icmp eq i32 %691, %679
  br i1 %692, label %681, label %684

693:                                              ; preds = %711, %681
  %694 = phi i32 [ 0, %681 ], [ %699, %711 ]
  %695 = phi i32 [ 0, %681 ], [ %715, %711 ]
  %696 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %695, i32 1
  %697 = load i8, ptr %696, align 4
  %698 = zext i8 %697 to i32
  %699 = add i32 %694, %698
  %700 = sext i32 %699 to i64
  %701 = shl nsw i64 %700, 31
  %702 = add nsw i64 %701, %683
  %703 = icmp ult i64 %702, 4294967296
  br i1 %703, label %704, label %707, !prof !9

704:                                              ; preds = %693
  %705 = trunc i64 %702 to i32
  %706 = udiv i32 %705, %690
  br label %711

707:                                              ; preds = %693
  %708 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %690, i64 %702) #17, !srcloc !25
  %709 = extractvalue { i64, i64 } %708, 1
  %710 = trunc i64 %709 to i32
  br label %711

711:                                              ; preds = %707, %704
  %712 = phi i32 [ %706, %704 ], [ %710, %707 ]
  %713 = add i32 %712, -1
  %714 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %695, i32 2
  store volatile i32 %713, ptr %714, align 8
  %715 = add nuw nsw i32 %695, 1
  %716 = icmp eq i32 %715, %679
  br i1 %716, label %717, label %693

717:                                              ; preds = %711, %677, %674
  %718 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 4
  %719 = load i8, ptr %718, align 1
  %720 = icmp eq i8 %719, 0
  br i1 %720, label %723, label %721

721:                                              ; preds = %717
  %722 = getelementptr inbounds %struct.nh_group, ptr %541, i32 0, i32 5
  store i8 1, ptr %722, align 1
  br label %723

723:                                              ; preds = %721, %717
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %724 = getelementptr inbounds %struct.nexthop, ptr %526, i32 0, i32 12
  store volatile ptr %541, ptr %724, align 4
  br label %915

725:                                              ; preds = %631, %600
  %726 = phi i32 [ %626, %631 ], [ %557, %600 ]
  %727 = phi ptr [ inttoptr (i32 -12 to ptr), %631 ], [ inttoptr (i32 -2 to ptr), %600 ]
  %728 = add i32 %726, -1
  %729 = icmp sgt i32 %728, -1
  br i1 %729, label %730, label %751

730:                                              ; preds = %748, %725
  %731 = phi i32 [ %749, %748 ], [ %728, %725 ]
  %732 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %731
  %733 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %731, i32 3
  %734 = getelementptr %struct.nh_group, ptr %541, i32 0, i32 8, i32 %731, i32 3, i32 1
  %735 = load ptr, ptr %734, align 8
  %736 = load ptr, ptr %733, align 4
  %737 = getelementptr inbounds %struct.list_head, ptr %736, i32 0, i32 1
  store ptr %735, ptr %737, align 4
  store volatile ptr %736, ptr %735, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %733, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %734, align 8
  %738 = load ptr, ptr %732, align 16
  %739 = getelementptr inbounds %struct.nexthop, ptr %738, i32 0, i32 10
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %739) #14, !srcloc !11
  %740 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %739, ptr %739, i32 1, ptr elementtype(i32) %739) #14, !srcloc !12
  %741 = extractvalue { i32, i32, i32 } %740, 0
  %742 = icmp eq i32 %741, 1
  br i1 %742, label %746, label %743

743:                                              ; preds = %730
  %744 = icmp sgt i32 %741, 0
  br i1 %744, label %748, label %745, !prof !9

745:                                              ; preds = %743
  call void @refcount_warn_saturate(ptr noundef %739, i32 noundef 3) #14
  br label %748

746:                                              ; preds = %730
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !13
  %747 = getelementptr inbounds %struct.nexthop, ptr %738, i32 0, i32 11
  call void @call_rcu(ptr noundef %747, ptr noundef nonnull @nexthop_free_rcu) #14
  br label %748

748:                                              ; preds = %746, %745, %743
  %749 = add nsw i32 %731, -1
  %750 = icmp sgt i32 %731, 0
  br i1 %750, label %730, label %751

751:                                              ; preds = %748, %725
  %752 = load ptr, ptr %541, align 64
  call void @kfree(ptr noundef %752) #14
  call void @kfree(ptr noundef nonnull %541) #14
  call void @kfree(ptr noundef nonnull %526) #14
  br label %1475

753:                                              ; preds = %511
  %754 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %755 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %754, i32 noundef 3520, i32 noundef 72) #16
  %756 = icmp eq ptr %755, null
  br i1 %756, label %1475, label %757

757:                                              ; preds = %753
  %758 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 1
  store volatile ptr %758, ptr %758, align 4
  %759 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 1, i32 1
  store ptr %758, ptr %759, align 8
  %760 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 2
  store volatile ptr %760, ptr %760, align 4
  %761 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 2, i32 1
  store ptr %760, ptr %761, align 8
  %762 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 4
  store volatile ptr %762, ptr %762, align 4
  %763 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 4, i32 1
  store ptr %762, ptr %763, align 8
  %764 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 3
  store volatile ptr %764, ptr %764, align 4
  %765 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 3, i32 1
  store ptr %764, ptr %765, align 8
  %766 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %767 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %766, i32 noundef 3520, i32 noundef 88) #16
  %768 = icmp eq ptr %767, null
  br i1 %768, label %769, label %770

769:                                              ; preds = %757
  call void @kfree(ptr noundef nonnull %755) #14
  br label %1475

770:                                              ; preds = %757
  %771 = load i32, ptr %60, align 4
  %772 = trunc i32 %771 to i8
  %773 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 8
  store i8 %772, ptr %773, align 1
  %774 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 5
  store ptr @init_net, ptr %774, align 4
  %775 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 1
  store ptr %755, ptr %775, align 8
  %776 = load i8, ptr %56, align 4
  %777 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 2
  store i8 %776, ptr %777, align 4
  %778 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 5, i32 0, i32 0, i32 3
  store i8 -3, ptr %778, align 8
  %779 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 4
  %780 = load i8, ptr %779, align 1
  %781 = icmp eq i8 %780, 0
  br i1 %781, label %784, label %782

782:                                              ; preds = %770
  %783 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 4
  store i8 1, ptr %783, align 2
  br label %784

784:                                              ; preds = %782, %770
  %785 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 3
  %786 = load i8, ptr %785, align 2
  %787 = icmp eq i8 %786, 0
  br i1 %787, label %794, label %788

788:                                              ; preds = %784
  %789 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 3
  store i8 1, ptr %789, align 1
  %790 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  %791 = getelementptr inbounds %struct.net_device, ptr %790, i32 0, i32 17
  %792 = load i32, ptr %791, align 4
  %793 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 6
  store i32 %792, ptr %793, align 4
  br label %794

794:                                              ; preds = %788, %784
  switch i8 %776, label %888 [
    i8 2, label %795
    i8 10, label %837
  ]

795:                                              ; preds = %794
  %796 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #14
  %797 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 5
  %798 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %7, i8 0, i64 100, i1 false) #14
  %799 = load i32, ptr %798, align 4
  %800 = icmp eq i32 %799, 0
  %801 = select i1 %800, i8 0, i8 2
  store i8 %801, ptr %797, align 1
  %802 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 8
  store i32 %799, ptr %802, align 4
  %803 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 9
  %804 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 6
  %805 = load i32, ptr %804, align 4
  store i32 %805, ptr %803, align 4
  %806 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 10
  store i32 %771, ptr %806, align 4
  %807 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 11
  %808 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %807, i8 0, i64 36, i1 false) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %808, ptr noundef align 4 dereferenceable(16) %53, i32 16, i1 false) #14
  %809 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 21
  %810 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 17
  %811 = load ptr, ptr %810, align 4
  store ptr %811, ptr %809, align 4
  %812 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 22
  %813 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 18
  %814 = load i16, ptr %813, align 4
  store i16 %814, ptr %812, align 4
  %815 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 7
  %816 = load ptr, ptr %815, align 4
  %817 = icmp eq ptr %816, null
  %818 = select i1 %817, i32 254, i32 0
  %819 = call i32 @fib_nh_init(ptr noundef nonnull @init_net, ptr noundef %796, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %2) #14
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %822, label %821

821:                                              ; preds = %795
  call void @fib_nh_release(ptr noundef nonnull @init_net, ptr noundef %796) #14
  br label %835

822:                                              ; preds = %795
  %823 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 4
  %824 = load i8, ptr %823, align 2, !range !8
  %825 = icmp eq i8 %824, 0
  br i1 %825, label %826, label %835

826:                                              ; preds = %822
  %827 = call i32 @fib_check_nh(ptr noundef nonnull @init_net, ptr noundef %796, i32 noundef %818, i8 noundef zeroext 0, ptr noundef %2) #14
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %834

829:                                              ; preds = %826
  %830 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 5, i32 0, i32 0, i32 6
  %831 = load i8, ptr %830, align 1
  store i8 %831, ptr %773, align 1
  %832 = load i8, ptr %778, align 8
  %833 = call i32 @fib_info_update_nhc_saddr(ptr noundef nonnull @init_net, ptr noundef %796, i8 noundef zeroext %832) #14
  br label %835

834:                                              ; preds = %826
  call void @fib_nh_release(ptr noundef nonnull @init_net, ptr noundef %796) #14
  br label %835

835:                                              ; preds = %834, %829, %822, %821
  %836 = phi i32 [ %819, %821 ], [ 0, %822 ], [ %827, %834 ], [ 0, %829 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #14
  br label %883

837:                                              ; preds = %794
  %838 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #14
  %839 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 4
  %840 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %6, i8 0, i64 144, i1 false) #14
  %841 = load i32, ptr %840, align 4
  store i32 %841, ptr %839, align 4
  %842 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 5
  store i32 %771, ptr %842, align 4
  %843 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 6
  %844 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 13
  %845 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %843, i8 0, i64 60, i1 false) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %844, ptr noundef align 4 dereferenceable(16) %845, i32 16, i1 false) #14
  %846 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 14
  %847 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %846, i8 0, i64 20, i1 false) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %847, ptr noundef align 4 dereferenceable(16) %53, i32 16, i1 false) #14
  %848 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 20
  %849 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 17
  %850 = load ptr, ptr %849, align 4
  store ptr %850, ptr %848, align 4
  %851 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 21
  %852 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 18
  %853 = load i16, ptr %852, align 4
  store i16 %853, ptr %851, align 4
  %854 = getelementptr inbounds %struct.fib6_config, ptr %6, i32 0, i32 22
  %855 = icmp ne i8 %780, 0
  %856 = zext i1 %855 to i8
  store i8 %856, ptr %854, align 2
  %857 = load i32, ptr %845, align 4
  %858 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %859 = load i32, ptr %858, align 4
  %860 = or i32 %859, %857
  %861 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 8, i32 0, i32 0, i32 0, i32 2
  %862 = load i32, ptr %861, align 4
  %863 = or i32 %860, %862
  %864 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 8, i32 0, i32 0, i32 0, i32 3
  %865 = load i32, ptr %864, align 4
  %866 = or i32 %863, %865
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %870, label %868

868:                                              ; preds = %837
  %869 = or i32 %771, 2
  store i32 %869, ptr %842, align 4
  br label %870

870:                                              ; preds = %868, %837
  %871 = load ptr, ptr @ipv6_stub, align 4
  %872 = getelementptr inbounds %struct.ipv6_stub, ptr %871, i32 0, i32 9
  %873 = load ptr, ptr %872, align 4
  %874 = call i32 %873(ptr noundef nonnull @init_net, ptr noundef %838, ptr noundef nonnull %6, i32 noundef 3264, ptr noundef %2) #14
  switch i32 %874, label %875 [
    i32 0, label %879
    i32 -97, label %882
  ]

875:                                              ; preds = %870
  %876 = load ptr, ptr @ipv6_stub, align 4
  %877 = getelementptr inbounds %struct.ipv6_stub, ptr %876, i32 0, i32 10
  %878 = load ptr, ptr %877, align 4
  call void %878(ptr noundef %838) #14
  br label %882

879:                                              ; preds = %870
  %880 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 5, i32 0, i32 0, i32 6
  %881 = load i8, ptr %880, align 1
  store i8 %881, ptr %773, align 1
  br label %882

882:                                              ; preds = %879, %875, %870
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #14
  br label %883

883:                                              ; preds = %882, %835
  %884 = phi i32 [ %874, %882 ], [ %836, %835 ]
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %888, label %886

886:                                              ; preds = %883
  call void @kfree(ptr noundef nonnull %767) #14
  call void @kfree(ptr noundef nonnull %755) #14
  %887 = inttoptr i32 %884 to ptr
  br label %915

888:                                              ; preds = %883, %794
  %889 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 4
  %890 = load i8, ptr %889, align 2, !range !8
  %891 = icmp eq i8 %890, 0
  br i1 %891, label %892, label %913

892:                                              ; preds = %888
  %893 = getelementptr inbounds %struct.nh_info, ptr %767, i32 0, i32 5
  %894 = load ptr, ptr %893, align 8
  %895 = icmp eq ptr %894, null
  br i1 %895, label %896, label %897, !prof !14

896:                                              ; preds = %892
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 460, i32 noundef 9, ptr noundef null) #14
  br label %897

897:                                              ; preds = %896, %892
  %898 = getelementptr inbounds %struct.net_device, ptr %894, i32 0, i32 17
  %899 = load i32, ptr %898, align 4
  %900 = lshr i32 %899, 8
  %901 = xor i32 %900, %899
  %902 = lshr i32 %899, 16
  %903 = xor i32 %901, %902
  %904 = and i32 %903, 255
  %905 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 1), align 16
  %906 = getelementptr %struct.hlist_head, ptr %905, i32 %904
  %907 = load ptr, ptr %906, align 4
  store volatile ptr %907, ptr %767, align 8
  %908 = icmp eq ptr %907, null
  br i1 %908, label %911, label %909

909:                                              ; preds = %897
  %910 = getelementptr inbounds %struct.hlist_node, ptr %907, i32 0, i32 1
  store volatile ptr %767, ptr %910, align 4
  br label %911

911:                                              ; preds = %909, %897
  store volatile ptr %767, ptr %906, align 4
  %912 = getelementptr inbounds %struct.hlist_node, ptr %767, i32 0, i32 1
  store volatile ptr %906, ptr %912, align 4
  br label %913

913:                                              ; preds = %911, %888
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  %914 = getelementptr inbounds %struct.nexthop, ptr %755, i32 0, i32 12
  store volatile ptr %767, ptr %914, align 4
  br label %915

915:                                              ; preds = %913, %886, %723
  %916 = phi ptr [ %526, %723 ], [ %887, %886 ], [ %755, %913 ]
  %917 = icmp ugt ptr %916, inttoptr (i32 -4096 to ptr)
  br i1 %917, label %1472, label %918

918:                                              ; preds = %915
  %919 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 10
  store volatile i32 1, ptr %919, align 4
  %920 = load i32, ptr %10, align 4
  %921 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 6
  store i32 %920, ptr %921, align 4
  %922 = load i8, ptr %59, align 1
  %923 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 7
  store i8 %922, ptr %923, align 4
  %924 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 5
  store ptr @init_net, ptr %924, align 4
  %925 = load i32, ptr %50, align 4
  %926 = and i32 %925, 256
  %927 = icmp eq i32 %926, 0
  %928 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33), align 4
  %929 = icmp eq ptr %928, null
  br i1 %929, label %1234, label %930

930:                                              ; preds = %1228, %918
  %931 = phi ptr [ %1230, %1228 ], [ %928, %918 ]
  %932 = getelementptr inbounds %struct.nexthop, ptr %931, i32 0, i32 6
  %933 = load i32, ptr %932, align 4
  %934 = icmp ult i32 %920, %933
  br i1 %934, label %935, label %937

935:                                              ; preds = %930
  %936 = getelementptr inbounds %struct.rb_node, ptr %931, i32 0, i32 2
  br label %1228

937:                                              ; preds = %930
  %938 = icmp ugt i32 %920, %933
  br i1 %938, label %939, label %941

939:                                              ; preds = %937
  %940 = getelementptr inbounds %struct.rb_node, ptr %931, i32 0, i32 1
  br label %1228

941:                                              ; preds = %937
  br i1 %927, label %1460, label %942

942:                                              ; preds = %941
  %943 = getelementptr inbounds %struct.nexthop, ptr %931, i32 0, i32 1
  br label %944

944:                                              ; preds = %948, %942
  %945 = phi ptr [ %943, %942 ], [ %946, %948 ]
  %946 = load ptr, ptr %945, align 4
  %947 = icmp eq ptr %946, %943
  br i1 %947, label %953, label %948

948:                                              ; preds = %944
  %949 = getelementptr i8, ptr %946, i32 26
  %950 = load i8, ptr %949, align 2
  %951 = call i32 @fib_check_nexthop(ptr noundef %916, i8 noundef zeroext %950, ptr noundef %2) #14
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %944, label %1460

953:                                              ; preds = %944
  %954 = call fastcc i32 @fib6_check_nh_list(ptr noundef nonnull %931, ptr noundef %916, ptr noundef %2) #14
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %1460

956:                                              ; preds = %953
  %957 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 9
  %958 = load i8, ptr %957, align 2, !range !8
  %959 = icmp eq i8 %958, 0
  br i1 %959, label %960, label %966

960:                                              ; preds = %956
  %961 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 12
  %962 = load ptr, ptr %961, align 4
  %963 = getelementptr inbounds %struct.nh_info, ptr %962, i32 0, i32 3
  %964 = load i8, ptr %963, align 1, !range !8
  %965 = icmp ne i8 %964, 0
  br label %966

966:                                              ; preds = %960, %956
  %967 = phi i1 [ false, %956 ], [ %965, %960 ]
  %968 = getelementptr inbounds %struct.nexthop, ptr %931, i32 0, i32 4
  br label %969

969:                                              ; preds = %1004, %966
  %970 = phi ptr [ %968, %966 ], [ %971, %1004 ]
  %971 = load ptr, ptr %970, align 4
  %972 = icmp eq ptr %971, %968
  br i1 %972, label %1008, label %973

973:                                              ; preds = %969
  %974 = getelementptr i8, ptr %971, i32 8
  %975 = load ptr, ptr %974, align 4
  br i1 %967, label %976, label %993

976:                                              ; preds = %973
  %977 = getelementptr inbounds %struct.nexthop, ptr %975, i32 0, i32 9
  %978 = load i8, ptr %977, align 2, !range !8
  %979 = icmp eq i8 %978, 0
  br i1 %979, label %993, label %980

980:                                              ; preds = %976
  %981 = getelementptr inbounds %struct.nexthop, ptr %975, i32 0, i32 12
  %982 = load volatile ptr, ptr %981, align 4
  %983 = getelementptr inbounds %struct.nh_group, ptr %982, i32 0, i32 2
  %984 = load i8, ptr %983, align 2, !range !8
  %985 = icmp eq i8 %984, 0
  br i1 %985, label %993, label %986

986:                                              ; preds = %980
  %987 = getelementptr inbounds %struct.nh_group, ptr %982, i32 0, i32 1
  %988 = load i16, ptr %987, align 4
  %989 = icmp ugt i16 %988, 1
  br i1 %989, label %990, label %993

990:                                              ; preds = %986
  call void @do_trace_netlink_extack(ptr noundef nonnull @replace_nexthop.__msg) #14
  %991 = icmp eq ptr %2, null
  br i1 %991, label %1460, label %992

992:                                              ; preds = %990
  store ptr @replace_nexthop.__msg, ptr %2, align 4
  br label %1460

993:                                              ; preds = %986, %980, %976, %973
  %994 = getelementptr inbounds %struct.nexthop, ptr %975, i32 0, i32 1
  br label %995

995:                                              ; preds = %999, %993
  %996 = phi ptr [ %994, %993 ], [ %997, %999 ]
  %997 = load ptr, ptr %996, align 4
  %998 = icmp eq ptr %997, %994
  br i1 %998, label %1004, label %999

999:                                              ; preds = %995
  %1000 = getelementptr i8, ptr %997, i32 26
  %1001 = load i8, ptr %1000, align 2
  %1002 = call i32 @fib_check_nexthop(ptr noundef %916, i8 noundef zeroext %1001, ptr noundef %2) #14
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %995, label %1460

1004:                                             ; preds = %995
  %1005 = load ptr, ptr %974, align 4
  %1006 = call fastcc i32 @fib6_check_nh_list(ptr noundef %1005, ptr noundef %916, ptr noundef %2) #14
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %969, label %1460

1008:                                             ; preds = %969
  %1009 = getelementptr inbounds %struct.nexthop, ptr %931, i32 0, i32 9
  %1010 = load i8, ptr %1009, align 2, !range !8
  %1011 = icmp eq i8 %1010, 0
  %1012 = load i8, ptr %957, align 2, !range !8
  %1013 = icmp eq i8 %1012, 0
  br i1 %1011, label %1137, label %1014

1014:                                             ; preds = %1008
  br i1 %1013, label %1015, label %1018

1015:                                             ; preds = %1014
  call void @do_trace_netlink_extack(ptr noundef nonnull @replace_nexthop_grp.__msg) #14
  %1016 = icmp eq ptr %2, null
  br i1 %1016, label %1460, label %1017

1017:                                             ; preds = %1015
  store ptr @replace_nexthop_grp.__msg, ptr %2, align 4
  br label %1460

1018:                                             ; preds = %1014
  %1019 = getelementptr inbounds %struct.nexthop, ptr %931, i32 0, i32 12
  %1020 = load ptr, ptr %1019, align 4
  %1021 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 12
  %1022 = load ptr, ptr %1021, align 4
  %1023 = getelementptr inbounds %struct.nh_group, ptr %1022, i32 0, i32 3
  %1024 = load i8, ptr %1023, align 1, !range !8
  %1025 = getelementptr inbounds %struct.nh_group, ptr %1020, i32 0, i32 3
  %1026 = load i8, ptr %1025, align 1, !range !8
  %1027 = icmp eq i8 %1024, %1026
  br i1 %1027, label %1031, label %1028

1028:                                             ; preds = %1018
  call void @do_trace_netlink_extack(ptr noundef nonnull @replace_nexthop_grp.__msg.37) #14
  %1029 = icmp eq ptr %2, null
  br i1 %1029, label %1460, label %1030

1030:                                             ; preds = %1028
  store ptr @replace_nexthop_grp.__msg.37, ptr %2, align 4
  br label %1460

1031:                                             ; preds = %1018
  %1032 = icmp eq i8 %1024, 0
  br i1 %1032, label %1036, label %1033

1033:                                             ; preds = %1031
  %1034 = call fastcc i32 @call_nexthop_notifiers(ptr noundef nonnull @init_net, i32 noundef 1, ptr noundef %916, ptr noundef %2) #14
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1105, label %1460

1036:                                             ; preds = %1031
  %1037 = getelementptr inbounds %struct.nh_group, ptr %1022, i32 0, i32 4
  %1038 = load i8, ptr %1037, align 4, !range !8
  %1039 = icmp eq i8 %1038, 0
  br i1 %1039, label %1105, label %1040

1040:                                             ; preds = %1036
  %1041 = getelementptr inbounds %struct.nh_group, ptr %1022, i32 0, i32 7
  %1042 = load ptr, ptr %1041, align 4
  %1043 = getelementptr inbounds %struct.nh_group, ptr %1020, i32 0, i32 7
  %1044 = load ptr, ptr %1043, align 4
  %1045 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 14
  %1046 = load i8, ptr %1045, align 4, !range !8
  %1047 = icmp eq i8 %1046, 0
  br i1 %1047, label %1057, label %1048

1048:                                             ; preds = %1040
  %1049 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 11
  %1050 = load i16, ptr %1049, align 2
  %1051 = getelementptr inbounds %struct.nh_res_table, ptr %1044, i32 0, i32 7
  %1052 = load i16, ptr %1051, align 4
  %1053 = icmp eq i16 %1050, %1052
  br i1 %1053, label %1057, label %1054

1054:                                             ; preds = %1048
  call void @do_trace_netlink_extack(ptr noundef nonnull @replace_nexthop_grp.__msg.38) #14
  %1055 = icmp eq ptr %2, null
  br i1 %1055, label %1460, label %1056

1056:                                             ; preds = %1054
  store ptr @replace_nexthop_grp.__msg.38, ptr %2, align 4
  br label %1460

1057:                                             ; preds = %1048, %1040
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  store ptr @init_net, ptr %5, align 4
  %1058 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 1
  store ptr %2, ptr %1058, align 4
  %1059 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 2
  store i32 0, ptr %1059, align 4
  %1060 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 3
  store i32 0, ptr %1060, align 4
  %1061 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 4
  store i32 0, ptr %1061, align 4
  %1062 = call i32 @rtnl_is_locked() #14
  %1063 = icmp eq i32 %1062, 0
  %1064 = load i1, ptr @call_nexthop_res_table_notifiers.__already_done, align 1
  %1065 = xor i1 %1064, true
  %1066 = select i1 %1063, i1 %1065, i1 false
  br i1 %1066, label %1067, label %1068, !prof !14

1067:                                             ; preds = %1057
  store i1 true, ptr @call_nexthop_res_table_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 400, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 400) #14
  br label %1068

1068:                                             ; preds = %1067, %1057
  %1069 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 4, i32 1), align 4
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1083, label %1071

1071:                                             ; preds = %1068
  %1072 = load ptr, ptr %1021, align 4
  %1073 = call fastcc i32 @nh_notifier_mpath_info_init(ptr noundef nonnull %5, ptr noundef %1072) #14
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1078, label %1075

1075:                                             ; preds = %1071
  call void @do_trace_netlink_extack(ptr noundef nonnull @call_nexthop_res_table_notifiers.__msg) #14
  %1076 = icmp eq ptr %2, null
  br i1 %1076, label %1087, label %1077

1077:                                             ; preds = %1075
  store ptr @call_nexthop_res_table_notifiers.__msg, ptr %2, align 4
  br label %1087

1078:                                             ; preds = %1071
  %1079 = call i32 @blocking_notifier_call_chain(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 4), i32 noundef 2, ptr noundef nonnull %5) #14
  %1080 = load ptr, ptr %1061, align 4
  call void @kfree(ptr noundef %1080) #14
  %1081 = and i32 %1079, -32769
  %1082 = icmp sgt i32 %1081, 1
  br i1 %1082, label %1088, label %1083

1083:                                             ; preds = %1078, %1068
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  %1084 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 15
  %1085 = load i8, ptr %1084, align 1, !range !8
  %1086 = icmp eq i8 %1085, 0
  br i1 %1086, label %1094, label %1090

1087:                                             ; preds = %1077, %1075
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  br label %1460

1088:                                             ; preds = %1078
  %1089 = sub nsw i32 1, %1081
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  br label %1460

1090:                                             ; preds = %1083
  %1091 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 12
  %1092 = load i32, ptr %1091, align 4
  %1093 = getelementptr inbounds %struct.nh_res_table, ptr %1044, i32 0, i32 5
  store i32 %1092, ptr %1093, align 4
  br label %1094

1094:                                             ; preds = %1090, %1083
  %1095 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 16
  %1096 = load i8, ptr %1095, align 2, !range !8
  %1097 = icmp eq i8 %1096, 0
  br i1 %1097, label %1102, label %1098

1098:                                             ; preds = %1094
  %1099 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 13
  %1100 = load i32, ptr %1099, align 4
  %1101 = getelementptr inbounds %struct.nh_res_table, ptr %1044, i32 0, i32 6
  store i32 %1100, ptr %1101, align 4
  br label %1102

1102:                                             ; preds = %1098, %1094
  call fastcc void @replace_nexthop_grp_res(ptr noundef %1020, ptr noundef %1022) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !28
  store volatile ptr %1044, ptr %1041, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  %1103 = load ptr, ptr %1022, align 4
  %1104 = getelementptr inbounds %struct.nh_group, ptr %1103, i32 0, i32 7
  store volatile ptr %1044, ptr %1104, align 4
  br label %1105

1105:                                             ; preds = %1102, %1036, %1033
  %1106 = phi ptr [ null, %1033 ], [ %1042, %1102 ], [ null, %1036 ]
  %1107 = getelementptr inbounds %struct.nh_group, ptr %1022, i32 0, i32 1
  %1108 = load i16, ptr %1107, align 4
  %1109 = icmp eq i16 %1108, 0
  br i1 %1109, label %1117, label %1110

1110:                                             ; preds = %1105
  %1111 = zext i16 %1108 to i32
  br label %1112

1112:                                             ; preds = %1112, %1110
  %1113 = phi i32 [ %1115, %1112 ], [ 0, %1110 ]
  %1114 = getelementptr %struct.nh_group, ptr %1022, i32 0, i32 8, i32 %1113, i32 4
  store ptr %931, ptr %1114, align 4
  %1115 = add nuw nsw i32 %1113, 1
  %1116 = icmp eq i32 %1115, %1111
  br i1 %1116, label %1117, label %1112

1117:                                             ; preds = %1112, %1105
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !30
  store volatile ptr %1022, ptr %1019, align 4
  call void @synchronize_net() #14
  %1118 = getelementptr inbounds %struct.nh_group, ptr %1022, i32 0, i32 4
  %1119 = load i8, ptr %1118, align 4, !range !8
  %1120 = icmp eq i8 %1119, 0
  br i1 %1120, label %1125, label %1121

1121:                                             ; preds = %1117
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !31
  %1122 = getelementptr inbounds %struct.nh_group, ptr %1020, i32 0, i32 7
  store volatile ptr %1106, ptr %1122, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  %1123 = load ptr, ptr %1020, align 4
  %1124 = getelementptr inbounds %struct.nh_group, ptr %1123, i32 0, i32 7
  store volatile ptr %1106, ptr %1124, align 4
  br label %1125

1125:                                             ; preds = %1121, %1117
  %1126 = getelementptr inbounds %struct.nh_group, ptr %1020, i32 0, i32 1
  %1127 = load i16, ptr %1126, align 4
  %1128 = icmp eq i16 %1127, 0
  br i1 %1128, label %1136, label %1129

1129:                                             ; preds = %1125
  %1130 = zext i16 %1127 to i32
  br label %1131

1131:                                             ; preds = %1131, %1129
  %1132 = phi i32 [ %1134, %1131 ], [ 0, %1129 ]
  %1133 = getelementptr %struct.nh_group, ptr %1020, i32 0, i32 8, i32 %1132, i32 4
  store ptr %916, ptr %1133, align 4
  %1134 = add nuw nsw i32 %1132, 1
  %1135 = icmp eq i32 %1134, %1130
  br i1 %1135, label %1136, label %1131

1136:                                             ; preds = %1131, %1125
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  store volatile ptr %1020, ptr %1021, align 4
  br label %1327

1137:                                             ; preds = %1008
  br i1 %1013, label %1141, label %1138

1138:                                             ; preds = %1137
  call void @do_trace_netlink_extack(ptr noundef nonnull @replace_nexthop_single.__msg) #14
  %1139 = icmp eq ptr %2, null
  br i1 %1139, label %1460, label %1140

1140:                                             ; preds = %1138
  store ptr @replace_nexthop_single.__msg, ptr %2, align 4
  br label %1460

1141:                                             ; preds = %1137
  %1142 = call fastcc i32 @call_nexthop_notifiers(ptr noundef nonnull @init_net, i32 noundef 1, ptr noundef %916, ptr noundef %2) #14
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1144, label %1460

1144:                                             ; preds = %1141
  %1145 = getelementptr inbounds %struct.nexthop, ptr %931, i32 0, i32 8
  %1146 = load i8, ptr %1145, align 1
  %1147 = and i8 %1146, 72
  %1148 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 8
  %1149 = load i8, ptr %1148, align 1
  %1150 = or i8 %1149, %1147
  store i8 %1150, ptr %1148, align 1
  %1151 = getelementptr inbounds %struct.nexthop, ptr %931, i32 0, i32 12
  %1152 = load ptr, ptr %1151, align 4
  %1153 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 12
  %1154 = load ptr, ptr %1153, align 4
  %1155 = getelementptr inbounds %struct.nh_info, ptr %1154, i32 0, i32 1
  store ptr %931, ptr %1155, align 4
  %1156 = getelementptr inbounds %struct.nh_info, ptr %1152, i32 0, i32 1
  store ptr %916, ptr %1156, align 4
  %1157 = getelementptr inbounds %struct.nexthop, ptr %931, i32 0, i32 7
  %1158 = load i8, ptr %1157, align 4
  %1159 = load i8, ptr %1145, align 1
  %1160 = load i8, ptr %923, align 4
  store i8 %1160, ptr %1157, align 4
  %1161 = load i8, ptr %1148, align 1
  store i8 %1161, ptr %1145, align 1
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !34
  store volatile ptr %1154, ptr %1151, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !35
  store volatile ptr %1152, ptr %1153, align 4
  br label %1162

1162:                                             ; preds = %1166, %1144
  %1163 = phi ptr [ %968, %1144 ], [ %1164, %1166 ]
  %1164 = load ptr, ptr %1163, align 4
  %1165 = icmp eq ptr %1164, %968
  br i1 %1165, label %1171, label %1166

1166:                                             ; preds = %1162
  %1167 = getelementptr i8, ptr %1164, i32 8
  %1168 = load ptr, ptr %1167, align 4
  %1169 = call fastcc i32 @replace_nexthop_single_notify(ptr noundef %1168, ptr noundef %931, ptr noundef %1152, ptr noundef %1154, ptr noundef %2) #14
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1162, label %1212

1171:                                             ; preds = %1162
  %1172 = getelementptr inbounds %struct.nh_info, ptr %1152, i32 0, i32 2
  %1173 = load i8, ptr %1172, align 4
  %1174 = icmp eq i8 %1173, 2
  br i1 %1174, label %1175, label %1327

1175:                                             ; preds = %1171
  %1176 = getelementptr inbounds %struct.nh_info, ptr %1154, i32 0, i32 2
  %1177 = load i8, ptr %1176, align 4
  %1178 = icmp eq i8 %1177, 10
  br i1 %1178, label %1179, label %1327

1179:                                             ; preds = %1175
  %1180 = load ptr, ptr %968, align 4
  %1181 = icmp eq ptr %1180, %968
  br i1 %1181, label %1327, label %1182

1182:                                             ; preds = %1206, %1179
  %1183 = phi ptr [ %1210, %1206 ], [ %1180, %1179 ]
  %1184 = getelementptr i8, ptr %1183, i32 8
  %1185 = load ptr, ptr %1184, align 4
  %1186 = getelementptr inbounds %struct.nexthop, ptr %1185, i32 0, i32 12
  %1187 = load ptr, ptr %1186, align 4
  %1188 = getelementptr inbounds %struct.nh_group, ptr %1187, i32 0, i32 8
  %1189 = getelementptr inbounds %struct.nh_group, ptr %1187, i32 0, i32 1
  %1190 = load i16, ptr %1189, align 4
  %1191 = zext i16 %1190 to i32
  %1192 = icmp eq i16 %1190, 0
  br i1 %1192, label %1206, label %1193

1193:                                             ; preds = %1193, %1182
  %1194 = phi i1 [ %1203, %1193 ], [ false, %1182 ]
  %1195 = phi i32 [ %1204, %1193 ], [ 0, %1182 ]
  %1196 = getelementptr %struct.nh_grp_entry, ptr %1188, i32 %1195
  %1197 = load ptr, ptr %1196, align 4
  %1198 = getelementptr inbounds %struct.nexthop, ptr %1197, i32 0, i32 12
  %1199 = load ptr, ptr %1198, align 4
  %1200 = getelementptr inbounds %struct.nh_info, ptr %1199, i32 0, i32 2
  %1201 = load i8, ptr %1200, align 4
  %1202 = icmp eq i8 %1201, 2
  %1203 = select i1 %1202, i1 true, i1 %1194
  %1204 = add nuw nsw i32 %1195, 1
  %1205 = icmp eq i32 %1204, %1191
  br i1 %1205, label %1206, label %1193

1206:                                             ; preds = %1193, %1182
  %1207 = phi i1 [ false, %1182 ], [ %1203, %1193 ]
  %1208 = getelementptr inbounds %struct.nh_group, ptr %1187, i32 0, i32 6
  %1209 = zext i1 %1207 to i8
  store i8 %1209, ptr %1208, align 2
  %1210 = load ptr, ptr %1183, align 4
  %1211 = icmp eq ptr %1210, %968
  br i1 %1211, label %1327, label %1182

1212:                                             ; preds = %1166
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !36
  store volatile ptr %1154, ptr %1153, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  store volatile ptr %1152, ptr %1151, align 4
  store i8 %1159, ptr %1145, align 1
  store i8 %1158, ptr %1157, align 4
  store ptr %931, ptr %1156, align 4
  store ptr %916, ptr %1155, align 4
  %1213 = getelementptr inbounds %struct.list_head, ptr %1164, i32 0, i32 1
  %1214 = load ptr, ptr %1213, align 4
  %1215 = icmp eq ptr %1214, %968
  br i1 %1215, label %1216, label %1218

1216:                                             ; preds = %1212
  %1217 = call fastcc i32 @call_nexthop_notifiers(ptr noundef nonnull @init_net, i32 noundef 1, ptr noundef %931, ptr noundef %2) #14
  br label %1460

1218:                                             ; preds = %1218, %1212
  %1219 = phi ptr [ %1224, %1218 ], [ %1214, %1212 ]
  %1220 = getelementptr i8, ptr %1219, i32 8
  %1221 = load ptr, ptr %1220, align 4
  %1222 = call fastcc i32 @replace_nexthop_single_notify(ptr noundef %1221, ptr noundef %931, ptr noundef %1154, ptr noundef %1152, ptr noundef null) #14
  %1223 = getelementptr inbounds %struct.list_head, ptr %1219, i32 0, i32 1
  %1224 = load ptr, ptr %1223, align 4
  %1225 = icmp eq ptr %1224, %968
  br i1 %1225, label %1226, label %1218

1226:                                             ; preds = %1218
  %1227 = call fastcc i32 @call_nexthop_notifiers(ptr noundef nonnull @init_net, i32 noundef 1, ptr noundef %931, ptr noundef %2) #14
  br label %1460

1228:                                             ; preds = %939, %935
  %1229 = phi ptr [ %936, %935 ], [ %940, %939 ]
  %1230 = load ptr, ptr %1229, align 4
  %1231 = icmp eq ptr %1230, null
  br i1 %1231, label %1232, label %930

1232:                                             ; preds = %1228
  %1233 = ptrtoint ptr %931 to i32
  br label %1234

1234:                                             ; preds = %1232, %918
  %1235 = phi i32 [ %1233, %1232 ], [ 0, %918 ]
  %1236 = phi ptr [ %1229, %1232 ], [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33), %918 ]
  %1237 = and i32 %925, 1280
  %1238 = icmp eq i32 %1237, 256
  br i1 %1238, label %1239, label %1242

1239:                                             ; preds = %1234
  call void @do_trace_netlink_extack(ptr noundef nonnull @insert_nexthop.__msg) #14
  %1240 = icmp eq ptr %2, null
  br i1 %1240, label %1460, label %1241

1241:                                             ; preds = %1239
  store ptr @insert_nexthop.__msg, ptr %2, align 4
  br label %1460

1242:                                             ; preds = %1234
  %1243 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 9
  %1244 = load i8, ptr %1243, align 2, !range !8
  %1245 = icmp eq i8 %1244, 0
  br i1 %1245, label %1321, label %1246

1246:                                             ; preds = %1242
  %1247 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 12
  %1248 = load ptr, ptr %1247, align 4
  %1249 = getelementptr inbounds %struct.nh_group, ptr %1248, i32 0, i32 4
  %1250 = load i8, ptr %1249, align 4, !range !8
  %1251 = icmp eq i8 %1250, 0
  br i1 %1251, label %1321, label %1252

1252:                                             ; preds = %1246
  %1253 = getelementptr inbounds %struct.nh_config, ptr %10, i32 0, i32 14
  %1254 = load i8, ptr %1253, align 4, !range !8
  %1255 = icmp eq i8 %1254, 0
  br i1 %1255, label %1256, label %1259

1256:                                             ; preds = %1252
  call void @do_trace_netlink_extack(ptr noundef nonnull @insert_nexthop.__msg.36) #14
  %1257 = icmp eq ptr %2, null
  br i1 %1257, label %1460, label %1258

1258:                                             ; preds = %1256
  store ptr @insert_nexthop.__msg.36, ptr %2, align 4
  br label %1460

1259:                                             ; preds = %1252
  %1260 = getelementptr inbounds %struct.nh_group, ptr %1248, i32 0, i32 7
  %1261 = load ptr, ptr %1260, align 4
  %1262 = getelementptr inbounds %struct.nh_res_table, ptr %1261, i32 0, i32 3
  store volatile ptr %1262, ptr %1262, align 4
  %1263 = getelementptr inbounds %struct.nh_res_table, ptr %1261, i32 0, i32 3, i32 1
  store ptr %1262, ptr %1263, align 4
  %1264 = getelementptr inbounds %struct.nh_group, ptr %1248, i32 0, i32 1
  %1265 = load i16, ptr %1264, align 4
  %1266 = zext i16 %1265 to i32
  %1267 = icmp eq i16 %1265, 0
  br i1 %1267, label %1320, label %1272

1268:                                             ; preds = %1272
  %1269 = getelementptr inbounds %struct.nh_res_table, ptr %1261, i32 0, i32 7
  %1270 = icmp sgt i32 %1278, 0
  %1271 = getelementptr inbounds %struct.nh_res_table, ptr %1261, i32 0, i32 4
  br label %1281

1272:                                             ; preds = %1272, %1259
  %1273 = phi i32 [ %1279, %1272 ], [ 0, %1259 ]
  %1274 = phi i32 [ %1278, %1272 ], [ 0, %1259 ]
  %1275 = getelementptr %struct.nh_group, ptr %1248, i32 0, i32 8, i32 %1273, i32 1
  %1276 = load i8, ptr %1275, align 4
  %1277 = zext i8 %1276 to i32
  %1278 = add i32 %1274, %1277
  %1279 = add nuw nsw i32 %1273, 1
  %1280 = icmp eq i32 %1279, %1266
  br i1 %1280, label %1268, label %1272

1281:                                             ; preds = %1315, %1268
  %1282 = phi i16 [ %1265, %1268 ], [ %1316, %1315 ]
  %1283 = phi i32 [ 0, %1268 ], [ %1298, %1315 ]
  %1284 = phi i32 [ 0, %1268 ], [ %1317, %1315 ]
  %1285 = phi i32 [ 0, %1268 ], [ %1289, %1315 ]
  %1286 = getelementptr %struct.nh_group, ptr %1248, i32 0, i32 8, i32 %1284, i32 1
  %1287 = load i8, ptr %1286, align 4
  %1288 = zext i8 %1287 to i32
  %1289 = add i32 %1285, %1288
  %1290 = load i16, ptr %1269, align 4
  %1291 = zext i16 %1290 to i32
  %1292 = mul i32 %1289, %1291
  %1293 = icmp slt i32 %1292, 1
  %1294 = xor i1 %1270, %1293
  %1295 = select i1 %1294, i32 2, i32 -2
  %1296 = sdiv i32 %1278, %1295
  %1297 = add i32 %1292, %1296
  %1298 = sdiv i32 %1297, %1278
  %1299 = sub i32 %1298, %1283
  %1300 = trunc i32 %1299 to i16
  %1301 = getelementptr %struct.nh_group, ptr %1248, i32 0, i32 8, i32 %1284, i32 2
  %1302 = getelementptr inbounds %struct.anon.138, ptr %1301, i32 0, i32 2
  store i16 %1300, ptr %1302, align 2
  %1303 = getelementptr %struct.nh_group, ptr %1248, i32 0, i32 8, i32 %1284, i32 2, i32 0, i32 1
  %1304 = load i16, ptr %1303, align 4
  %1305 = icmp ult i16 %1304, %1300
  br i1 %1305, label %1306, label %1315

1306:                                             ; preds = %1281
  %1307 = load volatile ptr, ptr %1262, align 4
  %1308 = icmp eq ptr %1307, %1262
  br i1 %1308, label %1309, label %1311

1309:                                             ; preds = %1306
  %1310 = load volatile i32, ptr @jiffies, align 64
  store i32 %1310, ptr %1271, align 4
  br label %1311

1311:                                             ; preds = %1309, %1306
  %1312 = getelementptr inbounds %struct.list_head, ptr %1307, i32 0, i32 1
  store ptr %1301, ptr %1312, align 4
  store ptr %1307, ptr %1301, align 4
  %1313 = getelementptr inbounds %struct.list_head, ptr %1301, i32 0, i32 1
  store ptr %1262, ptr %1313, align 4
  store volatile ptr %1301, ptr %1262, align 4
  %1314 = load i16, ptr %1264, align 4
  br label %1315

1315:                                             ; preds = %1311, %1281
  %1316 = phi i16 [ %1314, %1311 ], [ %1282, %1281 ]
  %1317 = add nuw nsw i32 %1284, 1
  %1318 = zext i16 %1316 to i32
  %1319 = icmp ult i32 %1317, %1318
  br i1 %1319, label %1281, label %1320

1320:                                             ; preds = %1315, %1259
  call fastcc void @nh_res_table_upkeep(ptr noundef %1261, i1 noundef zeroext false, i1 noundef zeroext false) #14
  br label %1321

1321:                                             ; preds = %1320, %1246, %1242
  store i32 %1235, ptr %916, align 4
  %1322 = getelementptr inbounds %struct.rb_node, ptr %916, i32 0, i32 1
  store ptr null, ptr %1322, align 4
  %1323 = getelementptr inbounds %struct.rb_node, ptr %916, i32 0, i32 2
  store ptr null, ptr %1323, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !38
  store volatile ptr %916, ptr %1236, align 4
  call void @rb_insert_color(ptr noundef %916, ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33)) #14
  %1324 = call fastcc i32 @call_nexthop_notifiers(ptr noundef nonnull @init_net, i32 noundef 1, ptr noundef %916, ptr noundef %2) #14
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1382, label %1326

1326:                                             ; preds = %1321
  call void @rb_erase(ptr noundef %916, ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33)) #14
  br label %1460

1327:                                             ; preds = %1206, %1179, %1175, %1171, %1136
  %1328 = load volatile ptr, ptr %943, align 4
  %1329 = icmp eq ptr %1328, %943
  br i1 %1329, label %1331, label %1330

1330:                                             ; preds = %1327
  call void @rt_cache_flush(ptr noundef nonnull @init_net) #14
  br label %1331

1331:                                             ; preds = %1330, %1327
  %1332 = getelementptr inbounds %struct.nexthop, ptr %931, i32 0, i32 2
  %1333 = load ptr, ptr %1332, align 4
  %1334 = icmp eq ptr %1333, %1332
  br i1 %1334, label %1343, label %1335

1335:                                             ; preds = %1335, %1331
  %1336 = phi ptr [ %1341, %1335 ], [ %1333, %1331 ]
  %1337 = getelementptr i8, ptr %1336, i32 -12
  %1338 = load ptr, ptr @ipv6_stub, align 4
  %1339 = getelementptr inbounds %struct.ipv6_stub, ptr %1338, i32 0, i32 12
  %1340 = load ptr, ptr %1339, align 4
  call void %1340(ptr noundef nonnull @init_net, ptr noundef %1337) #14
  %1341 = load ptr, ptr %1336, align 4
  %1342 = icmp eq ptr %1341, %1332
  br i1 %1342, label %1343, label %1335

1343:                                             ; preds = %1335, %1331
  %1344 = load i8, ptr %957, align 2, !range !8
  %1345 = icmp eq i8 %1344, 0
  br i1 %1345, label %1373, label %1346

1346:                                             ; preds = %1343
  %1347 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 12
  %1348 = load ptr, ptr %1347, align 4
  %1349 = getelementptr inbounds %struct.nh_group, ptr %1348, i32 0, i32 1
  %1350 = load i16, ptr %1349, align 4
  %1351 = icmp eq i16 %1350, 0
  br i1 %1351, label %1373, label %1352

1352:                                             ; preds = %1368, %1346
  %1353 = phi i16 [ %1369, %1368 ], [ %1350, %1346 ]
  %1354 = phi i32 [ %1370, %1368 ], [ 0, %1346 ]
  %1355 = getelementptr %struct.nh_group, ptr %1348, i32 0, i32 8, i32 %1354
  %1356 = load ptr, ptr %1355, align 4
  %1357 = getelementptr inbounds %struct.nexthop, ptr %1356, i32 0, i32 12
  %1358 = load ptr, ptr %1357, align 4
  %1359 = getelementptr inbounds %struct.nh_info, ptr %1358, i32 0, i32 2
  %1360 = load i8, ptr %1359, align 4
  %1361 = icmp eq i8 %1360, 10
  br i1 %1361, label %1362, label %1368

1362:                                             ; preds = %1352
  %1363 = load ptr, ptr @ipv6_stub, align 4
  %1364 = getelementptr inbounds %struct.ipv6_stub, ptr %1363, i32 0, i32 11
  %1365 = load ptr, ptr %1364, align 4
  %1366 = getelementptr inbounds %struct.nh_info, ptr %1358, i32 0, i32 5
  call void %1365(ptr noundef %1366) #14
  %1367 = load i16, ptr %1349, align 4
  br label %1368

1368:                                             ; preds = %1362, %1352
  %1369 = phi i16 [ %1367, %1362 ], [ %1353, %1352 ]
  %1370 = add nuw nsw i32 %1354, 1
  %1371 = zext i16 %1369 to i32
  %1372 = icmp ult i32 %1370, %1371
  br i1 %1372, label %1352, label %1373

1373:                                             ; preds = %1368, %1346, %1343
  call fastcc void @__remove_nexthop(ptr noundef nonnull @init_net, ptr noundef %916, ptr noundef null) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %919) #14, !srcloc !11
  %1374 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %919, ptr %919, i32 1, ptr elementtype(i32) %919) #14, !srcloc !12
  %1375 = extractvalue { i32, i32, i32 } %1374, 0
  %1376 = icmp eq i32 %1375, 1
  br i1 %1376, label %1380, label %1377

1377:                                             ; preds = %1373
  %1378 = icmp sgt i32 %1375, 0
  br i1 %1378, label %1382, label %1379, !prof !9

1379:                                             ; preds = %1377
  call void @refcount_warn_saturate(ptr noundef %919, i32 noundef 3) #14
  br label %1382

1380:                                             ; preds = %1373
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !13
  %1381 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 11
  call void @call_rcu(ptr noundef %1381, ptr noundef nonnull @nexthop_free_rcu) #14
  br label %1382

1382:                                             ; preds = %1380, %1379, %1377, %1321
  %1383 = phi i1 [ true, %1321 ], [ false, %1377 ], [ false, %1379 ], [ false, %1380 ]
  %1384 = phi ptr [ %916, %1321 ], [ %931, %1377 ], [ %931, %1379 ], [ %931, %1380 ]
  %1385 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 2), align 4
  %1386 = add i32 %1385, 1
  %1387 = icmp eq i32 %1386, 0
  %1388 = select i1 %1387, i32 1, i32 %1386
  store i32 %1388, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 2), align 4
  call fastcc void @nexthop_notify(i32 noundef 104, ptr noundef %1384, ptr noundef %53) #14
  %1389 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 41), align 4
  %1390 = icmp eq i8 %1389, 0
  %1391 = select i1 %1383, i1 true, i1 %1390
  br i1 %1391, label %1472, label %1392

1392:                                             ; preds = %1382
  %1393 = getelementptr inbounds %struct.nexthop, ptr %1384, i32 0, i32 1
  %1394 = load volatile ptr, ptr %1393, align 4
  %1395 = icmp eq ptr %1394, %1393
  br i1 %1395, label %1409, label %1396

1396:                                             ; preds = %1396, %1392
  %1397 = phi ptr [ %1399, %1396 ], [ %1394, %1392 ]
  %1398 = getelementptr i8, ptr %1397, i32 49
  store i8 1, ptr %1398, align 1
  %1399 = load ptr, ptr %1397, align 4
  %1400 = icmp eq ptr %1399, %1393
  br i1 %1400, label %1401, label %1396

1401:                                             ; preds = %1396
  call void @fib_info_notify_update(ptr noundef nonnull @init_net, ptr noundef %53) #14
  %1402 = load ptr, ptr %1393, align 4
  %1403 = icmp eq ptr %1402, %1393
  br i1 %1403, label %1409, label %1404

1404:                                             ; preds = %1404, %1401
  %1405 = phi ptr [ %1407, %1404 ], [ %1402, %1401 ]
  %1406 = getelementptr i8, ptr %1405, i32 49
  store i8 0, ptr %1406, align 1
  %1407 = load ptr, ptr %1405, align 4
  %1408 = icmp eq ptr %1407, %1393
  br i1 %1408, label %1409, label %1404

1409:                                             ; preds = %1404, %1401, %1392
  %1410 = getelementptr inbounds %struct.nexthop, ptr %1384, i32 0, i32 2
  %1411 = load ptr, ptr %1410, align 4
  %1412 = icmp eq ptr %1411, %1410
  br i1 %1412, label %1421, label %1413

1413:                                             ; preds = %1413, %1409
  %1414 = phi ptr [ %1419, %1413 ], [ %1411, %1409 ]
  %1415 = getelementptr i8, ptr %1414, i32 -12
  %1416 = load ptr, ptr @ipv6_stub, align 4
  %1417 = getelementptr inbounds %struct.ipv6_stub, ptr %1416, i32 0, i32 14
  %1418 = load ptr, ptr %1417, align 4
  call void %1418(ptr noundef nonnull @init_net, ptr noundef %1415, ptr noundef %53) #14
  %1419 = load ptr, ptr %1414, align 4
  %1420 = icmp eq ptr %1419, %1410
  br i1 %1420, label %1421, label %1413

1421:                                             ; preds = %1413, %1409
  %1422 = getelementptr inbounds %struct.nexthop, ptr %1384, i32 0, i32 4
  %1423 = load ptr, ptr %1422, align 4
  %1424 = icmp eq ptr %1423, %1422
  br i1 %1424, label %1472, label %1425

1425:                                             ; preds = %1457, %1421
  %1426 = phi ptr [ %1458, %1457 ], [ %1423, %1421 ]
  %1427 = getelementptr i8, ptr %1426, i32 8
  %1428 = load ptr, ptr %1427, align 4
  %1429 = getelementptr inbounds %struct.nexthop, ptr %1428, i32 0, i32 1
  %1430 = load volatile ptr, ptr %1429, align 4
  %1431 = icmp eq ptr %1430, %1429
  br i1 %1431, label %1445, label %1432

1432:                                             ; preds = %1432, %1425
  %1433 = phi ptr [ %1435, %1432 ], [ %1430, %1425 ]
  %1434 = getelementptr i8, ptr %1433, i32 49
  store i8 1, ptr %1434, align 1
  %1435 = load ptr, ptr %1433, align 4
  %1436 = icmp eq ptr %1435, %1429
  br i1 %1436, label %1437, label %1432

1437:                                             ; preds = %1432
  call void @fib_info_notify_update(ptr noundef nonnull @init_net, ptr noundef %53) #14
  %1438 = load ptr, ptr %1429, align 4
  %1439 = icmp eq ptr %1438, %1429
  br i1 %1439, label %1445, label %1440

1440:                                             ; preds = %1440, %1437
  %1441 = phi ptr [ %1443, %1440 ], [ %1438, %1437 ]
  %1442 = getelementptr i8, ptr %1441, i32 49
  store i8 0, ptr %1442, align 1
  %1443 = load ptr, ptr %1441, align 4
  %1444 = icmp eq ptr %1443, %1429
  br i1 %1444, label %1445, label %1440

1445:                                             ; preds = %1440, %1437, %1425
  %1446 = getelementptr inbounds %struct.nexthop, ptr %1428, i32 0, i32 2
  %1447 = load ptr, ptr %1446, align 4
  %1448 = icmp eq ptr %1447, %1446
  br i1 %1448, label %1457, label %1449

1449:                                             ; preds = %1449, %1445
  %1450 = phi ptr [ %1455, %1449 ], [ %1447, %1445 ]
  %1451 = getelementptr i8, ptr %1450, i32 -12
  %1452 = load ptr, ptr @ipv6_stub, align 4
  %1453 = getelementptr inbounds %struct.ipv6_stub, ptr %1452, i32 0, i32 14
  %1454 = load ptr, ptr %1453, align 4
  call void %1454(ptr noundef nonnull @init_net, ptr noundef %1451, ptr noundef %53) #14
  %1455 = load ptr, ptr %1450, align 4
  %1456 = icmp eq ptr %1455, %1446
  br i1 %1456, label %1457, label %1449

1457:                                             ; preds = %1449, %1445
  %1458 = load ptr, ptr %1426, align 4
  %1459 = icmp eq ptr %1458, %1422
  br i1 %1459, label %1472, label %1425

1460:                                             ; preds = %1326, %1258, %1256, %1241, %1239, %1226, %1216, %1141, %1140, %1138, %1088, %1087, %1056, %1054, %1033, %1030, %1028, %1017, %1015, %1004, %999, %992, %990, %953, %948, %941
  %1461 = phi i32 [ %954, %953 ], [ -22, %992 ], [ -22, %990 ], [ %1169, %1226 ], [ %1073, %1087 ], [ %1089, %1088 ], [ -22, %1054 ], [ -22, %1056 ], [ %1034, %1033 ], [ -22, %1028 ], [ -22, %1030 ], [ -22, %1015 ], [ -22, %1017 ], [ -17, %941 ], [ %1324, %1326 ], [ -2, %1241 ], [ -2, %1239 ], [ -22, %1258 ], [ -22, %1256 ], [ %1169, %1216 ], [ %1142, %1141 ], [ -22, %1138 ], [ -22, %1140 ], [ %1002, %999 ], [ %1006, %1004 ], [ %951, %948 ]
  call fastcc void @__remove_nexthop(ptr noundef nonnull @init_net, ptr noundef %916, ptr noundef null) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %919) #14, !srcloc !11
  %1462 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %919, ptr %919, i32 1, ptr elementtype(i32) %919) #14, !srcloc !12
  %1463 = extractvalue { i32, i32, i32 } %1462, 0
  %1464 = icmp eq i32 %1463, 1
  br i1 %1464, label %1468, label %1465

1465:                                             ; preds = %1460
  %1466 = icmp sgt i32 %1463, 0
  br i1 %1466, label %1470, label %1467, !prof !9

1467:                                             ; preds = %1465
  call void @refcount_warn_saturate(ptr noundef %919, i32 noundef 3) #14
  br label %1470

1468:                                             ; preds = %1460
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !13
  %1469 = getelementptr inbounds %struct.nexthop, ptr %916, i32 0, i32 11
  call void @call_rcu(ptr noundef %1469, ptr noundef nonnull @nexthop_free_rcu) #14
  br label %1470

1470:                                             ; preds = %1468, %1467, %1465
  %1471 = inttoptr i32 %1461 to ptr
  br label %1472

1472:                                             ; preds = %1470, %1457, %1421, %1382, %915
  %1473 = phi ptr [ %916, %915 ], [ %1471, %1470 ], [ %916, %1382 ], [ %916, %1421 ], [ %916, %1457 ]
  %1474 = icmp ugt ptr %1473, inttoptr (i32 -4096 to ptr)
  br i1 %1474, label %1475, label %1478

1475:                                             ; preds = %1472, %769, %753, %751, %548, %543, %524, %523, %510, %508, %478, %476
  %1476 = phi ptr [ %1473, %1472 ], [ inttoptr (i32 -22 to ptr), %523 ], [ %727, %751 ], [ inttoptr (i32 -12 to ptr), %548 ], [ inttoptr (i32 -12 to ptr), %543 ], [ inttoptr (i32 -12 to ptr), %524 ], [ inttoptr (i32 -12 to ptr), %769 ], [ inttoptr (i32 -12 to ptr), %753 ], [ inttoptr (i32 -22 to ptr), %508 ], [ inttoptr (i32 -22 to ptr), %510 ], [ inttoptr (i32 -22 to ptr), %476 ], [ inttoptr (i32 -22 to ptr), %478 ]
  %1477 = ptrtoint ptr %1476 to i32
  br label %1478

1478:                                             ; preds = %1475, %1472, %464, %461
  %1479 = phi i32 [ %1477, %1475 ], [ 0, %1472 ], [ %462, %461 ], [ %465, %464 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %10) #14
  ret i32 %1479
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtm_del_nexthop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nl_info, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %6 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %6, align 4, !annotation !18
  store ptr %1, ptr %4, align 4
  %7 = getelementptr inbounds %struct.nl_info, ptr %4, i32 0, i32 1
  store ptr @init_net, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nl_info, ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !18
  %11 = call fastcc i32 @nh_valid_get_del_req(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load i32, ptr %5, align 4
  %15 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33), align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %28, %13
  %18 = phi ptr [ %30, %28 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.nexthop, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %14
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %28

24:                                               ; preds = %17
  %25 = icmp ult i32 %20, %14
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %23, %22 ], [ %27, %26 ]
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %17

32:                                               ; preds = %24
  call fastcc void @remove_nexthop(ptr noundef nonnull @init_net, ptr noundef nonnull %18, ptr noundef nonnull %4)
  br label %33

33:                                               ; preds = %32, %28, %13, %3
  %34 = phi i32 [ 0, %32 ], [ %11, %3 ], [ -2, %13 ], [ -2, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtm_get_nexthop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !18
  %5 = call fastcc i32 @nh_valid_get_del_req(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %2)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %3
  %8 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33), align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %25, %10
  %15 = phi ptr [ %27, %25 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, %11
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 2
  br label %25

21:                                               ; preds = %14
  %22 = icmp ult i32 %17, %11
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 1
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %20, %19 ], [ %24, %23 ]
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %14

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = tail call fastcc i32 @nh_fill_node(ptr noundef nonnull %8, ptr noundef nonnull %15, i32 noundef 104, i32 noundef %31, i32 noundef %33, i32 noundef 0)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = icmp eq i32 %34, -90
  br i1 %37, label %38, label %42, !prof !14

38:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3039, i32 noundef 9, ptr noundef null) #14
  br label %42

39:                                               ; preds = %29
  %40 = load i32, ptr %30, align 4
  %41 = tail call i32 @rtnl_unicast(ptr noundef nonnull %8, ptr noundef nonnull @init_net, i32 noundef %40) #14
  br label %44

42:                                               ; preds = %38, %36, %25, %10
  %43 = phi i32 [ -90, %38 ], [ %34, %36 ], [ -2, %10 ], [ -2, %25 ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #14
  br label %44

44:                                               ; preds = %42, %39, %7, %3
  %45 = phi i32 [ %5, %3 ], [ %43, %42 ], [ %41, %39 ], [ -105, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtm_dump_nexthop(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [12 x ptr], align 4
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false) #14, !annotation !18
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp ult i32 %9, 24
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #14
  %12 = icmp eq ptr %8, null
  br i1 %12, label %65, label %13

13:                                               ; preds = %11
  store ptr @__nlmsg_parse.__msg, ptr %8, align 4
  br label %65

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %6, i32 24
  %16 = add i32 %9, -24
  %17 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 11, ptr noundef %15, i32 noundef %16, ptr noundef nonnull @rtm_nh_policy_dump, i32 noundef 31, ptr noundef %8) #14
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %65, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds ptr, ptr %3, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %22, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_dump_req.__msg) #14
  %29 = icmp eq ptr %20, null
  br i1 %29, label %65, label %63

30:                                               ; preds = %24, %19
  %31 = phi i32 [ 0, %19 ], [ %26, %24 ]
  %32 = getelementptr inbounds ptr, ptr %3, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %33, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_dump_req.__msg.41) #14
  %40 = icmp eq ptr %20, null
  br i1 %40, label %65, label %63

41:                                               ; preds = %35, %30
  %42 = phi i32 [ 0, %30 ], [ %37, %35 ]
  %43 = getelementptr inbounds ptr, ptr %3, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = getelementptr i8, ptr %6, i32 18
  %47 = load i8, ptr %46, align 2
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = getelementptr i8, ptr %6, i32 19
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %6, i32 17
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %6, i32 20
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57, %53, %49, %41
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_dump_req.__msg.42) #14
  %62 = icmp eq ptr %20, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %61, %39, %28
  %64 = phi ptr [ @__nh_valid_dump_req.__msg, %28 ], [ @__nh_valid_dump_req.__msg.41, %39 ], [ @__nh_valid_dump_req.__msg.42, %61 ]
  store ptr %64, ptr %20, align 4
  br label %65

65:                                               ; preds = %63, %61, %39, %28, %14, %13, %11
  %66 = phi i32 [ -22, %11 ], [ -22, %13 ], [ -22, %63 ], [ -22, %61 ], [ -22, %39 ], [ -22, %28 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  br label %168

67:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  %68 = load i32, ptr %4, align 4
  %69 = call ptr @rb_first(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33)) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %138, label %71

71:                                               ; preds = %67
  %72 = icmp eq i32 %31, 0
  %73 = icmp ne i32 %42, 0
  %74 = icmp eq i32 %42, 0
  %75 = xor i1 %72, true
  br label %76

76:                                               ; preds = %135, %71
  %77 = phi ptr [ %136, %135 ], [ %69, %71 ]
  %78 = getelementptr inbounds %struct.nexthop, ptr %77, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %79, %68
  br i1 %80, label %135, label %81

81:                                               ; preds = %76
  store i32 %79, ptr %4, align 4
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr i8, ptr %82, i32 16
  %84 = load i8, ptr %83, align 4
  br i1 %45, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.nexthop, ptr %77, i32 0, i32 9
  %87 = load i8, ptr %86, align 2, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %135, label %89

89:                                               ; preds = %85, %81
  %90 = icmp ne i8 %84, 0
  %91 = or i1 %73, %90
  %92 = select i1 %75, i1 true, i1 %91
  br i1 %92, label %93, label %126

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.nexthop, ptr %77, i32 0, i32 9
  %95 = load i8, ptr %94, align 2, !range !8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %135

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.nexthop, ptr %77, i32 0, i32 12
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq i8 %84, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.nh_info, ptr %99, i32 0, i32 2
  %103 = load i8, ptr %102, align 4
  %104 = icmp eq i8 %103, %84
  br i1 %104, label %105, label %135

105:                                              ; preds = %101, %97
  %106 = getelementptr inbounds %struct.nh_info, ptr %99, i32 0, i32 5
  %107 = load ptr, ptr %106, align 4
  br i1 %72, label %114, label %108

108:                                              ; preds = %105
  %109 = icmp eq ptr %107, null
  br i1 %109, label %135, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 17
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, %31
  br i1 %113, label %114, label %135

114:                                              ; preds = %110, %105
  br i1 %74, label %126, label %115

115:                                              ; preds = %114
  %116 = icmp eq ptr %107, null
  br i1 %116, label %135, label %117

117:                                              ; preds = %115
  %118 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %107) #14
  %119 = icmp eq ptr %118, null
  br i1 %119, label %135, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 17
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, %42
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load ptr, ptr %5, align 4
  br label %126

126:                                              ; preds = %124, %114, %89
  %127 = phi ptr [ %125, %124 ], [ %82, %114 ], [ %82, %89 ]
  %128 = load ptr, ptr %1, align 4
  %129 = getelementptr inbounds %struct.sk_buff, ptr %128, i32 0, i32 3, i32 12
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nlmsghdr, ptr %127, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = call fastcc i32 @nh_fill_node(ptr noundef %0, ptr noundef nonnull %77, i32 noundef 104, i32 noundef %130, i32 noundef %132, i32 noundef 2) #14
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %126, %120, %117, %115, %110, %108, %101, %93, %85, %76
  %136 = call ptr @rb_next(ptr noundef nonnull %77) #14
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %76

138:                                              ; preds = %135, %67
  %139 = load i32, ptr %4, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %4, align 4
  br label %147

141:                                              ; preds = %126
  %142 = icmp slt i32 %133, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %145 = load i32, ptr %144, align 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147, !prof !14

147:                                              ; preds = %143, %141, %138
  %148 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %149 = load i32, ptr %148, align 8
  br label %150

150:                                              ; preds = %147, %143
  %151 = phi i32 [ %149, %147 ], [ %133, %143 ]
  %152 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 2), align 4
  %153 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  %157 = icmp eq i32 %152, %155
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %166, label %159

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.nlmsghdr, ptr %161, i32 0, i32 2
  %163 = load i16, ptr %162, align 2
  %164 = or i16 %163, 16
  store i16 %164, ptr %162, align 2
  %165 = load i32, ptr %153, align 4
  br label %166

166:                                              ; preds = %159, %150
  %167 = phi i32 [ %152, %150 ], [ %165, %159 ]
  store i32 %167, ptr %154, align 4
  br label %168

168:                                              ; preds = %166, %65
  %169 = phi i32 [ %151, %166 ], [ %66, %65 ]
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtm_get_nexthop_bucket(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x ptr], align 8
  %5 = alloca [14 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false) #14, !annotation !18
  %6 = load i32, ptr %1, align 4
  %7 = icmp ult i32 %6, 24
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #14
  %9 = icmp eq ptr %2, null
  br i1 %9, label %76, label %74

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %1, i32 24
  %12 = add i32 %6, -24
  %13 = call i32 @__nla_parse(ptr noundef nonnull %5, i32 noundef 13, ptr noundef %11, i32 noundef %12, ptr noundef nonnull @rtm_nh_policy_get_bucket, i32 noundef 31, ptr noundef %2) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %76, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %1, i32 18
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %1, i32 19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %1, i32 17
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %1, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27, %23, %19, %15
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_get_del_req.__msg) #14
  %32 = icmp eq ptr %2, null
  br i1 %32, label %76, label %74

33:                                               ; preds = %27
  %34 = getelementptr inbounds ptr, ptr %5, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_get_del_req.__msg.39) #14
  %38 = icmp eq ptr %2, null
  br i1 %38, label %76, label %74

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %35, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_get_del_req.__msg.40) #14
  %44 = icmp eq ptr %2, null
  br i1 %44, label %76, label %74

45:                                               ; preds = %39
  %46 = getelementptr inbounds [14 x ptr], ptr %5, i32 0, i32 13
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_valid_get_bucket_req.__msg) #14
  %50 = icmp eq ptr %2, null
  br i1 %50, label %76, label %74

51:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 0, ptr %4, align 8, !annotation !18
  %52 = getelementptr inbounds %struct.nlattr, ptr %47, i32 0, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = icmp sgt i16 %53, -1
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #14
  %56 = icmp eq ptr %2, null
  br i1 %56, label %78, label %57

57:                                               ; preds = %55
  store ptr @nla_parse_nested.__msg, ptr %2, align 4
  %58 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %47, ptr %58, align 4
  %59 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %59, align 4
  br label %78

60:                                               ; preds = %51
  %61 = getelementptr i8, ptr %47, i32 4
  %62 = load i16, ptr %47, align 2
  %63 = zext i16 %62 to i32
  %64 = add nsw i32 %63, -4
  %65 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %61, i32 noundef %64, ptr noundef nonnull @rtm_nh_res_bucket_policy_get, i32 noundef 31, ptr noundef %2) #14
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds [2 x ptr], ptr %4, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_valid_get_bucket_req_res_bucket.__msg) #14
  %72 = icmp eq ptr %2, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %71
  store ptr @nh_valid_get_bucket_req_res_bucket.__msg, ptr %2, align 4
  br label %78

74:                                               ; preds = %49, %43, %37, %31, %8
  %75 = phi ptr [ @__nlmsg_parse.__msg, %8 ], [ @__nh_valid_get_del_req.__msg, %31 ], [ @__nh_valid_get_del_req.__msg.39, %37 ], [ @__nh_valid_get_del_req.__msg.40, %43 ], [ @nh_valid_get_bucket_req.__msg, %49 ]
  store ptr %75, ptr %2, align 4
  br label %76

76:                                               ; preds = %74, %49, %43, %37, %31, %10, %8
  %77 = phi i32 [ -22, %43 ], [ -22, %37 ], [ -22, %31 ], [ -22, %8 ], [ -22, %49 ], [ %13, %10 ], [ -22, %74 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  br label %149

78:                                               ; preds = %73, %71, %60, %57, %55
  %79 = phi i32 [ -22, %55 ], [ -22, %57 ], [ -22, %71 ], [ -22, %73 ], [ %65, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  br label %149

80:                                               ; preds = %67
  %81 = getelementptr i8, ptr %69, i32 4
  %82 = load i16, ptr %81, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  %83 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33), align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %118, label %85

85:                                               ; preds = %96, %80
  %86 = phi ptr [ %98, %96 ], [ %83, %80 ]
  %87 = getelementptr inbounds %struct.nexthop, ptr %86, i32 0, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = icmp ugt i32 %88, %41
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.rb_node, ptr %86, i32 0, i32 2
  br label %96

92:                                               ; preds = %85
  %93 = icmp ult i32 %88, %41
  br i1 %93, label %94, label %100

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.rb_node, ptr %86, i32 0, i32 1
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi ptr [ %91, %90 ], [ %95, %94 ]
  %98 = load volatile ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %118, label %85

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.nexthop, ptr %86, i32 0, i32 9
  %102 = load i8, ptr %101, align 2, !range !8
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_find_group_resilient.__msg) #14
  %105 = icmp eq ptr %2, null
  br i1 %105, label %118, label %114

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.nexthop, ptr %86, i32 0, i32 12
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nh_group, ptr %108, i32 0, i32 4
  %110 = load i8, ptr %109, align 4, !range !8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_find_group_resilient.__msg.43) #14
  %113 = icmp eq ptr %2, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %112, %104
  %115 = phi ptr [ @nexthop_find_group_resilient.__msg, %104 ], [ @nexthop_find_group_resilient.__msg.43, %112 ]
  store ptr %115, ptr %2, align 4
  br label %118

116:                                              ; preds = %106
  %117 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %121

118:                                              ; preds = %116, %114, %112, %104, %96, %80
  %119 = phi ptr [ %86, %116 ], [ inttoptr (i32 -22 to ptr), %114 ], [ inttoptr (i32 -22 to ptr), %112 ], [ inttoptr (i32 -22 to ptr), %104 ], [ inttoptr (i32 -2 to ptr), %80 ], [ inttoptr (i32 -2 to ptr), %96 ]
  %120 = ptrtoint ptr %119 to i32
  br label %149

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.nh_group, ptr %108, i32 0, i32 7
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nh_res_table, ptr %123, i32 0, i32 7
  %125 = load i16, ptr %124, align 4
  %126 = icmp ult i16 %82, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %121
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_get_nexthop_bucket.__msg) #14
  %128 = icmp eq ptr %2, null
  br i1 %128, label %149, label %129

129:                                              ; preds = %127
  store ptr @rtm_get_nexthop_bucket.__msg, ptr %2, align 4
  br label %149

130:                                              ; preds = %121
  %131 = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %132 = icmp eq ptr %131, null
  br i1 %132, label %149, label %133

133:                                              ; preds = %130
  %134 = zext i16 %82 to i32
  %135 = getelementptr %struct.nh_res_table, ptr %123, i32 0, i32 8, i32 %134
  %136 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = call fastcc i32 @nh_fill_res_bucket(ptr noundef nonnull %131, ptr noundef nonnull %86, ptr noundef %135, i16 noundef zeroext %82, i32 noundef %137, i32 noundef %139, i32 noundef 0)
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = icmp eq i32 %140, -90
  br i1 %143, label %144, label %145, !prof !14

144:                                              ; preds = %142
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3536, i32 noundef 9, ptr noundef null) #14
  br label %145

145:                                              ; preds = %144, %142
  call void @kfree_skb_reason(ptr noundef nonnull %131, i32 noundef 0) #14
  br label %149

146:                                              ; preds = %133
  %147 = load i32, ptr %136, align 4
  %148 = call i32 @rtnl_unicast(ptr noundef nonnull %131, ptr noundef nonnull @init_net, i32 noundef %147) #14
  br label %149

149:                                              ; preds = %146, %145, %130, %129, %127, %118, %78, %76
  %150 = phi i32 [ %120, %118 ], [ %140, %145 ], [ %148, %146 ], [ -2, %129 ], [ -2, %127 ], [ -105, %130 ], [ %77, %76 ], [ %79, %78 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtm_dump_nexthop_bucket(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4 x ptr], align 4
  %4 = alloca [14 x ptr], align 4
  %5 = alloca %struct.rtm_dump_nexthop_bucket_data, align 4
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %7 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %6, ptr %5, align 4
  %8 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rtm_dump_nexthop_bucket_data, ptr %5, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #14, !annotation !18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false) #14, !annotation !18
  %11 = load i32, ptr %9, align 4
  %12 = icmp ult i32 %11, 24
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #14
  br label %123

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %9, i32 24
  %16 = add i32 %11, -24
  %17 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 13, ptr noundef %15, i32 noundef %16, ptr noundef nonnull @rtm_nh_policy_dump_bucket, i32 noundef 31, ptr noundef null) #14
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %123, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds [14 x ptr], ptr %4, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %21, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %21, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_valid_dump_nhid.__msg) #14
  %30 = icmp eq ptr %23, null
  br i1 %30, label %123, label %31

31:                                               ; preds = %29
  store ptr @nh_valid_dump_nhid.__msg, ptr %23, align 4
  br label %123

32:                                               ; preds = %25, %19
  %33 = phi i32 [ %27, %25 ], [ 0, %19 ]
  store i32 %33, ptr %10, align 4
  %34 = getelementptr inbounds [14 x ptr], ptr %4, i32 0, i32 13
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %68, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.nlattr, ptr %35, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = icmp sgt i16 %39, -1
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #14
  %42 = icmp eq ptr %23, null
  br i1 %42, label %123, label %43

43:                                               ; preds = %41
  store ptr @nla_parse_nested.__msg, ptr %23, align 4
  %44 = getelementptr inbounds %struct.netlink_ext_ack, ptr %23, i32 0, i32 1
  store ptr %35, ptr %44, align 4
  %45 = getelementptr inbounds %struct.netlink_ext_ack, ptr %23, i32 0, i32 2
  store ptr null, ptr %45, align 4
  br label %123

46:                                               ; preds = %37
  %47 = getelementptr i8, ptr %35, i32 4
  %48 = load i16, ptr %35, align 2
  %49 = zext i16 %48 to i32
  %50 = add nsw i32 %49, -4
  %51 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 3, ptr noundef %47, i32 noundef %50, ptr noundef nonnull @rtm_nh_res_bucket_policy_dump, i32 noundef 31, ptr noundef %23) #14
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %123, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds [4 x ptr], ptr %3, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rtm_dump_nexthop_bucket_data, ptr %5, i32 0, i32 1, i32 5
  %57 = load ptr, ptr %22, align 4
  %58 = icmp eq ptr %55, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %55, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_valid_dump_nhid.__msg) #14
  %64 = icmp eq ptr %57, null
  br i1 %64, label %123, label %65

65:                                               ; preds = %63
  store ptr @nh_valid_dump_nhid.__msg, ptr %57, align 4
  br label %123

66:                                               ; preds = %59, %53
  %67 = phi i32 [ %61, %59 ], [ 0, %53 ]
  store i32 %67, ptr %56, align 4
  br label %68

68:                                               ; preds = %66, %32
  %69 = phi ptr [ %57, %66 ], [ %23, %32 ]
  %70 = getelementptr inbounds ptr, ptr %4, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %71, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_dump_req.__msg) #14
  %78 = icmp eq ptr %69, null
  br i1 %78, label %123, label %121

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.rtm_dump_nexthop_bucket_data, ptr %5, i32 0, i32 1, i32 1
  store i32 %75, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %68
  %82 = getelementptr inbounds ptr, ptr %4, i32 10
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = getelementptr i8, ptr %83, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_dump_req.__msg.41) #14
  %90 = icmp eq ptr %69, null
  br i1 %90, label %123, label %121

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.rtm_dump_nexthop_bucket_data, ptr %5, i32 0, i32 1, i32 2
  store i32 %87, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %81
  %94 = getelementptr inbounds ptr, ptr %4, i32 9
  %95 = load ptr, ptr %94, align 4
  %96 = icmp ne ptr %95, null
  %97 = getelementptr inbounds %struct.rtm_dump_nexthop_bucket_data, ptr %5, i32 0, i32 1, i32 3
  %98 = zext i1 %96 to i8
  store i8 %98, ptr %97, align 4
  %99 = getelementptr inbounds ptr, ptr %4, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = icmp ne ptr %100, null
  %102 = getelementptr inbounds %struct.rtm_dump_nexthop_bucket_data, ptr %5, i32 0, i32 1, i32 4
  %103 = zext i1 %101 to i8
  store i8 %103, ptr %102, align 1
  %104 = getelementptr i8, ptr %9, i32 18
  %105 = load i8, ptr %104, align 2
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %93
  %108 = getelementptr i8, ptr %9, i32 19
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = getelementptr i8, ptr %9, i32 17
  %113 = load i8, ptr %112, align 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr i8, ptr %9, i32 20
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %115, %111, %107, %93
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_dump_req.__msg.42) #14
  %120 = icmp eq ptr %69, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %119, %89, %77
  %122 = phi ptr [ @__nh_valid_dump_req.__msg, %77 ], [ @__nh_valid_dump_req.__msg.41, %89 ], [ @__nh_valid_dump_req.__msg.42, %119 ]
  store ptr %122, ptr %69, align 4
  br label %123

123:                                              ; preds = %121, %119, %89, %77, %65, %63, %46, %43, %41, %31, %29, %14, %13
  %124 = phi i32 [ -22, %121 ], [ -22, %119 ], [ -22, %89 ], [ -22, %77 ], [ -22, %63 ], [ -22, %65 ], [ -22, %41 ], [ -22, %43 ], [ %51, %46 ], [ -22, %29 ], [ -22, %31 ], [ -22, %13 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %224

125:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %126 = icmp eq i32 %33, 0
  br i1 %126, label %168, label %127

127:                                              ; preds = %125
  %128 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33), align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %163, label %130

130:                                              ; preds = %141, %127
  %131 = phi ptr [ %143, %141 ], [ %128, %127 ]
  %132 = getelementptr inbounds %struct.nexthop, ptr %131, i32 0, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %133, %33
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.rb_node, ptr %131, i32 0, i32 2
  br label %141

137:                                              ; preds = %130
  %138 = icmp ult i32 %133, %33
  br i1 %138, label %139, label %145

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.rb_node, ptr %131, i32 0, i32 1
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi ptr [ %136, %135 ], [ %140, %139 ]
  %143 = load volatile ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %163, label %130

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.nexthop, ptr %131, i32 0, i32 9
  %147 = load i8, ptr %146, align 2, !range !8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_find_group_resilient.__msg) #14
  %150 = icmp eq ptr %69, null
  br i1 %150, label %163, label %159

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.nexthop, ptr %131, i32 0, i32 12
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.nh_group, ptr %153, i32 0, i32 4
  %155 = load i8, ptr %154, align 4, !range !8
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_find_group_resilient.__msg.43) #14
  %158 = icmp eq ptr %69, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %157, %149
  %160 = phi ptr [ @nexthop_find_group_resilient.__msg, %149 ], [ @nexthop_find_group_resilient.__msg.43, %157 ]
  store ptr %160, ptr %69, align 4
  br label %163

161:                                              ; preds = %151
  %162 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %162, label %163, label %166

163:                                              ; preds = %161, %159, %157, %149, %141, %127
  %164 = phi ptr [ %131, %161 ], [ inttoptr (i32 -22 to ptr), %159 ], [ inttoptr (i32 -22 to ptr), %157 ], [ inttoptr (i32 -22 to ptr), %149 ], [ inttoptr (i32 -2 to ptr), %127 ], [ inttoptr (i32 -2 to ptr), %141 ]
  %165 = ptrtoint ptr %164 to i32
  br label %224

166:                                              ; preds = %161
  %167 = call fastcc i32 @rtm_dump_nexthop_bucket_nh(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %131, ptr noundef nonnull %5)
  br label %196

168:                                              ; preds = %125
  %169 = load i32, ptr %6, align 4
  %170 = call ptr @rb_first(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33)) #14
  %171 = icmp eq ptr %170, null
  br i1 %171, label %193, label %172

172:                                              ; preds = %190, %168
  %173 = phi ptr [ %191, %190 ], [ %170, %168 ]
  %174 = getelementptr inbounds %struct.nexthop, ptr %173, i32 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = icmp ult i32 %175, %169
  br i1 %176, label %190, label %177

177:                                              ; preds = %172
  store i32 %175, ptr %6, align 4
  %178 = getelementptr inbounds %struct.nexthop, ptr %173, i32 0, i32 9
  %179 = load i8, ptr %178, align 2, !range !8
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.nexthop, ptr %173, i32 0, i32 12
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.nh_group, ptr %183, i32 0, i32 4
  %185 = load i8, ptr %184, align 4, !range !8
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %181
  %188 = call fastcc i32 @rtm_dump_nexthop_bucket_nh(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %173, ptr noundef nonnull %5) #14
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %187, %181, %177, %172
  %191 = call ptr @rb_next(ptr noundef nonnull %173) #14
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %172

193:                                              ; preds = %190, %168
  %194 = load i32, ptr %6, align 4
  %195 = add i32 %194, 1
  store i32 %195, ptr %6, align 4
  br label %203

196:                                              ; preds = %187, %166
  %197 = phi i32 [ %167, %166 ], [ %188, %187 ]
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %201 = load i32, ptr %200, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %206, label %203, !prof !14

203:                                              ; preds = %199, %196, %193
  %204 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %205 = load i32, ptr %204, align 8
  br label %206

206:                                              ; preds = %203, %199
  %207 = phi i32 [ %205, %203 ], [ %197, %199 ]
  %208 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 2), align 4
  %209 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %208, ptr %209, align 4
  %210 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  %213 = icmp eq i32 %208, %211
  %214 = select i1 %212, i1 true, i1 %213
  br i1 %214, label %222, label %215

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.nlmsghdr, ptr %217, i32 0, i32 2
  %219 = load i16, ptr %218, align 2
  %220 = or i16 %219, 16
  store i16 %220, ptr %218, align 2
  %221 = load i32, ptr %209, align 4
  br label %222

222:                                              ; preds = %215, %206
  %223 = phi i32 [ %208, %206 ], [ %221, %215 ]
  store i32 %223, ptr %210, align 4
  br label %224

224:                                              ; preds = %222, %163, %123
  %225 = phi i32 [ %165, %163 ], [ %207, %222 ], [ %124, %123 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret i32 %225
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nexthop_net_init(ptr noundef %0) #4 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33
  store ptr null, ptr %2, align 4
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1024) #16
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 1
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 4
  tail call void @__init_rwsem(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @nexthop_net_init.__key) #14
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 4, i32 1
  store ptr null, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ 0, %7 ], [ -12, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nexthop_net_exit(ptr noundef %0) #11 section ".ref.text" {
  tail call void @rtnl_lock() #14
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33
  %3 = tail call ptr @rb_first(ptr noundef %2) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call fastcc void @remove_nexthop(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null) #14
  %7 = tail call i32 @__cond_resched() #14
  %8 = tail call ptr @rb_first(ptr noundef %2) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  tail call void @rtnl_unlock() #14
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @remove_nexthop(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @call_nexthop_notifiers(ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef null)
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33
  tail call void @rb_erase(ptr noundef %1, ptr noundef %5) #14
  %6 = icmp eq ptr %2, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @nexthop_notify(i32 noundef 105, ptr noundef %1, ptr noundef nonnull %2)
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %17, %12 ], [ %10, %8 ]
  %14 = getelementptr i8, ptr %13, i32 20
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = load ptr, ptr %13, align 4
  %18 = icmp eq ptr %17, %9
  br i1 %18, label %19, label %12

19:                                               ; preds = %12
  tail call void @fib_flush(ptr noundef %0) #14
  br label %20

20:                                               ; preds = %19, %8
  %21 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %48, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 41
  br label %26

26:                                               ; preds = %40, %24
  %27 = phi ptr [ %22, %24 ], [ %29, %40 ]
  %28 = getelementptr i8, ptr %27, i32 -12
  %29 = load ptr, ptr %27, align 4
  %30 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #14, !srcloc !11
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #14, !srcloc !39
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !14

34:                                               ; preds = %26
  %35 = add i32 %32, 1
  %36 = or i32 %35, %32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %40, label %38, !prof !9

38:                                               ; preds = %34, %26
  %39 = phi i32 [ 2, %26 ], [ 1, %34 ]
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef %39) #14
  br label %40

40:                                               ; preds = %38, %34
  %41 = load ptr, ptr @ipv6_stub, align 4
  %42 = getelementptr inbounds %struct.ipv6_stub, ptr %41, i32 0, i32 13
  %43 = load ptr, ptr %42, align 4
  %44 = load i8, ptr %25, align 4
  %45 = icmp eq i8 %44, 0
  %46 = tail call i32 %43(ptr noundef %0, ptr noundef %28, i1 noundef zeroext %45) #14
  %47 = icmp eq ptr %29, %21
  br i1 %47, label %48, label %26

48:                                               ; preds = %40, %20
  %49 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 9
  %50 = load i8, ptr %49, align 2, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 12
  br i1 %51, label %83, label %53

53:                                               ; preds = %48
  %54 = load volatile ptr, ptr %52, align 4
  %55 = getelementptr inbounds %struct.nh_group, ptr %54, i32 0, i32 1
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  %58 = icmp eq i16 %56, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %71, %53
  %60 = phi i32 [ %72, %71 ], [ 0, %53 ]
  %61 = getelementptr %struct.nh_group, ptr %54, i32 0, i32 8, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65, !prof !14

64:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1830, i32 noundef 9, ptr noundef null) #14
  br label %71

65:                                               ; preds = %59
  %66 = getelementptr %struct.nh_group, ptr %54, i32 0, i32 8, i32 %60, i32 3
  %67 = getelementptr %struct.nh_group, ptr %54, i32 0, i32 8, i32 %60, i32 3, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %66, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %68, ptr %70, align 4
  store volatile ptr %69, ptr %68, align 4
  store volatile ptr %66, ptr %66, align 4
  store ptr %66, ptr %67, align 4
  br label %71

71:                                               ; preds = %65, %64
  %72 = add nuw nsw i32 %60, 1
  %73 = icmp eq i32 %72, %57
  br i1 %73, label %74, label %59

74:                                               ; preds = %71, %53
  %75 = getelementptr inbounds %struct.nh_group, ptr %54, i32 0, i32 4
  %76 = load i8, ptr %75, align 4, !range !8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.nh_group, ptr %54, i32 0, i32 7
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nh_res_table, ptr %80, i32 0, i32 2
  %82 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %81) #14
  br label %97

83:                                               ; preds = %48
  %84 = load ptr, ptr %52, align 4
  %85 = getelementptr inbounds %struct.nh_info, ptr %84, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %84, align 4
  %90 = getelementptr inbounds %struct.hlist_node, ptr %84, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  store volatile ptr %89, ptr %91, align 4
  %92 = icmp eq ptr %89, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.hlist_node, ptr %89, i32 0, i32 1
  store volatile ptr %91, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %88
  store ptr inttoptr (i32 256 to ptr), ptr %84, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %90, align 4
  br label %96

96:                                               ; preds = %95, %83
  tail call fastcc void @remove_nexthop_from_groups(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  br label %97

97:                                               ; preds = %96, %78, %74
  %98 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 1
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 1, i32 %100
  store i32 %102, ptr %98, align 4
  %103 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #14, !srcloc !11
  %104 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #14, !srcloc !12
  %105 = extractvalue { i32, i32, i32 } %104, 0
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %110, label %107

107:                                              ; preds = %97
  %108 = icmp sgt i32 %105, 0
  br i1 %108, label %112, label %109, !prof !9

109:                                              ; preds = %107
  tail call void @refcount_warn_saturate(ptr noundef %103, i32 noundef 3) #14
  br label %112

110:                                              ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !13
  %111 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %111, ptr noundef nonnull @nexthop_free_rcu) #14
  br label %112

112:                                              ; preds = %110, %109, %107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @call_nexthop_notifiers(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.nh_notifier_info, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nh_notifier_info, ptr %5, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = tail call i32 @rtnl_is_locked() #14
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @call_nexthop_notifiers.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !14

15:                                               ; preds = %4
  store i1 true, ptr @call_nexthop_notifiers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 234) #14
  br label %16

16:                                               ; preds = %15, %4
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 4, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %16
  %21 = call fastcc i32 @nh_notifier_info_init(ptr noundef nonnull %5, ptr noundef %2)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @call_nexthop_notifiers.__msg) #14
  %24 = icmp eq ptr %3, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %23
  store ptr @call_nexthop_notifiers.__msg, ptr %3, align 4
  br label %53

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 4
  %28 = call i32 @blocking_notifier_call_chain(ptr noundef %27, i32 noundef %1, ptr noundef nonnull %5) #14
  %29 = getelementptr inbounds %struct.nexthop, ptr %2, i32 0, i32 9
  %30 = load i8, ptr %29, align 2, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.nexthop, ptr %2, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nh_group, ptr %34, i32 0, i32 3
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %9, align 4
  call void @kfree(ptr noundef %39) #14
  br label %48

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.nh_group, ptr %34, i32 0, i32 4
  %42 = load i8, ptr %41, align 4, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %9, align 4
  call void @vfree(ptr noundef %45) #14
  br label %48

46:                                               ; preds = %26
  %47 = load ptr, ptr %9, align 4
  call void @kfree(ptr noundef %47) #14
  br label %48

48:                                               ; preds = %46, %44, %40, %38
  %49 = and i32 %28, -32769
  %50 = icmp sgt i32 %49, 1
  %51 = sub i32 1, %49
  %52 = select i1 %50, i32 %51, i32 0
  br label %53

53:                                               ; preds = %48, %25, %23, %16
  %54 = phi i32 [ %52, %48 ], [ 0, %16 ], [ %21, %25 ], [ %21, %23 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nexthop_notify(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %14 = phi i32 [ %11, %6 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 9
  %16 = load i8, ptr %15, align 2, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  br i1 %17, label %30, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.nh_group, ptr %19, i32 0, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = shl nuw nsw i32 %23, 3
  %25 = getelementptr inbounds %struct.nh_group, ptr %19, i32 0, i32 4
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 12, i32 52
  %29 = add nuw nsw i32 %28, %24
  br label %47

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.nh_info, ptr %19, i32 0, i32 2
  %32 = load i8, ptr %31, align 4
  switch i8 %32, label %40 [
    i8 2, label %34
    i8 10, label %33
  ]

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ 28, %33 ], [ 16, %30 ]
  %36 = getelementptr inbounds %struct.nh_info, ptr %19, i32 0, i32 5, i32 0, i32 0, i32 5
  %37 = load i8, ptr %36, align 2
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 8, i32 %35
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i32 [ 8, %30 ], [ %39, %34 ]
  %42 = getelementptr inbounds %struct.nh_info, ptr %19, i32 0, i32 5, i32 0, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = add nuw nsw i32 %41, 8
  %46 = select i1 %44, i32 %41, i32 %45
  br label %47

47:                                               ; preds = %40, %20
  %48 = phi i32 [ %29, %20 ], [ %46, %40 ]
  %49 = tail call ptr @llvm.thread.pointer() #14
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 65280
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 3264, i32 2592
  %55 = add nuw nsw i32 %48, 35
  %56 = and i32 %55, -4
  %57 = tail call ptr @__alloc_skb(i32 noundef %56, i32 noundef %54, i32 noundef 0, i32 noundef -1) #14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.nl_info, ptr %2, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = tail call fastcc i32 @nh_fill_node(ptr noundef nonnull %57, ptr noundef %1, i32 noundef %0, i32 noundef %61, i32 noundef %14, i32 noundef %13)
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = icmp eq i32 %62, -90
  br i1 %65, label %66, label %67, !prof !14

66:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 855, i32 noundef 9, ptr noundef null) #14
  br label %67

67:                                               ; preds = %66, %64
  tail call void @kfree_skb_reason(ptr noundef nonnull %57, i32 noundef 0) #14
  br label %77

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.nl_info, ptr %2, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %60, align 4
  %72 = load ptr, ptr %2, align 4
  %73 = load volatile i32, ptr %50, align 4
  %74 = and i32 %73, 65280
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 3264, i32 2592
  tail call void @rtnl_notify(ptr noundef nonnull %57, ptr noundef %70, i32 noundef %71, i32 noundef 32, ptr noundef %72, i32 noundef %76) #14
  br label %81

77:                                               ; preds = %67, %47
  %78 = phi i32 [ %62, %67 ], [ -105, %47 ]
  %79 = getelementptr inbounds %struct.nl_info, ptr %2, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  tail call void @rtnl_set_sk_err(ptr noundef %80, i32 noundef 32, i32 noundef %78) #14
  br label %81

81:                                               ; preds = %77, %68
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__remove_nexthop(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %12, %7 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 1
  store i32 %11, ptr %9, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %7

14:                                               ; preds = %7
  tail call void @fib_flush(ptr noundef %0) #14
  br label %15

15:                                               ; preds = %14, %3
  %16 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %43, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 41
  br label %21

21:                                               ; preds = %35, %19
  %22 = phi ptr [ %17, %19 ], [ %24, %35 ]
  %23 = getelementptr i8, ptr %22, i32 -12
  %24 = load ptr, ptr %22, align 4
  %25 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #14, !srcloc !11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #14, !srcloc !39
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !14

29:                                               ; preds = %21
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33, !prof !9

33:                                               ; preds = %29, %21
  %34 = phi i32 [ 2, %21 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %34) #14
  br label %35

35:                                               ; preds = %33, %29
  %36 = load ptr, ptr @ipv6_stub, align 4
  %37 = getelementptr inbounds %struct.ipv6_stub, ptr %36, i32 0, i32 13
  %38 = load ptr, ptr %37, align 4
  %39 = load i8, ptr %20, align 4
  %40 = icmp eq i8 %39, 0
  %41 = tail call i32 %38(ptr noundef %0, ptr noundef %23, i1 noundef zeroext %40) #14
  %42 = icmp eq ptr %24, %16
  br i1 %42, label %43, label %21

43:                                               ; preds = %35, %15
  %44 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 9
  %45 = load i8, ptr %44, align 2, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 12
  br i1 %46, label %78, label %48

48:                                               ; preds = %43
  %49 = load volatile ptr, ptr %47, align 4
  %50 = getelementptr inbounds %struct.nh_group, ptr %49, i32 0, i32 1
  %51 = load i16, ptr %50, align 4
  %52 = zext i16 %51 to i32
  %53 = icmp eq i16 %51, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %66, %48
  %55 = phi i32 [ %67, %66 ], [ 0, %48 ]
  %56 = getelementptr %struct.nh_group, ptr %49, i32 0, i32 8, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !14

59:                                               ; preds = %54
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1830, i32 noundef 9, ptr noundef null) #14
  br label %66

60:                                               ; preds = %54
  %61 = getelementptr %struct.nh_group, ptr %49, i32 0, i32 8, i32 %55, i32 3
  %62 = getelementptr %struct.nh_group, ptr %49, i32 0, i32 8, i32 %55, i32 3, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %63, ptr %65, align 4
  store volatile ptr %64, ptr %63, align 4
  store volatile ptr %61, ptr %61, align 4
  store ptr %61, ptr %62, align 4
  br label %66

66:                                               ; preds = %60, %59
  %67 = add nuw nsw i32 %55, 1
  %68 = icmp eq i32 %67, %52
  br i1 %68, label %69, label %54

69:                                               ; preds = %66, %48
  %70 = getelementptr inbounds %struct.nh_group, ptr %49, i32 0, i32 4
  %71 = load i8, ptr %70, align 4, !range !8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.nh_group, ptr %49, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nh_res_table, ptr %75, i32 0, i32 2
  %77 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %76) #14
  br label %92

78:                                               ; preds = %43
  %79 = load ptr, ptr %47, align 4
  %80 = getelementptr inbounds %struct.nh_info, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %79, align 4
  %85 = getelementptr inbounds %struct.hlist_node, ptr %79, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  store volatile ptr %84, ptr %86, align 4
  %87 = icmp eq ptr %84, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.hlist_node, ptr %84, i32 0, i32 1
  store volatile ptr %86, ptr %89, align 4
  br label %90

90:                                               ; preds = %88, %83
  store ptr inttoptr (i32 256 to ptr), ptr %79, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %85, align 4
  br label %91

91:                                               ; preds = %90, %78
  tail call fastcc void @remove_nexthop_from_groups(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %92

92:                                               ; preds = %91, %73, %69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nh_fill_node(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %222

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %20 to i32
  %24 = ptrtoint ptr %22 to i32
  %25 = sub i32 %23, %24
  %26 = icmp slt i32 %25, 24
  br i1 %26, label %222, label %27, !prof !14

27:                                               ; preds = %18
  %28 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %2, i32 noundef 8, i32 noundef %5) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %222, label %30

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %28, i32 16
  store i8 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 8
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr i8, ptr %28, i32 20
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 7
  %37 = load i8, ptr %36, align 4
  %38 = getelementptr i8, ptr %28, i32 18
  store i8 %37, ptr %38, align 2
  %39 = getelementptr i8, ptr %28, i32 17
  store i8 0, ptr %39, align 1
  %40 = getelementptr i8, ptr %28, i32 19
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  store i32 %42, ptr %14, align 4
  %43 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %211

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 9
  %47 = load i8, ptr %46, align 2, !range !8
  %48 = icmp eq i8 %47, 0
  %49 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 12
  %50 = load ptr, ptr %49, align 4
  br i1 %48, label %160, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.nh_group, ptr %50, i32 0, i32 5
  %53 = load i8, ptr %52, align 1, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = call i32 @nla_put(ptr noundef %0, i32 noundef 11, i32 noundef 0, ptr noundef null) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %211

58:                                               ; preds = %55, %51
  %59 = getelementptr inbounds %struct.nh_group, ptr %50, i32 0, i32 1
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = shl nuw nsw i32 %61, 3
  %63 = getelementptr inbounds %struct.nh_group, ptr %50, i32 0, i32 3
  %64 = load i8, ptr %63, align 1, !range !8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.nh_group, ptr %50, i32 0, i32 4
  %68 = load i8, ptr %67, align 4, !range !8
  %69 = zext i8 %68 to i16
  br label %70

70:                                               ; preds = %66, %58
  %71 = phi i16 [ 0, %58 ], [ %69, %66 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #14
  store i16 %71, ptr %13, align 2
  %72 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %211

74:                                               ; preds = %70
  %75 = call ptr @nla_reserve(ptr noundef %0, i32 noundef 2, i32 noundef %62) #14
  %76 = icmp eq ptr %75, null
  br i1 %76, label %211, label %77

77:                                               ; preds = %74
  %78 = load i16, ptr %59, align 4
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %77
  %81 = getelementptr i8, ptr %75, i32 4
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi i32 [ %94, %82 ], [ 0, %80 ]
  %84 = phi ptr [ %93, %82 ], [ %81, %80 ]
  %85 = getelementptr %struct.nh_group, ptr %50, i32 0, i32 8, i32 %83
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nexthop, ptr %86, i32 0, i32 6
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %84, align 4
  %89 = getelementptr %struct.nh_group, ptr %50, i32 0, i32 8, i32 %83, i32 1
  %90 = load i8, ptr %89, align 4
  %91 = add i8 %90, -1
  %92 = getelementptr inbounds %struct.nexthop_grp, ptr %84, i32 0, i32 1
  store i8 %91, ptr %92, align 4
  %93 = getelementptr %struct.nexthop_grp, ptr %84, i32 1
  %94 = add nuw nsw i32 %83, 1
  %95 = load i16, ptr %59, align 4
  %96 = zext i16 %95 to i32
  %97 = icmp ult i32 %94, %96
  br i1 %97, label %82, label %98

98:                                               ; preds = %82, %77
  %99 = getelementptr inbounds %struct.nh_group, ptr %50, i32 0, i32 4
  %100 = load i8, ptr %99, align 4, !range !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %206, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.nh_group, ptr %50, i32 0, i32 7
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %21, align 8
  %106 = call i32 @nla_put(ptr noundef %0, i32 noundef 32780, i32 noundef 0, ptr noundef null) #14
  %107 = icmp slt i32 %106, 0
  %108 = icmp eq ptr %105, null
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %211, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.nh_res_table, ptr %104, i32 0, i32 7
  %112 = load i16, ptr %111, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #14
  store i16 %112, ptr %12, align 2
  %113 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #14
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.nh_res_table, ptr %104, i32 0, i32 5
  %117 = load i32, ptr %116, align 4
  %118 = call i32 @jiffies_to_clock_t(i32 noundef %117) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 %118, ptr %11, align 4
  %119 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.nh_res_table, ptr %104, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = call i32 @jiffies_to_clock_t(i32 noundef %123) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 %124, ptr %10, align 4
  %125 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.nh_res_table, ptr %104, i32 0, i32 3
  %129 = load volatile ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, %128
  br i1 %130, label %138, label %131

131:                                              ; preds = %127
  %132 = load volatile i32, ptr @jiffies, align 64
  %133 = getelementptr inbounds %struct.nh_res_table, ptr %104, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = sub i32 %132, %134
  %136 = call i32 @llvm.smax.i32(i32 %135, i32 0) #14
  %137 = call i32 @jiffies_to_clock_t(i32 noundef %136) #14
  br label %138

138:                                              ; preds = %131, %127
  %139 = phi i32 [ %137, %131 ], [ 0, %127 ]
  %140 = sext i32 %139 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  store i64 %140, ptr %9, align 8
  %141 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %9, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %138, %121, %115, %110
  %144 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %145 = load ptr, ptr %144, align 4
  %146 = icmp ugt ptr %145, %105
  br i1 %146, label %147, label %149, !prof !14

147:                                              ; preds = %143
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  %148 = load ptr, ptr %144, align 4
  br label %149

149:                                              ; preds = %147, %143
  %150 = phi ptr [ %148, %147 ], [ %145, %143 ]
  %151 = ptrtoint ptr %105 to i32
  %152 = ptrtoint ptr %150 to i32
  %153 = sub i32 %151, %152
  call void @skb_trim(ptr noundef %0, i32 noundef %153) #14
  br label %211

154:                                              ; preds = %138
  %155 = load ptr, ptr %21, align 8
  %156 = ptrtoint ptr %155 to i32
  %157 = ptrtoint ptr %105 to i32
  %158 = sub i32 %156, %157
  %159 = trunc i32 %158 to i16
  store i16 %159, ptr %105, align 2
  br label %206

160:                                              ; preds = %45
  %161 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 2
  %162 = load i8, ptr %161, align 4
  store i8 %162, ptr %31, align 4
  %163 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 3
  %164 = load i8, ptr %163, align 1, !range !8
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 0, ptr noundef null) #14
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %206, label %211

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 4
  %171 = load i8, ptr %170, align 2, !range !8
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = call i32 @nla_put(ptr noundef %0, i32 noundef 11, i32 noundef 0, ptr noundef null) #14
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %185, label %211

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 5
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.net_device, ptr %178, i32 0, i32 17
  %182 = load i32, ptr %181, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 %182, ptr %8, align 4
  %183 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %211

185:                                              ; preds = %180, %176, %173
  %186 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 5, i32 0, i32 0, i32 3
  %187 = load i8, ptr %186, align 4
  store i8 %187, ptr %39, align 1
  %188 = load i8, ptr %161, align 4
  switch i8 %188, label %206 [
    i8 2, label %189
    i8 10, label %198
  ]

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 5, i32 0, i32 0, i32 5
  %191 = load i8, ptr %190, align 2
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %206, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 5, i32 0, i32 0, i32 8
  %195 = load i32, ptr %194, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 %195, ptr %7, align 4
  %196 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %206, label %211

198:                                              ; preds = %185
  %199 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 5, i32 0, i32 0, i32 5
  %200 = load i8, ptr %199, align 2
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 5, i32 0, i32 0, i32 8
  %204 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 16, ptr noundef %203) #14
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %202, %198, %193, %189, %185, %166, %154, %98
  %207 = load ptr, ptr %21, align 8
  %208 = ptrtoint ptr %207 to i32
  %209 = ptrtoint ptr %28 to i32
  %210 = sub i32 %208, %209
  store i32 %210, ptr %28, align 4
  br label %222

211:                                              ; preds = %202, %193, %180, %173, %166, %149, %102, %74, %70, %55, %30
  %212 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %213 = load ptr, ptr %212, align 4
  %214 = icmp ugt ptr %213, %28
  br i1 %214, label %215, label %217, !prof !14

215:                                              ; preds = %211
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  %216 = load ptr, ptr %212, align 4
  br label %217

217:                                              ; preds = %215, %211
  %218 = phi ptr [ %216, %215 ], [ %213, %211 ]
  %219 = ptrtoint ptr %28 to i32
  %220 = ptrtoint ptr %218 to i32
  %221 = sub i32 %219, %220
  call void @skb_trim(ptr noundef %0, i32 noundef %221) #14
  br label %222

222:                                              ; preds = %217, %206, %27, %18, %6
  %223 = phi i32 [ -90, %217 ], [ 0, %206 ], [ -90, %27 ], [ -90, %18 ], [ -90, %6 ]
  ret i32 %223
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @remove_nexthop_from_groups(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.netlink_ext_ack, align 4
  %5 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %167, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %2, null
  br label %10

10:                                               ; preds = %165, %8
  %11 = phi ptr [ %6, %8 ], [ %13, %165 ]
  %12 = getelementptr i8, ptr %11, i32 -20
  %13 = load ptr, ptr %11, align 4
  %14 = getelementptr i8, ptr %11, i32 8
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false) #14, !annotation !18
  %16 = load ptr, ptr %12, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !14

18:                                               ; preds = %10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1743, i32 noundef 9, ptr noundef null) #14
  br label %19

19:                                               ; preds = %18, %10
  %20 = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nh_group, ptr %21, i32 0, i32 1
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  call fastcc void @remove_nexthop(ptr noundef %0, ptr noundef %15, ptr noundef %2) #14
  br label %165

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.nh_group, ptr %22, i32 0, i32 6
  store i8 0, ptr %28, align 2
  %29 = getelementptr inbounds %struct.nh_group, ptr %21, i32 0, i32 2
  %30 = load i8, ptr %29, align 2, !range !8
  %31 = getelementptr inbounds %struct.nh_group, ptr %22, i32 0, i32 2
  store i8 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.nh_group, ptr %21, i32 0, i32 3
  %33 = load i8, ptr %32, align 1, !range !8
  %34 = getelementptr inbounds %struct.nh_group, ptr %22, i32 0, i32 3
  store i8 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.nh_group, ptr %21, i32 0, i32 4
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = getelementptr inbounds %struct.nh_group, ptr %22, i32 0, i32 4
  store i8 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nh_group, ptr %21, i32 0, i32 5
  %39 = load i8, ptr %38, align 1, !range !8
  %40 = getelementptr inbounds %struct.nh_group, ptr %22, i32 0, i32 5
  store i8 %39, ptr %40, align 1
  %41 = load i16, ptr %23, align 4
  %42 = getelementptr inbounds %struct.nh_group, ptr %22, i32 0, i32 1
  store i16 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nh_group, ptr %21, i32 0, i32 8
  %44 = getelementptr inbounds %struct.nh_group, ptr %22, i32 0, i32 8
  %45 = load i16, ptr %23, align 4
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %92, label %47

47:                                               ; preds = %84, %27
  %48 = phi i32 [ %85, %84 ], [ 0, %27 ]
  %49 = phi i32 [ %86, %84 ], [ 0, %27 ]
  %50 = getelementptr %struct.nh_group, ptr %21, i32 0, i32 8, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %16
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i16, ptr %42, align 4
  %55 = add i16 %54, -1
  store i16 %55, ptr %42, align 4
  br label %84

56:                                               ; preds = %47
  %57 = getelementptr %struct.nh_grp_entry, ptr %43, i32 %49
  %58 = getelementptr inbounds %struct.nexthop, ptr %51, i32 0, i32 12
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nh_info, ptr %59, i32 0, i32 2
  %61 = load i8, ptr %60, align 4
  %62 = icmp eq i8 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i8 1, ptr %28, align 2
  br label %64

64:                                               ; preds = %63, %56
  %65 = getelementptr %struct.nh_grp_entry, ptr %43, i32 %49, i32 3
  %66 = getelementptr %struct.nh_grp_entry, ptr %43, i32 %49, i32 3, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %65, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store volatile ptr %68, ptr %67, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %65, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  %70 = getelementptr %struct.nh_grp_entry, ptr %43, i32 %49, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr %struct.nh_grp_entry, ptr %44, i32 %48
  %73 = getelementptr %struct.nh_grp_entry, ptr %44, i32 %48, i32 4
  store ptr %71, ptr %73, align 4
  %74 = load ptr, ptr %57, align 4
  store ptr %74, ptr %72, align 4
  %75 = getelementptr %struct.nh_grp_entry, ptr %43, i32 %49, i32 1
  %76 = load i8, ptr %75, align 4
  %77 = getelementptr %struct.nh_grp_entry, ptr %44, i32 %48, i32 1
  store i8 %76, ptr %77, align 4
  %78 = getelementptr %struct.nh_grp_entry, ptr %44, i32 %48, i32 3
  %79 = getelementptr inbounds %struct.nexthop, ptr %74, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %78, ptr %81, align 4
  store ptr %80, ptr %78, align 4
  %82 = getelementptr %struct.nh_grp_entry, ptr %44, i32 %48, i32 3, i32 1
  store ptr %79, ptr %82, align 4
  store volatile ptr %78, ptr %79, align 4
  %83 = add i32 %48, 1
  br label %84

84:                                               ; preds = %64, %53
  %85 = phi i32 [ %48, %53 ], [ %83, %64 ]
  %86 = add nuw nsw i32 %49, 1
  %87 = load i16, ptr %23, align 4
  %88 = zext i16 %87 to i32
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %47, label %90

90:                                               ; preds = %84
  %91 = load i8, ptr %34, align 1, !range !8
  br label %92

92:                                               ; preds = %90, %27
  %93 = phi i8 [ %91, %90 ], [ %33, %27 ]
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %135, label %95

95:                                               ; preds = %92
  %96 = load i16, ptr %42, align 4
  %97 = zext i16 %96 to i32
  %98 = icmp eq i16 %96, 0
  br i1 %98, label %139, label %102

99:                                               ; preds = %102
  %100 = sdiv i32 %108, 2
  %101 = sext i32 %100 to i64
  br label %111

102:                                              ; preds = %102, %95
  %103 = phi i32 [ %108, %102 ], [ 0, %95 ]
  %104 = phi i32 [ %109, %102 ], [ 0, %95 ]
  %105 = getelementptr %struct.nh_group, ptr %22, i32 0, i32 8, i32 %104, i32 1
  %106 = load i8, ptr %105, align 4
  %107 = zext i8 %106 to i32
  %108 = add i32 %103, %107
  %109 = add nuw nsw i32 %104, 1
  %110 = icmp eq i32 %109, %97
  br i1 %110, label %99, label %102

111:                                              ; preds = %129, %99
  %112 = phi i32 [ 0, %99 ], [ %117, %129 ]
  %113 = phi i32 [ 0, %99 ], [ %133, %129 ]
  %114 = getelementptr %struct.nh_group, ptr %22, i32 0, i32 8, i32 %113, i32 1
  %115 = load i8, ptr %114, align 4
  %116 = zext i8 %115 to i32
  %117 = add i32 %112, %116
  %118 = sext i32 %117 to i64
  %119 = shl nsw i64 %118, 31
  %120 = add nsw i64 %119, %101
  %121 = icmp ult i64 %120, 4294967296
  br i1 %121, label %122, label %125, !prof !9

122:                                              ; preds = %111
  %123 = trunc i64 %120 to i32
  %124 = udiv i32 %123, %108
  br label %129

125:                                              ; preds = %111
  %126 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %108, i64 %120) #17, !srcloc !25
  %127 = extractvalue { i64, i64 } %126, 1
  %128 = trunc i64 %127 to i32
  br label %129

129:                                              ; preds = %125, %122
  %130 = phi i32 [ %124, %122 ], [ %128, %125 ]
  %131 = add i32 %130, -1
  %132 = getelementptr %struct.nh_group, ptr %22, i32 0, i32 8, i32 %113, i32 2
  store volatile i32 %131, ptr %132, align 4
  %133 = add nuw nsw i32 %113, 1
  %134 = icmp eq i32 %133, %97
  br i1 %134, label %139, label %111

135:                                              ; preds = %92
  %136 = load i8, ptr %37, align 4, !range !8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  call fastcc void @replace_nexthop_grp_res(ptr noundef %21, ptr noundef %22) #14
  br label %139

139:                                              ; preds = %138, %135, %129, %95
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !40
  store volatile ptr %22, ptr %20, align 4
  %140 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = load ptr, ptr %11, align 4
  %143 = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  store ptr %141, ptr %143, align 4
  store volatile ptr %142, ptr %141, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %140, align 4
  %144 = load ptr, ptr %12, align 4
  %145 = getelementptr inbounds %struct.nexthop, ptr %144, i32 0, i32 10
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %145) #14, !srcloc !11
  %146 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %145, ptr %145, i32 1, ptr elementtype(i32) %145) #14, !srcloc !12
  %147 = extractvalue { i32, i32, i32 } %146, 0
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %152, label %149

149:                                              ; preds = %139
  %150 = icmp sgt i32 %147, 0
  br i1 %150, label %154, label %151, !prof !9

151:                                              ; preds = %149
  call void @refcount_warn_saturate(ptr noundef %145, i32 noundef 3) #14
  br label %154

152:                                              ; preds = %139
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !13
  %153 = getelementptr inbounds %struct.nexthop, ptr %144, i32 0, i32 11
  call void @call_rcu(ptr noundef %153, ptr noundef nonnull @nexthop_free_rcu) #14
  br label %154

154:                                              ; preds = %152, %151, %149
  %155 = load i8, ptr %34, align 1, !range !8
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = call fastcc i32 @call_nexthop_notifiers(ptr noundef %0, i32 noundef 1, ptr noundef %15, ptr noundef nonnull %4) #14
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %4, align 4
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %161) #18
  br label %163

163:                                              ; preds = %160, %157, %154
  br i1 %9, label %165, label %164

164:                                              ; preds = %163
  call fastcc void @nexthop_notify(i32 noundef 104, ptr noundef %15, ptr noundef nonnull %2) #14
  br label %165

165:                                              ; preds = %164, %163, %26
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #14
  %166 = icmp eq ptr %13, %5
  br i1 %166, label %167, label %10

167:                                              ; preds = %165, %3
  call void @synchronize_net() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @replace_nexthop_grp_res(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nh_group, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nh_res_table, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nh_res_table, ptr %4, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  %10 = getelementptr inbounds %struct.nh_res_table, ptr %4, i32 0, i32 2
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #14
  %12 = getelementptr inbounds %struct.nh_res_table, ptr %4, i32 0, i32 7
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %64, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nh_group, ptr %1, i32 0, i32 1
  br label %17

17:                                               ; preds = %59, %15
  %18 = phi i32 [ 0, %15 ], [ %60, %59 ]
  %19 = getelementptr %struct.nh_res_table, ptr %4, i32 0, i32 8, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nexthop, ptr %21, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = load i16, ptr %16, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp eq i16 %24, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %47, %17
  %28 = phi i32 [ %48, %47 ], [ 0, %17 ]
  %29 = getelementptr %struct.nh_group, ptr %1, i32 0, i32 8, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nexthop, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %23
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = getelementptr %struct.nh_res_table, ptr %4, i32 0, i32 8, i32 %18, i32 3
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load volatile ptr, ptr %19, align 4
  %40 = getelementptr inbounds %struct.nh_grp_entry, ptr %39, i32 0, i32 2, i32 0, i32 1
  %41 = load i16, ptr %40, align 4
  %42 = add i16 %41, -1
  store i16 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %38, %34
  store i8 1, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !41
  store volatile ptr %29, ptr %19, align 4
  %44 = getelementptr %struct.nh_group, ptr %1, i32 0, i32 8, i32 %28, i32 2, i32 0, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %44, align 4
  br label %59

47:                                               ; preds = %27
  %48 = add nuw nsw i32 %28, 1
  %49 = icmp eq i32 %48, %25
  br i1 %49, label %50, label %27

50:                                               ; preds = %47, %17
  %51 = getelementptr %struct.nh_res_table, ptr %4, i32 0, i32 8, i32 %18, i32 3
  %52 = load i8, ptr %51, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load volatile ptr, ptr %19, align 4
  %56 = getelementptr inbounds %struct.nh_grp_entry, ptr %55, i32 0, i32 2, i32 0, i32 1
  %57 = load i16, ptr %56, align 4
  %58 = add i16 %57, -1
  store i16 %58, ptr %56, align 4
  store i8 0, ptr %51, align 4
  br label %59

59:                                               ; preds = %54, %50, %43
  %60 = add nuw nsw i32 %18, 1
  %61 = load i16, ptr %12, align 4
  %62 = zext i16 %61 to i32
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %17, label %64

64:                                               ; preds = %59, %2
  %65 = phi i16 [ 0, %2 ], [ %61, %59 ]
  store volatile ptr %7, ptr %7, align 4
  %66 = getelementptr inbounds %struct.nh_res_table, ptr %4, i32 0, i32 3, i32 1
  store ptr %7, ptr %66, align 4
  %67 = getelementptr inbounds %struct.nh_group, ptr %1, i32 0, i32 1
  %68 = load i16, ptr %67, align 4
  %69 = zext i16 %68 to i32
  %70 = icmp eq i16 %68, 0
  br i1 %70, label %123, label %73

71:                                               ; preds = %73
  %72 = icmp sgt i32 %79, 0
  br label %82

73:                                               ; preds = %73, %64
  %74 = phi i32 [ %80, %73 ], [ 0, %64 ]
  %75 = phi i32 [ %79, %73 ], [ 0, %64 ]
  %76 = getelementptr %struct.nh_group, ptr %1, i32 0, i32 8, i32 %74, i32 1
  %77 = load i8, ptr %76, align 4
  %78 = zext i8 %77 to i32
  %79 = add i32 %75, %78
  %80 = add nuw nsw i32 %74, 1
  %81 = icmp eq i32 %80, %69
  br i1 %81, label %71, label %73

82:                                               ; preds = %121, %71
  %83 = phi i16 [ %65, %71 ], [ %122, %121 ]
  %84 = phi i16 [ %68, %71 ], [ %117, %121 ]
  %85 = phi i32 [ 0, %71 ], [ %99, %121 ]
  %86 = phi i32 [ 0, %71 ], [ %118, %121 ]
  %87 = phi i32 [ 0, %71 ], [ %91, %121 ]
  %88 = getelementptr %struct.nh_group, ptr %1, i32 0, i32 8, i32 %86, i32 1
  %89 = load i8, ptr %88, align 4
  %90 = zext i8 %89 to i32
  %91 = add i32 %87, %90
  %92 = zext i16 %83 to i32
  %93 = mul i32 %91, %92
  %94 = icmp slt i32 %93, 1
  %95 = xor i1 %72, %94
  %96 = select i1 %95, i32 2, i32 -2
  %97 = sdiv i32 %79, %96
  %98 = add i32 %93, %97
  %99 = sdiv i32 %98, %79
  %100 = sub i32 %99, %85
  %101 = trunc i32 %100 to i16
  %102 = getelementptr %struct.nh_group, ptr %1, i32 0, i32 8, i32 %86, i32 2
  %103 = getelementptr inbounds %struct.anon.138, ptr %102, i32 0, i32 2
  store i16 %101, ptr %103, align 2
  %104 = getelementptr %struct.nh_group, ptr %1, i32 0, i32 8, i32 %86, i32 2, i32 0, i32 1
  %105 = load i16, ptr %104, align 4
  %106 = icmp ult i16 %105, %101
  br i1 %106, label %107, label %116

107:                                              ; preds = %82
  %108 = load volatile ptr, ptr %7, align 4
  %109 = icmp eq ptr %108, %7
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load volatile i32, ptr @jiffies, align 64
  store i32 %111, ptr %5, align 4
  br label %112

112:                                              ; preds = %110, %107
  %113 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  store ptr %102, ptr %113, align 4
  store ptr %108, ptr %102, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  store ptr %7, ptr %114, align 4
  store volatile ptr %102, ptr %7, align 4
  %115 = load i16, ptr %67, align 4
  br label %116

116:                                              ; preds = %112, %82
  %117 = phi i16 [ %115, %112 ], [ %84, %82 ]
  %118 = add nuw nsw i32 %86, 1
  %119 = zext i16 %117 to i32
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i16, ptr %12, align 4
  br label %82

123:                                              ; preds = %116, %64
  br i1 %9, label %128, label %124

124:                                              ; preds = %123
  %125 = load volatile ptr, ptr %7, align 4
  %126 = icmp eq ptr %125, %7
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  store i32 %6, ptr %5, align 4
  br label %128

128:                                              ; preds = %127, %124, %123
  tail call fastcc void @nh_res_table_upkeep(ptr noundef %4, i1 noundef zeroext true, i1 noundef zeroext false)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nh_res_table_upkeep(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.netlink_ext_ack, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.nh_res_table, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nh_res_table, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %11, %9 ], [ %7, %3 ]
  %14 = add i32 %13, %5
  %15 = getelementptr inbounds %struct.nh_res_table, ptr %0, i32 0, i32 7
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %171, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.nh_res_table, ptr %0, i32 0, i32 5
  %20 = getelementptr inbounds %struct.nh_res_table, ptr %0, i32 0, i32 4
  %21 = getelementptr inbounds %struct.nh_res_table, ptr %0, i32 0, i32 3
  %22 = getelementptr inbounds %struct.nh_res_table, ptr %0, i32 0, i32 1
  br label %23

23:                                               ; preds = %165, %18
  %24 = phi i32 [ 0, %18 ], [ %167, %165 ]
  %25 = phi i32 [ %14, %18 ], [ %166, %165 ]
  %26 = getelementptr %struct.nh_res_table, ptr %0, i32 0, i32 8, i32 %24
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = getelementptr %struct.nh_res_table, ptr %0, i32 0, i32 8, i32 %24, i32 3
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %68, label %31

31:                                               ; preds = %23
  %32 = load volatile ptr, ptr %26, align 4
  %33 = getelementptr inbounds %struct.nh_grp_entry, ptr %32, i32 0, i32 2, i32 0, i32 1
  %34 = load i16, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nh_grp_entry, ptr %32, i32 0, i32 2, i32 0, i32 2
  %36 = load i16, ptr %35, align 2
  %37 = icmp ugt i16 %34, %36
  br i1 %37, label %38, label %165

38:                                               ; preds = %31
  %39 = getelementptr %struct.nh_res_table, ptr %0, i32 0, i32 8, i32 %24, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = getelementptr %struct.nh_res_table, ptr %0, i32 0, i32 8, i32 %24, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %19, align 4
  %46 = add i32 %45, %40
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i32 [ %46, %44 ], [ %27, %38 ]
  %49 = sub i32 %27, %48
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %68, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %20, align 4
  %56 = add i32 %55, %52
  %57 = sub i32 %56, %27
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = sub i32 %56, %25
  %61 = icmp slt i32 %60, 0
  %62 = select i1 %61, i32 %56, i32 %25
  br label %63

63:                                               ; preds = %59, %51
  %64 = phi i32 [ %25, %51 ], [ %62, %59 ]
  %65 = sub i32 %48, %64
  %66 = icmp slt i32 %65, 0
  %67 = select i1 %66, i32 %48, i32 %64
  br label %165

68:                                               ; preds = %54, %47, %23
  %69 = phi i1 [ true, %23 ], [ false, %47 ], [ true, %54 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false) #14, !annotation !18
  %70 = load volatile ptr, ptr %21, align 4
  %71 = icmp eq ptr %70, %21
  %72 = getelementptr i8, ptr %70, i32 -8
  %73 = select i1 %71, ptr null, ptr %72
  %74 = icmp eq ptr %73, null
  %75 = load i1, ptr @nh_res_bucket_migrate.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %79, !prof !14

78:                                               ; preds = %68
  store i1 true, ptr @nh_res_bucket_migrate.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1513, i32 noundef 9, ptr noundef null) #14
  br label %79

79:                                               ; preds = %78, %68
  br i1 %74, label %150, label %80

80:                                               ; preds = %79
  br i1 %1, label %81, label %105

81:                                               ; preds = %80
  %82 = load volatile ptr, ptr %26, align 4
  %83 = load ptr, ptr %0, align 4
  %84 = load i32, ptr %22, align 4
  %85 = load ptr, ptr %82, align 4
  %86 = load ptr, ptr %73, align 4
  %87 = getelementptr inbounds %struct.nexthop, ptr %85, i32 0, i32 12
  %88 = load volatile ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nexthop, ptr %86, i32 0, i32 12
  %90 = load volatile ptr, ptr %89, align 4
  %91 = trunc i32 %24 to i16
  %92 = call fastcc i32 @__call_nexthop_res_bucket_notifiers(ptr noundef %83, i32 noundef %84, i16 noundef zeroext %91, i1 noundef zeroext %69, ptr noundef %88, ptr noundef %90, ptr noundef nonnull %4) #14
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %81
  %95 = call i32 @___ratelimit(ptr noundef nonnull @nh_res_bucket_migrate._rs, ptr noundef nonnull @__func__.nh_res_bucket_migrate) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %4, align 4
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %98) #18
  br label %100

100:                                              ; preds = %97, %94
  br i1 %69, label %101, label %150

101:                                              ; preds = %100
  %102 = getelementptr %struct.nh_res_table, ptr %0, i32 0, i32 8, i32 %24, i32 4
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %103, -73
  store i8 %104, ptr %102, align 1
  br label %105

105:                                              ; preds = %101, %81, %80
  %106 = load i8, ptr %28, align 4, !range !8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load volatile ptr, ptr %26, align 4
  %110 = getelementptr inbounds %struct.nh_grp_entry, ptr %109, i32 0, i32 2, i32 0, i32 1
  %111 = load i16, ptr %110, align 4
  %112 = add i16 %111, -1
  store i16 %112, ptr %110, align 4
  br label %113

113:                                              ; preds = %108, %105
  store i8 1, ptr %28, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !41
  store volatile ptr %73, ptr %26, align 4
  %114 = getelementptr inbounds %struct.nh_grp_entry, ptr %73, i32 0, i32 2, i32 0, i32 1
  %115 = load i16, ptr %114, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %114, align 4
  %117 = load volatile i32, ptr @jiffies, align 64
  %118 = getelementptr %struct.nh_res_table, ptr %0, i32 0, i32 8, i32 %24, i32 1
  store volatile i32 %117, ptr %118, align 4
  %119 = getelementptr %struct.nh_res_table, ptr %0, i32 0, i32 8, i32 %24, i32 2
  store i32 %117, ptr %119, align 4
  br i1 %2, label %120, label %138

120:                                              ; preds = %113
  %121 = load volatile ptr, ptr %26, align 4
  %122 = getelementptr inbounds %struct.nh_grp_entry, ptr %121, i32 0, i32 4
  %123 = load ptr, ptr %122, align 4
  %124 = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %125 = icmp eq ptr %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %120
  %127 = trunc i32 %24 to i16
  %128 = call fastcc i32 @nh_fill_res_bucket(ptr noundef nonnull %124, ptr noundef %123, ptr noundef %26, i16 noundef zeroext %127, i32 noundef 0, i32 noundef 0, i32 noundef 256) #14
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  call void @kfree_skb_reason(ptr noundef nonnull %124, i32 noundef 0) #14
  br label %134

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.nexthop, ptr %123, i32 0, i32 5
  %133 = load ptr, ptr %132, align 4
  call void @rtnl_notify(ptr noundef nonnull %124, ptr noundef %133, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 3264) #14
  br label %138

134:                                              ; preds = %130, %120
  %135 = phi i32 [ %128, %130 ], [ -105, %120 ]
  %136 = getelementptr inbounds %struct.nexthop, ptr %123, i32 0, i32 5
  %137 = load ptr, ptr %136, align 4
  call void @rtnl_set_sk_err(ptr noundef %137, i32 noundef 32, i32 noundef %135) #14
  br label %138

138:                                              ; preds = %134, %131, %113
  %139 = load i16, ptr %114, align 4
  %140 = getelementptr inbounds %struct.nh_grp_entry, ptr %73, i32 0, i32 2, i32 0, i32 2
  %141 = load i16, ptr %140, align 2
  %142 = icmp eq i16 %139, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.nh_grp_entry, ptr %73, i32 0, i32 2
  %145 = getelementptr inbounds %struct.nh_grp_entry, ptr %73, i32 0, i32 2, i32 0, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = load ptr, ptr %144, align 4
  %148 = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  store ptr %146, ptr %148, align 4
  store volatile ptr %147, ptr %146, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %144, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %145, align 4
  br label %149

149:                                              ; preds = %143, %138
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #14
  br label %165

150:                                              ; preds = %100, %79
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #14
  %151 = getelementptr %struct.nh_res_table, ptr %0, i32 0, i32 8, i32 %24, i32 1
  %152 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %152, ptr %151, align 4
  %153 = load volatile i32, ptr %151, align 4
  %154 = getelementptr %struct.nh_res_table, ptr %0, i32 0, i32 8, i32 %24, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %160, label %157

157:                                              ; preds = %150
  %158 = load i32, ptr %19, align 4
  %159 = add i32 %158, %153
  br label %160

160:                                              ; preds = %157, %150
  %161 = phi i32 [ %159, %157 ], [ %5, %150 ]
  %162 = sub i32 %161, %25
  %163 = icmp slt i32 %162, 0
  %164 = select i1 %163, i32 %161, i32 %25
  br label %165

165:                                              ; preds = %160, %149, %63, %31
  %166 = phi i32 [ %25, %31 ], [ %25, %149 ], [ %67, %63 ], [ %164, %160 ]
  %167 = add nuw nsw i32 %24, 1
  %168 = load i16, ptr %15, align 4
  %169 = zext i16 %168 to i32
  %170 = icmp ult i32 %167, %169
  br i1 %170, label %23, label %171

171:                                              ; preds = %165, %12
  %172 = phi i32 [ %14, %12 ], [ %166, %165 ]
  %173 = getelementptr inbounds %struct.nh_res_table, ptr %0, i32 0, i32 3
  %174 = load volatile ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, %173
  br i1 %175, label %186, label %176

176:                                              ; preds = %171
  %177 = load volatile i32, ptr @jiffies, align 64
  %178 = add i32 %177, 50
  %179 = sub i32 %172, %178
  %180 = icmp slt i32 %179, 0
  %181 = select i1 %180, i32 %178, i32 %172
  %182 = load ptr, ptr @system_power_efficient_wq, align 4
  %183 = getelementptr inbounds %struct.nh_res_table, ptr %0, i32 0, i32 2
  %184 = sub i32 %181, %177
  %185 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %182, ptr noundef %183, i32 noundef %184) #14
  br label %186

186:                                              ; preds = %176, %171
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__call_nexthop_res_bucket_notifiers(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.nh_notifier_info, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #14
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nh_notifier_info, ptr %8, i32 0, i32 1
  store ptr %6, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nh_notifier_info, ptr %8, i32 0, i32 2
  store i32 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nh_notifier_info, ptr %8, i32 0, i32 3
  %12 = getelementptr inbounds %struct.nh_notifier_info, ptr %8, i32 0, i32 4
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 4, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %119, label %16

16:                                               ; preds = %7
  %17 = zext i1 %3 to i8
  br i1 %3, label %46, label %18

18:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  %19 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %33, %18
  %23 = phi ptr [ %35, %33 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.nexthop, ptr %23, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, %1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  br label %33

29:                                               ; preds = %22
  %30 = icmp ult i32 %25, %1
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %28, %27 ], [ %32, %31 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %22

37:                                               ; preds = %33, %18
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %119

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.nexthop, ptr %23, i32 0, i32 12
  %40 = load volatile ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nh_group, ptr %40, i32 0, i32 7
  %42 = load volatile ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nh_res_table, ptr %42, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @jiffies_to_msecs(i32 noundef %44) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %46

46:                                               ; preds = %38, %16
  %47 = phi i32 [ %45, %38 ], [ 0, %16 ]
  store i32 3, ptr %11, align 4
  %48 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 68) #16
  store ptr %49, ptr %12, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %119, label %51

51:                                               ; preds = %46
  store i16 %2, ptr %49, align 8
  %52 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 1
  store i32 %47, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 2
  store i8 %17, ptr %53, align 8
  %54 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 3
  %55 = getelementptr inbounds %struct.nh_info, ptr %4, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %54, align 4
  %57 = getelementptr inbounds %struct.nh_info, ptr %4, i32 0, i32 5, i32 0, i32 0, i32 5
  %58 = load i8, ptr %57, align 2
  %59 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 3, i32 1
  store i8 %58, ptr %59, align 8
  switch i8 %58, label %67 [
    i8 2, label %60
    i8 10, label %64
  ]

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.nh_info, ptr %4, i32 0, i32 5, i32 0, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 3, i32 2
  store i32 %62, ptr %63, align 4
  br label %67

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 3, i32 2
  %66 = getelementptr inbounds %struct.nh_info, ptr %4, i32 0, i32 5, i32 0, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %65, ptr noundef align 4 dereferenceable(16) %66, i32 16, i1 false) #14
  br label %67

67:                                               ; preds = %64, %60, %51
  %68 = getelementptr inbounds %struct.nh_info, ptr %4, i32 0, i32 3
  %69 = load i8, ptr %68, align 1, !range !8
  %70 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 3, i32 3
  %71 = load i8, ptr %70, align 4
  %72 = and i8 %71, -8
  %73 = or i8 %69, %72
  %74 = getelementptr inbounds %struct.nh_info, ptr %4, i32 0, i32 4
  %75 = load i8, ptr %74, align 2, !range !8
  %76 = shl nuw nsw i8 %75, 1
  %77 = or i8 %73, %76
  %78 = getelementptr inbounds %struct.nh_info, ptr %4, i32 0, i32 5, i32 0, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  %81 = select i1 %80, i8 0, i8 4
  %82 = or i8 %81, %77
  store i8 %82, ptr %70, align 4
  %83 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 4
  %84 = getelementptr inbounds %struct.nh_info, ptr %5, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  store ptr %85, ptr %83, align 8
  %86 = getelementptr inbounds %struct.nh_info, ptr %5, i32 0, i32 5, i32 0, i32 0, i32 5
  %87 = load i8, ptr %86, align 2
  %88 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 4, i32 1
  store i8 %87, ptr %88, align 4
  switch i8 %87, label %96 [
    i8 2, label %89
    i8 10, label %93
  ]

89:                                               ; preds = %67
  %90 = getelementptr inbounds %struct.nh_info, ptr %5, i32 0, i32 5, i32 0, i32 0, i32 8
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 4, i32 2
  store i32 %91, ptr %92, align 8
  br label %96

93:                                               ; preds = %67
  %94 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 4, i32 2
  %95 = getelementptr inbounds %struct.nh_info, ptr %5, i32 0, i32 5, i32 0, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %94, ptr noundef align 4 dereferenceable(16) %95, i32 16, i1 false) #14
  br label %96

96:                                               ; preds = %93, %89, %67
  %97 = getelementptr inbounds %struct.nh_info, ptr %5, i32 0, i32 3
  %98 = load i8, ptr %97, align 1, !range !8
  %99 = getelementptr inbounds %struct.nh_notifier_res_bucket_info, ptr %49, i32 0, i32 4, i32 3
  %100 = load i8, ptr %99, align 8
  %101 = and i8 %100, -8
  %102 = or i8 %98, %101
  %103 = getelementptr inbounds %struct.nh_info, ptr %5, i32 0, i32 4
  %104 = load i8, ptr %103, align 2, !range !8
  %105 = shl nuw nsw i8 %104, 1
  %106 = or i8 %102, %105
  %107 = getelementptr inbounds %struct.nh_info, ptr %5, i32 0, i32 5, i32 0, i32 0, i32 7
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  %110 = select i1 %109, i8 0, i8 4
  %111 = or i8 %110, %106
  store i8 %111, ptr %99, align 8
  %112 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 33, i32 4
  %113 = call i32 @blocking_notifier_call_chain(ptr noundef %112, i32 noundef 3, ptr noundef nonnull %8) #14
  %114 = load ptr, ptr %12, align 4
  call void @kfree(ptr noundef %114) #14
  %115 = and i32 %113, -32769
  %116 = icmp sgt i32 %115, 1
  %117 = sub i32 1, %115
  %118 = select i1 %116, i32 %117, i32 0
  br label %119

119:                                              ; preds = %96, %46, %37, %7
  %120 = phi i32 [ %118, %96 ], [ 0, %7 ], [ -22, %37 ], [ -12, %46 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #14
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nh_fill_res_bucket(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = load volatile ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %100

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %18 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = icmp slt i32 %23, 24
  br i1 %24, label %100, label %25, !prof !14

25:                                               ; preds = %16
  %26 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef 116, i32 noundef 8, i32 noundef %6) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %100, label %28

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %26, i32 16
  store i8 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nh_res_bucket, ptr %2, i32 0, i32 4
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr i8, ptr %26, i32 20
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 7
  %35 = load i8, ptr %34, align 4
  %36 = getelementptr i8, ptr %26, i32 18
  store i8 %35, ptr %36, align 2
  %37 = getelementptr i8, ptr %26, i32 17
  store i8 0, ptr %37, align 1
  %38 = getelementptr i8, ptr %26, i32 19
  store i8 0, ptr %38, align 1
  %39 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 %40, ptr %11, align 4
  %41 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %28
  %44 = load ptr, ptr %19, align 8
  %45 = call i32 @nla_put(ptr noundef %0, i32 noundef 32781, i32 noundef 0, ptr noundef null) #14
  %46 = icmp slt i32 %45, 0
  %47 = icmp eq ptr %44, null
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %89, label %49

49:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #14
  store i16 %3, ptr %10, align 2
  %50 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = load ptr, ptr %12, align 4
  %54 = getelementptr inbounds %struct.nexthop, ptr %53, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 %55, ptr %9, align 4
  %56 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.nh_res_bucket, ptr %2, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 4
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = sub i32 %61, %60
  %63 = call i32 @llvm.smax.i32(i32 %62, i32 0) #14
  %64 = call i32 @jiffies_to_clock_t(i32 noundef %63) #14
  %65 = sext i32 %64 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  store i64 %65, ptr %8, align 8
  %66 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %8, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %58
  %69 = load ptr, ptr %19, align 8
  %70 = ptrtoint ptr %69 to i32
  %71 = ptrtoint ptr %44 to i32
  %72 = sub i32 %70, %71
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr %44, align 2
  %74 = load ptr, ptr %19, align 8
  %75 = ptrtoint ptr %74 to i32
  %76 = ptrtoint ptr %26 to i32
  %77 = sub i32 %75, %76
  store i32 %77, ptr %26, align 4
  br label %100

78:                                               ; preds = %58, %52, %49
  %79 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %80 = load ptr, ptr %79, align 4
  %81 = icmp ugt ptr %80, %44
  br i1 %81, label %82, label %84, !prof !14

82:                                               ; preds = %78
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  %83 = load ptr, ptr %79, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi ptr [ %83, %82 ], [ %80, %78 ]
  %86 = ptrtoint ptr %44 to i32
  %87 = ptrtoint ptr %85 to i32
  %88 = sub i32 %86, %87
  call void @skb_trim(ptr noundef %0, i32 noundef %88) #14
  br label %89

89:                                               ; preds = %84, %43, %28
  %90 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %91 = load ptr, ptr %90, align 4
  %92 = icmp ugt ptr %91, %26
  br i1 %92, label %93, label %95, !prof !14

93:                                               ; preds = %89
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  %94 = load ptr, ptr %90, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = phi ptr [ %94, %93 ], [ %91, %89 ]
  %97 = ptrtoint ptr %26 to i32
  %98 = ptrtoint ptr %96 to i32
  %99 = sub i32 %97, %98
  call void @skb_trim(ptr noundef %0, i32 noundef %99) #14
  br label %100

100:                                              ; preds = %95, %68, %25, %16, %7
  %101 = phi i32 [ -90, %95 ], [ 0, %68 ], [ -90, %25 ], [ -90, %16 ], [ -90, %7 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nh_netdev_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  switch i32 %1, label %95 [
    i32 2, label %5
    i32 6, label %5
    i32 4, label %33
    i32 7, label %64
  ]

5:                                                ; preds = %3, %3
  %6 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 8
  %9 = xor i32 %8, %7
  %10 = lshr i32 %7, 16
  %11 = xor i32 %9, %10
  %12 = and i32 %11, 255
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 1), align 16
  %14 = getelementptr %struct.hlist_head, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %95, label %17

17:                                               ; preds = %31, %5
  %18 = phi ptr [ %19, %31 ], [ %15, %5 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nh_info, ptr %18, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %4
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.nh_info, ptr %18, i32 0, i32 3
  %25 = load i8, ptr %24, align 1, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  switch i32 %1, label %28 [
    i32 4, label %31
    i32 2, label %31
  ]

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.nh_info, ptr %18, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call fastcc void @remove_nexthop(ptr noundef nonnull @init_net, ptr noundef %30, ptr noundef null) #14
  br label %31

31:                                               ; preds = %28, %27, %27, %17
  %32 = icmp eq ptr %19, null
  br i1 %32, label %95, label %17

33:                                               ; preds = %3
  %34 = tail call i32 @dev_get_flags(ptr noundef %4) #14
  %35 = and i32 %34, 65600
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %95

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 8
  %41 = xor i32 %40, %39
  %42 = lshr i32 %39, 16
  %43 = xor i32 %41, %42
  %44 = and i32 %43, 255
  %45 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 1), align 16
  %46 = getelementptr %struct.hlist_head, ptr %45, i32 %44
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %95, label %49

49:                                               ; preds = %62, %37
  %50 = phi ptr [ %51, %62 ], [ %47, %37 ]
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %4
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 3
  %57 = load i8, ptr %56, align 1, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.nh_info, ptr %50, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  tail call fastcc void @remove_nexthop(ptr noundef nonnull @init_net, ptr noundef %61, ptr noundef null) #14
  br label %62

62:                                               ; preds = %59, %55, %49
  %63 = icmp eq ptr %51, null
  br i1 %63, label %95, label %49

64:                                               ; preds = %3
  %65 = getelementptr inbounds %struct.netdev_notifier_info_ext, ptr %2, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %68 = load i32, ptr %67, align 4
  %69 = lshr i32 %68, 8
  %70 = xor i32 %69, %68
  %71 = lshr i32 %68, 16
  %72 = xor i32 %70, %71
  %73 = and i32 %72, 255
  %74 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 33, i32 1), align 16
  %75 = getelementptr %struct.hlist_head, ptr %74, i32 %73
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %94, label %78

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  br label %80

80:                                               ; preds = %92, %78
  %81 = phi ptr [ %76, %78 ], [ %82, %92 ]
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nh_info, ptr %81, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %4
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.nh_info, ptr %81, i32 0, i32 2
  %88 = load i8, ptr %87, align 4
  %89 = icmp eq i8 %88, 2
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, ptr %79, align 4
  tail call void @fib_nhc_update_mtu(ptr noundef %83, i32 noundef %91, i32 noundef %66) #14
  br label %92

92:                                               ; preds = %90, %86, %80
  %93 = icmp eq ptr %82, null
  br i1 %93, label %94, label %80

94:                                               ; preds = %92, %64
  tail call void @rt_cache_flush(ptr noundef nonnull @init_net) #14
  br label %95

95:                                               ; preds = %94, %62, %37, %33, %31, %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_cache_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_nhc_update_mtu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nh_res_table_upkeep_dw(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call fastcc void @nh_res_table_upkeep(ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_nh_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_check_nh(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_info_update_nhc_saddr(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fib6_check_nh_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 2
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %54, label %7

7:                                                ; preds = %21, %3
  %8 = phi ptr [ %22, %21 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 48
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 52
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, %10
  %14 = getelementptr i8, ptr %8, i32 56
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %13, %15
  %17 = getelementptr i8, ptr %8, i32 60
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load ptr, ptr %8, align 4
  %23 = icmp eq ptr %22, %4
  br i1 %23, label %26, label %7

24:                                               ; preds = %7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @check_src_addr.__msg) #14
  %25 = icmp eq ptr %2, null
  br i1 %25, label %54, label %52

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 9
  %28 = load i8, ptr %27, align 2, !range !8
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  br i1 %29, label %36, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.nh_group, ptr %31, i32 0, i32 6
  %34 = load i8, ptr %33, align 2, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %50

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.nh_info, ptr %31, i32 0, i32 2
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 2
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.nh_info, ptr %31, i32 0, i32 4
  %42 = load i8, ptr %41, align 2, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %54, label %48

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.nh_group, ptr %31, i32 0, i32 5
  %46 = load i8, ptr %45, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44, %40
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib6_check_nexthop.__msg) #14
  %49 = icmp eq ptr %2, null
  br i1 %49, label %54, label %52

50:                                               ; preds = %36, %32
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib6_check_nexthop.__msg.1) #14
  %51 = icmp eq ptr %2, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %50, %48, %24
  %53 = phi ptr [ @check_src_addr.__msg, %24 ], [ @fib6_check_nexthop.__msg, %48 ], [ @fib6_check_nexthop.__msg.1, %50 ]
  store ptr %53, ptr %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %48, %44, %40, %24, %3
  %55 = phi i32 [ 0, %3 ], [ -22, %48 ], [ 0, %44 ], [ -22, %50 ], [ 0, %40 ], [ -22, %24 ], [ -22, %52 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @replace_nexthop_single_notify(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nh_group, ptr %7, i32 0, i32 3
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @call_nexthop_notifiers(ptr noundef nonnull @init_net, i32 noundef 1, ptr noundef %0, ptr noundef %4)
  br label %60

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nh_group, ptr %7, i32 0, i32 4
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %60, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nh_group, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nh_res_table, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nh_res_table, ptr %19, i32 0, i32 7
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %60, label %25

25:                                               ; preds = %41, %17
  %26 = phi i16 [ %42, %41 ], [ %23, %17 ]
  %27 = phi i32 [ %43, %41 ], [ 0, %17 ]
  %28 = getelementptr %struct.nh_res_table, ptr %19, i32 0, i32 8, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = trunc i32 %27 to i16
  %34 = tail call fastcc i32 @__call_nexthop_res_bucket_notifiers(ptr noundef nonnull @init_net, i32 noundef %21, i16 noundef zeroext %33, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i16, ptr %22, align 4
  br label %41

38:                                               ; preds = %32
  %39 = trunc i32 %27 to i16
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %60, label %46

41:                                               ; preds = %36, %25
  %42 = phi i16 [ %37, %36 ], [ %26, %25 ]
  %43 = add nuw nsw i32 %27, 1
  %44 = zext i16 %42 to i32
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %25, label %60

46:                                               ; preds = %57, %38
  %47 = phi i32 [ %59, %57 ], [ %27, %38 ]
  %48 = trunc i32 %47 to i16
  %49 = add i16 %48, -1
  %50 = zext i16 %49 to i32
  %51 = getelementptr %struct.nh_res_table, ptr %19, i32 0, i32 8, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = tail call fastcc i32 @__call_nexthop_res_bucket_notifiers(ptr noundef nonnull @init_net, i32 noundef %21, i16 noundef zeroext %49, i1 noundef zeroext true, ptr noundef %3, ptr noundef %2, ptr noundef %4) #14
  br label %57

57:                                               ; preds = %55, %46
  %58 = icmp eq i16 %49, 0
  %59 = add nsw i32 %47, -1
  br i1 %58, label %60, label %46

60:                                               ; preds = %57, %41, %38, %17, %13, %11
  %61 = phi i32 [ %12, %11 ], [ -22, %13 ], [ %34, %38 ], [ 0, %17 ], [ %34, %57 ], [ 0, %41 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_info_notify_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nh_valid_get_del_req(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 0, ptr %4, align 8, !annotation !18
  %5 = load i32, ptr %0, align 4
  %6 = icmp ult i32 %5, 24
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #14
  %8 = icmp eq ptr %2, null
  br i1 %8, label %46, label %44

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 24
  %11 = add i32 %5, -24
  %12 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %10, i32 noundef %11, ptr noundef nonnull @rtm_nh_policy_get, i32 noundef 31, ptr noundef %2) #14
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 18
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 19
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 17
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %22, %18, %14
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_get_del_req.__msg) #14
  %31 = icmp eq ptr %2, null
  br i1 %31, label %46, label %44

32:                                               ; preds = %26
  %33 = getelementptr inbounds ptr, ptr %4, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_get_del_req.__msg.39) #14
  %37 = icmp eq ptr %2, null
  br i1 %37, label %46, label %44

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %34, i32 4
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %1, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nh_valid_get_del_req.__msg.40) #14
  %43 = icmp eq ptr %2, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %42, %36, %30, %7
  %45 = phi ptr [ @__nlmsg_parse.__msg, %7 ], [ @__nh_valid_get_del_req.__msg, %30 ], [ @__nh_valid_get_del_req.__msg.39, %36 ], [ @__nh_valid_get_del_req.__msg.40, %42 ]
  store ptr %45, ptr %2, align 4
  br label %46

46:                                               ; preds = %44, %42, %38, %36, %30, %9, %7
  %47 = phi i32 [ %12, %9 ], [ -22, %30 ], [ -22, %36 ], [ -22, %42 ], [ 0, %38 ], [ -22, %7 ], [ -22, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtm_dump_nexthop_bucket_nh(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rtm_dump_res_bucket_ctx, ptr %11, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %129, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.nexthop, ptr %2, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nh_group, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rtm_dump_res_bucket_ctx, ptr %11, i32 0, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nh_res_table, ptr %20, i32 0, i32 7
  %24 = load i16, ptr %23, align 4
  %25 = icmp ult i16 %22, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.rtm_dump_nexthop_bucket_data, ptr %3, i32 0, i32 1, i32 3
  %28 = getelementptr inbounds %struct.rtm_dump_nexthop_bucket_data, ptr %3, i32 0, i32 1, i32 1
  %29 = getelementptr inbounds %struct.rtm_dump_nexthop_bucket_data, ptr %3, i32 0, i32 1, i32 2
  %30 = getelementptr inbounds %struct.rtm_dump_nexthop_bucket_data, ptr %3, i32 0, i32 1, i32 5
  %31 = zext i16 %22 to i32
  br label %32

32:                                               ; preds = %106, %26
  %33 = phi i32 [ %31, %26 ], [ %107, %106 ]
  %34 = getelementptr %struct.nh_res_table, ptr %20, i32 0, i32 8, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %10, align 4
  %38 = load i8, ptr %27, align 4, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.nexthop, ptr %36, i32 0, i32 9
  %42 = load i8, ptr %41, align 2, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %106, label %44

44:                                               ; preds = %40, %32
  %45 = load i32, ptr %28, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, ptr %29, align 4
  %49 = icmp ne i32 %48, 0
  %50 = icmp ne i8 %37, 0
  %51 = or i1 %50, %49
  br i1 %51, label %52, label %86

52:                                               ; preds = %47, %44
  %53 = getelementptr inbounds %struct.nexthop, ptr %36, i32 0, i32 9
  %54 = load i8, ptr %53, align 2, !range !8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %106

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.nexthop, ptr %36, i32 0, i32 12
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq i8 %37, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.nh_info, ptr %58, i32 0, i32 2
  %62 = load i8, ptr %61, align 4
  %63 = icmp eq i8 %62, %37
  br i1 %63, label %64, label %106

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %struct.nh_info, ptr %58, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  br i1 %46, label %73, label %67

67:                                               ; preds = %64
  %68 = icmp eq ptr %66, null
  br i1 %68, label %106, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 17
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, %45
  br i1 %72, label %73, label %106

73:                                               ; preds = %69, %64
  %74 = load i32, ptr %29, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = icmp eq ptr %66, null
  br i1 %77, label %106, label %78

78:                                               ; preds = %76
  %79 = tail call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %66) #14
  %80 = icmp eq ptr %79, null
  br i1 %80, label %106, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 17
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %29, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %81, %73, %47
  %87 = load i32, ptr %30, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %35, align 4
  %91 = getelementptr inbounds %struct.nexthop, ptr %90, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %87, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %89, %86
  %95 = load ptr, ptr %8, align 4
  %96 = getelementptr inbounds %struct.nlmsghdr, ptr %95, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = trunc i32 %33 to i16
  %99 = tail call fastcc i32 @nh_fill_res_bucket(ptr noundef %0, ptr noundef %2, ptr noundef %34, i16 noundef zeroext %98, i32 noundef %7, i32 noundef %97, i32 noundef 2)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = trunc i32 %33 to i16
  %103 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %124, label %121

106:                                              ; preds = %94, %89, %81, %78, %76, %69, %67, %60, %52, %40
  %107 = add nuw nsw i32 %33, 1
  %108 = load i16, ptr %23, align 4
  %109 = zext i16 %108 to i32
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %32, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr %3, align 4
  %113 = load i32, ptr %112, align 4
  br label %114

114:                                              ; preds = %111, %16
  %115 = phi i32 [ %113, %111 ], [ %12, %16 ]
  %116 = phi ptr [ %112, %111 ], [ %11, %16 ]
  %117 = add i32 %115, 1
  %118 = getelementptr inbounds %struct.rtm_dump_res_bucket_ctx, ptr %116, i32 0, i32 2
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %120 = load i32, ptr %119, align 8
  br label %121

121:                                              ; preds = %114, %101
  %122 = phi i32 [ %120, %114 ], [ %104, %101 ]
  %123 = phi i16 [ 0, %114 ], [ %102, %101 ]
  br label %124

124:                                              ; preds = %121, %101
  %125 = phi i16 [ %123, %121 ], [ %102, %101 ]
  %126 = phi i32 [ %122, %121 ], [ %99, %101 ]
  %127 = load ptr, ptr %3, align 4
  %128 = getelementptr inbounds %struct.rtm_dump_res_bucket_ctx, ptr %127, i32 0, i32 1
  store i16 %125, ptr %128, align 4
  br label %129

129:                                              ; preds = %124, %4
  %130 = phi i32 [ %126, %124 ], [ 0, %4 ]
  ret i32 %130
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148287597}
!11 = !{i64 683734, i64 2148173705, i64 2148173731, i64 2148173778, i64 2148173800, i64 2148173828, i64 2148173848}
!12 = !{i64 2148189732, i64 2148189764, i64 2148189793, i64 2148189827, i64 2148189858, i64 2148189881}
!13 = !{i64 2149602083}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2149166799}
!16 = !{i64 2149384770}
!17 = !{i64 2149384987}
!18 = !{!"auto-init"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"nla_get_in6_addr: argument 0"}
!21 = distinct !{!21, !"nla_get_in6_addr"}
!22 = !{i64 669797, i64 669821, i64 669842, i64 669859, i64 669876}
!23 = !{i64 2156497051}
!24 = !{i64 2156504892}
!25 = !{i64 2148603218, i64 2148603498, i64 2148603832, i64 2148604166}
!26 = !{i64 2156513336}
!27 = !{i64 2156521117}
!28 = !{i64 2156376360}
!29 = !{i64 2156384499}
!30 = !{i64 2156392185}
!31 = !{i64 2156399794}
!32 = !{i64 2156407925}
!33 = !{i64 2156415611}
!34 = !{i64 2156426619}
!35 = !{i64 2156434073}
!36 = !{i64 2156448729}
!37 = !{i64 2156456183}
!38 = !{i64 2149709764}
!39 = !{i64 2148187375, i64 2148187407, i64 2148187436, i64 2148187470, i64 2148187501, i64 2148187524}
!40 = !{i64 2156339001}
!41 = !{i64 2156307754}
