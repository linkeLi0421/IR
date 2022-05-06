; ModuleID = '/llk/IR/net/ethtool/cabletest.c_pt.bc'
source_filename = "../net/ethtool/cabletest.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethnl_cable_test_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22ethnl_cable_test_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_ethnl_cable_test_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethnl_cable_test_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ethnl_cable_test_free\22\09\09\09\09\09"
module asm "__kstrtabns_ethnl_cable_test_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethnl_cable_test_finished:\09\09\09\09\09"
module asm "\09.asciz \09\22ethnl_cable_test_finished\22\09\09\09\09\09"
module asm "__kstrtabns_ethnl_cable_test_finished:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethnl_cable_test_result:\09\09\09\09\09"
module asm "\09.asciz \09\22ethnl_cable_test_result\22\09\09\09\09\09"
module asm "__kstrtabns_ethnl_cable_test_result:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethnl_cable_test_fault_length:\09\09\09\09\09"
module asm "\09.asciz \09\22ethnl_cable_test_fault_length\22\09\09\09\09\09"
module asm "__kstrtabns_ethnl_cable_test_fault_length:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethnl_cable_test_amplitude:\09\09\09\09\09"
module asm "\09.asciz \09\22ethnl_cable_test_amplitude\22\09\09\09\09\09"
module asm "__kstrtabns_ethnl_cable_test_amplitude:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethnl_cable_test_pulse:\09\09\09\09\09"
module asm "\09.asciz \09\22ethnl_cable_test_pulse\22\09\09\09\09\09"
module asm "__kstrtabns_ethnl_cable_test_pulse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethnl_cable_test_step:\09\09\09\09\09"
module asm "\09.asciz \09\22ethnl_cable_test_step\22\09\09\09\09\09"
module asm "__kstrtabns_ethnl_cable_test_step:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.10 }
%union.anon.10 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.netdevice_tracker = type {}
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.116 = type { ptr }
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
%struct.ethtool_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.phy_tdr_config = type { i32, i32, i32, i8 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_cable_test_act_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethtool_phy_ops = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ethnl_cable_test_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethnl_cable_test_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_ethnl_cable_test_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethnl_cable_test_alloc to i32), ptr @__kstrtab_ethnl_cable_test_alloc, ptr @__kstrtabns_ethnl_cable_test_alloc }, section "___ksymtab_gpl+ethnl_cable_test_alloc", align 4
@__kstrtab_ethnl_cable_test_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethnl_cable_test_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ethnl_cable_test_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethnl_cable_test_free to i32), ptr @__kstrtab_ethnl_cable_test_free, ptr @__kstrtabns_ethnl_cable_test_free }, section "___ksymtab_gpl+ethnl_cable_test_free", align 4
@__kstrtab_ethnl_cable_test_finished = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethnl_cable_test_finished = external dso_local constant [0 x i8], align 1
@__ksymtab_ethnl_cable_test_finished = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethnl_cable_test_finished to i32), ptr @__kstrtab_ethnl_cable_test_finished, ptr @__kstrtabns_ethnl_cable_test_finished }, section "___ksymtab_gpl+ethnl_cable_test_finished", align 4
@__kstrtab_ethnl_cable_test_result = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethnl_cable_test_result = external dso_local constant [0 x i8], align 1
@__ksymtab_ethnl_cable_test_result = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethnl_cable_test_result to i32), ptr @__kstrtab_ethnl_cable_test_result, ptr @__kstrtabns_ethnl_cable_test_result }, section "___ksymtab_gpl+ethnl_cable_test_result", align 4
@__kstrtab_ethnl_cable_test_fault_length = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethnl_cable_test_fault_length = external dso_local constant [0 x i8], align 1
@__ksymtab_ethnl_cable_test_fault_length = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethnl_cable_test_fault_length to i32), ptr @__kstrtab_ethnl_cable_test_fault_length, ptr @__kstrtabns_ethnl_cable_test_fault_length }, section "___ksymtab_gpl+ethnl_cable_test_fault_length", align 4
@ethnl_cable_test_tdr_act_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer } }>, align 4
@__kstrtab_ethnl_cable_test_amplitude = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethnl_cable_test_amplitude = external dso_local constant [0 x i8], align 1
@__ksymtab_ethnl_cable_test_amplitude = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethnl_cable_test_amplitude to i32), ptr @__kstrtab_ethnl_cable_test_amplitude, ptr @__kstrtabns_ethnl_cable_test_amplitude }, section "___ksymtab_gpl+ethnl_cable_test_amplitude", align 4
@__kstrtab_ethnl_cable_test_pulse = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethnl_cable_test_pulse = external dso_local constant [0 x i8], align 1
@__ksymtab_ethnl_cable_test_pulse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethnl_cable_test_pulse to i32), ptr @__kstrtab_ethnl_cable_test_pulse, ptr @__kstrtabns_ethnl_cable_test_pulse }, section "___ksymtab_gpl+ethnl_cable_test_pulse", align 4
@__kstrtab_ethnl_cable_test_step = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethnl_cable_test_step = external dso_local constant [0 x i8], align 1
@__ksymtab_ethnl_cable_test_step = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethnl_cable_test_step to i32), ptr @__kstrtab_ethnl_cable_test_step, ptr @__kstrtabns_ethnl_cable_test_step }, section "___ksymtab_gpl+ethnl_cable_test_step", align 4
@init_net = external dso_local global %struct.net, align 64
@.str = private unnamed_addr constant [15 x i8] c"%s: Error %pe\0A\00", align 1
@__func__.ethnl_cable_test_started = private unnamed_addr constant [25 x i8] c"ethnl_cable_test_started\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@cable_test_tdr_act_cfg_policy = internal constant [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }], align 4
@ethnl_act_cable_test_tdr_cfg.__msg = internal constant [23 x i8] c"invalid pair parameter\00", align 1
@ethnl_act_cable_test_tdr_cfg.__msg.2 = internal constant [24 x i8] c"invalid first parameter\00", align 1
@ethnl_act_cable_test_tdr_cfg.__msg.3 = internal constant [23 x i8] c"invalid last parameter\00", align 1
@ethnl_act_cable_test_tdr_cfg.__msg.4 = internal constant [29 x i8] c"invalid first/last parameter\00", align 1
@ethnl_act_cable_test_tdr_cfg.__msg.5 = internal constant [23 x i8] c"invalid step parameter\00", align 1
@ethnl_act_cable_test_tdr_cfg.__msg.6 = internal constant [23 x i8] c"step parameter too big\00", align 1
@nla_parse_nested.__msg = internal constant [24 x i8] c"NLA_F_NESTED is missing\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ethnl_cable_test_alloc, ptr @__ksymtab_ethnl_cable_test_amplitude, ptr @__ksymtab_ethnl_cable_test_fault_length, ptr @__ksymtab_ethnl_cable_test_finished, ptr @__ksymtab_ethnl_cable_test_free, ptr @__ksymtab_ethnl_cable_test_pulse, ptr @__ksymtab_ethnl_cable_test_result, ptr @__ksymtab_ethnl_cable_test_step], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_act_cable_test(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ethnl_req_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %3, ptr noundef %7, ptr noundef nonnull @init_net, ptr noundef %9, i1 noundef zeroext true) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %54, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 120
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %12
  call void @rtnl_lock() #6
  %18 = load ptr, ptr @ethtool_phy_ops, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ethtool_phy_ops, ptr %18, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = call i32 @ethnl_ops_begin(ptr noundef %13) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %21, align 4
  %29 = load ptr, ptr %14, align 8
  %30 = load ptr, ptr %8, align 4
  %31 = call i32 %28(ptr noundef %29, ptr noundef %30) #6
  call void @ethnl_ops_complete(ptr noundef %13) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr %14, align 8
  call fastcc void @ethnl_cable_test_started(ptr noundef %34, i8 noundef zeroext 27)
  br label %35

35:                                               ; preds = %33, %27, %24, %20, %17
  %36 = phi i32 [ %25, %24 ], [ %31, %27 ], [ 0, %33 ], [ -95, %20 ], [ -95, %17 ]
  call void @rtnl_unlock() #6
  %37 = load ptr, ptr %3, align 8
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi ptr [ %13, %12 ], [ %37, %35 ]
  %40 = phi i32 [ -95, %12 ], [ %36, %35 ]
  %41 = icmp eq ptr %39, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !9
  %44 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 99
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %45 to i32
  %47 = call i32 @llvm.read_register.i32(metadata !0) #6
  %48 = inttoptr i32 %47 to ptr
  %49 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #5, !srcloc !10
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -1
  store i32 %53, ptr %51, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #6, !srcloc !11
  br label %54

54:                                               ; preds = %42, %38, %2
  %55 = phi i32 [ %10, %2 ], [ %40, %38 ], [ %40, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ethnl_cable_test_started(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @__alloc_skb(i32 noundef 3860, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @ethnl_bcastmsg_put(ptr noundef nonnull %4, i8 noundef zeroext %1) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @ethnl_fill_reply_header(ptr noundef nonnull %4, ptr noundef %11, i16 noundef zeroext 1) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 1, ptr %3, align 1
  %15 = call i32 @nla_put(ptr noundef nonnull %4, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %7, i32 -20
  %19 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %20 to i32
  %22 = ptrtoint ptr %18 to i32
  %23 = sub i32 %21, %22
  store i32 %23, ptr %18, align 4
  %24 = load ptr, ptr %10, align 8
  %25 = call i32 @ethnl_multicast(ptr noundef nonnull %4, ptr noundef %24) #6
  br label %29

26:                                               ; preds = %14, %9, %6, %2
  %27 = phi i32 [ %12, %9 ], [ %15, %14 ], [ -12, %2 ], [ -90, %6 ]
  call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #6
  %28 = inttoptr i32 %27 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ethnl_cable_test_started, ptr noundef %28) #7
  br label %29

29:                                               ; preds = %26, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_cable_test_alloc(ptr nocapture noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @__alloc_skb(i32 noundef 16404, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 24
  store ptr %4, ptr %5, align 8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @ethnl_bcastmsg_put(ptr noundef nonnull %4, i8 noundef zeroext %1) #6
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 25
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @ethnl_fill_reply_header(ptr noundef %12, ptr noundef %14, i16 noundef zeroext 1) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 2, ptr %3, align 1
  %19 = call i32 @nla_put(ptr noundef %18, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @nla_put(ptr noundef %22, i32 noundef 32771, i32 noundef 0, ptr noundef null) #6
  %26 = icmp slt i32 %25, 0
  %27 = select i1 %26, ptr null, ptr %24
  %28 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 26
  store ptr %27, ptr %28, align 8
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %21, %17, %11, %7, %2
  %31 = phi i32 [ %15, %11 ], [ %19, %17 ], [ -12, %2 ], [ -90, %7 ], [ -90, %21 ]
  %32 = load ptr, ptr %5, align 8
  call void @kfree_skb_reason(ptr noundef %32, i32 noundef 0) #6
  store ptr null, ptr %5, align 8
  br label %33

33:                                               ; preds = %30, %21
  %34 = phi i32 [ %31, %30 ], [ 0, %21 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethnl_bcastmsg_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_fill_reply_header(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ethnl_cable_test_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #6
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ethnl_cable_test_finished(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 26
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i32
  %9 = ptrtoint ptr %5 to i32
  %10 = sub i32 %8, %9
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %5, align 2
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 25
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -20
  %16 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 14
  %17 = load ptr, ptr %16, align 8
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %15 to i32
  %20 = sub i32 %18, %19
  store i32 %20, ptr %15, align 4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @ethnl_multicast(ptr noundef %21, ptr noundef %23) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_multicast(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_cable_test_result(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @nla_put(ptr noundef %7, i32 noundef 32769, i32 noundef 0, ptr noundef null) #6
  %11 = icmp slt i32 %10, 0
  %12 = icmp eq ptr %9, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %42, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 %1, ptr %5, align 1
  %16 = call i32 @nla_put(ptr noundef %15, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 %2, ptr %4, align 1
  %20 = call i32 @nla_put(ptr noundef %19, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = ptrtoint ptr %25 to i32
  %27 = ptrtoint ptr %9 to i32
  %28 = sub i32 %26, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %9, align 2
  br label %42

30:                                               ; preds = %18, %14
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ugt ptr %33, %9
  br i1 %34, label %35, label %37, !prof !12

35:                                               ; preds = %30
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  %36 = load ptr, ptr %32, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi ptr [ %36, %35 ], [ %33, %30 ]
  %39 = ptrtoint ptr %9 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %39, %40
  call void @skb_trim(ptr noundef %31, i32 noundef %41) #6
  br label %42

42:                                               ; preds = %37, %22, %3
  %43 = phi i32 [ -90, %37 ], [ 0, %22 ], [ -90, %3 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_cable_test_fault_length(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @nla_put(ptr noundef %7, i32 noundef 32770, i32 noundef 0, ptr noundef null) #6
  %11 = icmp slt i32 %10, 0
  %12 = icmp eq ptr %9, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %42, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 %1, ptr %5, align 1
  %16 = call i32 @nla_put(ptr noundef %15, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 %2, ptr %4, align 4
  %20 = call i32 @nla_put(ptr noundef %19, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = ptrtoint ptr %25 to i32
  %27 = ptrtoint ptr %9 to i32
  %28 = sub i32 %26, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %9, align 2
  br label %42

30:                                               ; preds = %18, %14
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ugt ptr %33, %9
  br i1 %34, label %35, label %37, !prof !12

35:                                               ; preds = %30
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  %36 = load ptr, ptr %32, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi ptr [ %36, %35 ], [ %33, %30 ]
  %39 = ptrtoint ptr %9 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %39, %40
  call void @skb_trim(ptr noundef %31, i32 noundef %41) #6
  br label %42

42:                                               ; preds = %37, %22, %3
  %43 = phi i32 [ -90, %37 ], [ 0, %22 ], [ -90, %3 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_act_cable_test_tdr(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [5 x ptr], align 4
  %4 = alloca %struct.ethnl_req_info, align 8
  %5 = alloca %struct.phy_tdr_config, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8
  %6 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !13
  %8 = getelementptr ptr, ptr %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %4, ptr noundef %9, ptr noundef nonnull @init_net, ptr noundef %11, i1 noundef zeroext true) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %166, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 120
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %150, label %19

19:                                               ; preds = %14
  %20 = getelementptr ptr, ptr %7, i32 2
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #6, !annotation !13
  store i32 100, ptr %5, align 4
  %22 = getelementptr inbounds %struct.phy_tdr_config, ptr %5, i32 0, i32 2
  store i32 100, ptr %22, align 4
  %23 = getelementptr inbounds %struct.phy_tdr_config, ptr %5, i32 0, i32 1
  store i32 15000, ptr %23, align 4
  %24 = getelementptr inbounds %struct.phy_tdr_config, ptr %5, i32 0, i32 3
  store i8 -1, ptr %24, align 4
  %25 = icmp eq ptr %21, null
  br i1 %25, label %127, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.nlattr, ptr %21, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = icmp sgt i16 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #6
  %32 = icmp eq ptr %27, null
  br i1 %32, label %125, label %33

33:                                               ; preds = %31
  store ptr @nla_parse_nested.__msg, ptr %27, align 4
  %34 = getelementptr inbounds %struct.netlink_ext_ack, ptr %27, i32 0, i32 1
  store ptr %21, ptr %34, align 4
  %35 = getelementptr inbounds %struct.netlink_ext_ack, ptr %27, i32 0, i32 2
  store ptr null, ptr %35, align 4
  br label %125

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %21, i32 4
  %38 = load i16, ptr %21, align 2
  %39 = zext i16 %38 to i32
  %40 = add nsw i32 %39, -4
  %41 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 4, ptr noundef %37, i32 noundef %40, ptr noundef nonnull @cable_test_tdr_act_cfg_policy, i32 noundef 31, ptr noundef %27) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %125, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds [5 x ptr], ptr %3, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %45, i32 4
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %5, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i32 [ %49, %47 ], [ 100, %43 ]
  %52 = getelementptr inbounds [5 x ptr], ptr %3, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %53, i32 4
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %23, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i32 [ %57, %55 ], [ 15000, %50 ]
  %60 = getelementptr inbounds [5 x ptr], ptr %3, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %61, i32 4
  %65 = load i32, ptr %64, align 4
  store i32 %65, ptr %22, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi i32 [ %65, %63 ], [ 100, %58 ]
  %68 = getelementptr inbounds [5 x ptr], ptr %3, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %66
  %72 = getelementptr i8, ptr %69, i32 4
  %73 = load i8, ptr %72, align 1
  store i8 %73, ptr %24, align 4
  %74 = icmp sgt i8 %73, 3
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_act_cable_test_tdr_cfg.__msg) #6
  %77 = icmp eq ptr %76, null
  br i1 %77, label %125, label %78

78:                                               ; preds = %75
  store ptr @ethnl_act_cable_test_tdr_cfg.__msg, ptr %76, align 4
  %79 = load ptr, ptr %68, align 4
  %80 = getelementptr inbounds %struct.netlink_ext_ack, ptr %76, i32 0, i32 1
  store ptr %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.netlink_ext_ack, ptr %76, i32 0, i32 2
  store ptr null, ptr %81, align 4
  br label %125

82:                                               ; preds = %71, %66
  %83 = icmp ugt i32 %51, 15000
  br i1 %83, label %84, label %91

84:                                               ; preds = %82
  %85 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_act_cable_test_tdr_cfg.__msg.2) #6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %125, label %87

87:                                               ; preds = %84
  store ptr @ethnl_act_cable_test_tdr_cfg.__msg.2, ptr %85, align 4
  %88 = load ptr, ptr %44, align 4
  %89 = getelementptr inbounds %struct.netlink_ext_ack, ptr %85, i32 0, i32 1
  store ptr %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.netlink_ext_ack, ptr %85, i32 0, i32 2
  store ptr null, ptr %90, align 4
  br label %125

91:                                               ; preds = %82
  %92 = icmp ugt i32 %59, 15000
  br i1 %92, label %93, label %100

93:                                               ; preds = %91
  %94 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_act_cable_test_tdr_cfg.__msg.3) #6
  %95 = icmp eq ptr %94, null
  br i1 %95, label %125, label %96

96:                                               ; preds = %93
  store ptr @ethnl_act_cable_test_tdr_cfg.__msg.3, ptr %94, align 4
  %97 = load ptr, ptr %52, align 4
  %98 = getelementptr inbounds %struct.netlink_ext_ack, ptr %94, i32 0, i32 1
  store ptr %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.netlink_ext_ack, ptr %94, i32 0, i32 2
  store ptr null, ptr %99, align 4
  br label %125

100:                                              ; preds = %91
  %101 = icmp ult i32 %59, %51
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_act_cable_test_tdr_cfg.__msg.4) #6
  %104 = icmp eq ptr %103, null
  br i1 %104, label %125, label %105

105:                                              ; preds = %102
  store ptr @ethnl_act_cable_test_tdr_cfg.__msg.4, ptr %103, align 4
  br label %125

106:                                              ; preds = %100
  %107 = icmp eq i32 %67, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %106
  %109 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_act_cable_test_tdr_cfg.__msg.5) #6
  %110 = icmp eq ptr %109, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %108
  store ptr @ethnl_act_cable_test_tdr_cfg.__msg.5, ptr %109, align 4
  %112 = load ptr, ptr %60, align 4
  %113 = getelementptr inbounds %struct.netlink_ext_ack, ptr %109, i32 0, i32 1
  store ptr %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.netlink_ext_ack, ptr %109, i32 0, i32 2
  store ptr null, ptr %114, align 4
  br label %125

115:                                              ; preds = %106
  %116 = sub nsw i32 %59, %51
  %117 = icmp ugt i32 %67, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_act_cable_test_tdr_cfg.__msg.6) #6
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  store ptr @ethnl_act_cable_test_tdr_cfg.__msg.6, ptr %119, align 4
  %122 = load ptr, ptr %60, align 4
  %123 = getelementptr inbounds %struct.netlink_ext_ack, ptr %119, i32 0, i32 1
  store ptr %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.netlink_ext_ack, ptr %119, i32 0, i32 2
  store ptr null, ptr %124, align 4
  br label %125

125:                                              ; preds = %121, %118, %111, %108, %105, %102, %96, %93, %87, %84, %78, %75, %36, %33, %31
  %126 = phi i32 [ -22, %31 ], [ -22, %33 ], [ -22, %118 ], [ -22, %121 ], [ -22, %108 ], [ -22, %111 ], [ -22, %102 ], [ -22, %105 ], [ -22, %93 ], [ -22, %96 ], [ -22, %84 ], [ -22, %87 ], [ -22, %75 ], [ -22, %78 ], [ %41, %36 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  br label %147

127:                                              ; preds = %115, %19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  call void @rtnl_lock() #6
  %128 = load ptr, ptr @ethtool_phy_ops, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %145, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.ethtool_phy_ops, ptr %128, i32 0, i32 4
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = call i32 @ethnl_ops_begin(ptr noundef %15) #6
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %131, align 4
  %139 = load ptr, ptr %16, align 8
  %140 = load ptr, ptr %10, align 4
  %141 = call i32 %138(ptr noundef %139, ptr noundef %140, ptr noundef nonnull %5) #6
  call void @ethnl_ops_complete(ptr noundef %15) #6
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load ptr, ptr %16, align 8
  call fastcc void @ethnl_cable_test_started(ptr noundef %144, i8 noundef zeroext 28)
  br label %145

145:                                              ; preds = %143, %137, %134, %130, %127
  %146 = phi i32 [ %135, %134 ], [ %141, %137 ], [ 0, %143 ], [ -95, %130 ], [ -95, %127 ]
  call void @rtnl_unlock() #6
  br label %147

147:                                              ; preds = %145, %125
  %148 = phi i32 [ %126, %125 ], [ %146, %145 ]
  %149 = load ptr, ptr %4, align 8
  br label %150

150:                                              ; preds = %147, %14
  %151 = phi ptr [ %149, %147 ], [ %15, %14 ]
  %152 = phi i32 [ %148, %147 ], [ -95, %14 ]
  %153 = icmp eq ptr %151, null
  br i1 %153, label %166, label %154

154:                                              ; preds = %150
  %155 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !9
  %156 = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 99
  %157 = load ptr, ptr %156, align 8
  %158 = ptrtoint ptr %157 to i32
  %159 = call i32 @llvm.read_register.i32(metadata !0) #6
  %160 = inttoptr i32 %159 to ptr
  %161 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %160) #5, !srcloc !10
  %162 = add i32 %161, %158
  %163 = inttoptr i32 %162 to ptr
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, -1
  store i32 %165, ptr %163, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %155) #6, !srcloc !11
  br label %166

166:                                              ; preds = %154, %150, %2
  %167 = phi i32 [ %12, %2 ], [ %152, %150 ], [ %152, %154 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_cable_test_amplitude(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef signext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @nla_put(ptr noundef %7, i32 noundef 32770, i32 noundef 0, ptr noundef null) #6
  %11 = icmp slt i32 %10, 0
  %12 = icmp eq ptr %9, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %42, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 %1, ptr %5, align 1
  %16 = call i32 @nla_put(ptr noundef %15, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 %2, ptr %4, align 2
  %20 = call i32 @nla_put(ptr noundef %19, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = ptrtoint ptr %25 to i32
  %27 = ptrtoint ptr %9 to i32
  %28 = sub i32 %26, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %9, align 2
  br label %42

30:                                               ; preds = %18, %14
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ugt ptr %33, %9
  br i1 %34, label %35, label %37, !prof !12

35:                                               ; preds = %30
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  %36 = load ptr, ptr %32, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi ptr [ %36, %35 ], [ %33, %30 ]
  %39 = ptrtoint ptr %9 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %39, %40
  call void @skb_trim(ptr noundef %31, i32 noundef %41) #6
  br label %42

42:                                               ; preds = %37, %22, %3
  %43 = phi i32 [ -90, %37 ], [ 0, %22 ], [ -90, %3 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_cable_test_pulse(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @nla_put(ptr noundef %5, i32 noundef 32771, i32 noundef 0, ptr noundef null) #6
  %9 = icmp slt i32 %8, 0
  %10 = icmp eq ptr %7, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 %1, ptr %3, align 2
  %14 = call i32 @nla_put(ptr noundef %13, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %4, align 8
  br i1 %15, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i32
  %21 = ptrtoint ptr %7 to i32
  %22 = sub i32 %20, %21
  %23 = trunc i32 %22 to i16
  store i16 %23, ptr %7, align 2
  br label %35

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ugt ptr %26, %7
  br i1 %27, label %28, label %30, !prof !12

28:                                               ; preds = %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  %29 = load ptr, ptr %25, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %26, %24 ]
  %32 = ptrtoint ptr %7 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  call void @skb_trim(ptr noundef %16, i32 noundef %34) #6
  br label %35

35:                                               ; preds = %30, %17, %2
  %36 = phi i32 [ -90, %30 ], [ 0, %17 ], [ -90, %2 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_cable_test_step(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 24
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @nla_put(ptr noundef %9, i32 noundef 32769, i32 noundef 0, ptr noundef null) #6
  %13 = icmp slt i32 %12, 0
  %14 = icmp eq ptr %11, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %48, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 %1, ptr %7, align 4
  %18 = call i32 @nla_put(ptr noundef %17, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 %2, ptr %6, align 4
  %22 = call i32 @nla_put(ptr noundef %21, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 %3, ptr %5, align 4
  %26 = call i32 @nla_put(ptr noundef %25, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 14
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %11 to i32
  %34 = sub i32 %32, %33
  %35 = trunc i32 %34 to i16
  store i16 %35, ptr %11, align 2
  br label %48

36:                                               ; preds = %24, %20, %16
  %37 = load ptr, ptr %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ugt ptr %39, %11
  br i1 %40, label %41, label %43, !prof !12

41:                                               ; preds = %36
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  %42 = load ptr, ptr %38, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi ptr [ %42, %41 ], [ %39, %36 ]
  %45 = ptrtoint ptr %11 to i32
  %46 = ptrtoint ptr %44 to i32
  %47 = sub i32 %45, %46
  call void @skb_trim(ptr noundef %37, i32 noundef %47) #6
  br label %48

48:                                               ; preds = %43, %28, %4
  %49 = phi i32 [ -90, %43 ], [ 0, %28 ], [ -90, %4 ]
  ret i32 %49
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 626309, i64 626370}
!10 = !{i64 645009}
!11 = !{i64 629326}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"auto-init"}
