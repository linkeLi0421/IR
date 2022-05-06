; ModuleID = '/llk/IR/net/dsa/dsa2.c_pt.bc'
source_filename = "../net/dsa/dsa2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_switch_find:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_switch_find\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_switch_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_register_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_register_switch\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_register_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_unregister_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_unregister_switch\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_unregister_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_switch_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_switch_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_switch_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.57, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.57 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.lock_class_key = type {}
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.dsa_bridge = type { ptr, i32, i8, %struct.refcount_struct }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_notifier_tag_proto_info = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.150 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.netdevice_tracker = type {}
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.125 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.125 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dsa_port = type { %union.anon.136, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.136 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.dsa_chip_data = type { ptr, i32, [12 x ptr], i32, ptr, [12 x ptr], [12 x ptr], [4 x i8] }
%struct.dsa_link = type { ptr, ptr, %struct.list_head }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }

@dsa_tree_list = dso_local global %struct.list_head { ptr @dsa_tree_list, ptr @dsa_tree_list }, align 4
@dsa_fwd_offloading_bridges = internal global i32 0, align 4
@__kstrtab_dsa_switch_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_switch_find = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_switch_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_switch_find to i32), ptr @__kstrtab_dsa_switch_find, ptr @__kstrtabns_dsa_switch_find }, section "___ksymtab_gpl+dsa_switch_find", align 4
@dsa2_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dsa2_mutex, i64 12), ptr getelementptr (i8, ptr @dsa2_mutex, i64 12) } }, align 4
@__kstrtab_dsa_register_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_register_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_register_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_register_switch to i32), ptr @__kstrtab_dsa_register_switch, ptr @__kstrtabns_dsa_register_switch }, section "___ksymtab_gpl+dsa_register_switch", align 4
@__kstrtab_dsa_unregister_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_unregister_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_unregister_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_unregister_switch to i32), ptr @__kstrtab_dsa_unregister_switch, ptr @__kstrtabns_dsa_unregister_switch }, section "___ksymtab_gpl+dsa_unregister_switch", align 4
@__kstrtab_dsa_switch_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_switch_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_switch_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_switch_shutdown to i32), ptr @__kstrtab_dsa_switch_shutdown, ptr @__kstrtabns_dsa_switch_shutdown }, section "___ksymtab_gpl+dsa_switch_shutdown", align 4
@.str = private unnamed_addr constant [11 x i8] c"dsa,member\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"A DSA switch with index %d already exists in tree %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ethernet-ports\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"no ports child node found\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"port %pOF index %u exceeds num_ports (%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ethernet\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"dsa-tag-protocol\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"A DSA switch tree can have only one tagging protocol\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Tag protocol cannot be modified\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"No tagger for this switch\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dsa\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"\013DSA: tree %d already setup! Disjoint trees?\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"\016DSA: tree %d setup\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"\013DSA: tree %d has no CPU port\0A\00", align 1
@dsa_devlink_ops = internal constant %struct.devlink_ops { i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_devlink_sb_pool_get, ptr @dsa_devlink_sb_pool_set, ptr @dsa_devlink_sb_port_pool_get, ptr @dsa_devlink_sb_port_pool_set, ptr @dsa_devlink_sb_tc_pool_bind_get, ptr @dsa_devlink_sb_tc_pool_bind_set, ptr @dsa_devlink_sb_occ_snapshot, ptr @dsa_devlink_sb_occ_max_clear, ptr @dsa_devlink_sb_occ_port_pool_get, ptr @dsa_devlink_sb_occ_tc_port_bind_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_devlink_info_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@init_net = external dso_local global %struct.net, align 64
@.str.20 = private unnamed_addr constant [38 x i8] c"Unable to use tag protocol \22%s\22: %pe\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"Unable to connect to tag protocol \22%s\22: %pe\0A\00", align 1
@dsa_port_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"&dp->addr_lists_lock\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"\016DSA: tree %d torn down\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_dsa_register_switch, ptr @__ksymtab_dsa_switch_find, ptr @__ksymtab_dsa_switch_shutdown, ptr @__ksymtab_dsa_unregister_switch], section "llvm.metadata"
@switch.table.dsa_register_switch = private unnamed_addr constant [3 x i32] [i32 6, i32 1, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_tree_notify(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 2
  %5 = tail call i32 @raw_notifier_call_chain(ptr noundef %4, i32 noundef %1, ptr noundef %2) #13
  %6 = and i32 %5, -32769
  %7 = icmp sgt i32 %6, 1
  %8 = sub i32 1, %6
  %9 = select i1 %7, i32 %8, i32 0
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_broadcast(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @dsa_tree_list, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @dsa_tree_list
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 2
  %9 = tail call i32 @raw_notifier_call_chain(ptr noundef %8, i32 noundef %0, ptr noundef %1) #13
  %10 = and i32 %9, -32769
  %11 = icmp sgt i32 %10, 1
  %12 = sub i32 1, %10
  %13 = select i1 %11, i32 %12, i32 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %3, label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %13, %7 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_lag_map(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %16, %6
  %10 = phi i32 [ 0, %6 ], [ %17, %16 ]
  %11 = getelementptr ptr, ptr %8, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %12, null
  %14 = icmp eq ptr %12, %1
  %15 = and i1 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = add nuw i32 %10, 1
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %19, label %9

19:                                               ; preds = %16, %9
  %20 = phi i32 [ %10, %9 ], [ -19, %16 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %32, %22
  %26 = phi i32 [ 0, %22 ], [ %33, %32 ]
  %27 = getelementptr ptr, ptr %24, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = getelementptr ptr, ptr %24, i32 %26
  store ptr %1, ptr %31, align 4
  br label %35

32:                                               ; preds = %25
  %33 = add nuw i32 %26, 1
  %34 = icmp eq i32 %33, %4
  br i1 %34, label %35, label %25

35:                                               ; preds = %32, %30, %19, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_lag_unmap(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %15, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %15 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  br label %19

15:                                               ; preds = %4
  %16 = getelementptr i8, ptr %6, i32 -8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %31, label %4

19:                                               ; preds = %28, %12
  %20 = phi i32 [ 0, %12 ], [ %29, %28 ]
  %21 = getelementptr ptr, ptr %14, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ne ptr %22, null
  %24 = icmp eq ptr %22, %1
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = getelementptr ptr, ptr %14, i32 %20
  store ptr null, ptr %27, align 4
  br label %31

28:                                               ; preds = %19
  %29 = add nuw i32 %20, 1
  %30 = icmp eq i32 %29, %10
  br i1 %30, label %31, label %19

31:                                               ; preds = %28, %26, %15, %8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @dsa_tree_bridge_find(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %14, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %14 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -228
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %4

17:                                               ; preds = %14, %4
  %18 = phi ptr [ %10, %14 ], [ null, %4 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_bridge_num_get(ptr noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @dsa_tree_list, align 4
  %4 = icmp eq ptr %3, @dsa_tree_list
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %27, %5
  %8 = phi ptr [ %28, %27 ], [ %3, %5 ]
  %9 = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %27, label %12

12:                                               ; preds = %18, %7
  %13 = phi ptr [ %19, %18 ], [ %10, %7 ]
  %14 = getelementptr i8, ptr %13, i32 -228
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  br i1 %6, label %27, label %18

18:                                               ; preds = %21, %17
  %19 = load ptr, ptr %13, align 4
  %20 = icmp eq ptr %19, %9
  br i1 %20, label %27, label %12

21:                                               ; preds = %12
  %22 = load ptr, ptr %15, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %18

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.dsa_bridge, ptr %15, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  br label %30

27:                                               ; preds = %18, %17, %7
  %28 = load ptr, ptr %8, align 4
  %29 = icmp eq ptr %28, @dsa_tree_list
  br i1 %29, label %30, label %7

30:                                               ; preds = %27, %24, %2
  %31 = phi i32 [ %26, %24 ], [ 0, %2 ], [ 0, %27 ]
  %32 = icmp eq i32 %1, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = tail call i32 @_find_next_zero_bit_le(ptr noundef nonnull @dsa_fwd_offloading_bridges, i32 noundef 32, i32 noundef 1) #13
  %37 = icmp ult i32 %36, %1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @_set_bit(i32 noundef %36, ptr noundef nonnull @dsa_fwd_offloading_bridges) #13
  br label %39

39:                                               ; preds = %38, %35, %33, %30
  %40 = phi i32 [ 0, %30 ], [ 0, %35 ], [ %31, %33 ], [ %36, %38 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_bridge_num_put(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @_clear_bit(i32 noundef %1, ptr noundef nonnull @dsa_fwd_offloading_bridges) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @dsa_switch_find(i32 noundef %0, i32 noundef %1) #4 {
  %3 = load ptr, ptr @dsa_tree_list, align 4
  %4 = icmp eq ptr %3, @dsa_tree_list
  br i1 %4, label %25, label %5

5:                                                ; preds = %22, %2
  %6 = phi ptr [ %23, %22 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.dsa_switch_tree, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dsa_switch_tree, ptr %6, i32 0, i32 1
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -264
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dsa_switch, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %25, label %12

22:                                               ; preds = %12, %5
  %23 = load ptr, ptr %6, align 4
  %24 = icmp eq ptr %23, @dsa_tree_list
  br i1 %24, label %25, label %5

25:                                               ; preds = %22, %16, %2
  %26 = phi ptr [ null, %2 ], [ %18, %16 ], [ null, %22 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_tree_change_tag_proto(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.dsa_notifier_tag_proto_info, align 4
  %6 = alloca %struct.dsa_notifier_tag_proto_info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = tail call i32 @rtnl_trylock() #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call ptr @llvm.thread.pointer() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %10) #13
  br label %60

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %35, label %20

20:                                               ; preds = %32, %16
  %21 = phi ptr [ %33, %32 ], [ %18, %16 ]
  %22 = getelementptr i8, ptr %21, i32 -256
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %21, i32 -280
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 14
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %25, %20
  %33 = load ptr, ptr %21, align 4
  %34 = icmp eq ptr %33, %17
  br i1 %34, label %35, label %20

35:                                               ; preds = %32, %16
  store ptr %2, ptr %6, align 4
  %36 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 2
  %37 = call i32 @raw_notifier_call_chain(ptr noundef %36, i32 noundef 17, ptr noundef nonnull %6) #13
  %38 = and i32 %37, -32769
  %39 = icmp sgt i32 %38, 1
  %40 = sub i32 1, %38
  %41 = select i1 %39, i32 %40, i32 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr %2, ptr %44, align 4
  store ptr %2, ptr %5, align 4
  %46 = call i32 @raw_notifier_call_chain(ptr noundef %36, i32 noundef 18, ptr noundef nonnull %5) #13
  %47 = and i32 %46, -32769
  %48 = icmp sgt i32 %47, 1
  %49 = sub i32 1, %47
  %50 = select i1 %48, i32 %49, i32 0
  switch i32 %50, label %53 [
    i32 -95, label %51
    i32 0, label %51
  ]

51:                                               ; preds = %43, %43
  store ptr %45, ptr %5, align 4
  %52 = call i32 @raw_notifier_call_chain(ptr noundef %36, i32 noundef 19, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @rtnl_unlock() #13
  br label %60

53:                                               ; preds = %43
  store ptr %2, ptr %5, align 4
  %54 = call i32 @raw_notifier_call_chain(ptr noundef %36, i32 noundef 19, ptr noundef nonnull %5) #13
  store ptr %45, ptr %44, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %55

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %41, %35 ], [ %50, %53 ]
  store ptr %3, ptr %6, align 4
  %57 = call i32 @raw_notifier_call_chain(ptr noundef %36, i32 noundef 17, ptr noundef nonnull %6) #13
  br label %58

58:                                               ; preds = %55, %25, %11
  %59 = phi i32 [ -16, %11 ], [ %56, %55 ], [ -16, %25 ]
  call void @rtnl_unlock() #13
  br label %60

60:                                               ; preds = %58, %51, %9
  %61 = phi i32 [ %59, %58 ], [ 0, %51 ], [ -513, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %61
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_register_switch(ptr noundef %0) #0 {
  %2 = alloca %struct.devlink_port_attrs, align 4
  %3 = alloca %struct.devlink_port_attrs, align 4
  %4 = alloca %struct.of_phandle_iterator, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 8
  tail call void @mutex_lock(ptr noundef nonnull @dsa2_mutex) #13
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %1020, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %1020, label %18

18:                                               ; preds = %10
  %19 = icmp eq ptr %14, null
  br i1 %19, label %208, label %20

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str, ptr noundef nonnull %7, i32 noundef 2, i32 noundef 2) #13
  %22 = icmp slt i32 %21, 0
  %23 = icmp ne i32 %21, -22
  %24 = and i1 %22, %23
  br i1 %24, label %68, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %7, align 8
  %30 = call fastcc ptr @dsa_tree_touch(i32 noundef %29) #13
  %31 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %68, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.dsa_switch_tree, ptr %30, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %28, align 4
  %37 = load ptr, ptr @dsa_tree_list, align 4
  %38 = icmp eq ptr %37, @dsa_tree_list
  br i1 %38, label %63, label %39

39:                                               ; preds = %56, %33
  %40 = phi ptr [ %57, %56 ], [ %37, %33 ]
  %41 = getelementptr inbounds %struct.dsa_switch_tree, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %35
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.dsa_switch_tree, ptr %40, i32 0, i32 1
  br label %46

46:                                               ; preds = %50, %44
  %47 = phi ptr [ %45, %44 ], [ %48, %50 ]
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %48, i32 -264
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.dsa_switch, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %36
  br i1 %55, label %59, label %46

56:                                               ; preds = %46, %39
  %57 = load ptr, ptr %40, align 4
  %58 = icmp eq ptr %57, @dsa_tree_list
  br i1 %58, label %63, label %39

59:                                               ; preds = %50
  %60 = icmp eq ptr %52, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.1, i32 noundef %36, i32 noundef %35) #14
  br label %68

63:                                               ; preds = %59, %56, %33
  %64 = getelementptr inbounds %struct.dsa_switch_tree, ptr %30, i32 0, i32 12
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %65, %36
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  store i32 %36, ptr %64, align 4
  br label %70

68:                                               ; preds = %61, %25, %20
  %69 = phi i32 [ -12, %25 ], [ %21, %20 ], [ -17, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %184

70:                                               ; preds = %67, %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  %71 = load i32, ptr %15, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %111, label %73

73:                                               ; preds = %107, %70
  %74 = phi i32 [ %108, %107 ], [ %71, %70 ]
  %75 = phi i32 [ %109, %107 ], [ 0, %70 ]
  %76 = load ptr, ptr %31, align 4
  %77 = getelementptr inbounds %struct.dsa_switch_tree, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %92, label %80

80:                                               ; preds = %89, %73
  %81 = phi ptr [ %90, %89 ], [ %78, %73 ]
  %82 = getelementptr i8, ptr %81, i32 -264
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = getelementptr i8, ptr %81, i32 -260
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, %75
  br i1 %88, label %104, label %89

89:                                               ; preds = %85, %80
  %90 = load ptr, ptr %81, align 4
  %91 = icmp eq ptr %90, %77
  br i1 %91, label %92, label %80

92:                                               ; preds = %89, %73
  %93 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %94 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3520, i32 noundef 332) #15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %184, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.dsa_port, ptr %94, i32 0, i32 4
  store ptr %0, ptr %97, align 8
  %98 = getelementptr inbounds %struct.dsa_port, ptr %94, i32 0, i32 5
  store i32 %75, ptr %98, align 4
  %99 = getelementptr inbounds %struct.dsa_port, ptr %94, i32 0, i32 20
  store volatile ptr %99, ptr %99, align 8
  %100 = getelementptr inbounds %struct.dsa_port, ptr %94, i32 0, i32 20, i32 1
  %101 = getelementptr inbounds %struct.dsa_switch_tree, ptr %76, i32 0, i32 1, i32 1
  %102 = load ptr, ptr %101, align 4
  store ptr %99, ptr %101, align 4
  store ptr %77, ptr %99, align 8
  store ptr %102, ptr %100, align 4
  store volatile ptr %99, ptr %102, align 4
  %103 = load i32, ptr %15, align 4
  br label %107

104:                                              ; preds = %85
  %105 = getelementptr i8, ptr %81, i32 -280
  %106 = icmp eq ptr %105, null
  br i1 %106, label %184, label %107

107:                                              ; preds = %104, %96
  %108 = phi i32 [ %103, %96 ], [ %74, %104 ]
  %109 = add nuw i32 %75, 1
  %110 = icmp ult i32 %109, %108
  br i1 %110, label %73, label %111

111:                                              ; preds = %107, %70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %112 = call ptr @of_get_child_by_name(ptr noundef nonnull %14, ptr noundef nonnull @.str.2) #13
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = call ptr @of_get_child_by_name(ptr noundef nonnull %14, ptr noundef nonnull @.str.3) #13
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %184

119:                                              ; preds = %114, %111
  %120 = phi ptr [ %112, %111 ], [ %115, %114 ]
  %121 = call ptr @of_get_next_available_child(ptr noundef nonnull %120, ptr noundef null) #13
  %122 = icmp eq ptr %121, null
  br i1 %122, label %181, label %123

123:                                              ; preds = %178, %119
  %124 = phi ptr [ %179, %178 ], [ %121, %119 ]
  %125 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %124, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #13
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %127, label %182

127:                                              ; preds = %123
  %128 = load i32, ptr %6, align 4
  %129 = load i32, ptr %15, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.6, ptr noundef nonnull %124, i32 noundef %128, i32 noundef %129) #14
  br label %182

133:                                              ; preds = %127
  %134 = load ptr, ptr %31, align 4
  %135 = getelementptr inbounds %struct.dsa_switch_tree, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, %135
  br i1 %137, label %152, label %138

138:                                              ; preds = %147, %133
  %139 = phi ptr [ %148, %147 ], [ %136, %133 ]
  %140 = getelementptr i8, ptr %139, i32 -264
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = getelementptr i8, ptr %139, i32 -260
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, %128
  br i1 %146, label %150, label %147

147:                                              ; preds = %143, %138
  %148 = load ptr, ptr %139, align 4
  %149 = icmp eq ptr %148, %135
  br i1 %149, label %152, label %138

150:                                              ; preds = %143
  %151 = getelementptr i8, ptr %139, i32 -280
  br label %152

152:                                              ; preds = %150, %147, %133
  %153 = phi ptr [ %151, %150 ], [ null, %133 ], [ null, %147 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #13, !annotation !9
  %154 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %124, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #13
  %155 = icmp ne i32 %154, 0
  %156 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #13
  %157 = call ptr @of_get_property(ptr noundef nonnull %124, ptr noundef nonnull @.str.8, ptr noundef null) #13
  %158 = call ptr @of_find_property(ptr noundef nonnull %124, ptr noundef nonnull @.str.9, ptr noundef null) #13
  %159 = getelementptr inbounds %struct.dsa_port, ptr %153, i32 0, i32 12
  store ptr %124, ptr %159, align 4
  %160 = icmp eq ptr %156, null
  %161 = select i1 %155, i1 true, i1 %160
  br i1 %161, label %165, label %162

162:                                              ; preds = %152
  %163 = call ptr @of_find_net_device_by_node(ptr noundef nonnull %156) #13
  call void @of_node_put(ptr noundef nonnull %156) #13
  %164 = icmp eq ptr %163, null
  br i1 %164, label %182, label %174

165:                                              ; preds = %152
  %166 = icmp eq ptr %158, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.dsa_port, ptr %153, i32 0, i32 6
  store i32 2, ptr %168, align 4
  br label %178

169:                                              ; preds = %165
  %170 = icmp eq ptr %157, null
  %171 = select i1 %170, ptr @.str.14, ptr %157
  %172 = getelementptr inbounds %struct.dsa_port, ptr %153, i32 0, i32 6
  store i32 3, ptr %172, align 4
  %173 = getelementptr inbounds %struct.dsa_port, ptr %153, i32 0, i32 7
  store ptr %171, ptr %173, align 4
  br label %178

174:                                              ; preds = %162
  %175 = call ptr @of_get_property(ptr noundef nonnull %124, ptr noundef nonnull @.str.10, ptr noundef null) #13
  %176 = call fastcc i32 @dsa_port_parse_cpu(ptr noundef %153, ptr noundef nonnull %163, ptr noundef %175) #13
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174, %169, %167
  %179 = call ptr @of_get_next_available_child(ptr noundef %120, ptr noundef nonnull %124) #13
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %123

181:                                              ; preds = %178, %119
  call void @of_node_put(ptr noundef %120) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %346

182:                                              ; preds = %174, %162, %131, %123
  %183 = phi i32 [ -22, %131 ], [ %125, %123 ], [ -517, %162 ], [ %176, %174 ]
  call void @of_node_put(ptr noundef nonnull %124) #13
  call void @of_node_put(ptr noundef %120) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %184

184:                                              ; preds = %182, %117, %104, %92, %68
  %185 = phi i32 [ %183, %182 ], [ -22, %117 ], [ %69, %68 ], [ -12, %92 ], [ -12, %104 ]
  %186 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.dsa_switch_tree, ptr %187, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, %188
  br i1 %190, label %1020, label %191

191:                                              ; preds = %204, %184
  %192 = phi ptr [ %205, %204 ], [ %187, %184 ]
  %193 = phi ptr [ %194, %204 ], [ %189, %184 ]
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr i8, ptr %193, i32 -264
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, %0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = getelementptr i8, ptr %193, i32 -280
  %200 = getelementptr inbounds %struct.list_head, ptr %193, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.list_head, ptr %194, i32 0, i32 1
  store ptr %201, ptr %202, align 4
  store volatile ptr %194, ptr %201, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %193, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %200, align 4
  call void @kfree(ptr noundef %199) #13
  %203 = load ptr, ptr %186, align 4
  br label %204

204:                                              ; preds = %198, %191
  %205 = phi ptr [ %192, %191 ], [ %203, %198 ]
  %206 = getelementptr inbounds %struct.dsa_switch_tree, ptr %205, i32 0, i32 1
  %207 = icmp eq ptr %194, %206
  br i1 %207, label %343, label %191

208:                                              ; preds = %18
  %209 = icmp eq ptr %12, null
  br i1 %209, label %1020, label %210

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 7
  store ptr %12, ptr %211, align 4
  %212 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 2
  store i32 0, ptr %212, align 4
  %213 = tail call fastcc ptr @dsa_tree_touch(i32 noundef 0) #13
  %214 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  store ptr %213, ptr %214, align 4
  %215 = icmp eq ptr %213, null
  br i1 %215, label %320, label %216

216:                                              ; preds = %210
  %217 = load i32, ptr %15, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %254, %216
  br label %260

220:                                              ; preds = %258, %216
  %221 = phi ptr [ %259, %258 ], [ %213, %216 ]
  %222 = phi i32 [ %255, %258 ], [ %217, %216 ]
  %223 = phi i32 [ %256, %258 ], [ 0, %216 ]
  %224 = getelementptr inbounds %struct.dsa_switch_tree, ptr %221, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, %224
  br i1 %226, label %239, label %227

227:                                              ; preds = %236, %220
  %228 = phi ptr [ %237, %236 ], [ %225, %220 ]
  %229 = getelementptr i8, ptr %228, i32 -264
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, %0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = getelementptr i8, ptr %228, i32 -260
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, %223
  br i1 %235, label %251, label %236

236:                                              ; preds = %232, %227
  %237 = load ptr, ptr %228, align 4
  %238 = icmp eq ptr %237, %224
  br i1 %238, label %239, label %227

239:                                              ; preds = %236, %220
  %240 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %241 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %240, i32 noundef 3520, i32 noundef 332) #15
  %242 = icmp eq ptr %241, null
  br i1 %242, label %320, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.dsa_port, ptr %241, i32 0, i32 4
  store ptr %0, ptr %244, align 8
  %245 = getelementptr inbounds %struct.dsa_port, ptr %241, i32 0, i32 5
  store i32 %223, ptr %245, align 4
  %246 = getelementptr inbounds %struct.dsa_port, ptr %241, i32 0, i32 20
  store volatile ptr %246, ptr %246, align 8
  %247 = getelementptr inbounds %struct.dsa_port, ptr %241, i32 0, i32 20, i32 1
  %248 = getelementptr inbounds %struct.dsa_switch_tree, ptr %221, i32 0, i32 1, i32 1
  %249 = load ptr, ptr %248, align 4
  store ptr %246, ptr %248, align 4
  store ptr %224, ptr %246, align 8
  store ptr %249, ptr %247, align 4
  store volatile ptr %246, ptr %249, align 4
  %250 = load i32, ptr %15, align 4
  br label %254

251:                                              ; preds = %232
  %252 = getelementptr i8, ptr %228, i32 -280
  %253 = icmp eq ptr %252, null
  br i1 %253, label %320, label %254

254:                                              ; preds = %251, %243
  %255 = phi i32 [ %250, %243 ], [ %222, %251 ]
  %256 = add nuw i32 %223, 1
  %257 = icmp ult i32 %256, %255
  br i1 %257, label %258, label %219

258:                                              ; preds = %254
  %259 = load ptr, ptr %214, align 4
  br label %220

260:                                              ; preds = %315, %219
  %261 = phi i32 [ %317, %315 ], [ 0, %219 ]
  %262 = phi i1 [ %316, %315 ], [ false, %219 ]
  %263 = getelementptr %struct.dsa_chip_data, ptr %12, i32 0, i32 5, i32 %261
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr %struct.dsa_chip_data, ptr %12, i32 0, i32 2, i32 %261
  %266 = load ptr, ptr %265, align 4
  %267 = load ptr, ptr %214, align 4
  %268 = getelementptr inbounds %struct.dsa_switch_tree, ptr %267, i32 0, i32 1
  %269 = load ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, %268
  br i1 %270, label %285, label %271

271:                                              ; preds = %280, %260
  %272 = phi ptr [ %281, %280 ], [ %269, %260 ]
  %273 = getelementptr i8, ptr %272, i32 -264
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, %0
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = getelementptr i8, ptr %272, i32 -260
  %278 = load i32, ptr %277, align 4
  %279 = icmp eq i32 %278, %261
  br i1 %279, label %283, label %280

280:                                              ; preds = %276, %271
  %281 = load ptr, ptr %272, align 4
  %282 = icmp eq ptr %281, %268
  br i1 %282, label %285, label %271

283:                                              ; preds = %276
  %284 = getelementptr i8, ptr %272, i32 -280
  br label %285

285:                                              ; preds = %283, %280, %260
  %286 = phi ptr [ %284, %283 ], [ null, %260 ], [ null, %280 ]
  %287 = icmp eq ptr %264, null
  br i1 %287, label %315, label %288

288:                                              ; preds = %285
  %289 = tail call i32 @strcmp(ptr noundef nonnull %264, ptr noundef nonnull dereferenceable(4) @.str.15) #13
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = tail call ptr @dsa_dev_to_net_device(ptr noundef %266) #13
  %293 = icmp eq ptr %292, null
  br i1 %293, label %320, label %301

294:                                              ; preds = %288
  %295 = tail call i32 @strcmp(ptr noundef nonnull %264, ptr noundef nonnull dereferenceable(4) @.str.16) #13
  %296 = icmp eq i32 %295, 0
  %297 = getelementptr inbounds %struct.dsa_port, ptr %286, i32 0, i32 6
  br i1 %296, label %298, label %299

298:                                              ; preds = %294
  store i32 2, ptr %297, align 4
  br label %315

299:                                              ; preds = %294
  store i32 3, ptr %297, align 4
  %300 = getelementptr inbounds %struct.dsa_port, ptr %286, i32 0, i32 7
  store ptr %264, ptr %300, align 4
  br label %315

301:                                              ; preds = %291
  %302 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !10
  %303 = getelementptr inbounds %struct.net_device, ptr %292, i32 0, i32 99
  %304 = load ptr, ptr %303, align 8
  %305 = ptrtoint ptr %304 to i32
  %306 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %307 = inttoptr i32 %306 to ptr
  %308 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %307) #11, !srcloc !11
  %309 = add i32 %308, %305
  %310 = inttoptr i32 %309 to ptr
  %311 = load i32, ptr %310, align 4
  %312 = add i32 %311, -1
  store i32 %312, ptr %310, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %302) #13, !srcloc !12
  %313 = tail call fastcc i32 @dsa_port_parse_cpu(ptr noundef %286, ptr noundef nonnull %292, ptr noundef null) #13
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %301, %299, %298, %285
  %316 = phi i1 [ %262, %285 ], [ true, %301 ], [ true, %299 ], [ true, %298 ]
  %317 = add nuw nsw i32 %261, 1
  %318 = icmp eq i32 %317, 12
  br i1 %318, label %319, label %260

319:                                              ; preds = %315
  br i1 %316, label %346, label %320

320:                                              ; preds = %319, %301, %291, %251, %239, %210
  %321 = phi i32 [ -22, %319 ], [ -12, %210 ], [ -517, %291 ], [ %313, %301 ], [ -12, %239 ], [ -12, %251 ]
  %322 = load ptr, ptr %214, align 4
  %323 = getelementptr inbounds %struct.dsa_switch_tree, ptr %322, i32 0, i32 1
  %324 = load ptr, ptr %323, align 4
  %325 = icmp eq ptr %324, %323
  br i1 %325, label %1020, label %326

326:                                              ; preds = %339, %320
  %327 = phi ptr [ %340, %339 ], [ %322, %320 ]
  %328 = phi ptr [ %329, %339 ], [ %324, %320 ]
  %329 = load ptr, ptr %328, align 4
  %330 = getelementptr i8, ptr %328, i32 -264
  %331 = load ptr, ptr %330, align 4
  %332 = icmp eq ptr %331, %0
  br i1 %332, label %333, label %339

333:                                              ; preds = %326
  %334 = getelementptr i8, ptr %328, i32 -280
  %335 = getelementptr inbounds %struct.list_head, ptr %328, i32 0, i32 1
  %336 = load ptr, ptr %335, align 4
  %337 = getelementptr inbounds %struct.list_head, ptr %329, i32 0, i32 1
  store ptr %336, ptr %337, align 4
  store volatile ptr %329, ptr %336, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %328, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %335, align 4
  tail call void @kfree(ptr noundef %334) #13
  %338 = load ptr, ptr %214, align 4
  br label %339

339:                                              ; preds = %333, %326
  %340 = phi ptr [ %327, %326 ], [ %338, %333 ]
  %341 = getelementptr inbounds %struct.dsa_switch_tree, ptr %340, i32 0, i32 1
  %342 = icmp eq ptr %329, %341
  br i1 %342, label %343, label %326

343:                                              ; preds = %339, %204
  %344 = phi i32 [ %321, %339 ], [ %185, %204 ]
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %1020

346:                                              ; preds = %343, %319, %181
  %347 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %348 = load ptr, ptr %347, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %361, label %350

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.dsa_switch_tree, ptr %348, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %351) #13, !srcloc !13
  %352 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %351, ptr %351, i32 1, ptr elementtype(i32) %351) #13, !srcloc !14
  %353 = extractvalue { i32, i32, i32 } %352, 0
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %359, label %355, !prof !15

355:                                              ; preds = %350
  %356 = add i32 %353, 1
  %357 = or i32 %356, %353
  %358 = icmp sgt i32 %357, -1
  br i1 %358, label %361, label %359, !prof !16

359:                                              ; preds = %355, %350
  %360 = phi i32 [ 2, %350 ], [ 1, %355 ]
  call void @refcount_warn_saturate(ptr noundef %351, i32 noundef %360) #13
  br label %361

361:                                              ; preds = %359, %355, %346
  %362 = getelementptr inbounds %struct.dsa_switch_tree, ptr %348, i32 0, i32 8
  %363 = load i8, ptr %362, align 4, !range !17
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %365, label %972

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.dsa_switch_tree, ptr %348, i32 0, i32 1
  %367 = load ptr, ptr %366, align 4
  %368 = icmp eq ptr %367, %366
  br i1 %368, label %489, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.of_phandle_iterator, ptr %4, i32 0, i32 8
  br label %371

371:                                              ; preds = %440, %369
  %372 = phi ptr [ %367, %369 ], [ %441, %440 ]
  %373 = getelementptr i8, ptr %372, i32 -280
  %374 = getelementptr i8, ptr %372, i32 -256
  %375 = load i32, ptr %374, align 4
  %376 = icmp eq i32 %375, 2
  br i1 %376, label %377, label %440

377:                                              ; preds = %371
  %378 = getelementptr i8, ptr %372, i32 -264
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr inbounds %struct.dsa_switch, ptr %379, i32 0, i32 1
  %381 = load ptr, ptr %380, align 4
  %382 = getelementptr i8, ptr %372, i32 -236
  %383 = load ptr, ptr %382, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false) #13, !annotation !9
  %384 = call i32 @of_phandle_iterator_init(ptr noundef nonnull %4, ptr noundef %383, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0) #13
  %385 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %4) #13
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %439

387:                                              ; preds = %377
  %388 = getelementptr inbounds %struct.dsa_switch_tree, ptr %381, i32 0, i32 1
  br label %389

389:                                              ; preds = %436, %387
  %390 = load ptr, ptr %370, align 4
  br label %391

391:                                              ; preds = %395, %389
  %392 = phi ptr [ %388, %389 ], [ %393, %395 ]
  %393 = load ptr, ptr %392, align 4
  %394 = icmp eq ptr %393, %388
  br i1 %394, label %443, label %395

395:                                              ; preds = %391
  %396 = getelementptr i8, ptr %393, i32 -236
  %397 = load ptr, ptr %396, align 4
  %398 = icmp eq ptr %397, %390
  br i1 %398, label %399, label %391

399:                                              ; preds = %395
  %400 = getelementptr i8, ptr %393, i32 -280
  %401 = icmp eq ptr %400, null
  br i1 %401, label %443, label %402

402:                                              ; preds = %399
  %403 = load ptr, ptr %378, align 4
  %404 = getelementptr inbounds %struct.dsa_switch, ptr %403, i32 0, i32 1
  %405 = load ptr, ptr %404, align 4
  %406 = getelementptr inbounds %struct.dsa_switch_tree, ptr %405, i32 0, i32 10
  %407 = load ptr, ptr %406, align 4
  %408 = icmp eq ptr %407, %406
  br i1 %408, label %421, label %409

409:                                              ; preds = %418, %402
  %410 = phi ptr [ %419, %418 ], [ %407, %402 ]
  %411 = getelementptr i8, ptr %410, i32 -8
  %412 = load ptr, ptr %411, align 4
  %413 = icmp eq ptr %412, %373
  br i1 %413, label %414, label %418

414:                                              ; preds = %409
  %415 = getelementptr i8, ptr %410, i32 -4
  %416 = load ptr, ptr %415, align 4
  %417 = icmp eq ptr %416, %400
  br i1 %417, label %433, label %418

418:                                              ; preds = %414, %409
  %419 = load ptr, ptr %410, align 4
  %420 = icmp eq ptr %419, %406
  br i1 %420, label %421, label %409

421:                                              ; preds = %418, %402
  %422 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %423 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %422, i32 noundef 3520, i32 noundef 16) #15
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %427

425:                                              ; preds = %421
  %426 = load ptr, ptr %370, align 4
  br label %443

427:                                              ; preds = %421
  store ptr %373, ptr %423, align 8
  %428 = getelementptr inbounds %struct.dsa_link, ptr %423, i32 0, i32 1
  store ptr %400, ptr %428, align 4
  %429 = getelementptr inbounds %struct.dsa_link, ptr %423, i32 0, i32 2
  store volatile ptr %429, ptr %429, align 8
  %430 = getelementptr inbounds %struct.dsa_link, ptr %423, i32 0, i32 2, i32 1
  %431 = getelementptr inbounds %struct.dsa_switch_tree, ptr %405, i32 0, i32 10, i32 1
  %432 = load ptr, ptr %431, align 4
  store ptr %429, ptr %431, align 4
  store ptr %406, ptr %429, align 8
  store ptr %432, ptr %430, align 4
  store volatile ptr %429, ptr %432, align 4
  br label %436

433:                                              ; preds = %414
  %434 = getelementptr i8, ptr %410, i32 -8
  %435 = icmp eq ptr %434, null
  br i1 %435, label %443, label %436

436:                                              ; preds = %433, %427
  %437 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %4) #13
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %389, label %439

439:                                              ; preds = %436, %377
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  br label %440

440:                                              ; preds = %439, %371
  %441 = load ptr, ptr %372, align 4
  %442 = icmp eq ptr %441, %366
  br i1 %442, label %445, label %371

443:                                              ; preds = %433, %425, %399, %391
  %444 = phi ptr [ %426, %425 ], [ %390, %391 ], [ %390, %399 ], [ %390, %433 ]
  call void @of_node_put(ptr noundef %444) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  br label %1020

445:                                              ; preds = %440
  %446 = load ptr, ptr %366, align 4
  %447 = icmp eq ptr %446, %366
  br i1 %447, label %489, label %448

448:                                              ; preds = %486, %445
  %449 = phi ptr [ %487, %486 ], [ %446, %445 ]
  %450 = getelementptr i8, ptr %449, i32 -280
  %451 = getelementptr i8, ptr %449, i32 -256
  %452 = load i32, ptr %451, align 4
  %453 = icmp eq i32 %452, 1
  br i1 %453, label %454, label %486

454:                                              ; preds = %448
  %455 = getelementptr i8, ptr %449, i32 -264
  %456 = load ptr, ptr %455, align 4
  %457 = getelementptr inbounds %struct.dsa_switch, ptr %456, i32 0, i32 1
  %458 = load ptr, ptr %457, align 4
  %459 = getelementptr inbounds %struct.dsa_switch_tree, ptr %458, i32 0, i32 1
  %460 = load ptr, ptr %459, align 4
  %461 = icmp eq ptr %460, %459
  br i1 %461, label %486, label %462

462:                                              ; preds = %479, %454
  %463 = phi ptr [ %480, %479 ], [ %456, %454 ]
  %464 = phi ptr [ %481, %479 ], [ %460, %454 ]
  %465 = getelementptr i8, ptr %464, i32 -264
  %466 = load ptr, ptr %465, align 4
  %467 = icmp eq ptr %466, %463
  br i1 %467, label %468, label %479

468:                                              ; preds = %462
  %469 = getelementptr i8, ptr %464, i32 -248
  %470 = load ptr, ptr %469, align 4
  %471 = icmp eq ptr %470, null
  br i1 %471, label %472, label %479

472:                                              ; preds = %468
  %473 = getelementptr i8, ptr %464, i32 -256
  %474 = load i32, ptr %473, align 4
  %475 = and i32 %474, -2
  %476 = icmp eq i32 %475, 2
  br i1 %476, label %477, label %479

477:                                              ; preds = %472
  store ptr %450, ptr %469, align 4
  %478 = load ptr, ptr %455, align 4
  br label %479

479:                                              ; preds = %477, %472, %468, %462
  %480 = phi ptr [ %463, %472 ], [ %463, %462 ], [ %478, %477 ], [ %463, %468 ]
  %481 = load ptr, ptr %464, align 4
  %482 = getelementptr inbounds %struct.dsa_switch, ptr %480, i32 0, i32 1
  %483 = load ptr, ptr %482, align 4
  %484 = getelementptr inbounds %struct.dsa_switch_tree, ptr %483, i32 0, i32 1
  %485 = icmp eq ptr %481, %484
  br i1 %485, label %486, label %462

486:                                              ; preds = %479, %454, %448
  %487 = load ptr, ptr %449, align 4
  %488 = icmp eq ptr %487, %366
  br i1 %488, label %489, label %448

489:                                              ; preds = %486, %445, %365
  br label %490

490:                                              ; preds = %494, %489
  %491 = phi ptr [ %492, %494 ], [ %366, %489 ]
  %492 = load ptr, ptr %491, align 4
  %493 = icmp eq ptr %492, %366
  br i1 %493, label %972, label %494

494:                                              ; preds = %490
  %495 = getelementptr i8, ptr %492, i32 -256
  %496 = load i32, ptr %495, align 4
  %497 = icmp eq i32 %496, 1
  br i1 %497, label %498, label %490

498:                                              ; preds = %494
  %499 = getelementptr i8, ptr %492, i32 -280
  %500 = icmp eq ptr %499, null
  br i1 %500, label %972, label %501

501:                                              ; preds = %498
  %502 = load ptr, ptr %366, align 4
  %503 = icmp eq ptr %502, %366
  br i1 %503, label %518, label %504

504:                                              ; preds = %515, %501
  %505 = phi ptr [ %516, %515 ], [ %502, %501 ]
  %506 = getelementptr i8, ptr %505, i32 -248
  %507 = load ptr, ptr %506, align 4
  %508 = icmp eq ptr %507, null
  br i1 %508, label %509, label %515

509:                                              ; preds = %504
  %510 = getelementptr i8, ptr %505, i32 -256
  %511 = load i32, ptr %510, align 4
  %512 = and i32 %511, -2
  %513 = icmp eq i32 %512, 2
  br i1 %513, label %514, label %515

514:                                              ; preds = %509
  store ptr %499, ptr %506, align 4
  br label %515

515:                                              ; preds = %514, %509, %504
  %516 = load ptr, ptr %505, align 4
  %517 = icmp eq ptr %516, %366
  br i1 %517, label %518, label %504

518:                                              ; preds = %515, %501
  %519 = getelementptr inbounds %struct.devlink_port_attrs, ptr %3, i32 0, i32 4
  %520 = getelementptr inbounds %struct.devlink_port_attrs, ptr %3, i32 0, i32 3
  %521 = getelementptr inbounds %struct.devlink_port_attrs, ptr %3, i32 0, i32 3, i32 1
  %522 = getelementptr inbounds %struct.devlink_port_attrs, ptr %3, i32 0, i32 2
  br label %523

523:                                              ; preds = %758, %518
  %524 = phi ptr [ %366, %518 ], [ %525, %758 ]
  %525 = load ptr, ptr %524, align 4
  %526 = icmp eq ptr %525, %366
  br i1 %526, label %761, label %527

527:                                              ; preds = %523
  %528 = getelementptr i8, ptr %525, i32 -264
  %529 = load ptr, ptr %528, align 4
  %530 = getelementptr inbounds %struct.dsa_switch, ptr %529, i32 0, i32 3
  %531 = load i16, ptr %530, align 4
  %532 = and i16 %531, 1
  %533 = icmp eq i16 %532, 0
  br i1 %533, label %534, label %758

534:                                              ; preds = %527
  %535 = getelementptr inbounds %struct.dsa_switch, ptr %529, i32 0, i32 1
  %536 = load ptr, ptr %535, align 4
  %537 = getelementptr inbounds %struct.dsa_switch_tree, ptr %536, i32 0, i32 1
  %538 = load ptr, ptr %537, align 4
  %539 = icmp eq ptr %538, %537
  br i1 %539, label %559, label %540

540:                                              ; preds = %555, %534
  %541 = phi ptr [ %557, %555 ], [ %538, %534 ]
  %542 = phi i32 [ %556, %555 ], [ 0, %534 ]
  %543 = getelementptr i8, ptr %541, i32 -264
  %544 = load ptr, ptr %543, align 4
  %545 = icmp eq ptr %544, %529
  br i1 %545, label %546, label %555

546:                                              ; preds = %540
  %547 = getelementptr i8, ptr %541, i32 -256
  %548 = load i32, ptr %547, align 4
  %549 = icmp eq i32 %548, 3
  br i1 %549, label %550, label %555

550:                                              ; preds = %546
  %551 = getelementptr i8, ptr %541, i32 -260
  %552 = load i32, ptr %551, align 4
  %553 = shl nuw i32 1, %552
  %554 = or i32 %553, %542
  br label %555

555:                                              ; preds = %550, %546, %540
  %556 = phi i32 [ %554, %550 ], [ %542, %546 ], [ %542, %540 ]
  %557 = load ptr, ptr %541, align 4
  %558 = icmp eq ptr %557, %537
  br i1 %558, label %559, label %540

559:                                              ; preds = %555, %534
  %560 = phi i32 [ 0, %534 ], [ %556, %555 ]
  %561 = getelementptr inbounds %struct.dsa_switch, ptr %529, i32 0, i32 9
  %562 = load i32, ptr %561, align 4
  %563 = or i32 %562, %560
  store i32 %563, ptr %561, align 4
  %564 = load ptr, ptr %529, align 4
  %565 = call ptr @devlink_alloc_ns(ptr noundef nonnull @dsa_devlink_ops, i32 noundef 4, ptr noundef nonnull @init_net, ptr noundef %564) #13
  %566 = getelementptr inbounds %struct.dsa_switch, ptr %529, i32 0, i32 14
  store ptr %565, ptr %566, align 4
  %567 = icmp eq ptr %565, null
  br i1 %567, label %955, label %568

568:                                              ; preds = %559
  %569 = call ptr @devlink_priv(ptr noundef nonnull %565) #13
  store ptr %529, ptr %569, align 4
  %570 = load ptr, ptr %535, align 4
  %571 = getelementptr inbounds %struct.dsa_switch_tree, ptr %570, i32 0, i32 1
  %572 = load ptr, ptr %571, align 4
  %573 = icmp eq ptr %572, %571
  br i1 %573, label %608, label %574

574:                                              ; preds = %603, %568
  %575 = phi ptr [ %604, %603 ], [ %570, %568 ]
  %576 = phi ptr [ %605, %603 ], [ %572, %568 ]
  %577 = getelementptr i8, ptr %576, i32 -264
  %578 = load ptr, ptr %577, align 4
  %579 = icmp eq ptr %578, %529
  br i1 %579, label %580, label %603

580:                                              ; preds = %574
  %581 = getelementptr i8, ptr %576, i32 -224
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %3, i8 0, i32 60, i1 false) #13
  %582 = load ptr, ptr %566, align 4
  %583 = getelementptr inbounds %struct.dsa_switch_tree, ptr %575, i32 0, i32 3
  %584 = getelementptr i8, ptr %576, i32 -260
  %585 = load i32, ptr %584, align 4
  store i32 %585, ptr %519, align 4
  %586 = load i32, ptr %583, align 1
  store i32 %586, ptr %520, align 4
  store i8 4, ptr %521, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(188) %581, i8 0, i32 188, i1 false) #13
  %587 = getelementptr i8, ptr %576, i32 -256
  %588 = load i32, ptr %587, align 4
  %589 = icmp ult i32 %588, 3
  br i1 %589, label %590, label %593

590:                                              ; preds = %580
  %591 = getelementptr inbounds [3 x i32], ptr @switch.table.dsa_register_switch, i32 0, i32 %588
  %592 = load i32, ptr %591, align 4
  store i32 %592, ptr %522, align 4
  br label %593

593:                                              ; preds = %590, %580
  call void @devlink_port_attrs_set(ptr noundef %581, ptr noundef nonnull %3) #13
  %594 = load i32, ptr %584, align 4
  %595 = call i32 @devlink_port_register(ptr noundef %582, ptr noundef %581, i32 noundef %594) #13
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %602

597:                                              ; preds = %593
  %598 = getelementptr i8, ptr %576, i32 -237
  %599 = load i8, ptr %598, align 1
  %600 = or i8 %599, 8
  store i8 %600, ptr %598, align 1
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #13
  %601 = load ptr, ptr %535, align 4
  br label %603

602:                                              ; preds = %593
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #13
  br label %727

603:                                              ; preds = %597, %574
  %604 = phi ptr [ %601, %597 ], [ %575, %574 ]
  %605 = load ptr, ptr %576, align 4
  %606 = getelementptr inbounds %struct.dsa_switch_tree, ptr %604, i32 0, i32 1
  %607 = icmp eq ptr %605, %606
  br i1 %607, label %608, label %574

608:                                              ; preds = %603, %568
  %609 = call i32 @dsa_switch_register_notifier(ptr noundef %529) #13
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %727

611:                                              ; preds = %608
  %612 = load i16, ptr %530, align 4
  %613 = or i16 %612, 8
  store i16 %613, ptr %530, align 4
  %614 = getelementptr inbounds %struct.dsa_switch, ptr %529, i32 0, i32 8
  %615 = load ptr, ptr %614, align 4
  %616 = getelementptr inbounds %struct.dsa_switch_ops, ptr %615, i32 0, i32 3
  %617 = load ptr, ptr %616, align 4
  %618 = call i32 %617(ptr noundef %529) #13
  %619 = icmp slt i32 %618, 0
  br i1 %619, label %725, label %620

620:                                              ; preds = %611
  %621 = load ptr, ptr %535, align 4
  %622 = getelementptr inbounds %struct.dsa_switch_tree, ptr %621, i32 0, i32 6
  %623 = load ptr, ptr %622, align 4
  %624 = getelementptr inbounds %struct.dsa_device_ops, ptr %623, i32 0, i32 8
  %625 = load i32, ptr %624, align 4
  %626 = getelementptr inbounds %struct.dsa_switch_tree, ptr %621, i32 0, i32 7
  %627 = load i32, ptr %626, align 4
  %628 = icmp eq i32 %625, %627
  br i1 %628, label %664, label %629

629:                                              ; preds = %620
  %630 = getelementptr inbounds %struct.dsa_switch_tree, ptr %621, i32 0, i32 1
  %631 = load ptr, ptr %630, align 4
  %632 = icmp eq ptr %631, %630
  br i1 %632, label %664, label %633

633:                                              ; preds = %659, %629
  %634 = phi ptr [ %660, %659 ], [ %621, %629 ]
  %635 = phi ptr [ %661, %659 ], [ %631, %629 ]
  %636 = getelementptr i8, ptr %635, i32 -264
  %637 = load ptr, ptr %636, align 4
  %638 = icmp eq ptr %637, %529
  br i1 %638, label %639, label %659

639:                                              ; preds = %633
  %640 = getelementptr i8, ptr %635, i32 -256
  %641 = load i32, ptr %640, align 4
  %642 = icmp eq i32 %641, 1
  br i1 %642, label %643, label %659

643:                                              ; preds = %639
  call void @rtnl_lock() #13
  %644 = load ptr, ptr %614, align 4
  %645 = getelementptr inbounds %struct.dsa_switch_ops, ptr %644, i32 0, i32 1
  %646 = load ptr, ptr %645, align 4
  %647 = getelementptr i8, ptr %635, i32 -260
  %648 = load i32, ptr %647, align 4
  %649 = load i32, ptr %624, align 4
  %650 = call i32 %646(ptr noundef %529, i32 noundef %648, i32 noundef %649) #13
  call void @rtnl_unlock() #13
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %652, label %654

652:                                              ; preds = %643
  %653 = load ptr, ptr %535, align 4
  br label %659

654:                                              ; preds = %643
  %655 = load ptr, ptr %529, align 4
  %656 = getelementptr inbounds %struct.dsa_device_ops, ptr %623, i32 0, i32 7
  %657 = load ptr, ptr %656, align 4
  %658 = inttoptr i32 %650 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %655, ptr noundef nonnull @.str.20, ptr noundef %657, ptr noundef nonnull %658) #14
  br label %718

659:                                              ; preds = %652, %639, %633
  %660 = phi ptr [ %653, %652 ], [ %634, %633 ], [ %634, %639 ]
  %661 = load ptr, ptr %635, align 4
  %662 = getelementptr inbounds %struct.dsa_switch_tree, ptr %660, i32 0, i32 1
  %663 = icmp eq ptr %661, %662
  br i1 %663, label %664, label %633

664:                                              ; preds = %659, %629, %620
  %665 = getelementptr inbounds %struct.dsa_device_ops, ptr %623, i32 0, i32 3
  %666 = load ptr, ptr %665, align 4
  %667 = icmp eq ptr %666, null
  br i1 %667, label %671, label %668

668:                                              ; preds = %664
  %669 = call i32 %666(ptr noundef %529) #13
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %718

671:                                              ; preds = %668, %664
  %672 = load ptr, ptr %614, align 4
  %673 = getelementptr inbounds %struct.dsa_switch_ops, ptr %672, i32 0, i32 2
  %674 = load ptr, ptr %673, align 4
  %675 = icmp eq ptr %674, null
  br i1 %675, label %689, label %676

676:                                              ; preds = %671
  %677 = load i32, ptr %624, align 4
  %678 = call i32 %674(ptr noundef %529, i32 noundef %677) #13
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %689, label %680

680:                                              ; preds = %676
  %681 = load ptr, ptr %529, align 4
  %682 = getelementptr inbounds %struct.dsa_device_ops, ptr %623, i32 0, i32 7
  %683 = load ptr, ptr %682, align 4
  %684 = inttoptr i32 %678 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %681, ptr noundef nonnull @.str.21, ptr noundef %683, ptr noundef nonnull %684) #14
  %685 = getelementptr inbounds %struct.dsa_device_ops, ptr %623, i32 0, i32 4
  %686 = load ptr, ptr %685, align 4
  %687 = icmp eq ptr %686, null
  br i1 %687, label %718, label %688

688:                                              ; preds = %680
  call void %686(ptr noundef %529) #13
  br label %718

689:                                              ; preds = %676, %671
  %690 = getelementptr inbounds %struct.dsa_switch, ptr %529, i32 0, i32 10
  %691 = load ptr, ptr %690, align 4
  %692 = icmp eq ptr %691, null
  br i1 %692, label %693, label %705

693:                                              ; preds = %689
  %694 = load ptr, ptr %614, align 4
  %695 = getelementptr inbounds %struct.dsa_switch_ops, ptr %694, i32 0, i32 8
  %696 = load ptr, ptr %695, align 4
  %697 = icmp eq ptr %696, null
  br i1 %697, label %705, label %698

698:                                              ; preds = %693
  %699 = call ptr @mdiobus_alloc_size(i32 noundef 0) #13
  store ptr %699, ptr %690, align 4
  %700 = icmp eq ptr %699, null
  br i1 %700, label %718, label %701

701:                                              ; preds = %698
  call void @dsa_slave_mii_bus_init(ptr noundef %529) #13
  %702 = load ptr, ptr %690, align 4
  %703 = call i32 @__mdiobus_register(ptr noundef %702, ptr noundef nonnull @__this_module) #13
  %704 = icmp slt i32 %703, 0
  br i1 %704, label %709, label %705

705:                                              ; preds = %701, %693, %689
  %706 = load i16, ptr %530, align 4
  %707 = or i16 %706, 1
  store i16 %707, ptr %530, align 4
  %708 = load ptr, ptr %566, align 4
  call void @devlink_register(ptr noundef %708) #13
  br label %758

709:                                              ; preds = %701
  %710 = load ptr, ptr %690, align 4
  %711 = icmp eq ptr %710, null
  br i1 %711, label %718, label %712

712:                                              ; preds = %709
  %713 = load ptr, ptr %614, align 4
  %714 = getelementptr inbounds %struct.dsa_switch_ops, ptr %713, i32 0, i32 8
  %715 = load ptr, ptr %714, align 4
  %716 = icmp eq ptr %715, null
  br i1 %716, label %718, label %717

717:                                              ; preds = %712
  call void @mdiobus_free(ptr noundef nonnull %710) #13
  br label %718

718:                                              ; preds = %717, %712, %709, %698, %688, %680, %668, %654
  %719 = phi i32 [ %703, %717 ], [ %703, %712 ], [ %703, %709 ], [ -12, %698 ], [ %678, %680 ], [ %678, %688 ], [ %669, %668 ], [ %650, %654 ]
  %720 = load ptr, ptr %614, align 4
  %721 = getelementptr inbounds %struct.dsa_switch_ops, ptr %720, i32 0, i32 4
  %722 = load ptr, ptr %721, align 4
  %723 = icmp eq ptr %722, null
  br i1 %723, label %725, label %724

724:                                              ; preds = %718
  call void %722(ptr noundef %529) #13
  br label %725

725:                                              ; preds = %724, %718, %611
  %726 = phi i32 [ %618, %611 ], [ %719, %724 ], [ %719, %718 ]
  call void @dsa_switch_unregister_notifier(ptr noundef %529) #13
  br label %727

727:                                              ; preds = %725, %608, %602
  %728 = phi i32 [ %595, %602 ], [ %609, %608 ], [ %726, %725 ]
  %729 = load ptr, ptr %535, align 4
  %730 = getelementptr inbounds %struct.dsa_switch_tree, ptr %729, i32 0, i32 1
  %731 = load ptr, ptr %730, align 4
  %732 = icmp eq ptr %731, %730
  br i1 %732, label %756, label %733

733:                                              ; preds = %751, %727
  %734 = phi ptr [ %752, %751 ], [ %729, %727 ]
  %735 = phi ptr [ %753, %751 ], [ %731, %727 ]
  %736 = getelementptr i8, ptr %735, i32 -264
  %737 = load ptr, ptr %736, align 4
  %738 = icmp eq ptr %737, %529
  br i1 %738, label %739, label %751

739:                                              ; preds = %733
  %740 = getelementptr i8, ptr %735, i32 -237
  %741 = load i8, ptr %740, align 1
  %742 = and i8 %741, 8
  %743 = icmp eq i8 %742, 0
  br i1 %743, label %747, label %744

744:                                              ; preds = %739
  %745 = getelementptr i8, ptr %735, i32 -224
  call void @devlink_port_unregister(ptr noundef %745) #13
  %746 = load i8, ptr %740, align 1
  br label %747

747:                                              ; preds = %744, %739
  %748 = phi i8 [ %746, %744 ], [ %741, %739 ]
  %749 = and i8 %748, -9
  store i8 %749, ptr %740, align 1
  %750 = load ptr, ptr %535, align 4
  br label %751

751:                                              ; preds = %747, %733
  %752 = phi ptr [ %734, %733 ], [ %750, %747 ]
  %753 = load ptr, ptr %735, align 4
  %754 = getelementptr inbounds %struct.dsa_switch_tree, ptr %752, i32 0, i32 1
  %755 = icmp eq ptr %753, %754
  br i1 %755, label %756, label %733

756:                                              ; preds = %751, %727
  %757 = load ptr, ptr %566, align 4
  call void @devlink_free(ptr noundef %757) #13
  store ptr null, ptr %566, align 4
  br label %758

758:                                              ; preds = %756, %705, %527
  %759 = phi i32 [ %728, %756 ], [ 0, %705 ], [ 0, %527 ]
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %523, label %955

761:                                              ; preds = %523
  call void @rtnl_lock() #13
  %762 = load ptr, ptr %366, align 4
  %763 = icmp eq ptr %762, %366
  br i1 %763, label %777, label %764

764:                                              ; preds = %774, %761
  %765 = phi ptr [ %775, %774 ], [ %762, %761 ]
  %766 = getelementptr i8, ptr %765, i32 -256
  %767 = load i32, ptr %766, align 4
  %768 = icmp eq i32 %767, 1
  br i1 %768, label %769, label %774

769:                                              ; preds = %764
  %770 = getelementptr i8, ptr %765, i32 -280
  %771 = load ptr, ptr %770, align 4
  %772 = call i32 @dsa_master_setup(ptr noundef %771, ptr noundef %770) #13
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %774, label %953

774:                                              ; preds = %769, %764
  %775 = load ptr, ptr %765, align 4
  %776 = icmp eq ptr %775, %366
  br i1 %776, label %777, label %764

777:                                              ; preds = %774, %761
  call void @rtnl_unlock() #13
  %778 = load ptr, ptr %366, align 4
  %779 = icmp eq ptr %778, %366
  br i1 %779, label %908, label %788

780:                                              ; preds = %798
  %781 = load ptr, ptr %366, align 4
  %782 = icmp eq ptr %781, %366
  br i1 %782, label %908, label %783

783:                                              ; preds = %780
  %784 = getelementptr inbounds %struct.devlink_port_attrs, ptr %2, i32 0, i32 4
  %785 = getelementptr inbounds %struct.devlink_port_attrs, ptr %2, i32 0, i32 3
  %786 = getelementptr inbounds %struct.devlink_port_attrs, ptr %2, i32 0, i32 3, i32 1
  %787 = getelementptr inbounds %struct.devlink_port_attrs, ptr %2, i32 0, i32 2
  br label %801

788:                                              ; preds = %798, %777
  %789 = phi ptr [ %799, %798 ], [ %778, %777 ]
  %790 = getelementptr i8, ptr %789, i32 -256
  %791 = load i32, ptr %790, align 4
  %792 = add i32 %791, -1
  %793 = icmp ult i32 %792, 2
  br i1 %793, label %794, label %798

794:                                              ; preds = %788
  %795 = getelementptr i8, ptr %789, i32 -280
  %796 = call fastcc i32 @dsa_port_setup(ptr noundef %795) #13
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %852

798:                                              ; preds = %794, %788
  %799 = load ptr, ptr %789, align 4
  %800 = icmp eq ptr %799, %366
  br i1 %800, label %780, label %788

801:                                              ; preds = %849, %783
  %802 = phi ptr [ %781, %783 ], [ %850, %849 ]
  %803 = getelementptr i8, ptr %802, i32 -256
  %804 = load i32, ptr %803, align 4
  switch i32 %804, label %849 [
    i32 3, label %805
    i32 0, label %805
  ]

805:                                              ; preds = %801, %801
  %806 = getelementptr i8, ptr %802, i32 -280
  %807 = call fastcc i32 @dsa_port_setup(ptr noundef %806) #13
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %849, label %809

809:                                              ; preds = %805
  %810 = getelementptr i8, ptr %802, i32 -264
  %811 = load ptr, ptr %810, align 4
  %812 = getelementptr i8, ptr %802, i32 -237
  %813 = load i8, ptr %812, align 1
  %814 = and i8 %813, 8
  %815 = icmp eq i8 %814, 0
  br i1 %815, label %820, label %816

816:                                              ; preds = %809
  %817 = getelementptr i8, ptr %802, i32 -224
  call void @devlink_port_unregister(ptr noundef %817) #13
  %818 = load i8, ptr %812, align 1
  %819 = load ptr, ptr %810, align 4
  br label %820

820:                                              ; preds = %816, %809
  %821 = phi ptr [ %819, %816 ], [ %811, %809 ]
  %822 = phi i8 [ %818, %816 ], [ %813, %809 ]
  %823 = and i8 %822, -9
  store i8 %823, ptr %812, align 1
  store i32 0, ptr %803, align 4
  %824 = getelementptr i8, ptr %802, i32 -224
  %825 = getelementptr inbounds %struct.dsa_switch, ptr %821, i32 0, i32 1
  %826 = load ptr, ptr %825, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %2, i8 0, i32 60, i1 false) #13
  %827 = getelementptr inbounds %struct.dsa_switch, ptr %821, i32 0, i32 14
  %828 = load ptr, ptr %827, align 4
  %829 = getelementptr inbounds %struct.dsa_switch_tree, ptr %826, i32 0, i32 3
  %830 = getelementptr i8, ptr %802, i32 -260
  %831 = load i32, ptr %830, align 4
  store i32 %831, ptr %784, align 4
  %832 = load i32, ptr %829, align 1
  store i32 %832, ptr %785, align 4
  store i8 4, ptr %786, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(188) %824, i8 0, i32 188, i1 false) #13
  store i32 6, ptr %787, align 4
  call void @devlink_port_attrs_set(ptr noundef %824, ptr noundef nonnull %2) #13
  %833 = load i32, ptr %830, align 4
  %834 = call i32 @devlink_port_register(ptr noundef %828, ptr noundef %824, i32 noundef %833) #13
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %837, label %836

836:                                              ; preds = %820
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #13
  br label %852

837:                                              ; preds = %820
  %838 = load i8, ptr %812, align 1
  %839 = or i8 %838, 8
  store i8 %839, ptr %812, align 1
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #13
  %840 = getelementptr inbounds %struct.dsa_switch, ptr %811, i32 0, i32 8
  %841 = load ptr, ptr %840, align 4
  %842 = getelementptr inbounds %struct.dsa_switch_ops, ptr %841, i32 0, i32 5
  %843 = load ptr, ptr %842, align 4
  %844 = icmp eq ptr %843, null
  br i1 %844, label %849, label %845

845:                                              ; preds = %837
  %846 = load i32, ptr %830, align 4
  %847 = call i32 %843(ptr noundef %811, i32 noundef %846) #13
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %852

849:                                              ; preds = %845, %837, %805, %801
  %850 = load ptr, ptr %802, align 4
  %851 = icmp eq ptr %850, %366
  br i1 %851, label %879, label %801

852:                                              ; preds = %845, %836, %794
  %853 = phi i32 [ %834, %836 ], [ %847, %845 ], [ %796, %794 ]
  %854 = load ptr, ptr %366, align 4
  %855 = icmp eq ptr %854, %366
  br i1 %855, label %865, label %856

856:                                              ; preds = %862, %852
  %857 = phi ptr [ %863, %862 ], [ %854, %852 ]
  %858 = getelementptr i8, ptr %857, i32 -256
  %859 = load i32, ptr %858, align 4
  switch i32 %859, label %862 [
    i32 3, label %860
    i32 0, label %860
  ]

860:                                              ; preds = %856, %856
  %861 = getelementptr i8, ptr %857, i32 -280
  call fastcc void @dsa_port_teardown(ptr noundef %861) #13
  br label %862

862:                                              ; preds = %860, %856
  %863 = load ptr, ptr %857, align 4
  %864 = icmp eq ptr %863, %366
  br i1 %864, label %865, label %856

865:                                              ; preds = %862, %852
  call void @dsa_flush_workqueue() #13
  %866 = load ptr, ptr %366, align 4
  %867 = icmp eq ptr %866, %366
  br i1 %867, label %938, label %868

868:                                              ; preds = %876, %865
  %869 = phi ptr [ %877, %876 ], [ %866, %865 ]
  %870 = getelementptr i8, ptr %869, i32 -256
  %871 = load i32, ptr %870, align 4
  %872 = add i32 %871, -1
  %873 = icmp ult i32 %872, 2
  br i1 %873, label %874, label %876

874:                                              ; preds = %868
  %875 = getelementptr i8, ptr %869, i32 -280
  call fastcc void @dsa_port_teardown(ptr noundef %875) #13
  br label %876

876:                                              ; preds = %874, %868
  %877 = load ptr, ptr %869, align 4
  %878 = icmp eq ptr %877, %366
  br i1 %878, label %938, label %868

879:                                              ; preds = %849
  %880 = load ptr, ptr %366, align 4
  %881 = icmp eq ptr %880, %366
  br i1 %881, label %908, label %882

882:                                              ; preds = %882, %879
  %883 = phi ptr [ %890, %882 ], [ %880, %879 ]
  %884 = phi i32 [ %889, %882 ], [ 0, %879 ]
  %885 = getelementptr i8, ptr %883, i32 -264
  %886 = load ptr, ptr %885, align 4
  %887 = getelementptr inbounds %struct.dsa_switch, ptr %886, i32 0, i32 16
  %888 = load i32, ptr %887, align 4
  %889 = call i32 @llvm.umax.i32(i32 %888, i32 %884) #13
  %890 = load ptr, ptr %883, align 4
  %891 = icmp eq ptr %890, %366
  br i1 %891, label %892, label %882

892:                                              ; preds = %882
  %893 = icmp eq i32 %889, 0
  br i1 %893, label %908, label %894

894:                                              ; preds = %892
  %895 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %889, i32 4) #13
  %896 = extractvalue { i32, i1 } %895, 1
  br i1 %896, label %897, label %899, !prof !15

897:                                              ; preds = %894
  %898 = getelementptr inbounds %struct.dsa_switch_tree, ptr %348, i32 0, i32 5
  store ptr null, ptr %898, align 4
  br label %912

899:                                              ; preds = %894
  %900 = extractvalue { i32, i1 } %895, 0
  %901 = call noalias align 64 ptr @__kmalloc(i32 noundef %900, i32 noundef 3520) #16
  %902 = getelementptr inbounds %struct.dsa_switch_tree, ptr %348, i32 0, i32 5
  store ptr %901, ptr %902, align 4
  %903 = icmp eq ptr %901, null
  br i1 %903, label %904, label %906

904:                                              ; preds = %899
  %905 = load ptr, ptr %366, align 4
  br label %912

906:                                              ; preds = %899
  %907 = getelementptr inbounds %struct.dsa_switch_tree, ptr %348, i32 0, i32 11
  store i32 %889, ptr %907, align 4
  br label %908

908:                                              ; preds = %906, %892, %879, %780, %777
  store i8 1, ptr %362, align 4
  %909 = getelementptr inbounds %struct.dsa_switch_tree, ptr %348, i32 0, i32 3
  %910 = load i32, ptr %909, align 4
  %911 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %910) #14
  br label %1020

912:                                              ; preds = %904, %897
  %913 = phi ptr [ %905, %904 ], [ %880, %897 ]
  %914 = icmp eq ptr %913, %366
  br i1 %914, label %924, label %915

915:                                              ; preds = %921, %912
  %916 = phi ptr [ %922, %921 ], [ %913, %912 ]
  %917 = getelementptr i8, ptr %916, i32 -256
  %918 = load i32, ptr %917, align 4
  switch i32 %918, label %921 [
    i32 3, label %919
    i32 0, label %919
  ]

919:                                              ; preds = %915, %915
  %920 = getelementptr i8, ptr %916, i32 -280
  call fastcc void @dsa_port_teardown(ptr noundef %920) #13
  br label %921

921:                                              ; preds = %919, %915
  %922 = load ptr, ptr %916, align 4
  %923 = icmp eq ptr %922, %366
  br i1 %923, label %924, label %915

924:                                              ; preds = %921, %912
  call void @dsa_flush_workqueue() #13
  %925 = load ptr, ptr %366, align 4
  %926 = icmp eq ptr %925, %366
  br i1 %926, label %938, label %927

927:                                              ; preds = %935, %924
  %928 = phi ptr [ %936, %935 ], [ %925, %924 ]
  %929 = getelementptr i8, ptr %928, i32 -256
  %930 = load i32, ptr %929, align 4
  %931 = add i32 %930, -1
  %932 = icmp ult i32 %931, 2
  br i1 %932, label %933, label %935

933:                                              ; preds = %927
  %934 = getelementptr i8, ptr %928, i32 -280
  call fastcc void @dsa_port_teardown(ptr noundef %934) #13
  br label %935

935:                                              ; preds = %933, %927
  %936 = load ptr, ptr %928, align 4
  %937 = icmp eq ptr %936, %366
  br i1 %937, label %938, label %927

938:                                              ; preds = %935, %924, %876, %865
  %939 = phi i32 [ %853, %865 ], [ -12, %924 ], [ -12, %935 ], [ %853, %876 ]
  call void @rtnl_lock() #13
  %940 = load ptr, ptr %366, align 4
  %941 = icmp eq ptr %940, %366
  br i1 %941, label %953, label %942

942:                                              ; preds = %950, %938
  %943 = phi ptr [ %951, %950 ], [ %940, %938 ]
  %944 = getelementptr i8, ptr %943, i32 -256
  %945 = load i32, ptr %944, align 4
  %946 = icmp eq i32 %945, 1
  br i1 %946, label %947, label %950

947:                                              ; preds = %942
  %948 = getelementptr i8, ptr %943, i32 -280
  %949 = load ptr, ptr %948, align 4
  call void @dsa_master_teardown(ptr noundef %949) #13
  br label %950

950:                                              ; preds = %947, %942
  %951 = load ptr, ptr %943, align 4
  %952 = icmp eq ptr %951, %366
  br i1 %952, label %953, label %942

953:                                              ; preds = %950, %938, %769
  %954 = phi i32 [ %939, %938 ], [ %939, %950 ], [ %772, %769 ]
  call void @rtnl_unlock() #13
  br label %955

955:                                              ; preds = %953, %758, %559
  %956 = phi i32 [ %954, %953 ], [ -12, %559 ], [ %759, %758 ]
  call fastcc void @dsa_tree_teardown_switches(ptr noundef %348) #13
  %957 = load ptr, ptr %366, align 4
  %958 = icmp eq ptr %957, %366
  br i1 %958, label %970, label %959

959:                                              ; preds = %967, %955
  %960 = phi ptr [ %968, %967 ], [ %957, %955 ]
  %961 = getelementptr i8, ptr %960, i32 -256
  %962 = load i32, ptr %961, align 4
  %963 = and i32 %962, -2
  %964 = icmp eq i32 %963, 2
  br i1 %964, label %965, label %967

965:                                              ; preds = %959
  %966 = getelementptr i8, ptr %960, i32 -248
  store ptr null, ptr %966, align 4
  br label %967

967:                                              ; preds = %965, %959
  %968 = load ptr, ptr %960, align 4
  %969 = icmp eq ptr %968, %366
  br i1 %969, label %970, label %959

970:                                              ; preds = %967, %955
  %971 = icmp eq i32 %956, 0
  br i1 %971, label %1020, label %978

972:                                              ; preds = %498, %490, %361
  %973 = phi ptr [ @.str.17, %361 ], [ @.str.19, %498 ], [ @.str.19, %490 ]
  %974 = phi i32 [ -17, %361 ], [ -22, %498 ], [ -22, %490 ]
  %975 = getelementptr inbounds %struct.dsa_switch_tree, ptr %348, i32 0, i32 3
  %976 = load i32, ptr %975, align 4
  %977 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %973, i32 noundef %976) #14
  br label %978

978:                                              ; preds = %972, %970
  %979 = phi i32 [ %956, %970 ], [ %974, %972 ]
  %980 = load ptr, ptr %347, align 4
  %981 = getelementptr inbounds %struct.dsa_switch_tree, ptr %980, i32 0, i32 1
  %982 = load ptr, ptr %981, align 4
  %983 = icmp eq ptr %982, %981
  br i1 %983, label %1001, label %984

984:                                              ; preds = %997, %978
  %985 = phi ptr [ %998, %997 ], [ %980, %978 ]
  %986 = phi ptr [ %987, %997 ], [ %982, %978 ]
  %987 = load ptr, ptr %986, align 4
  %988 = getelementptr i8, ptr %986, i32 -264
  %989 = load ptr, ptr %988, align 4
  %990 = icmp eq ptr %989, %0
  br i1 %990, label %991, label %997

991:                                              ; preds = %984
  %992 = getelementptr i8, ptr %986, i32 -280
  %993 = getelementptr inbounds %struct.list_head, ptr %986, i32 0, i32 1
  %994 = load ptr, ptr %993, align 4
  %995 = getelementptr inbounds %struct.list_head, ptr %987, i32 0, i32 1
  store ptr %994, ptr %995, align 4
  store volatile ptr %987, ptr %994, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %986, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %993, align 4
  call void @kfree(ptr noundef %992) #13
  %996 = load ptr, ptr %347, align 4
  br label %997

997:                                              ; preds = %991, %984
  %998 = phi ptr [ %985, %984 ], [ %996, %991 ]
  %999 = getelementptr inbounds %struct.dsa_switch_tree, ptr %998, i32 0, i32 1
  %1000 = icmp eq ptr %987, %999
  br i1 %1000, label %1001, label %984

1001:                                             ; preds = %997, %978
  br i1 %349, label %1020, label %1002

1002:                                             ; preds = %1001
  %1003 = getelementptr inbounds %struct.dsa_switch_tree, ptr %348, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1003) #13, !srcloc !13
  %1004 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1003, ptr %1003, i32 1, ptr elementtype(i32) %1003) #13, !srcloc !19
  %1005 = extractvalue { i32, i32, i32 } %1004, 0
  %1006 = icmp eq i32 %1005, 1
  br i1 %1006, label %1010, label %1007

1007:                                             ; preds = %1002
  %1008 = icmp sgt i32 %1005, 0
  br i1 %1008, label %1020, label %1009, !prof !16

1009:                                             ; preds = %1007
  call void @refcount_warn_saturate(ptr noundef %1003, i32 noundef 3) #13
  br label %1020

1010:                                             ; preds = %1002
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %1011 = getelementptr %struct.dsa_switch_tree, ptr %348, i32 0, i32 6
  %1012 = load ptr, ptr %1011, align 4
  %1013 = icmp eq ptr %1012, null
  br i1 %1013, label %1015, label %1014

1014:                                             ; preds = %1010
  call void @dsa_tag_driver_put(ptr noundef nonnull %1012) #13
  br label %1015

1015:                                             ; preds = %1014, %1010
  %1016 = getelementptr %struct.dsa_switch_tree, ptr %348, i32 0, i32 0, i32 1
  %1017 = load ptr, ptr %1016, align 4
  %1018 = load ptr, ptr %348, align 4
  %1019 = getelementptr inbounds %struct.list_head, ptr %1018, i32 0, i32 1
  store ptr %1017, ptr %1019, align 4
  store volatile ptr %1018, ptr %1017, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %348, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %1016, align 4
  call void @kfree(ptr noundef nonnull %348) #13
  br label %1020

1020:                                             ; preds = %1015, %1009, %1007, %1001, %970, %908, %443, %343, %320, %208, %184, %10, %1
  %1021 = phi i32 [ -19, %1 ], [ -22, %10 ], [ %344, %343 ], [ 0, %970 ], [ %979, %1001 ], [ %979, %1007 ], [ %979, %1009 ], [ %979, %1015 ], [ %321, %320 ], [ %185, %184 ], [ -19, %208 ], [ 0, %908 ], [ 0, %443 ]
  %1022 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %1023 = load ptr, ptr %1022, align 4
  %1024 = icmp eq ptr %1023, null
  br i1 %1024, label %1043, label %1025

1025:                                             ; preds = %1020
  %1026 = getelementptr inbounds %struct.dsa_switch_tree, ptr %1023, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1026) #13, !srcloc !13
  %1027 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1026, ptr %1026, i32 1, ptr elementtype(i32) %1026) #13, !srcloc !19
  %1028 = extractvalue { i32, i32, i32 } %1027, 0
  %1029 = icmp eq i32 %1028, 1
  br i1 %1029, label %1033, label %1030

1030:                                             ; preds = %1025
  %1031 = icmp sgt i32 %1028, 0
  br i1 %1031, label %1043, label %1032, !prof !16

1032:                                             ; preds = %1030
  call void @refcount_warn_saturate(ptr noundef %1026, i32 noundef 3) #13
  br label %1043

1033:                                             ; preds = %1025
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %1034 = getelementptr %struct.dsa_switch_tree, ptr %1023, i32 0, i32 6
  %1035 = load ptr, ptr %1034, align 4
  %1036 = icmp eq ptr %1035, null
  br i1 %1036, label %1038, label %1037

1037:                                             ; preds = %1033
  call void @dsa_tag_driver_put(ptr noundef nonnull %1035) #13
  br label %1038

1038:                                             ; preds = %1037, %1033
  %1039 = getelementptr %struct.dsa_switch_tree, ptr %1023, i32 0, i32 0, i32 1
  %1040 = load ptr, ptr %1039, align 4
  %1041 = load ptr, ptr %1023, align 4
  %1042 = getelementptr inbounds %struct.list_head, ptr %1041, i32 0, i32 1
  store ptr %1040, ptr %1042, align 4
  store volatile ptr %1041, ptr %1040, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1023, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %1039, align 4
  call void @kfree(ptr noundef nonnull %1023) #13
  br label %1043

1043:                                             ; preds = %1038, %1032, %1030, %1020
  call void @mutex_unlock(ptr noundef nonnull @dsa2_mutex) #13
  ret i32 %1021
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_unregister_switch(ptr noundef readonly %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @dsa2_mutex) #13
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 8
  %5 = load i8, ptr %4, align 4, !range !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %81, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %22, label %13

13:                                               ; preds = %19, %7
  %14 = phi ptr [ %20, %19 ], [ %11, %7 ]
  %15 = getelementptr i8, ptr %14, i32 -256
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %19 [
    i32 3, label %17
    i32 0, label %17
  ]

17:                                               ; preds = %13, %13
  %18 = getelementptr i8, ptr %14, i32 -280
  tail call fastcc void @dsa_port_teardown(ptr noundef %18) #13
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr %14, align 4
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %22, label %13

22:                                               ; preds = %19, %7
  tail call void @dsa_flush_workqueue() #13
  %23 = load ptr, ptr %10, align 4
  %24 = icmp eq ptr %23, %10
  br i1 %24, label %36, label %25

25:                                               ; preds = %33, %22
  %26 = phi ptr [ %34, %33 ], [ %23, %22 ]
  %27 = getelementptr i8, ptr %26, i32 -256
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 -280
  tail call fastcc void @dsa_port_teardown(ptr noundef %32) #13
  br label %33

33:                                               ; preds = %31, %25
  %34 = load ptr, ptr %26, align 4
  %35 = icmp eq ptr %34, %10
  br i1 %35, label %36, label %25

36:                                               ; preds = %33, %22
  tail call void @rtnl_lock() #13
  %37 = load ptr, ptr %10, align 4
  %38 = icmp eq ptr %37, %10
  br i1 %38, label %50, label %39

39:                                               ; preds = %47, %36
  %40 = phi ptr [ %48, %47 ], [ %37, %36 ]
  %41 = getelementptr i8, ptr %40, i32 -256
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %40, i32 -280
  %46 = load ptr, ptr %45, align 4
  tail call void @dsa_master_teardown(ptr noundef %46) #13
  br label %47

47:                                               ; preds = %44, %39
  %48 = load ptr, ptr %40, align 4
  %49 = icmp eq ptr %48, %10
  br i1 %49, label %50, label %39

50:                                               ; preds = %47, %36
  tail call void @rtnl_unlock() #13
  tail call fastcc void @dsa_tree_teardown_switches(ptr noundef %3) #13
  %51 = load ptr, ptr %10, align 4
  %52 = icmp eq ptr %51, %10
  br i1 %52, label %64, label %53

53:                                               ; preds = %61, %50
  %54 = phi ptr [ %62, %61 ], [ %51, %50 ]
  %55 = getelementptr i8, ptr %54, i32 -256
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, -2
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %54, i32 -248
  store ptr null, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = load ptr, ptr %54, align 4
  %63 = icmp eq ptr %62, %10
  br i1 %63, label %64, label %53

64:                                               ; preds = %61, %50
  %65 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 10
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %76, label %68

68:                                               ; preds = %68, %64
  %69 = phi ptr [ %71, %68 ], [ %66, %64 ]
  %70 = getelementptr i8, ptr %69, i32 -8
  %71 = load ptr, ptr %69, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %73, ptr %74, align 4
  store volatile ptr %71, ptr %73, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %69, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %72, align 4
  tail call void @kfree(ptr noundef %70) #13
  %75 = icmp eq ptr %71, %65
  br i1 %75, label %76, label %68

76:                                               ; preds = %68, %64
  %77 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %78) #14
  store i8 0, ptr %4, align 4
  %80 = load ptr, ptr %2, align 4
  br label %81

81:                                               ; preds = %76, %1
  %82 = phi ptr [ %3, %1 ], [ %80, %76 ]
  %83 = getelementptr inbounds %struct.dsa_switch_tree, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %83
  br i1 %85, label %103, label %86

86:                                               ; preds = %99, %81
  %87 = phi ptr [ %100, %99 ], [ %82, %81 ]
  %88 = phi ptr [ %89, %99 ], [ %84, %81 ]
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %88, i32 -264
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = getelementptr i8, ptr %88, i32 -280
  %95 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  store ptr %96, ptr %97, align 4
  store volatile ptr %89, ptr %96, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %88, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %95, align 4
  tail call void @kfree(ptr noundef %94) #13
  %98 = load ptr, ptr %2, align 4
  br label %99

99:                                               ; preds = %93, %86
  %100 = phi ptr [ %87, %86 ], [ %98, %93 ]
  %101 = getelementptr inbounds %struct.dsa_switch_tree, ptr %100, i32 0, i32 1
  %102 = icmp eq ptr %89, %101
  br i1 %102, label %103, label %86

103:                                              ; preds = %99, %81
  %104 = icmp eq ptr %3, null
  br i1 %104, label %123, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %106) #13, !srcloc !13
  %107 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %106, ptr %106, i32 1, ptr elementtype(i32) %106) #13, !srcloc !19
  %108 = extractvalue { i32, i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = icmp sgt i32 %108, 0
  br i1 %111, label %123, label %112, !prof !16

112:                                              ; preds = %110
  tail call void @refcount_warn_saturate(ptr noundef %106, i32 noundef 3) #13
  br label %123

113:                                              ; preds = %105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %114 = getelementptr %struct.dsa_switch_tree, ptr %3, i32 0, i32 6
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  tail call void @dsa_tag_driver_put(ptr noundef nonnull %115) #13
  br label %118

118:                                              ; preds = %117, %113
  %119 = getelementptr %struct.dsa_switch_tree, ptr %3, i32 0, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = load ptr, ptr %3, align 4
  %122 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  store ptr %120, ptr %122, align 4
  store volatile ptr %121, ptr %120, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %119, align 4
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %123

123:                                              ; preds = %118, %112, %110, %103
  tail call void @mutex_unlock(ptr noundef nonnull @dsa2_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_switch_shutdown(ptr noundef readonly %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @dsa2_mutex) #13
  tail call void @rtnl_lock() #13
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %9, label %14

7:                                                ; preds = %31
  %8 = load ptr, ptr %33, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %3, %1 ], [ %32, %7 ]
  %11 = phi ptr [ %4, %1 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.dsa_switch_tree, ptr %10, i32 0, i32 1
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %56, label %36

14:                                               ; preds = %31, %1
  %15 = phi ptr [ %32, %31 ], [ %3, %1 ]
  %16 = phi ptr [ %33, %31 ], [ %5, %1 ]
  %17 = getelementptr i8, ptr %16, i32 -280
  %18 = getelementptr i8, ptr %16, i32 -264
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %16, i32 -256
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %16, i32 -248
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %17, align 4
  tail call void @netdev_upper_dev_unlink(ptr noundef %28, ptr noundef %29) #13
  %30 = load ptr, ptr %2, align 4
  br label %31

31:                                               ; preds = %25, %21, %14
  %32 = phi ptr [ %15, %14 ], [ %30, %25 ], [ %15, %21 ]
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr inbounds %struct.dsa_switch_tree, ptr %32, i32 0, i32 1
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %7, label %14

36:                                               ; preds = %51, %9
  %37 = phi ptr [ %52, %51 ], [ %10, %9 ]
  %38 = phi ptr [ %53, %51 ], [ %11, %9 ]
  %39 = getelementptr i8, ptr %38, i32 -280
  %40 = getelementptr i8, ptr %38, i32 -264
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = getelementptr i8, ptr %38, i32 -256
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load ptr, ptr %39, align 4
  %49 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 67
  store ptr null, ptr %49, align 4
  %50 = load ptr, ptr %2, align 4
  br label %51

51:                                               ; preds = %47, %43, %36
  %52 = phi ptr [ %37, %36 ], [ %50, %47 ], [ %37, %43 ]
  %53 = load ptr, ptr %38, align 4
  %54 = getelementptr inbounds %struct.dsa_switch_tree, ptr %52, i32 0, i32 1
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %36

56:                                               ; preds = %51, %9
  tail call void @rtnl_unlock() #13
  tail call void @mutex_unlock(ptr noundef nonnull @dsa2_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dsa_tree_touch(i32 noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @dsa_tree_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @dsa_tree_list
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dsa_switch_tree, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = icmp eq ptr %4, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.dsa_switch_tree, ptr %4, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !14
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !15

17:                                               ; preds = %12
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %36, label %21, !prof !16

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 2, %12 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #13
  br label %36

23:                                               ; preds = %10, %2
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 64) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dsa_switch_tree, ptr %25, i32 0, i32 3
  store i32 %0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dsa_switch_tree, ptr %25, i32 0, i32 10
  store volatile ptr %29, ptr %29, align 8
  %30 = getelementptr inbounds %struct.dsa_switch_tree, ptr %25, i32 0, i32 10, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dsa_switch_tree, ptr %25, i32 0, i32 1
  store volatile ptr %31, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dsa_switch_tree, ptr %25, i32 0, i32 1, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %25, ptr %25, align 8
  %33 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %34 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_tree_list, i32 0, i32 1), align 4
  store ptr %25, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_tree_list, i32 0, i32 1), align 4
  store ptr @dsa_tree_list, ptr %25, align 8
  store ptr %34, ptr %33, align 4
  store volatile ptr %25, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dsa_switch_tree, ptr %25, i32 0, i32 4
  store volatile i32 1, ptr %35, align 8
  br label %36

36:                                               ; preds = %27, %23, %21, %17
  %37 = phi ptr [ %4, %17 ], [ %4, %21 ], [ null, %23 ], [ %25, %27 ]
  ret ptr %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_net_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_parse_cpu(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @dsa_slave_dev_check(ptr noundef %1) #13
  br i1 %8, label %9, label %85

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 1416
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsa_port, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_port, ptr %11, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dsa_switch, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dsa_switch_tree, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %35, label %21

21:                                               ; preds = %30, %9
  %22 = phi ptr [ %31, %30 ], [ %19, %9 ]
  %23 = getelementptr i8, ptr %22, i32 -264
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %13
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %22, i32 -260
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %15
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %22, align 4
  %32 = icmp eq ptr %31, %18
  br i1 %32, label %35, label %21

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %22, i32 -280
  br label %35

35:                                               ; preds = %33, %30, %9
  %36 = phi ptr [ %34, %33 ], [ null, %9 ], [ null, %30 ]
  %37 = getelementptr inbounds %struct.dsa_port, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %79, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.dsa_port, ptr %38, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dsa_switch, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dsa_port, ptr %38, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dsa_switch, ptr %13, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %44
  br i1 %49, label %79, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.dsa_switch_tree, ptr %17, i32 0, i32 10
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %74, label %54

54:                                               ; preds = %71, %50
  %55 = phi ptr [ %72, %71 ], [ %52, %50 ]
  %56 = getelementptr i8, ptr %55, i32 -8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.dsa_port, ptr %57, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %13
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = getelementptr i8, ptr %55, i32 -4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dsa_port, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.dsa_switch, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %44
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.dsa_port, ptr %57, i32 0, i32 5
  br label %76

71:                                               ; preds = %61, %54
  %72 = load ptr, ptr %55, align 4
  %73 = icmp eq ptr %72, %51
  br i1 %73, label %74, label %54

74:                                               ; preds = %71, %50
  %75 = getelementptr inbounds %struct.dsa_switch, ptr %13, i32 0, i32 18
  br label %76

76:                                               ; preds = %74, %69
  %77 = phi ptr [ %70, %69 ], [ %75, %74 ]
  %78 = load i32, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %40, %35
  %80 = phi i32 [ %15, %35 ], [ %78, %76 ], [ %46, %40 ]
  %81 = getelementptr inbounds %struct.dsa_switch, ptr %13, i32 0, i32 8
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 %83(ptr noundef %13, i32 noundef %80, i32 noundef 0) #13
  br label %85

85:                                               ; preds = %79, %3
  %86 = phi i32 [ %84, %79 ], [ 0, %3 ]
  %87 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 %89(ptr noundef %5, i32 noundef %91, i32 noundef %86) #13
  %93 = getelementptr inbounds %struct.dsa_switch_tree, ptr %7, i32 0, i32 7
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %85
  %97 = icmp eq i32 %94, %92
  br i1 %97, label %101, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.11) #14
  br label %136

100:                                              ; preds = %85
  store i32 %92, ptr %93, align 4
  br label %101

101:                                              ; preds = %100, %96
  %102 = icmp eq ptr %2, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %101
  %104 = load ptr, ptr %87, align 4
  %105 = getelementptr inbounds %struct.dsa_switch_ops, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.12) #14
  br label %136

110:                                              ; preds = %103
  %111 = tail call ptr @dsa_find_tagger_by_name(ptr noundef nonnull %2) #13
  br label %114

112:                                              ; preds = %101
  %113 = tail call ptr @dsa_tag_driver_get(i32 noundef %92) #13
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi ptr [ %111, %110 ], [ %113, %112 ]
  %116 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = icmp eq ptr %115, inttoptr (i32 -92 to ptr)
  br i1 %118, label %136, label %119

119:                                              ; preds = %117
  %120 = ptrtoint ptr %115 to i32
  %121 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.13) #14
  br label %136

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.dsa_switch_tree, ptr %7, i32 0, i32 6
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = icmp eq ptr %124, %115
  br i1 %127, label %130, label %128

128:                                              ; preds = %126
  %129 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.11) #14
  tail call void @dsa_tag_driver_put(ptr noundef %115) #13
  br label %136

130:                                              ; preds = %126
  tail call void @dsa_tag_driver_put(ptr noundef %115) #13
  br label %132

131:                                              ; preds = %122
  store ptr %115, ptr %123, align 4
  br label %132

132:                                              ; preds = %131, %130
  store ptr %1, ptr %0, align 4
  %133 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 6
  store i32 1, ptr %133, align 4
  %134 = load ptr, ptr %123, align 4
  tail call void @dsa_port_set_tag_protocol(ptr noundef %0, ptr noundef %134) #13
  %135 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 2
  store ptr %7, ptr %135, align 4
  br label %136

136:                                              ; preds = %132, %128, %119, %117, %108, %98
  %137 = phi i32 [ -22, %98 ], [ %120, %119 ], [ -22, %128 ], [ 0, %132 ], [ -22, %108 ], [ -517, %117 ]
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_find_tagger_by_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_tag_driver_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_driver_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_set_tag_protocol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dsa_slave_dev_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_dev_to_net_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dsa_tree_teardown_switches(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dsa_switch_tree, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %79, label %5

5:                                                ; preds = %76, %1
  %6 = phi ptr [ %77, %76 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -264
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %76, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @devlink_unregister(ptr noundef nonnull %15) #13
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dsa_switch_ops, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  tail call void @mdiobus_unregister(ptr noundef nonnull %20) #13
  %29 = load ptr, ptr %19, align 4
  tail call void @mdiobus_free(ptr noundef %29) #13
  store ptr null, ptr %19, align 4
  br label %30

30:                                               ; preds = %28, %22, %18
  %31 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dsa_switch_ops, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void %34(ptr noundef %8) #13
  br label %37

37:                                               ; preds = %36, %30
  tail call void @dsa_switch_unregister_notifier(ptr noundef %8) #13
  %38 = load ptr, ptr %14, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %73, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dsa_switch_tree, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %71, label %46

46:                                               ; preds = %64, %40
  %47 = phi ptr [ %65, %64 ], [ %42, %40 ]
  %48 = phi ptr [ %66, %64 ], [ %44, %40 ]
  %49 = getelementptr i8, ptr %48, i32 -264
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %8
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %48, i32 -237
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, 8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %48, i32 -224
  tail call void @devlink_port_unregister(ptr noundef %58) #13
  %59 = load i8, ptr %53, align 1
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i8 [ %59, %57 ], [ %54, %52 ]
  %62 = and i8 %61, -9
  store i8 %62, ptr %53, align 1
  %63 = load ptr, ptr %41, align 4
  br label %64

64:                                               ; preds = %60, %46
  %65 = phi ptr [ %47, %46 ], [ %63, %60 ]
  %66 = load ptr, ptr %48, align 4
  %67 = getelementptr inbounds %struct.dsa_switch_tree, ptr %65, i32 0, i32 1
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %46

69:                                               ; preds = %64
  %70 = load ptr, ptr %14, align 4
  br label %71

71:                                               ; preds = %69, %40
  %72 = phi ptr [ %70, %69 ], [ %38, %40 ]
  tail call void @devlink_free(ptr noundef %72) #13
  store ptr null, ptr %14, align 4
  br label %73

73:                                               ; preds = %71, %37
  %74 = load i16, ptr %9, align 4
  %75 = and i16 %74, -2
  store i16 %75, ptr %9, align 4
  br label %76

76:                                               ; preds = %73, %5
  %77 = load ptr, ptr %6, align 4
  %78 = icmp eq ptr %77, %2
  br i1 %78, label %79, label %5

79:                                               ; preds = %76, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_slave_mii_bus_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_unregister_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_pool_get(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = tail call ptr @devlink_priv(ptr noundef %0) #13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch_ops, ptr %8, i32 0, i32 81
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call i32 %10(ptr noundef %6, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) #13
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %13, %12 ], [ -95, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_pool_set(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = tail call ptr @devlink_priv(ptr noundef %0) #13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsa_switch_ops, ptr %10, i32 0, i32 82
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 %12(ptr noundef %8, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #13
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %15, %14 ], [ -95, %6 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_port_pool_get(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @devlink_priv(ptr noundef %6) #13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsa_switch_ops, ptr %10, i32 0, i32 83
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 %12(ptr noundef %8, i32 noundef %16, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) #13
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i32 [ %17, %14 ], [ -95, %4 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_port_pool_set(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @devlink_priv(ptr noundef %7) #13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 84
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 %13(ptr noundef %9, i32 noundef %17, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4) #13
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i32 [ %18, %15 ], [ -95, %5 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_tc_pool_bind_get(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @devlink_priv(ptr noundef %8) #13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsa_switch_ops, ptr %12, i32 0, i32 85
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 %14(ptr noundef %10, i32 noundef %18, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #13
  br label %20

20:                                               ; preds = %16, %6
  %21 = phi i32 [ %19, %16 ], [ -95, %6 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_tc_pool_bind_set(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @devlink_priv(ptr noundef %9) #13
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_switch_ops, ptr %13, i32 0, i32 86
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 %15(ptr noundef %11, i32 noundef %19, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #13
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i32 [ %20, %17 ], [ -95, %7 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_occ_snapshot(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @devlink_priv(ptr noundef %0) #13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 87
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, i32 noundef %1) #13
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ -95, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_occ_max_clear(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @devlink_priv(ptr noundef %0) #13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 88
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, i32 noundef %1) #13
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ -95, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_occ_port_pool_get(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @devlink_priv(ptr noundef %7) #13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 89
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 %13(ptr noundef %9, i32 noundef %17, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, ptr noundef %4) #13
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i32 [ %18, %15 ], [ -95, %5 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_occ_tc_port_bind_get(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @devlink_priv(ptr noundef %8) #13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsa_switch_ops, ptr %12, i32 0, i32 90
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.devlink_port, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 %14(ptr noundef %10, i32 noundef %18, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #13
  br label %20

20:                                               ; preds = %16, %6
  %21 = phi i32 [ %19, %16 ], [ -95, %6 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_devlink_info_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @devlink_priv(ptr noundef %0) #13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 80
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef %5, ptr noundef %1, ptr noundef %2) #13
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ -95, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_port_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_master_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_setup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef nonnull @dsa_port_setup.__key) #13
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 24
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 24, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 25
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 25, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dsa_switch_ops, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 %18(ptr noundef %4, i32 noundef %22) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %20, %9
  %26 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %57 [
    i32 0, label %28
    i32 1, label %29
    i32 2, label %32
    i32 3, label %35
  ]

28:                                               ; preds = %25
  tail call void @dsa_port_disable(ptr noundef %0) #13
  br label %57

29:                                               ; preds = %25
  %30 = tail call i32 @dsa_port_link_register_of(ptr noundef %0) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %48

32:                                               ; preds = %25
  %33 = tail call i32 @dsa_port_link_register_of(ptr noundef %0) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %48

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 9
  %39 = tail call i32 @of_get_mac_address(ptr noundef %37, ptr noundef %38) #13
  %40 = tail call i32 @dsa_slave_create(ptr noundef %0) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load ptr, ptr %0, align 4
  tail call void @devlink_port_type_eth_set(ptr noundef %2, ptr noundef %43) #13
  br label %57

44:                                               ; preds = %32, %29
  %45 = tail call i32 @dsa_port_enable(ptr noundef %0, ptr noundef null) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  tail call void @dsa_port_link_unregister_of(ptr noundef %0) #13
  br label %48

48:                                               ; preds = %47, %35, %32, %29
  %49 = phi i32 [ %45, %47 ], [ %30, %29 ], [ %33, %32 ], [ %40, %35 ]
  %50 = load ptr, ptr %15, align 4
  %51 = getelementptr inbounds %struct.dsa_switch_ops, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  tail call void %52(ptr noundef %4, i32 noundef %56) #13
  br label %60

57:                                               ; preds = %44, %42, %28, %25
  %58 = load i8, ptr %5, align 1
  %59 = or i8 %58, 16
  store i8 %59, ptr %5, align 1
  br label %60

60:                                               ; preds = %57, %54, %48, %20, %1
  %61 = phi i32 [ 0, %57 ], [ 0, %1 ], [ %23, %20 ], [ %49, %54 ], [ %49, %48 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_link_register_of(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_slave_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_eth_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_link_unregister_of(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dsa_port_teardown(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  tail call void %13(ptr noundef %4, i32 noundef %17) #13
  br label %18

18:                                               ; preds = %15, %9
  tail call void @devlink_port_type_clear(ptr noundef %2) #13
  %19 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %27 [
    i32 3, label %23
    i32 1, label %21
    i32 2, label %22
  ]

21:                                               ; preds = %18
  tail call void @dsa_port_disable(ptr noundef %0) #13
  tail call void @dsa_port_link_unregister_of(ptr noundef %0) #13
  br label %27

22:                                               ; preds = %18
  tail call void @dsa_port_disable(ptr noundef %0) #13
  tail call void @dsa_port_link_unregister_of(ptr noundef %0) #13
  br label %27

23:                                               ; preds = %18
  %24 = load ptr, ptr %0, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store ptr null, ptr %0, align 4
  tail call void @dsa_slave_destroy(ptr noundef nonnull %24) #13
  br label %27

27:                                               ; preds = %26, %23, %22, %21, %18
  %28 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 24
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %39, label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %34, %31 ], [ %29, %27 ]
  %33 = getelementptr i8, ptr %32, i32 -12
  %34 = load ptr, ptr %32, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %34, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  tail call void @kfree(ptr noundef %33) #13
  %38 = icmp eq ptr %34, %28
  br i1 %38, label %39, label %31

39:                                               ; preds = %31, %27
  %40 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 25
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %39
  %44 = phi ptr [ %46, %43 ], [ %41, %39 ]
  %45 = getelementptr i8, ptr %44, i32 -12
  %46 = load ptr, ptr %44, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  store volatile ptr %46, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  tail call void @kfree(ptr noundef %45) #13
  %50 = icmp eq ptr %46, %40
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %39
  %52 = load i8, ptr %5, align 1
  %53 = and i8 %52, -17
  store i8 %53, ptr %5, align 1
  br label %54

54:                                               ; preds = %51, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_flush_workqueue() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_slave_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_master_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{!"auto-init"}
!10 = !{i64 639021, i64 639082}
!11 = !{i64 646126}
!12 = !{i64 642038}
!13 = !{i64 610274, i64 2148111840, i64 2148111866, i64 2148111913, i64 2148111935, i64 2148111963, i64 2148111983}
!14 = !{i64 2148176560, i64 2148176592, i64 2148176621, i64 2148176655, i64 2148176686, i64 2148176709}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i8 0, i8 2}
!18 = !{i64 2148276782}
!19 = !{i64 2148178917, i64 2148178949, i64 2148178978, i64 2148179012, i64 2148179043, i64 2148179066}
!20 = !{i64 2149320746}
