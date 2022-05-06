; ModuleID = '/llk/IR/net/core/fib_rules.c_pt.bc'
source_filename = "../net/core/fib_rules.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rule_matchall:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rule_matchall\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rule_matchall:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_default_rule_add:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_default_rule_add\22\09\09\09\09\09"
module asm "__kstrtabns_fib_default_rule_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rules_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rules_register\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rules_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rules_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rules_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rules_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rules_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rules_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rules_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rules_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rules_dump\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rules_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rules_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rules_seq_read\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rules_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_nl_newrule:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_nl_newrule\22\09\09\09\09\09"
module asm "__kstrtabns_fib_nl_newrule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_nl_delrule:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_nl_delrule\22\09\09\09\09\09"
module asm "__kstrtabns_fib_nl_delrule:\09\09\09\09\09"
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.138, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.138 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.nla_policy = type { i8, i8, i16, %union.anon.84 }
%union.anon.84 = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.fib_rules_ops = type { i32, %struct.list_head, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.callback_head }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%struct.fib_lookup_arg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.fib_rule_notifier_info = type { %struct.fib_notifier_info, ptr }
%struct.fib_notifier_info = type { i32, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.75, %union.anon.106, %union.anon.107, [48 x i8], %union.anon.108, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.110, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.106 = type { ptr }
%union.anon.107 = type { i64 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { i32, ptr }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.112, i32, i32, i32, i16, i16, %union.anon.114, %union.anon.115, %union.anon.116, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.112 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.105, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.105 = type { ptr }
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
%struct.netdevice_tracker = type {}
%struct.fib_rule_uid_range = type { i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.86 }
%union.anon.86 = type { [6 x i32], [24 x i8] }

@__kstrtab_fib_rule_matchall = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rule_matchall = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rule_matchall = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rule_matchall to i32), ptr @__kstrtab_fib_rule_matchall, ptr @__kstrtabns_fib_rule_matchall }, section "___ksymtab_gpl+fib_rule_matchall", align 4
@__kstrtab_fib_default_rule_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_default_rule_add = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_default_rule_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_default_rule_add to i32), ptr @__kstrtab_fib_default_rule_add, ptr @__kstrtabns_fib_default_rule_add }, section "___ksymtab+fib_default_rule_add", align 4
@__kstrtab_fib_rules_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rules_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rules_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rules_register to i32), ptr @__kstrtab_fib_rules_register, ptr @__kstrtabns_fib_rules_register }, section "___ksymtab_gpl+fib_rules_register", align 4
@__kstrtab_fib_rules_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rules_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rules_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rules_unregister to i32), ptr @__kstrtab_fib_rules_unregister, ptr @__kstrtabns_fib_rules_unregister }, section "___ksymtab_gpl+fib_rules_unregister", align 4
@__kstrtab_fib_rules_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rules_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rules_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rules_lookup to i32), ptr @__kstrtab_fib_rules_lookup, ptr @__kstrtabns_fib_rules_lookup }, section "___ksymtab_gpl+fib_rules_lookup", align 4
@__kstrtab_fib_rules_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rules_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rules_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rules_dump to i32), ptr @__kstrtab_fib_rules_dump, ptr @__kstrtabns_fib_rules_dump }, section "___ksymtab_gpl+fib_rules_dump", align 4
@fib_rules_seq_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"net/core/fib_rules.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@__kstrtab_fib_rules_seq_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rules_seq_read = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rules_seq_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rules_seq_read to i32), ptr @__kstrtab_fib_rules_seq_read, ptr @__kstrtabns_fib_rules_seq_read }, section "___ksymtab_gpl+fib_rules_seq_read", align 4
@fib_nl_newrule.__msg = internal constant [19 x i8] c"Invalid msg length\00", align 1
@fib_nl_newrule.__msg.2 = internal constant [26 x i8] c"Rule family not supported\00", align 1
@fib_nl_newrule.__msg.3 = internal constant [18 x i8] c"Error parsing msg\00", align 1
@__kstrtab_fib_nl_newrule = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_nl_newrule = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_nl_newrule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_nl_newrule to i32), ptr @__kstrtab_fib_nl_newrule, ptr @__kstrtabns_fib_nl_newrule }, section "___ksymtab_gpl+fib_nl_newrule", align 4
@fib_nl_delrule.__msg = internal constant [19 x i8] c"Invalid msg length\00", align 1
@fib_nl_delrule.__msg.4 = internal constant [26 x i8] c"Rule family not supported\00", align 1
@fib_nl_delrule.__msg.5 = internal constant [18 x i8] c"Error parsing msg\00", align 1
@__kstrtab_fib_nl_delrule = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_nl_delrule = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_nl_delrule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_nl_delrule to i32), ptr @__kstrtab_fib_nl_delrule, ptr @__kstrtabns_fib_nl_delrule }, section "___ksymtab_gpl+fib_nl_delrule", align 4
@__initcall__kmod_fib_rules__537_1319_fib_rules_init4 = internal global ptr @fib_rules_init, section ".initcall4.init", align 4
@init_net = external dso_local global %struct.net, align 64
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@fib_rule_policy = internal constant <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 25, [2 x i8] undef } }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 15, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 15, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.84 zeroinitializer } }>, align 4
@fib_nl2rule.__msg = internal constant [23 x i8] c"Invalid source address\00", align 1
@fib_nl2rule.__msg.7 = internal constant [20 x i8] c"Invalid dst address\00", align 1
@fib_nl2rule.__msg.8 = internal constant [16 x i8] c"Unexpected goto\00", align 1
@fib_nl2rule.__msg.9 = internal constant [28 x i8] c"Backward goto not supported\00", align 1
@fib_nl2rule.__msg.10 = internal constant [36 x i8] c"Missing goto target for action goto\00", align 1
@fib_nl2rule.__msg.11 = internal constant [40 x i8] c"l3mdev and table are mutually exclusive\00", align 1
@fib_nl2rule.__msg.12 = internal constant [25 x i8] c"No permission to set uid\00", align 1
@fib_nl2rule.__msg.13 = internal constant [18 x i8] c"Invalid uid range\00", align 1
@fib_nl2rule.__msg.14 = internal constant [20 x i8] c"Invalid sport range\00", align 1
@fib_nl2rule.__msg.15 = internal constant [20 x i8] c"Invalid dport range\00", align 1
@fib_nl2rule_l3mdev.__msg = internal constant [40 x i8] c"l3mdev support is not enabled in kernel\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@fib_rules_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @fib_rules_net_init, ptr null, ptr @fib_rules_net_exit, ptr null, ptr null, i32 0 }, align 4
@fib_rules_notifier = internal global %struct.notifier_block { ptr @fib_rules_event, ptr null, i32 0 }, align 4
@fib_valid_dumprule_req.__msg = internal constant [41 x i8] c"Invalid header for fib rule dump request\00", align 1
@fib_valid_dumprule_req.__msg.17 = internal constant [51 x i8] c"Invalid values in header for fib rule dump request\00", align 1
@fib_valid_dumprule_req.__msg.18 = internal constant [51 x i8] c"Invalid data after header in fib rule dump request\00", align 1
@fib_rules_net_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fib_rules_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_fib_rules__537_1319_fib_rules_init4, ptr @__ksymtab_fib_default_rule_add, ptr @__ksymtab_fib_nl_delrule, ptr @__ksymtab_fib_nl_newrule, ptr @__ksymtab_fib_rule_matchall, ptr @__ksymtab_fib_rules_dump, ptr @__ksymtab_fib_rules_lookup, ptr @__ksymtab_fib_rules_register, ptr @__ksymtab_fib_rules_seq_read, ptr @__ksymtab_fib_rules_unregister], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @fib_rule_matchall(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %53

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 12
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 17
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 18
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 21
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 21, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 22
  %39 = load i16, ptr %38, align 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 22, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 23
  %47 = load i16, ptr %46, align 2
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 23, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = icmp eq i16 %51, 0
  br label %53

53:                                               ; preds = %49, %45, %41, %33, %29, %25, %21, %17, %13, %9, %5, %1
  %54 = phi i1 [ false, %17 ], [ false, %13 ], [ false, %9 ], [ false, %5 ], [ false, %1 ], [ false, %25 ], [ false, %21 ], [ false, %33 ], [ false, %29 ], [ false, %41 ], [ true, %45 ], [ %52, %49 ]
  ret i1 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_default_rule_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 4197824) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fib_rule, ptr %7, i32 0, i32 15
  store volatile i32 1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.fib_rule, ptr %7, i32 0, i32 7
  store i8 1, ptr %11, align 32
  %12 = getelementptr inbounds %struct.fib_rule, ptr %7, i32 0, i32 16
  store i32 %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fib_rule, ptr %7, i32 0, i32 6
  store i32 %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fib_rule, ptr %7, i32 0, i32 5
  store i32 %3, ptr %14, align 8
  %15 = getelementptr inbounds %struct.fib_rule, ptr %7, i32 0, i32 9
  store i8 2, ptr %15, align 2
  %16 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fib_rule, ptr %7, i32 0, i32 14
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fib_rule, ptr %7, i32 0, i32 21
  store i64 -4294967296, ptr %19, align 8
  %20 = getelementptr inbounds %struct.fib_rule, ptr %7, i32 0, i32 18
  store i32 -1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fib_rule, ptr %7, i32 0, i32 17
  store i32 -1, ptr %21, align 64
  %22 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 17
  %23 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 17, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr %7, ptr %23, align 4
  store ptr %22, ptr %7, align 64
  %25 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %7, ptr %24, align 4
  br label %26

26:                                               ; preds = %9, %4
  %27 = phi i32 [ 0, %9 ], [ -12, %4 ]
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib_rules_register(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @kmemdup(ptr noundef %0, i32 noundef 96, i32 noundef 3264) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 17
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 17, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 19
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 128
  br i1 %11, label %53, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %53, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %33) #13
  %34 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 28
  br label %35

35:                                               ; preds = %39, %32
  %36 = phi ptr [ %34, %32 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %34
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %37, i32 -4
  %41 = load i32, ptr %3, align 4
  %42 = load i32, ptr %40, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %49, label %35

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 1
  %46 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 28, i32 1
  %47 = load ptr, ptr %46, align 4
  store ptr %34, ptr %45, align 4
  %48 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 1, i32 1
  store ptr %47, ptr %48, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  store volatile ptr %45, ptr %47, align 4
  store ptr %45, ptr %46, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i32 [ 0, %44 ], [ -17, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %51 = load i16, ptr %33, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br i1 %38, label %56, label %53

53:                                               ; preds = %49, %28, %24, %20, %16, %12, %5
  %54 = phi i32 [ %50, %49 ], [ -22, %5 ], [ -22, %28 ], [ -22, %24 ], [ -22, %20 ], [ -22, %16 ], [ -22, %12 ]
  tail call void @kfree(ptr noundef nonnull %3) #13
  %55 = inttoptr i32 %54 to ptr
  br label %56

56:                                               ; preds = %53, %49, %2
  %57 = phi ptr [ %55, %53 ], [ %3, %49 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_rules_unregister(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %12 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %41, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 11
  br label %17

17:                                               ; preds = %39, %15
  %18 = phi ptr [ %13, %15 ], [ %19, %39 ]
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %19, ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %23 = load ptr, ptr %16, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = tail call i32 %23(ptr noundef %18) #13
  br label %27

27:                                               ; preds = %25, %17
  %28 = getelementptr inbounds %struct.fib_rule, ptr %18, i32 0, i32 15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #13, !srcloc !14
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #13, !srcloc !15
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %39, label %34, !prof !16

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %28, i32 noundef 3) #13
  br label %39

35:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %36 = icmp eq ptr %18, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.fib_rule, ptr %18, i32 0, i32 24
  tail call void @kvfree_call_rcu(ptr noundef %38, ptr noundef nonnull inttoptr (i32 120 to ptr)) #13
  br label %39

39:                                               ; preds = %37, %35, %34, %32
  %40 = icmp eq ptr %19, %12
  br i1 %40, label %41, label %17

41:                                               ; preds = %39, %1
  %42 = icmp eq ptr %0, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 20
  tail call void @kvfree_call_rcu(ptr noundef %44, ptr noundef nonnull inttoptr (i32 88 to ptr)) #13
  br label %45

45:                                               ; preds = %43, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_rules_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %5 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 17
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %120, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 2
  %11 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 9
  %12 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 8
  %13 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 7
  %15 = getelementptr inbounds %struct.fib_rules_ops, ptr %0, i32 0, i32 8
  br label %16

16:                                               ; preds = %76, %8
  %17 = phi ptr [ %6, %8 ], [ %77, %76 ]
  %18 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %9, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %21, %16
  %25 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %1, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = load i32, ptr %10, align 8
  %35 = xor i32 %34, %33
  %36 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 12
  %42 = load i64, ptr %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i64, ptr %11, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %44, %40
  %48 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 21
  %49 = load i32, ptr %12, align 4
  %50 = load i32, ptr %48, align 8
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 21, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %49, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %13, align 4
  %58 = tail call i32 %57(ptr noundef %17, ptr noundef %1, i32 noundef %2) #13
  br label %59

59:                                               ; preds = %56, %52, %47, %44, %31, %28, %21
  %60 = phi i32 [ 0, %21 ], [ 0, %28 ], [ 0, %31 ], [ 0, %44 ], [ 0, %47 ], [ 0, %52 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  %65 = icmp eq i32 %60, 0
  %66 = zext i1 %65 to i32
  %67 = select i1 %64, i32 %60, i32 %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %117, label %69

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 7
  %71 = load i8, ptr %70, align 8
  switch i8 %71, label %78 [
    i8 2, label %72
    i8 3, label %117
  ]

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 13
  %74 = load volatile ptr, ptr %73, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %117, label %76

76:                                               ; preds = %117, %72
  %77 = phi ptr [ %74, %72 ], [ %118, %117 ]
  br label %16

78:                                               ; preds = %69
  %79 = load ptr, ptr %14, align 4
  %80 = tail call i32 %79(ptr noundef %17, ptr noundef %1, i32 noundef %2, ptr noundef %3) #13
  switch i32 %80, label %86 [
    i32 0, label %81
    i32 -11, label %117
  ]

81:                                               ; preds = %78
  %82 = load ptr, ptr %15, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call zeroext i1 %82(ptr noundef %17, i32 noundef %2, ptr noundef %3) #13
  br i1 %85, label %117, label %86

86:                                               ; preds = %84, %81, %78
  %87 = getelementptr inbounds %struct.fib_lookup_arg, ptr %3, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 15
  %93 = load volatile i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %105, %91
  %96 = phi i32 [ %103, %105 ], [ %93, %91 ]
  %97 = add i32 %96, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #13, !srcloc !14
  br label %98

98:                                               ; preds = %98, %95
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 %96, i32 %97, ptr elementtype(i32) %92) #13, !srcloc !19
  %100 = extractvalue { i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %98

102:                                              ; preds = %98
  %103 = extractvalue { i32, i32 } %99, 1
  %104 = icmp eq i32 %103, %96
  br i1 %104, label %107, label %105, !prof !16

105:                                              ; preds = %102
  %106 = icmp eq i32 %103, 0
  br i1 %106, label %107, label %95

107:                                              ; preds = %105, %102, %91
  %108 = phi i32 [ 0, %91 ], [ 0, %105 ], [ %96, %102 ]
  %109 = add i32 %108, 1
  %110 = or i32 %109, %108
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %113, label %112, !prof !16

112:                                              ; preds = %107
  tail call void @refcount_warn_saturate(ptr noundef %92, i32 noundef 0) #13
  br label %113

113:                                              ; preds = %112, %107
  %114 = icmp eq i32 %108, 0
  br i1 %114, label %120, label %115, !prof !20

115:                                              ; preds = %113, %86
  %116 = getelementptr inbounds %struct.fib_lookup_arg, ptr %3, i32 0, i32 3
  store ptr %17, ptr %116, align 4
  br label %120

117:                                              ; preds = %84, %78, %72, %69, %59
  %118 = load volatile ptr, ptr %17, align 4
  %119 = icmp eq ptr %118, %5
  br i1 %119, label %120, label %76

120:                                              ; preds = %117, %115, %113, %4
  %121 = phi i32 [ %80, %115 ], [ -3, %113 ], [ -3, %4 ], [ -3, %117 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_rules_dump(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = alloca %struct.fib_rule_notifier_info, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 28
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ %6, %4 ], [ %9, %11 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %9, i32 -4
  %17 = getelementptr i8, ptr %9, i32 76
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 @try_module_get(ptr noundef %18) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %20 = icmp ne ptr %16, null
  %21 = and i1 %20, %19
  br i1 %21, label %23, label %37

22:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %37

23:                                               ; preds = %15
  %24 = getelementptr i8, ptr %9, i32 68
  %25 = getelementptr inbounds %struct.fib_notifier_info, ptr %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.fib_rule_notifier_info, ptr %5, i32 0, i32 1
  br label %27

27:                                               ; preds = %31, %23
  %28 = phi ptr [ %24, %23 ], [ %29, %31 ]
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %24
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  store i32 %2, ptr %5, align 4
  store ptr %3, ptr %25, align 4
  store ptr %29, ptr %26, align 4
  %32 = call i32 @call_fib_notifier(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %27, label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %32, %31 ], [ 0, %27 ]
  %36 = load ptr, ptr %17, align 4
  call void @module_put(ptr noundef %36) #13
  br label %37

37:                                               ; preds = %34, %22, %15
  %38 = phi i32 [ %35, %34 ], [ -97, %15 ], [ -97, %22 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_rules_seq_read(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call i32 @rtnl_is_locked() #13
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @fib_rules_seq_read.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !20

8:                                                ; preds = %2
  store i1 true, ptr @fib_rules_seq_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 405, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 405) #13
  br label %9

9:                                                ; preds = %8, %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 28
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %11

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %13, i32 -4
  %21 = getelementptr i8, ptr %13, i32 76
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i1 @try_module_get(ptr noundef %22) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %24 = icmp ne ptr %20, null
  %25 = and i1 %24, %23
  br i1 %25, label %27, label %31

26:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %31

27:                                               ; preds = %19
  %28 = getelementptr i8, ptr %13, i32 24
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %21, align 4
  tail call void @module_put(ptr noundef %30) #13
  br label %31

31:                                               ; preds = %27, %26, %19
  %32 = phi i32 [ %29, %27 ], [ 0, %19 ], [ 0, %26 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_nl_newrule(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.fib_rule_notifier_info, align 4
  %5 = alloca ptr, align 4
  %6 = alloca [25 x ptr], align 4
  %7 = alloca i8, align 1
  %8 = getelementptr i8, ptr %1, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %6, i8 0, i32 100, i1 false), !annotation !22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  %9 = load i32, ptr %1, align 4
  %10 = icmp ult i32 %9, 28
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_newrule.__msg) #13
  %12 = icmp eq ptr %2, null
  br i1 %12, label %319, label %13

13:                                               ; preds = %11
  store ptr @fib_nl_newrule.__msg, ptr %2, align 4
  br label %319

14:                                               ; preds = %3
  %15 = load i8, ptr %8, align 4
  %16 = zext i8 %15 to i32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  br label %17

17:                                               ; preds = %21, %14
  %18 = phi ptr [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28), %14 ], [ %19, %21 ]
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 -4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %16
  br i1 %24, label %25, label %17

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %19, i32 -4
  %27 = getelementptr i8, ptr %19, i32 76
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @try_module_get(ptr noundef %28) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %30 = icmp ne ptr %26, null
  %31 = and i1 %30, %29
  br i1 %31, label %36, label %33

32:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %33

33:                                               ; preds = %32, %25
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_newrule.__msg.2) #13
  %34 = icmp eq ptr %2, null
  br i1 %34, label %319, label %35

35:                                               ; preds = %33
  store ptr @fib_nl_newrule.__msg.2, ptr %2, align 4
  br label %319

36:                                               ; preds = %25
  %37 = load i32, ptr %1, align 4
  %38 = icmp ult i32 %37, 28
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #13
  %40 = icmp eq ptr %2, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_newrule.__msg.3) #13
  br label %316

42:                                               ; preds = %39
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_newrule.__msg.3) #13
  br label %50

43:                                               ; preds = %36
  %44 = getelementptr i8, ptr %1, i32 28
  %45 = add i32 %37, -28
  %46 = call i32 @__nla_parse(ptr noundef nonnull %6, i32 noundef 24, ptr noundef %44, i32 noundef %45, ptr noundef nonnull @fib_rule_policy, i32 noundef 0, ptr noundef %2) #13
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_newrule.__msg.3) #13
  %49 = icmp eq ptr %2, null
  br i1 %49, label %316, label %50

50:                                               ; preds = %48, %42
  %51 = phi i32 [ -22, %42 ], [ %46, %48 ]
  store ptr @fib_nl_newrule.__msg.3, ptr %2, align 4
  br label %316

52:                                               ; preds = %43
  %53 = call fastcc i32 @fib_nl2rule(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %26, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %316

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %57 = load i16, ptr %56, align 2
  %58 = and i16 %57, 512
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %193, label %60

60:                                               ; preds = %55
  %61 = getelementptr i8, ptr %19, i32 68
  %62 = getelementptr i8, ptr %19, i32 48
  %63 = load ptr, ptr %61, align 4
  %64 = icmp eq ptr %63, %61
  br i1 %64, label %193, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 6
  %69 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 16
  %70 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 19
  %71 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 20
  %72 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 3
  %73 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 17
  %74 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 18
  %75 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 4
  %76 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 12
  %77 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 14
  %78 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 8
  %79 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 21
  %80 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 21, i32 1
  %81 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 10
  %82 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 9
  %83 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 22
  %84 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 22, i32 1
  %85 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 23
  %86 = getelementptr inbounds %struct.fib_rule, ptr %66, i32 0, i32 23, i32 1
  br label %87

87:                                               ; preds = %190, %65
  %88 = phi ptr [ %63, %65 ], [ %191, %190 ]
  %89 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 7
  %90 = load i8, ptr %89, align 8
  %91 = load i8, ptr %67, align 8
  %92 = icmp eq i8 %90, %91
  br i1 %92, label %93, label %190

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %68, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %190

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 16
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %69, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %190

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 19
  %105 = call i32 @bcmp(ptr noundef dereferenceable(16) %104, ptr noundef dereferenceable(16) %70, i32 16) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %190

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 20
  %109 = call i32 @bcmp(ptr noundef dereferenceable(16) %108, ptr noundef dereferenceable(16) %71, i32 16) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %190

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 3
  %113 = load i32, ptr %112, align 8
  %114 = load i32, ptr %72, align 8
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %190

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 17
  %118 = load i32, ptr %117, align 8
  %119 = load i32, ptr %73, align 8
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %190

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 18
  %123 = load i32, ptr %122, align 4
  %124 = load i32, ptr %74, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %190

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = load i32, ptr %75, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %190

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 12
  %133 = load i64, ptr %132, align 8
  %134 = load i64, ptr %76, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %190

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 14
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %77, align 4
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %190

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 8
  %143 = load i8, ptr %142, align 1
  %144 = load i8, ptr %78, align 1
  %145 = icmp eq i8 %143, %144
  br i1 %145, label %146, label %190

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 21
  %148 = load i32, ptr %147, align 8
  %149 = load i32, ptr %79, align 8
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %190

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 21, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = load i32, ptr %80, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %190

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 10
  %158 = load i8, ptr %157, align 1
  %159 = load i8, ptr %81, align 1
  %160 = icmp eq i8 %158, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 9
  %163 = load i8, ptr %162, align 2
  %164 = load i8, ptr %82, align 2
  %165 = icmp eq i8 %163, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 22
  %168 = load i16, ptr %167, align 2
  %169 = load i16, ptr %83, align 2
  %170 = icmp eq i16 %168, %169
  br i1 %170, label %171, label %190

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 22, i32 1
  %173 = load i16, ptr %172, align 2
  %174 = load i16, ptr %84, align 2
  %175 = icmp eq i16 %173, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 23
  %178 = load i16, ptr %177, align 2
  %179 = load i16, ptr %85, align 2
  %180 = icmp eq i16 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.fib_rule, ptr %88, i32 0, i32 23, i32 1
  %183 = load i16, ptr %182, align 2
  %184 = load i16, ptr %86, align 2
  %185 = icmp eq i16 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load ptr, ptr %62, align 4
  %188 = call i32 %187(ptr noundef %88, ptr noundef %8, ptr noundef nonnull %6) #13
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %313

190:                                              ; preds = %186, %181, %176, %171, %166, %161, %156, %151, %146, %141, %136, %131, %126, %121, %116, %111, %107, %103, %98, %93, %87
  %191 = load ptr, ptr %88, align 4
  %192 = icmp eq ptr %191, %61
  br i1 %192, label %193, label %87

193:                                              ; preds = %190, %60, %55
  %194 = getelementptr i8, ptr %19, i32 40
  %195 = load ptr, ptr %194, align 4
  %196 = load ptr, ptr %5, align 4
  %197 = call i32 %195(ptr noundef %196, ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, ptr noundef %2) #13
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %313, label %199

199:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %200 = load i32, ptr %26, align 4
  store i32 %200, ptr %4, align 4
  %201 = getelementptr inbounds %struct.fib_notifier_info, ptr %4, i32 0, i32 1
  store ptr %2, ptr %201, align 4
  %202 = getelementptr inbounds %struct.fib_rule_notifier_info, ptr %4, i32 0, i32 1
  store ptr %196, ptr %202, align 4
  %203 = getelementptr i8, ptr %19, i32 24
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, 1
  store i32 %205, ptr %203, align 4
  %206 = call i32 @call_fib_notifiers(ptr noundef nonnull @init_net, i32 noundef 4, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %313, label %208

208:                                              ; preds = %199
  %209 = getelementptr i8, ptr %19, i32 68
  %210 = getelementptr inbounds %struct.fib_rule, ptr %196, i32 0, i32 11
  br label %211

211:                                              ; preds = %215, %208
  %212 = phi ptr [ %209, %208 ], [ %213, %215 ]
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, %209
  br i1 %214, label %222, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.fib_rule, ptr %213, i32 0, i32 16
  %217 = load i32, ptr %216, align 4
  %218 = load i32, ptr %210, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %211

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.fib_rule, ptr %196, i32 0, i32 13
  store volatile ptr %213, ptr %221, align 8
  br label %225

222:                                              ; preds = %211
  %223 = getelementptr inbounds %struct.fib_rule, ptr %196, i32 0, i32 13
  %224 = load ptr, ptr %223, align 8
  br label %225

225:                                              ; preds = %222, %220
  %226 = phi ptr [ %224, %222 ], [ %213, %220 ]
  %227 = icmp eq ptr %226, null
  %228 = load ptr, ptr %209, align 4
  %229 = icmp eq ptr %228, %209
  br i1 %229, label %250, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.fib_rule, ptr %196, i32 0, i32 16
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr inbounds %struct.fib_rule, ptr %228, i32 0, i32 16
  %234 = load i32, ptr %233, align 4
  %235 = icmp ugt i32 %234, %232
  br i1 %235, label %244, label %236

236:                                              ; preds = %240, %230
  %237 = phi ptr [ %238, %240 ], [ %228, %230 ]
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, %209
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.fib_rule, ptr %238, i32 0, i32 16
  %242 = load i32, ptr %241, align 4
  %243 = icmp ugt i32 %242, %232
  br i1 %243, label %244, label %236

244:                                              ; preds = %240, %236, %230
  %245 = phi ptr [ null, %230 ], [ %237, %236 ], [ %237, %240 ]
  %246 = icmp eq ptr %245, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %244
  %248 = load ptr, ptr %245, align 4
  store ptr %248, ptr %196, align 4
  %249 = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  store ptr %245, ptr %249, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  br label %252

250:                                              ; preds = %244, %225
  store ptr %228, ptr %196, align 4
  %251 = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  store ptr %209, ptr %251, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  br label %252

252:                                              ; preds = %250, %247
  %253 = phi ptr [ %209, %250 ], [ %245, %247 ]
  %254 = phi ptr [ %228, %250 ], [ %248, %247 ]
  store volatile ptr %196, ptr %253, align 4
  %255 = getelementptr inbounds %struct.list_head, ptr %254, i32 0, i32 1
  store ptr %196, ptr %255, align 4
  %256 = getelementptr i8, ptr %19, i32 16
  %257 = load i32, ptr %256, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %287, label %259

259:                                              ; preds = %252
  %260 = load ptr, ptr %209, align 4
  %261 = icmp eq ptr %260, %209
  br i1 %261, label %287, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.fib_rule, ptr %196, i32 0, i32 16
  br label %264

264:                                              ; preds = %283, %262
  %265 = phi i32 [ %257, %262 ], [ %284, %283 ]
  %266 = phi ptr [ %260, %262 ], [ %285, %283 ]
  %267 = getelementptr inbounds %struct.fib_rule, ptr %266, i32 0, i32 7
  %268 = load i8, ptr %267, align 8
  %269 = icmp eq i8 %268, 2
  br i1 %269, label %270, label %283

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.fib_rule, ptr %266, i32 0, i32 11
  %272 = load i32, ptr %271, align 4
  %273 = load i32, ptr %263, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %283

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.fib_rule, ptr %266, i32 0, i32 13
  %277 = load ptr, ptr %276, align 8
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %283

279:                                              ; preds = %275
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  store volatile ptr %196, ptr %276, align 8
  %280 = load i32, ptr %256, align 4
  %281 = add i32 %280, -1
  store i32 %281, ptr %256, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %279, %275, %270, %264
  %284 = phi i32 [ %265, %264 ], [ %265, %270 ], [ %265, %275 ], [ %281, %279 ]
  %285 = load ptr, ptr %266, align 4
  %286 = icmp eq ptr %285, %209
  br i1 %286, label %287, label %264

287:                                              ; preds = %283, %279, %259, %252
  %288 = phi i32 [ %257, %259 ], [ 0, %252 ], [ 0, %279 ], [ %284, %283 ]
  %289 = getelementptr inbounds %struct.fib_rule, ptr %196, i32 0, i32 7
  %290 = load i8, ptr %289, align 8
  %291 = icmp eq i8 %290, 2
  br i1 %291, label %292, label %296

292:                                              ; preds = %287
  %293 = getelementptr i8, ptr %19, i32 20
  %294 = load i32, ptr %293, align 4
  %295 = add i32 %294, 1
  store i32 %295, ptr %293, align 4
  br label %296

296:                                              ; preds = %292, %287
  br i1 %227, label %297, label %299

297:                                              ; preds = %296
  %298 = add i32 %288, 1
  store i32 %298, ptr %256, align 4
  br label %299

299:                                              ; preds = %297, %296
  %300 = getelementptr inbounds %struct.fib_rule, ptr %196, i32 0, i32 12
  %301 = load i64, ptr %300, align 8
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %299
  call void @ip_tunnel_need_metadata() #13
  br label %304

304:                                              ; preds = %303, %299
  %305 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %306 = load i32, ptr %305, align 4
  call fastcc void @notify_rule_change(i32 noundef 32, ptr noundef %196, ptr noundef nonnull %26, ptr noundef %1, i32 noundef %306)
  %307 = getelementptr i8, ptr %19, i32 60
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %304
  call void %308(ptr noundef nonnull %26) #13
  br label %311

311:                                              ; preds = %310, %304
  %312 = load ptr, ptr %27, align 4
  call void @module_put(ptr noundef %312) #13
  br label %319

313:                                              ; preds = %199, %193, %186
  %314 = phi ptr [ %196, %193 ], [ %196, %199 ], [ %66, %186 ]
  %315 = phi i32 [ %197, %193 ], [ %206, %199 ], [ -17, %186 ]
  call void @kfree(ptr noundef %314) #13
  br label %316

316:                                              ; preds = %313, %52, %50, %48, %41
  %317 = phi i32 [ %315, %313 ], [ %46, %48 ], [ %51, %50 ], [ %53, %52 ], [ -22, %41 ]
  %318 = load ptr, ptr %27, align 4
  call void @module_put(ptr noundef %318) #13
  br label %319

319:                                              ; preds = %316, %311, %35, %33, %13, %11
  %320 = phi i32 [ 0, %311 ], [ %317, %316 ], [ -97, %33 ], [ -97, %35 ], [ -22, %11 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %320
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fib_nl2rule(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #1 {
  %8 = alloca i64, align 8
  %9 = getelementptr i8, ptr %1, i32 18
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr ptr, ptr %4, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = zext i8 %10 to i32
  %18 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 3
  %21 = icmp slt i32 %20, %17
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i16, ptr %14, align 2
  %24 = zext i16 %23 to i32
  %25 = add nsw i32 %24, -4
  %26 = icmp eq i32 %25, %19
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %16, %12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg) #13
  %28 = icmp eq ptr %2, null
  br i1 %28, label %298, label %29

29:                                               ; preds = %27
  store ptr @fib_nl2rule.__msg, ptr %2, align 4
  br label %298

30:                                               ; preds = %22, %7
  %31 = getelementptr i8, ptr %1, i32 17
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %30
  %35 = getelementptr ptr, ptr %4, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = zext i8 %32 to i32
  %40 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 3
  %43 = icmp slt i32 %42, %39
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load i16, ptr %36, align 2
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %46, -4
  %48 = icmp eq i32 %47, %41
  br i1 %48, label %52, label %49

49:                                               ; preds = %44, %38, %34
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.7) #13
  %50 = icmp eq ptr %2, null
  br i1 %50, label %298, label %51

51:                                               ; preds = %49
  store ptr @fib_nl2rule.__msg.7, ptr %2, align 4
  br label %298

52:                                               ; preds = %44, %30
  %53 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %54, i32 noundef 4197824) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %298, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 15
  store volatile i32 1, ptr %58, align 8
  %59 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 14
  store ptr @init_net, ptr %59, align 4
  %60 = getelementptr ptr, ptr %4, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = getelementptr i8, ptr %61, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 16
  store i32 %65, ptr %66, align 4
  store i8 1, ptr %6, align 1
  br label %83

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.fib_rules_ops, ptr %3, i32 0, i32 17
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %80, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %69, align 4
  %73 = icmp eq ptr %72, %68
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.fib_rule, ptr %72, i32 0, i32 16
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  %78 = add i32 %76, -1
  %79 = select i1 %77, i32 0, i32 %78
  br label %80

80:                                               ; preds = %74, %71, %67
  %81 = phi i32 [ 0, %71 ], [ 0, %67 ], [ %79, %74 ]
  %82 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 16
  store i32 %81, ptr %82, align 4
  br label %83

83:                                               ; preds = %80, %63
  %84 = getelementptr ptr, ptr %4, i32 21
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr i8, ptr %85, i32 4
  %89 = load i8, ptr %88, align 1
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i8 [ %89, %87 ], [ 0, %83 ]
  %92 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 9
  store i8 %91, ptr %92, align 2
  %93 = getelementptr ptr, ptr %4, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 1
  store i32 -1, ptr %97, align 8
  %98 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 19
  %99 = load ptr, ptr %93, align 4
  %100 = tail call i32 @nla_strscpy(ptr noundef %98, ptr noundef %99, i32 noundef 16) #13
  %101 = tail call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef %98) #13
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 17
  %105 = load i32, ptr %104, align 4
  store i32 %105, ptr %97, align 8
  br label %106

106:                                              ; preds = %103, %96, %90
  %107 = getelementptr ptr, ptr %4, i32 17
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %120, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 2
  store i32 -1, ptr %111, align 4
  %112 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 20
  %113 = load ptr, ptr %107, align 4
  %114 = tail call i32 @nla_strscpy(ptr noundef %112, ptr noundef %113, i32 noundef 16) #13
  %115 = tail call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef %112) #13
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 17
  %119 = load i32, ptr %118, align 4
  store i32 %119, ptr %111, align 4
  br label %120

120:                                              ; preds = %117, %110, %106
  %121 = getelementptr ptr, ptr %4, i32 10
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %120
  %125 = getelementptr i8, ptr %122, i32 4
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 3
  store i32 %126, ptr %127, align 16
  %128 = icmp eq i32 %126, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 4
  store i32 -1, ptr %130, align 4
  br label %131

131:                                              ; preds = %129, %124, %120
  %132 = getelementptr ptr, ptr %4, i32 16
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = getelementptr i8, ptr %133, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 4
  store i32 %137, ptr %138, align 4
  br label %139

139:                                              ; preds = %135, %131
  %140 = getelementptr ptr, ptr %4, i32 12
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 0, ptr %8, align 8, !annotation !22
  %144 = call i32 @nla_memcpy(ptr noundef nonnull %8, ptr noundef nonnull %141, i32 noundef 8) #13
  %145 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  %146 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 12
  store i64 %145, ptr %146, align 8
  br label %147

147:                                              ; preds = %143, %139
  %148 = getelementptr ptr, ptr %4, i32 19
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule_l3mdev.__msg) #13
  %152 = icmp eq ptr %2, null
  br i1 %152, label %296, label %293

153:                                              ; preds = %147
  %154 = getelementptr i8, ptr %1, i32 23
  %155 = load i8, ptr %154, align 1
  %156 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 7
  store i8 %155, ptr %156, align 32
  %157 = getelementptr i8, ptr %1, i32 24
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 5
  store i32 %158, ptr %159, align 8
  %160 = getelementptr ptr, ptr %4, i32 15
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %153
  %164 = getelementptr i8, ptr %161, i32 4
  %165 = load i32, ptr %164, align 4
  br label %170

166:                                              ; preds = %153
  %167 = getelementptr i8, ptr %1, i32 20
  %168 = load i8, ptr %167, align 4
  %169 = zext i8 %168 to i32
  br label %170

170:                                              ; preds = %166, %163
  %171 = phi i32 [ %165, %163 ], [ %169, %166 ]
  %172 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 6
  store i32 %171, ptr %172, align 4
  %173 = getelementptr ptr, ptr %4, i32 14
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %170
  %177 = getelementptr i8, ptr %174, i32 4
  %178 = load i32, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %170
  %180 = phi i32 [ %178, %176 ], [ -1, %170 ]
  %181 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 18
  store i32 %180, ptr %181, align 4
  %182 = getelementptr ptr, ptr %4, i32 13
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %179
  %186 = getelementptr i8, ptr %183, i32 4
  %187 = load i32, ptr %186, align 4
  br label %188

188:                                              ; preds = %185, %179
  %189 = phi i32 [ %187, %185 ], [ -1, %179 ]
  %190 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 17
  store i32 %189, ptr %190, align 64
  %191 = getelementptr ptr, ptr %4, i32 4
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  %194 = icmp eq i8 %155, 2
  br i1 %193, label %207, label %195

195:                                              ; preds = %188
  br i1 %194, label %198, label %196

196:                                              ; preds = %195
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.8) #13
  %197 = icmp eq ptr %2, null
  br i1 %197, label %296, label %293

198:                                              ; preds = %195
  %199 = getelementptr i8, ptr %192, i32 4
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 11
  store i32 %200, ptr %201, align 4
  %202 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 16
  %203 = load i32, ptr %202, align 4
  %204 = icmp ugt i32 %200, %203
  br i1 %204, label %210, label %205

205:                                              ; preds = %198
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.9) #13
  %206 = icmp eq ptr %2, null
  br i1 %206, label %296, label %293

207:                                              ; preds = %188
  br i1 %194, label %208, label %210

208:                                              ; preds = %207
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.10) #13
  %209 = icmp eq ptr %2, null
  br i1 %209, label %296, label %293

210:                                              ; preds = %207, %198
  %211 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 8
  %212 = load i8, ptr %211, align 1
  %213 = icmp eq i8 %212, 0
  %214 = icmp eq i32 %171, 0
  %215 = select i1 %213, i1 true, i1 %214
  br i1 %215, label %218, label %216

216:                                              ; preds = %210
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.11) #13
  %217 = icmp eq ptr %2, null
  br i1 %217, label %296, label %293

218:                                              ; preds = %210
  %219 = getelementptr ptr, ptr %4, i32 20
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %244, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %224 = icmp eq ptr %223, @init_user_ns
  br i1 %224, label %227, label %225

225:                                              ; preds = %222
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.12) #13
  %226 = icmp eq ptr %2, null
  br i1 %226, label %296, label %293

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 21
  %229 = getelementptr i8, ptr %220, i32 4
  %230 = load i32, ptr %229, align 4, !noalias !24
  %231 = getelementptr i8, ptr %220, i32 8
  %232 = load i32, ptr %231, align 4, !noalias !24
  %233 = zext i32 %232 to i64
  %234 = shl nuw i64 %233, 32
  %235 = zext i32 %230 to i64
  %236 = or i64 %234, %235
  store i64 %236, ptr %228, align 8
  %237 = icmp eq i32 %230, -1
  %238 = icmp eq i32 %232, -1
  %239 = select i1 %237, i1 true, i1 %238
  %240 = icmp ugt i32 %230, %232
  %241 = select i1 %239, i1 true, i1 %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %227
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.13) #13
  %243 = icmp eq ptr %2, null
  br i1 %243, label %296, label %293

244:                                              ; preds = %218
  %245 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 21
  store i64 -4294967296, ptr %245, align 8
  br label %246

246:                                              ; preds = %244, %227
  %247 = getelementptr ptr, ptr %4, i32 22
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = getelementptr i8, ptr %248, i32 4
  %252 = load i8, ptr %251, align 1
  %253 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 10
  store i8 %252, ptr %253, align 1
  br label %254

254:                                              ; preds = %250, %246
  %255 = getelementptr ptr, ptr %4, i32 23
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %273, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 22
  %260 = getelementptr i8, ptr %256, i32 4
  %261 = load i16, ptr %260, align 2
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %271, label %263

263:                                              ; preds = %258
  %264 = getelementptr i8, ptr %256, i32 6
  %265 = load i16, ptr %264, align 2
  switch i16 %265, label %266 [
    i16 0, label %271
    i16 -1, label %271
  ]

266:                                              ; preds = %263
  %267 = icmp ugt i16 %261, %265
  br i1 %267, label %271, label %268

268:                                              ; preds = %266
  store i16 %261, ptr %259, align 16
  %269 = load i16, ptr %264, align 2
  %270 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 22, i32 1
  store i16 %269, ptr %270, align 2
  br label %273

271:                                              ; preds = %266, %263, %263, %258
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.14) #13
  %272 = icmp eq ptr %2, null
  br i1 %272, label %296, label %293

273:                                              ; preds = %268, %254
  %274 = getelementptr ptr, ptr %4, i32 24
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %292, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 23
  %279 = getelementptr i8, ptr %275, i32 4
  %280 = load i16, ptr %279, align 2
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %277
  %283 = getelementptr i8, ptr %275, i32 6
  %284 = load i16, ptr %283, align 2
  switch i16 %284, label %285 [
    i16 0, label %290
    i16 -1, label %290
  ]

285:                                              ; preds = %282
  %286 = icmp ugt i16 %280, %284
  br i1 %286, label %290, label %287

287:                                              ; preds = %285
  store i16 %280, ptr %278, align 4
  %288 = load i16, ptr %283, align 2
  %289 = getelementptr inbounds %struct.fib_rule, ptr %55, i32 0, i32 23, i32 1
  store i16 %288, ptr %289, align 2
  br label %292

290:                                              ; preds = %285, %282, %282, %277
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.15) #13
  %291 = icmp eq ptr %2, null
  br i1 %291, label %296, label %293

292:                                              ; preds = %287, %273
  store ptr %55, ptr %5, align 4
  br label %298

293:                                              ; preds = %290, %271, %242, %225, %216, %208, %205, %196, %151
  %294 = phi ptr [ @fib_nl2rule_l3mdev.__msg, %151 ], [ @fib_nl2rule.__msg.8, %196 ], [ @fib_nl2rule.__msg.9, %205 ], [ @fib_nl2rule.__msg.10, %208 ], [ @fib_nl2rule.__msg.11, %216 ], [ @fib_nl2rule.__msg.12, %225 ], [ @fib_nl2rule.__msg.13, %242 ], [ @fib_nl2rule.__msg.14, %271 ], [ @fib_nl2rule.__msg.15, %290 ]
  %295 = phi i32 [ -22, %151 ], [ -22, %196 ], [ -22, %205 ], [ -22, %208 ], [ -22, %216 ], [ -1, %225 ], [ -22, %242 ], [ -22, %271 ], [ -22, %290 ]
  store ptr %294, ptr %2, align 4
  br label %296

296:                                              ; preds = %293, %290, %271, %242, %225, %216, %208, %205, %196, %151
  %297 = phi i32 [ -22, %196 ], [ -22, %205 ], [ -22, %208 ], [ -22, %216 ], [ -1, %225 ], [ -22, %242 ], [ -22, %271 ], [ -22, %290 ], [ -22, %151 ], [ %295, %293 ]
  call void @kfree(ptr noundef nonnull %55) #13
  br label %298

298:                                              ; preds = %296, %292, %52, %51, %49, %29, %27
  %299 = phi i32 [ 0, %292 ], [ %297, %296 ], [ -22, %29 ], [ -22, %27 ], [ -22, %51 ], [ -22, %49 ], [ -12, %52 ]
  ret i32 %299
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_need_metadata() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @notify_rule_change(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.fib_rules_ops, ptr %2, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fib_rules_ops, ptr %2, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef %1) #13
  %13 = add i32 %12, 175
  %14 = and i32 %13, -4
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i32 [ %14, %11 ], [ 172, %5 ]
  %17 = tail call ptr @__alloc_skb(i32 noundef %16, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nlmsghdr, ptr %3, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call fastcc i32 @fib_nl_fill_rule(ptr noundef nonnull %17, ptr noundef %1, i32 noundef %4, i32 noundef %21, i32 noundef %0, i32 noundef 0, ptr noundef %2)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = icmp eq i32 %22, -90
  br i1 %25, label %26, label %27, !prof !20

26:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1202, i32 noundef 9, ptr noundef null) #13
  br label %27

27:                                               ; preds = %26, %24
  tail call void @kfree_skb_reason(ptr noundef nonnull %17, i32 noundef 0) #13
  br label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.fib_rules_ops, ptr %2, i32 0, i32 16
  %30 = load i32, ptr %29, align 4
  tail call void @rtnl_notify(ptr noundef nonnull %17, ptr noundef %7, i32 noundef %4, i32 noundef %30, ptr noundef %3, i32 noundef 3264) #13
  br label %35

31:                                               ; preds = %27, %15
  %32 = phi i32 [ -12, %15 ], [ %22, %27 ]
  %33 = getelementptr inbounds %struct.fib_rules_ops, ptr %2, i32 0, i32 16
  %34 = load i32, ptr %33, align 4
  tail call void @rtnl_set_sk_err(ptr noundef %7, i32 noundef %34, i32 noundef %32) #13
  br label %35

35:                                               ; preds = %31, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_nl_delrule(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.fib_rule_notifier_info, align 4
  %5 = alloca ptr, align 4
  %6 = alloca [25 x ptr], align 4
  %7 = alloca i8, align 1
  %8 = getelementptr i8, ptr %1, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %6, i8 0, i32 100, i1 false), !annotation !22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1
  %9 = load i32, ptr %1, align 4
  %10 = icmp ult i32 %9, 28
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_delrule.__msg) #13
  %12 = icmp eq ptr %2, null
  br i1 %12, label %316, label %313

13:                                               ; preds = %3
  %14 = load i8, ptr %8, align 4
  %15 = zext i8 %14 to i32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi ptr [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28), %13 ], [ %18, %20 ]
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 -4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %15
  br i1 %23, label %24, label %16

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %18, i32 -4
  %26 = getelementptr i8, ptr %18, i32 76
  %27 = load ptr, ptr %26, align 4
  %28 = tail call zeroext i1 @try_module_get(ptr noundef %27) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %29 = icmp ne ptr %25, null
  %30 = and i1 %29, %28
  br i1 %30, label %34, label %32

31:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %32

32:                                               ; preds = %31, %24
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_delrule.__msg.4) #13
  %33 = icmp eq ptr %2, null
  br i1 %33, label %316, label %313

34:                                               ; preds = %24
  %35 = load i32, ptr %1, align 4
  %36 = icmp ult i32 %35, 28
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #13
  %38 = icmp eq ptr %2, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_delrule.__msg.5) #13
  br label %318

40:                                               ; preds = %37
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_delrule.__msg.5) #13
  br label %48

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %1, i32 28
  %43 = add i32 %35, -28
  %44 = call i32 @__nla_parse(ptr noundef nonnull %6, i32 noundef 24, ptr noundef %42, i32 noundef %43, ptr noundef nonnull @fib_rule_policy, i32 noundef 0, ptr noundef %2) #13
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_delrule.__msg.5) #13
  %47 = icmp eq ptr %2, null
  br i1 %47, label %318, label %48

48:                                               ; preds = %46, %40
  %49 = phi i32 [ -22, %40 ], [ %44, %46 ]
  store ptr @fib_nl_delrule.__msg.5, ptr %2, align 4
  br label %318

50:                                               ; preds = %41
  %51 = call fastcc i32 @fib_nl2rule(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %25, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7)
  %52 = icmp eq i32 %51, 0
  %53 = load ptr, ptr %5, align 4
  br i1 %52, label %54, label %318

54:                                               ; preds = %50
  %55 = load i8, ptr %7, align 1, !range !27
  %56 = icmp eq i8 %55, 0
  %57 = getelementptr i8, ptr %18, i32 68
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %318, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 7
  %62 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 6
  %63 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 16
  %64 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 19
  %65 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 20
  %66 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 3
  %67 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 17
  %68 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 18
  %69 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 4
  %70 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 12
  %71 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 14
  %72 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 8
  %73 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 21
  %74 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 21, i32 1
  %75 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 10
  %76 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 9
  %77 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 22
  %78 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 22, i32 1
  %79 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 23
  %80 = getelementptr inbounds %struct.fib_rule, ptr %53, i32 0, i32 23, i32 1
  %81 = getelementptr i8, ptr %18, i32 48
  br label %82

82:                                               ; preds = %224, %60
  %83 = phi ptr [ %58, %60 ], [ %225, %224 ]
  %84 = load i8, ptr %61, align 8
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 7
  %88 = load i8, ptr %87, align 8
  %89 = icmp eq i8 %88, %84
  br i1 %89, label %90, label %224

90:                                               ; preds = %86, %82
  %91 = load i32, ptr %62, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, %91
  br i1 %96, label %97, label %224

97:                                               ; preds = %93, %90
  br i1 %56, label %103, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 16
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %63, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %224

103:                                              ; preds = %98, %97
  %104 = load i8, ptr %64, align 8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 19
  %108 = call i32 @bcmp(ptr noundef dereferenceable(16) %107, ptr noundef dereferenceable(16) %64, i32 16) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %224

110:                                              ; preds = %106, %103
  %111 = load i8, ptr %65, align 8
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 20
  %115 = call i32 @bcmp(ptr noundef dereferenceable(16) %114, ptr noundef dereferenceable(16) %65, i32 16) #13
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %224

117:                                              ; preds = %113, %110
  %118 = load i32, ptr %66, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 3
  %122 = load i32, ptr %121, align 8
  %123 = icmp eq i32 %122, %118
  br i1 %123, label %124, label %224

124:                                              ; preds = %120, %117
  %125 = load i32, ptr %67, align 8
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 17
  %129 = load i32, ptr %128, align 8
  %130 = icmp eq i32 %129, %125
  br i1 %130, label %131, label %224

131:                                              ; preds = %127, %124
  %132 = load i32, ptr %68, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 18
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, %132
  br i1 %137, label %138, label %224

138:                                              ; preds = %134, %131
  %139 = load i32, ptr %69, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 4
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, %139
  br i1 %144, label %145, label %224

145:                                              ; preds = %141, %138
  %146 = load i64, ptr %70, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 12
  %150 = load i64, ptr %149, align 8
  %151 = icmp eq i64 %150, %146
  br i1 %151, label %152, label %224

152:                                              ; preds = %148, %145
  %153 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 14
  %154 = load ptr, ptr %153, align 4
  %155 = load ptr, ptr %71, align 4
  %156 = icmp eq ptr %154, %155
  br i1 %156, label %157, label %224

157:                                              ; preds = %152
  %158 = load i8, ptr %72, align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 8
  %162 = load i8, ptr %161, align 1
  %163 = icmp eq i8 %162, %158
  br i1 %163, label %164, label %224

164:                                              ; preds = %160, %157
  %165 = load i32, ptr %73, align 4
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %178, label %167

167:                                              ; preds = %164
  %168 = load i32, ptr %74, align 4
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %178, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 21
  %172 = load i32, ptr %171, align 8
  %173 = icmp eq i32 %172, %165
  br i1 %173, label %174, label %224

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 21, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, %168
  br i1 %177, label %178, label %224

178:                                              ; preds = %174, %167, %164
  %179 = load i8, ptr %75, align 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 10
  %183 = load i8, ptr %182, align 1
  %184 = icmp eq i8 %183, %179
  br i1 %184, label %185, label %224

185:                                              ; preds = %181, %178
  %186 = load i8, ptr %76, align 2
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 9
  %190 = load i8, ptr %189, align 2
  %191 = icmp eq i8 %190, %186
  br i1 %191, label %192, label %224

192:                                              ; preds = %188, %185
  %193 = load i16, ptr %77, align 2
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %192
  %196 = load i16, ptr %78, align 2
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 22
  %200 = load i16, ptr %199, align 2
  %201 = icmp eq i16 %200, %193
  br i1 %201, label %202, label %224

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 22, i32 1
  %204 = load i16, ptr %203, align 2
  %205 = icmp eq i16 %204, %196
  br i1 %205, label %206, label %224

206:                                              ; preds = %202, %195, %192
  %207 = load i16, ptr %79, align 2
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %220, label %209

209:                                              ; preds = %206
  %210 = load i16, ptr %80, align 2
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 23
  %214 = load i16, ptr %213, align 2
  %215 = icmp eq i16 %214, %207
  br i1 %215, label %216, label %224

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 23, i32 1
  %218 = load i16, ptr %217, align 2
  %219 = icmp eq i16 %218, %210
  br i1 %219, label %220, label %224

220:                                              ; preds = %216, %209, %206
  %221 = load ptr, ptr %81, align 4
  %222 = call i32 %221(ptr noundef %83, ptr noundef %8, ptr noundef nonnull %6) #13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %220, %216, %212, %202, %198, %188, %181, %174, %170, %160, %152, %148, %141, %134, %127, %120, %113, %106, %98, %93, %86
  %225 = load ptr, ptr %83, align 4
  %226 = icmp eq ptr %225, %57
  br i1 %226, label %318, label %82

227:                                              ; preds = %220
  %228 = icmp eq ptr %83, null
  br i1 %228, label %318, label %229

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 5
  %231 = load i32, ptr %230, align 8
  %232 = and i32 %231, 1
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %318

234:                                              ; preds = %229
  %235 = getelementptr i8, ptr %18, i32 44
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %234
  %239 = call i32 %236(ptr noundef nonnull %83) #13
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %318

241:                                              ; preds = %238, %234
  %242 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 12
  %243 = load i64, ptr %242, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  call void @ip_tunnel_unneed_metadata() #13
  br label %246

246:                                              ; preds = %245, %241
  %247 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %248 = load ptr, ptr %247, align 4
  %249 = load ptr, ptr %83, align 4
  %250 = getelementptr inbounds %struct.list_head, ptr %249, i32 0, i32 1
  store ptr %248, ptr %250, align 4
  store volatile ptr %249, ptr %248, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %247, align 4
  %251 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 7
  %252 = load i8, ptr %251, align 8
  %253 = icmp eq i8 %252, 2
  %254 = getelementptr i8, ptr %18, i32 20
  %255 = load i32, ptr %254, align 4
  br i1 %253, label %256, label %265

256:                                              ; preds = %246
  %257 = add i32 %255, -1
  store i32 %257, ptr %254, align 4
  %258 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 13
  %259 = load ptr, ptr %258, align 8
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = getelementptr i8, ptr %18, i32 16
  %263 = load i32, ptr %262, align 4
  %264 = add i32 %263, -1
  store i32 %264, ptr %262, align 4
  br label %265

265:                                              ; preds = %261, %256, %246
  %266 = phi i32 [ %257, %256 ], [ %257, %261 ], [ %255, %246 ]
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %268, label %297

268:                                              ; preds = %265
  %269 = load ptr, ptr %83, align 8
  %270 = icmp eq ptr %269, %57
  br i1 %270, label %277, label %271

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.fib_rule, ptr %269, i32 0, i32 16
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.fib_rule, ptr %83, i32 0, i32 16
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %273, %275
  br i1 %276, label %278, label %277

277:                                              ; preds = %271, %268
  br label %278

278:                                              ; preds = %277, %271
  %279 = phi ptr [ null, %277 ], [ %269, %271 ]
  %280 = load ptr, ptr %57, align 4
  %281 = icmp eq ptr %280, %57
  br i1 %281, label %297, label %282

282:                                              ; preds = %278
  %283 = icmp eq ptr %279, null
  %284 = getelementptr i8, ptr %18, i32 16
  br label %285

285:                                              ; preds = %294, %282
  %286 = phi ptr [ %280, %282 ], [ %295, %294 ]
  %287 = getelementptr inbounds %struct.fib_rule, ptr %286, i32 0, i32 13
  %288 = load ptr, ptr %287, align 8
  %289 = icmp eq ptr %288, %83
  br i1 %289, label %290, label %294

290:                                              ; preds = %285
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  store volatile ptr %279, ptr %287, align 8
  br i1 %283, label %291, label %294

291:                                              ; preds = %290
  %292 = load i32, ptr %284, align 4
  %293 = add i32 %292, 1
  store i32 %293, ptr %284, align 4
  br label %294

294:                                              ; preds = %291, %290, %285
  %295 = load ptr, ptr %286, align 4
  %296 = icmp eq ptr %295, %57
  br i1 %296, label %297, label %285

297:                                              ; preds = %294, %278, %265
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %298 = load i32, ptr %25, align 4
  store i32 %298, ptr %4, align 4
  %299 = getelementptr inbounds %struct.fib_notifier_info, ptr %4, i32 0, i32 1
  store ptr null, ptr %299, align 4
  %300 = getelementptr inbounds %struct.fib_rule_notifier_info, ptr %4, i32 0, i32 1
  store ptr %83, ptr %300, align 4
  %301 = getelementptr i8, ptr %18, i32 24
  %302 = load i32, ptr %301, align 4
  %303 = add i32 %302, 1
  store i32 %303, ptr %301, align 4
  %304 = call i32 @call_fib_notifiers(ptr noundef nonnull @init_net, i32 noundef 5, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %305 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %306 = load i32, ptr %305, align 4
  call fastcc void @notify_rule_change(i32 noundef 33, ptr noundef nonnull %83, ptr noundef nonnull %25, ptr noundef %1, i32 noundef %306)
  call fastcc void @fib_rule_put(ptr noundef nonnull %83)
  %307 = getelementptr i8, ptr %18, i32 60
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %297
  call void %308(ptr noundef nonnull %25) #13
  br label %311

311:                                              ; preds = %310, %297
  %312 = load ptr, ptr %26, align 4
  call void @module_put(ptr noundef %312) #13
  call void @kfree(ptr noundef %53) #13
  br label %322

313:                                              ; preds = %32, %11
  %314 = phi ptr [ @fib_nl_delrule.__msg, %11 ], [ @fib_nl_delrule.__msg.4, %32 ]
  %315 = phi i32 [ -22, %11 ], [ -97, %32 ]
  store ptr %314, ptr %2, align 4
  br label %316

316:                                              ; preds = %313, %32, %11
  %317 = phi i32 [ -97, %32 ], [ -22, %11 ], [ %315, %313 ]
  tail call void @kfree(ptr noundef null) #13
  br label %322

318:                                              ; preds = %238, %229, %227, %224, %54, %50, %48, %46, %39
  %319 = phi ptr [ %53, %54 ], [ null, %46 ], [ null, %48 ], [ null, %39 ], [ %53, %50 ], [ %53, %229 ], [ %53, %227 ], [ %53, %238 ], [ %53, %224 ]
  %320 = phi i32 [ -2, %54 ], [ %44, %46 ], [ %49, %48 ], [ -22, %39 ], [ %51, %50 ], [ -1, %229 ], [ -2, %227 ], [ %239, %238 ], [ -2, %224 ]
  call void @kfree(ptr noundef %319) #13
  %321 = load ptr, ptr %26, align 4
  call void @module_put(ptr noundef %321) #13
  br label %322

322:                                              ; preds = %318, %316, %311
  %323 = phi i32 [ 0, %311 ], [ %317, %316 ], [ %320, %318 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %323
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_unneed_metadata() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fib_rule_put(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #13, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #13, !srcloc !15
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %13, label %8, !prof !16

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #13
  br label %13

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %10 = icmp eq ptr %0, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 24
  tail call void @kvfree_call_rcu(ptr noundef %12, ptr noundef nonnull inttoptr (i32 120 to ptr)) #13
  br label %13

13:                                               ; preds = %11, %9, %8, %6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fib_rules_init() #6 section ".init.text" {
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 32, ptr noundef nonnull @fib_nl_newrule, ptr noundef null, i32 noundef 0) #13
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 33, ptr noundef nonnull @fib_nl_delrule, ptr noundef null, i32 noundef 0) #13
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 34, ptr noundef null, ptr noundef nonnull @fib_nl_dumprule, i32 noundef 0) #13
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @fib_rules_net_ops) #13
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @fib_rules_notifier) #13
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @fib_rules_net_ops) #13
  br label %7

7:                                                ; preds = %6, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ]
  %9 = tail call i32 @rtnl_unregister(i32 noundef 0, i32 noundef 32) #13
  %10 = tail call i32 @rtnl_unregister(i32 noundef 0, i32 noundef 33) #13
  %11 = tail call i32 @rtnl_unregister(i32 noundef 0, i32 noundef 34) #13
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %8, %7 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib_notifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fib_nl_fill_rule(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #1 {
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %218

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %24 to i32
  %28 = ptrtoint ptr %26 to i32
  %29 = sub i32 %27, %28
  %30 = icmp slt i32 %29, 28
  br i1 %30, label %218, label %31, !prof !20

31:                                               ; preds = %22
  %32 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 12, i32 noundef %5) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %218, label %34

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %32, i32 16
  %36 = load i32, ptr %6, align 4
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %39, 256
  %41 = trunc i32 %39 to i8
  %42 = select i1 %40, i8 %41, i8 -4
  %43 = getelementptr i8, ptr %32, i32 20
  store i8 %42, ptr %43, align 4
  %44 = load i32, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #13
  store i32 %44, ptr %18, align 4
  %45 = call i32 @nla_put(ptr noundef %0, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %207

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 18
  %49 = load i32, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #13
  store i32 %49, ptr %17, align 4
  %50 = call i32 @nla_put(ptr noundef %0, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %207

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %32, i32 21
  store i8 0, ptr %53, align 1
  %54 = getelementptr i8, ptr %32, i32 22
  store i8 0, ptr %54, align 2
  %55 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 7
  %56 = load i8, ptr %55, align 8
  %57 = getelementptr i8, ptr %32, i32 23
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr i8, ptr %32, i32 24
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 9
  %62 = load i8, ptr %61, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #13
  store i8 %62, ptr %16, align 1
  %63 = call i32 @nla_put(ptr noundef %0, i32 noundef 21, i32 noundef 1, ptr noundef nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %207

65:                                               ; preds = %52
  %66 = load i8, ptr %55, align 8
  %67 = icmp eq i8 %66, 2
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 13
  %70 = load volatile ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, ptr %60, align 4
  %74 = or i32 %73, 4
  store i32 %74, ptr %60, align 4
  br label %75

75:                                               ; preds = %72, %68, %65
  %76 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 19
  %77 = load i8, ptr %76, align 8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = call i32 @strlen(ptr noundef %76) #13
  %81 = add i32 %80, 1
  %82 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef %81, ptr noundef %76) #13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %207

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 1
  %86 = load i32, ptr %85, align 8
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, ptr %60, align 4
  %90 = or i32 %89, 8
  store i32 %90, ptr %60, align 4
  br label %91

91:                                               ; preds = %88, %84, %75
  %92 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 20
  %93 = load i8, ptr %92, align 8
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = call fastcc i32 @nla_put_string(ptr noundef %0, i32 noundef 17, ptr noundef %92)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %207

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, ptr %60, align 4
  %104 = or i32 %103, 16
  store i32 %104, ptr %60, align 4
  br label %105

105:                                              ; preds = %102, %98, %91
  %106 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 16
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #13
  store i32 %107, ptr %15, align 4
  %110 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #13
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %207

112:                                              ; preds = %109, %105
  %113 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 3
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #13
  store i32 %114, ptr %14, align 4
  %117 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %207

119:                                              ; preds = %116, %112
  %120 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, ptr %113, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123, %119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  store i32 %121, ptr %13, align 4
  %127 = call i32 @nla_put(ptr noundef %0, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %207

129:                                              ; preds = %126, %123
  %130 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 11
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store i32 %131, ptr %12, align 4
  %134 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %207

136:                                              ; preds = %133, %129
  %137 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 12
  %138 = load i64, ptr %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  store i64 %138, ptr %11, align 8
  %141 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 12, i32 noundef 8, ptr noundef nonnull %11, i32 noundef 18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %207

143:                                              ; preds = %140, %136
  %144 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 8
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #13
  store i8 %145, ptr %10, align 1
  %148 = call i32 @nla_put(ptr noundef %0, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #13
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %207

150:                                              ; preds = %147, %143
  %151 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 21
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %161, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 21, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = call fastcc i32 @nla_put_uid_range(ptr noundef %0, ptr noundef %151)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %207

161:                                              ; preds = %158, %154, %150
  %162 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 22
  %163 = load i16, ptr %162, align 2
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 22, i32 1
  %167 = load i16, ptr %166, align 2
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = call i32 @nla_put(ptr noundef %0, i32 noundef 23, i32 noundef 4, ptr noundef %162) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %207

172:                                              ; preds = %169, %165, %161
  %173 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 23
  %174 = load i16, ptr %173, align 2
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 23, i32 1
  %178 = load i16, ptr %177, align 2
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = call i32 @nla_put(ptr noundef %0, i32 noundef 24, i32 noundef 4, ptr noundef %173) #13
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %207

183:                                              ; preds = %180, %176, %172
  %184 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 10
  %185 = load i8, ptr %184, align 1
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #13
  store i8 %185, ptr %9, align 1
  %188 = call i32 @nla_put(ptr noundef %0, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %187, %183
  %191 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 17
  %192 = load i32, ptr %191, align 8
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 %192, ptr %8, align 4
  %195 = call i32 @nla_put(ptr noundef %0, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %194, %190
  %198 = getelementptr inbounds %struct.fib_rules_ops, ptr %6, i32 0, i32 13
  %199 = load ptr, ptr %198, align 4
  %200 = call i32 %199(ptr noundef %1, ptr noundef %0, ptr noundef %35) #13
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %197
  %203 = load ptr, ptr %25, align 8
  %204 = ptrtoint ptr %203 to i32
  %205 = ptrtoint ptr %32 to i32
  %206 = sub i32 %204, %205
  store i32 %206, ptr %32, align 4
  br label %218

207:                                              ; preds = %197, %194, %187, %180, %169, %158, %147, %140, %133, %126, %116, %109, %95, %79, %52, %47, %34
  %208 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %209 = load ptr, ptr %208, align 4
  %210 = icmp ugt ptr %209, %32
  br i1 %210, label %211, label %213, !prof !20

211:                                              ; preds = %207
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  %212 = load ptr, ptr %208, align 4
  br label %213

213:                                              ; preds = %211, %207
  %214 = phi ptr [ %212, %211 ], [ %209, %207 ]
  %215 = ptrtoint ptr %32 to i32
  %216 = ptrtoint ptr %214 to i32
  %217 = sub i32 %215, %216
  call void @skb_trim(ptr noundef %0, i32 noundef %217) #13
  br label %218

218:                                              ; preds = %213, %202, %31, %22, %7
  %219 = phi i32 [ -90, %213 ], [ 0, %202 ], [ -90, %31 ], [ -90, %22 ], [ -90, %7 ]
  ret i32 %219
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = tail call i32 @strlen(ptr noundef %2)
  %5 = add i32 %4, 1
  %6 = tail call i32 @nla_put(ptr noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef %2) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_uid_range(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.fib_rule_uid_range, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, -1
  %6 = load i32, ptr @overflowuid, align 4
  %7 = select i1 %5, i32 %6, i32 %4
  store i32 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.fib_rule_uid_range, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.fib_kuid_range, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = select i1 %11, i32 %6, i32 %10
  store i32 %12, ptr %8, align 4
  %13 = call i32 @nla_put(ptr noundef %0, i32 noundef 20, i32 noundef 8, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_register(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib_nl_dumprule(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %6 = load i8, ptr %5, align 4, !range !27
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = icmp ult i32 %11, 28
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_dumprule_req.__msg) #13
  %14 = icmp eq ptr %10, null
  br i1 %14, label %166, label %53

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %4, i32 17
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %4, i32 18
  %21 = load i8, ptr %20, align 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %4, i32 19
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %4, i32 20
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %4, i32 21
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %4, i32 22
  %37 = load i8, ptr %36, align 2
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %4, i32 23
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %4, i32 24
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %39, %35, %31, %27, %23, %19, %15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_dumprule_req.__msg.17) #13
  %48 = icmp eq ptr %10, null
  br i1 %48, label %166, label %53

49:                                               ; preds = %43
  %50 = icmp eq i32 %11, 28
  br i1 %50, label %58, label %51

51:                                               ; preds = %49
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_dumprule_req.__msg.18) #13
  %52 = icmp eq ptr %10, null
  br i1 %52, label %166, label %53

53:                                               ; preds = %51, %47, %13
  %54 = phi ptr [ @fib_valid_dumprule_req.__msg, %13 ], [ @fib_valid_dumprule_req.__msg.17, %47 ], [ @fib_valid_dumprule_req.__msg.18, %51 ]
  store ptr %54, ptr %10, align 4
  br label %166

55:                                               ; preds = %2
  %56 = load i32, ptr %4, align 4
  %57 = icmp eq i32 %56, 16
  br i1 %57, label %110, label %58

58:                                               ; preds = %55, %49
  %59 = getelementptr i8, ptr %4, i32 16
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i8 %60, 0
  br i1 %62, label %110, label %63

63:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  br label %64

64:                                               ; preds = %68, %63
  %65 = phi ptr [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28), %63 ], [ %66, %68 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %66, i32 -4
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, %61
  br i1 %71, label %72, label %64

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %66, i32 -4
  %74 = getelementptr i8, ptr %66, i32 76
  %75 = load ptr, ptr %74, align 4
  %76 = tail call zeroext i1 @try_module_get(ptr noundef %75) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %77 = icmp ne ptr %73, null
  %78 = and i1 %77, %76
  br i1 %78, label %80, label %166

79:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %166

80:                                               ; preds = %72
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %81 = getelementptr i8, ptr %66, i32 68
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %81
  br i1 %83, label %104, label %84

84:                                               ; preds = %80
  %85 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  br label %86

86:                                               ; preds = %100, %84
  %87 = phi ptr [ %82, %84 ], [ %102, %100 ]
  %88 = phi i32 [ 0, %84 ], [ %101, %100 ]
  %89 = load i32, ptr %85, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %1, align 4
  %93 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 3, i32 12
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %3, align 4
  %96 = getelementptr inbounds %struct.nlmsghdr, ptr %95, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = tail call fastcc i32 @fib_nl_fill_rule(ptr noundef %0, ptr noundef %87, i32 noundef %94, i32 noundef %97, i32 noundef 32, i32 noundef 2, ptr noundef nonnull %73) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91, %86
  %101 = add i32 %88, 1
  %102 = load volatile ptr, ptr %87, align 4
  %103 = icmp eq ptr %102, %81
  br i1 %103, label %104, label %86

104:                                              ; preds = %100, %91, %80
  %105 = phi i32 [ 0, %80 ], [ %101, %100 ], [ %88, %91 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %106 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  store i32 %105, ptr %106, align 4
  %107 = load ptr, ptr %74, align 4
  tail call void @module_put(ptr noundef %107) #13
  %108 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %109 = load i32, ptr %108, align 8
  br label %166

110:                                              ; preds = %58, %55
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %111 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28), align 4
  %112 = icmp eq ptr %111, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %112, label %161, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %115 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  br label %116

116:                                              ; preds = %157, %113
  %117 = phi ptr [ %111, %113 ], [ %159, %157 ]
  %118 = phi i32 [ 0, %113 ], [ %158, %157 ]
  %119 = getelementptr i8, ptr %117, i32 -4
  %120 = load i32, ptr %114, align 4
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %157, label %122

122:                                              ; preds = %116
  %123 = getelementptr i8, ptr %117, i32 76
  %124 = load ptr, ptr %123, align 4
  %125 = tail call zeroext i1 @try_module_get(ptr noundef %124) #13
  br i1 %125, label %126, label %157

126:                                              ; preds = %122
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %127 = getelementptr i8, ptr %117, i32 68
  %128 = load volatile ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %127
  br i1 %129, label %148, label %130

130:                                              ; preds = %144, %126
  %131 = phi ptr [ %146, %144 ], [ %128, %126 ]
  %132 = phi i32 [ %145, %144 ], [ 0, %126 ]
  %133 = load i32, ptr %115, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %144, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %1, align 4
  %137 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 3, i32 12
  %138 = load i32, ptr %137, align 4
  %139 = load ptr, ptr %3, align 4
  %140 = getelementptr inbounds %struct.nlmsghdr, ptr %139, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = tail call fastcc i32 @fib_nl_fill_rule(ptr noundef %0, ptr noundef %131, i32 noundef %138, i32 noundef %141, i32 noundef 32, i32 noundef 2, ptr noundef %119) #13
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %135, %130
  %145 = add i32 %132, 1
  %146 = load volatile ptr, ptr %131, align 4
  %147 = icmp eq ptr %146, %127
  br i1 %147, label %148, label %130

148:                                              ; preds = %144, %135, %126
  %149 = phi i32 [ 0, %126 ], [ %145, %144 ], [ %132, %135 ]
  %150 = phi i32 [ 0, %126 ], [ 0, %144 ], [ %142, %135 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  store i32 %149, ptr %115, align 4
  %151 = icmp eq ptr %119, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %123, align 4
  tail call void @module_put(ptr noundef %153) #13
  br label %154

154:                                              ; preds = %152, %148
  %155 = icmp slt i32 %150, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %154
  store i32 0, ptr %115, align 4
  br label %157

157:                                              ; preds = %156, %122, %116
  %158 = add i32 %118, 1
  %159 = load volatile ptr, ptr %117, align 4
  %160 = icmp eq ptr %159, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %160, label %161, label %116

161:                                              ; preds = %157, %154, %110
  %162 = phi i32 [ 0, %110 ], [ %118, %154 ], [ %158, %157 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %163 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  store i32 %162, ptr %163, align 4
  %164 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %165 = load i32, ptr %164, align 8
  br label %166

166:                                              ; preds = %161, %104, %79, %72, %53, %51, %47, %13
  %167 = phi i32 [ %109, %104 ], [ %165, %161 ], [ -22, %13 ], [ -22, %47 ], [ -22, %51 ], [ -22, %53 ], [ -97, %72 ], [ -97, %79 ]
  ret i32 %167
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unregister(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly cold nofree norecurse nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fib_rules_net_init(ptr noundef %0) #9 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 28
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 28, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 1
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fib_rules_net_exit(ptr noundef %0) #10 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 28
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, %2
  %5 = load i1, ptr @fib_rules_net_exit.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !20

8:                                                ; preds = %1
  store i1 true, ptr @fib_rules_net_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1285, i32 noundef 9, ptr noundef null) #13
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib_rules_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load ptr, ptr %2, align 4
  %5 = tail call i32 @rtnl_is_locked() #13
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @fib_rules_event.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !20

10:                                               ; preds = %3
  store i1 true, ptr @fib_rules_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1248, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1248) #13
  br label %11

11:                                               ; preds = %10, %3
  switch i32 %1, label %136 [
    i32 5, label %22
    i32 11, label %17
    i32 6, label %12
  ]

12:                                               ; preds = %11
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28), align 4
  %14 = icmp eq ptr %13, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %14, label %136, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  br label %111

17:                                               ; preds = %11
  %18 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28), align 4
  %19 = icmp eq ptr %18, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %19, label %136, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  br label %59

22:                                               ; preds = %11
  %23 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28), align 4
  %24 = icmp eq ptr %23, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %24, label %136, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  br label %27

27:                                               ; preds = %56, %25
  %28 = phi ptr [ %23, %25 ], [ %57, %56 ]
  %29 = getelementptr i8, ptr %28, i32 68
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %56, label %32

32:                                               ; preds = %53, %27
  %33 = phi ptr [ %54, %53 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.fib_rule, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.fib_rule, ptr %33, i32 0, i32 19
  %39 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %38) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, ptr %26, align 4
  store i32 %42, ptr %34, align 8
  br label %43

43:                                               ; preds = %41, %37, %32
  %44 = getelementptr inbounds %struct.fib_rule, ptr %33, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.fib_rule, ptr %33, i32 0, i32 20
  %49 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %48) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, ptr %26, align 4
  store i32 %52, ptr %44, align 4
  br label %53

53:                                               ; preds = %51, %47, %43
  %54 = load ptr, ptr %33, align 4
  %55 = icmp eq ptr %54, %29
  br i1 %55, label %56, label %32

56:                                               ; preds = %53, %27
  %57 = load ptr, ptr %28, align 4
  %58 = icmp eq ptr %57, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %58, label %136, label %27

59:                                               ; preds = %108, %20
  %60 = phi ptr [ %18, %20 ], [ %109, %108 ]
  %61 = getelementptr i8, ptr %60, i32 68
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %108, label %64

64:                                               ; preds = %78, %59
  %65 = phi ptr [ %79, %78 ], [ %62, %59 ]
  %66 = getelementptr inbounds %struct.fib_rule, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 8
  %68 = load i32, ptr %21, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  store i32 -1, ptr %66, align 8
  %71 = load i32, ptr %21, align 4
  br label %72

72:                                               ; preds = %70, %64
  %73 = phi i32 [ %71, %70 ], [ %68, %64 ]
  %74 = getelementptr inbounds %struct.fib_rule, ptr %65, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, %73
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 -1, ptr %74, align 4
  br label %78

78:                                               ; preds = %77, %72
  %79 = load ptr, ptr %65, align 4
  %80 = icmp eq ptr %79, %61
  br i1 %80, label %81, label %64

81:                                               ; preds = %78
  %82 = load ptr, ptr %61, align 4
  %83 = icmp eq ptr %82, %61
  br i1 %83, label %108, label %84

84:                                               ; preds = %105, %81
  %85 = phi ptr [ %106, %105 ], [ %82, %81 ]
  %86 = getelementptr inbounds %struct.fib_rule, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.fib_rule, ptr %85, i32 0, i32 19
  %91 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %90) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, ptr %21, align 4
  store i32 %94, ptr %86, align 8
  br label %95

95:                                               ; preds = %93, %89, %84
  %96 = getelementptr inbounds %struct.fib_rule, ptr %85, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.fib_rule, ptr %85, i32 0, i32 20
  %101 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %100) #13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, ptr %21, align 4
  store i32 %104, ptr %96, align 4
  br label %105

105:                                              ; preds = %103, %99, %95
  %106 = load ptr, ptr %85, align 4
  %107 = icmp eq ptr %106, %61
  br i1 %107, label %108, label %84

108:                                              ; preds = %105, %81, %59
  %109 = load ptr, ptr %60, align 4
  %110 = icmp eq ptr %109, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %110, label %136, label %59

111:                                              ; preds = %133, %15
  %112 = phi ptr [ %13, %15 ], [ %134, %133 ]
  %113 = getelementptr i8, ptr %112, i32 68
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %113
  br i1 %115, label %133, label %116

116:                                              ; preds = %130, %111
  %117 = phi ptr [ %131, %130 ], [ %114, %111 ]
  %118 = getelementptr inbounds %struct.fib_rule, ptr %117, i32 0, i32 1
  %119 = load i32, ptr %118, align 8
  %120 = load i32, ptr %16, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  store i32 -1, ptr %118, align 8
  %123 = load i32, ptr %16, align 4
  br label %124

124:                                              ; preds = %122, %116
  %125 = phi i32 [ %123, %122 ], [ %120, %116 ]
  %126 = getelementptr inbounds %struct.fib_rule, ptr %117, i32 0, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, %125
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 -1, ptr %126, align 4
  br label %130

130:                                              ; preds = %129, %124
  %131 = load ptr, ptr %117, align 4
  %132 = icmp eq ptr %131, %113
  br i1 %132, label %133, label %116

133:                                              ; preds = %130, %111
  %134 = load ptr, ptr %112, align 4
  %135 = icmp eq ptr %134, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 28)
  br i1 %135, label %136, label %111

136:                                              ; preds = %133, %108, %56, %22, %17, %12, %11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly cold nofree norecurse nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }

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
!8 = !{i64 2150723459}
!9 = !{i64 2148954149}
!10 = !{i64 2148949973}
!11 = !{i64 2148950048, i64 2148950075, i64 2148950122, i64 2148950144, i64 2148950172, i64 2148950192}
!12 = !{i64 2148977152}
!13 = !{i64 2148044037}
!14 = !{i64 440198, i64 2147930169, i64 2147930195, i64 2147930242, i64 2147930264, i64 2147930292, i64 2147930312}
!15 = !{i64 2147946196, i64 2147946228, i64 2147946257, i64 2147946291, i64 2147946322, i64 2147946345}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149303501}
!18 = !{i64 2149352921}
!19 = !{i64 426261, i64 426285, i64 426306, i64 426323, i64 426340}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2149353138}
!22 = !{!"auto-init"}
!23 = !{i64 2156524550}
!24 = !{!25}
!25 = distinct !{!25, !26, !"nla_get_kuid_range: argument 0"}
!26 = distinct !{!26, !"nla_get_kuid_range"}
!27 = !{i8 0, i8 2}
!28 = !{i64 2156539498}
