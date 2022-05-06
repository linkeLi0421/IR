; ModuleID = '/llk/IR/net/core/net-sysfs.c_pt.bc'
source_filename = "../net/core/net-sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_ns_type_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22net_ns_type_operations\22\09\09\09\09\09"
module asm "__kstrtabns_net_ns_type_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_net_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_net_device_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_net_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netdev_class_create_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22netdev_class_create_file_ns\22\09\09\09\09\09"
module asm "__kstrtabns_netdev_class_create_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netdev_class_remove_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22netdev_class_remove_file_ns\22\09\09\09\09\09"
module asm "__kstrtabns_netdev_class_remove_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.rx_queue_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netdev_queue_attribute = type { %struct.attribute, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.133 = type { ptr }
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
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, ptr, ptr, %struct.kobject, ptr, %struct.netdevice_tracker, [16 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%union.anon.39 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rps_map = type { i32, %struct.callback_head, [0 x i16] }
%struct.rps_dev_flow_table = type { i32, %struct.callback_head, [0 x %struct.rps_dev_flow] }
%struct.rps_dev_flow = type { i16, i16, i32 }
%struct.xps_dev_maps = type { %struct.callback_head, i32, i16, [0 x ptr] }
%struct.xps_map = type { i32, i32, %struct.callback_head, [0 x i16] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.132, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.132 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"net/core/net-sysfs.c\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"New queues can't be registered after device unregistration.\00", align 1
@dql_group = internal constant %struct.attribute_group { ptr @.str.18, ptr null, ptr null, ptr @dql_attrs, ptr null }, align 4
@net_ns_type_operations = dso_local constant %struct.kobj_ns_type_operations { i32 1, ptr @net_current_may_mount, ptr @net_grab_current_ns, ptr @net_netlink_ns, ptr @net_initial_ns, ptr null }, align 4
@__kstrtab_net_ns_type_operations = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_ns_type_operations = external dso_local constant [0 x i8], align 1
@__ksymtab_net_ns_type_operations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_ns_type_operations to i32), ptr @__kstrtab_net_ns_type_operations, ptr @__kstrtabns_net_ns_type_operations }, section "___ksymtab_gpl+net_ns_type_operations", align 4
@net_class = internal global %struct.class { ptr @.str.27, ptr null, ptr null, ptr @net_class_groups, ptr null, ptr @netdev_uevent, ptr null, ptr null, ptr @netdev_release, ptr null, ptr @net_ns_type_operations, ptr @net_namespace, ptr @net_get_ownership, ptr null, ptr null }, section ".data..ro_after_init", align 4
@__kstrtab_of_find_net_device_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_net_device_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_net_device_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_net_device_by_node to i32), ptr @__kstrtab_of_find_net_device_by_node, ptr @__kstrtabns_of_find_net_device_by_node }, section "___ksymtab+of_find_net_device_by_node", align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@netstat_group = internal constant %struct.attribute_group { ptr @.str.71, ptr null, ptr null, ptr @netstat_attrs, ptr null }, align 4
@wireless_group = internal constant %struct.attribute_group { ptr @.str.96, ptr null, ptr null, ptr @wireless_attrs, ptr null }, align 4
@__kstrtab_netdev_class_create_file_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_netdev_class_create_file_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_netdev_class_create_file_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netdev_class_create_file_ns to i32), ptr @__kstrtab_netdev_class_create_file_ns, ptr @__kstrtabns_netdev_class_create_file_ns }, section "___ksymtab+netdev_class_create_file_ns", align 4
@__kstrtab_netdev_class_remove_file_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_netdev_class_remove_file_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_netdev_class_remove_file_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netdev_class_remove_file_ns to i32), ptr @__kstrtab_netdev_class_remove_file_ns, ptr @__kstrtabns_netdev_class_remove_file_ns }, section "___ksymtab+netdev_class_remove_file_ns", align 4
@netdev_kobject_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@rx_queue_ktype = internal global %struct.kobj_type { ptr @rx_queue_release, ptr @rx_queue_sysfs_ops, ptr null, ptr @rx_queue_default_groups, ptr null, ptr @rx_queue_namespace, ptr @rx_queue_get_ownership }, section ".data..ro_after_init", align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"rx-%u\00", align 1
@rx_queue_sysfs_ops = internal constant %struct.sysfs_ops { ptr @rx_queue_attr_show, ptr @rx_queue_attr_store }, align 4
@rx_queue_default_groups = internal global [2 x ptr] [ptr @rx_queue_default_group, ptr null], align 4
@rx_queue_default_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rx_queue_default_attrs, ptr null }, align 4
@rx_queue_default_attrs = internal global [3 x ptr] [ptr @rps_cpus_attribute, ptr @rps_dev_flow_table_cnt_attribute, ptr null], section ".data..ro_after_init", align 4
@rps_cpus_attribute = internal global %struct.rx_queue_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @show_rps_map, ptr @store_rps_map }, section ".data..ro_after_init", align 4
@rps_dev_flow_table_cnt_attribute = internal global %struct.rx_queue_attribute { %struct.attribute { ptr @.str.8, i16 420 }, ptr @show_rps_dev_flow_table_cnt, ptr @store_rps_dev_flow_table_cnt }, section ".data..ro_after_init", align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"rps_cpus\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@store_rps_map.rps_map_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @store_rps_map.rps_map_mutex, i64 12), ptr getelementptr (i8, ptr @store_rps_map.rps_map_mutex, i64 12) } }, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@rps_needed = external dso_local global %struct.static_key_false, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"rps_flow_cnt\00", align 1
@.str.9 = private constant [5 x i8] c"%lu\0A\00", align 1
@store_rps_dev_flow_table_cnt.rps_dev_flow_lock = internal global %struct.spinlock zeroinitializer, align 4
@init_net = external dso_local global %struct.net, align 64
@netdev_queue_ktype = internal global %struct.kobj_type { ptr @netdev_queue_release, ptr @netdev_queue_sysfs_ops, ptr null, ptr @netdev_queue_default_groups, ptr null, ptr @netdev_queue_namespace, ptr @netdev_queue_get_ownership }, section ".data..ro_after_init", align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"tx-%u\00", align 1
@netdev_queue_sysfs_ops = internal constant %struct.sysfs_ops { ptr @netdev_queue_attr_show, ptr @netdev_queue_attr_store }, align 4
@netdev_queue_default_groups = internal global [2 x ptr] [ptr @netdev_queue_default_group, ptr null], align 4
@netdev_queue_default_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @netdev_queue_default_attrs, ptr null }, align 4
@netdev_queue_default_attrs = internal global [6 x ptr] [ptr @queue_trans_timeout, ptr @queue_traffic_class, ptr @xps_cpus_attribute, ptr @xps_rxqs_attribute, ptr @queue_tx_maxrate, ptr null], section ".data..ro_after_init", align 4
@queue_trans_timeout = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @tx_timeout_show, ptr null }, section ".data..ro_after_init", align 4
@queue_traffic_class = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @traffic_class_show, ptr null }, section ".data..ro_after_init", align 4
@xps_cpus_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @xps_cpus_show, ptr @xps_cpus_store }, section ".data..ro_after_init", align 4
@xps_rxqs_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @xps_rxqs_show, ptr @xps_rxqs_store }, section ".data..ro_after_init", align 4
@queue_tx_maxrate = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @tx_maxrate_show, ptr @tx_maxrate_store }, section ".data..ro_after_init", align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"tx_timeout\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"traffic_class\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%d%d\0A\00", align 1
@.str.14 = private constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"xps_cpus\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"xps_rxqs\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"tx_maxrate\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"byte_queue_limits\00", align 1
@dql_attrs = internal global [6 x ptr] [ptr @bql_limit_attribute, ptr @bql_limit_max_attribute, ptr @bql_limit_min_attribute, ptr @bql_hold_time_attribute, ptr @bql_inflight_attribute, ptr null], section ".data..ro_after_init", align 4
@bql_limit_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @bql_show_limit, ptr @bql_set_limit }, section ".data..ro_after_init", align 4
@bql_limit_max_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.23, i16 420 }, ptr @bql_show_limit_max, ptr @bql_set_limit_max }, section ".data..ro_after_init", align 4
@bql_limit_min_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.24, i16 420 }, ptr @bql_show_limit_min, ptr @bql_set_limit_min }, section ".data..ro_after_init", align 4
@bql_hold_time_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.25, i16 420 }, ptr @bql_show_hold_time, ptr @bql_set_hold_time }, section ".data..ro_after_init", align 4
@bql_inflight_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @bql_show_inflight, ptr null }, section ".data..ro_after_init", align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"max\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"limit_max\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"limit_min\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"hold_time\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"inflight\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@net_class_groups = internal global [2 x ptr] [ptr @net_class_group, ptr null], align 4
@net_class_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @net_class_attrs, ptr null }, align 4
@net_class_attrs = internal global [33 x ptr] [ptr @dev_attr_netdev_group, ptr @dev_attr_type, ptr @dev_attr_dev_id, ptr @dev_attr_dev_port, ptr @dev_attr_iflink, ptr @dev_attr_ifindex, ptr @dev_attr_name_assign_type, ptr @dev_attr_addr_assign_type, ptr @dev_attr_addr_len, ptr @dev_attr_link_mode, ptr @dev_attr_address, ptr @dev_attr_broadcast, ptr @dev_attr_speed, ptr @dev_attr_duplex, ptr @dev_attr_dormant, ptr @dev_attr_testing, ptr @dev_attr_operstate, ptr @dev_attr_carrier_changes, ptr @dev_attr_ifalias, ptr @dev_attr_carrier, ptr @dev_attr_mtu, ptr @dev_attr_flags, ptr @dev_attr_tx_queue_len, ptr @dev_attr_gro_flush_timeout, ptr @dev_attr_napi_defer_hard_irqs, ptr @dev_attr_phys_port_id, ptr @dev_attr_phys_port_name, ptr @dev_attr_phys_switch_id, ptr @dev_attr_proto_down, ptr @dev_attr_carrier_up_count, ptr @dev_attr_carrier_down_count, ptr @dev_attr_threaded, ptr null], section ".data..ro_after_init", align 4
@dev_attr_netdev_group = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420 }, ptr @group_show, ptr @group_store }, align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @type_show, ptr null }, align 4
@dev_attr_dev_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @dev_id_show, ptr null }, align 4
@dev_attr_dev_port = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @dev_port_show, ptr null }, align 4
@dev_attr_iflink = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @iflink_show, ptr null }, align 4
@dev_attr_ifindex = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @ifindex_show, ptr null }, align 4
@dev_attr_name_assign_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @name_assign_type_show, ptr null }, align 4
@dev_attr_addr_assign_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292 }, ptr @addr_assign_type_show, ptr null }, align 4
@dev_attr_addr_len = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @addr_len_show, ptr null }, align 4
@dev_attr_link_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @link_mode_show, ptr null }, align 4
@dev_attr_address = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @address_show, ptr null }, align 4
@dev_attr_broadcast = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292 }, ptr @broadcast_show, ptr null }, align 4
@dev_attr_speed = internal global %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @speed_show, ptr null }, align 4
@dev_attr_duplex = internal global %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292 }, ptr @duplex_show, ptr null }, align 4
@dev_attr_dormant = internal global %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @dormant_show, ptr null }, align 4
@dev_attr_testing = internal global %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @testing_show, ptr null }, align 4
@dev_attr_operstate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @operstate_show, ptr null }, align 4
@dev_attr_carrier_changes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292 }, ptr @carrier_changes_show, ptr null }, align 4
@dev_attr_ifalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420 }, ptr @ifalias_show, ptr @ifalias_store }, align 4
@dev_attr_carrier = internal global %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420 }, ptr @carrier_show, ptr @carrier_store }, align 4
@dev_attr_mtu = internal global %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420 }, ptr @mtu_show, ptr @mtu_store }, align 4
@dev_attr_flags = internal global %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420 }, ptr @flags_show, ptr @flags_store }, align 4
@dev_attr_tx_queue_len = internal global %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420 }, ptr @tx_queue_len_show, ptr @tx_queue_len_store }, align 4
@dev_attr_gro_flush_timeout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420 }, ptr @gro_flush_timeout_show, ptr @gro_flush_timeout_store }, align 4
@dev_attr_napi_defer_hard_irqs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420 }, ptr @napi_defer_hard_irqs_show, ptr @napi_defer_hard_irqs_store }, align 4
@dev_attr_phys_port_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @phys_port_id_show, ptr null }, align 4
@dev_attr_phys_port_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292 }, ptr @phys_port_name_show, ptr null }, align 4
@dev_attr_phys_switch_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292 }, ptr @phys_switch_id_show, ptr null }, align 4
@dev_attr_proto_down = internal global %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420 }, ptr @proto_down_show, ptr @proto_down_store }, align 4
@dev_attr_carrier_up_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292 }, ptr @carrier_up_count_show, ptr null }, align 4
@dev_attr_carrier_down_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292 }, ptr @carrier_down_count_show, ptr null }, align 4
@dev_attr_threaded = internal global %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420 }, ptr @threaded_show, ptr @threaded_store }, align 4
@.str.28 = private unnamed_addr constant [13 x i8] c"netdev_group\00", align 1
@dev_base_lock = external dso_local global %struct.rwlock_t, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"dev_id\00", align 1
@fmt_hex = internal constant [5 x i8] c"%#x\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"dev_port\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"iflink\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"ifindex\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"name_assign_type\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"addr_assign_type\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"addr_len\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"link_mode\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"duplex\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"dormant\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"testing\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"operstate\00", align 1
@operstates = internal unnamed_addr constant [7 x ptr] [ptr @.str.44, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.47, ptr @.str.46, ptr @.str.52], align 4
@.str.49 = private unnamed_addr constant [11 x i8] c"notpresent\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"lowerlayerdown\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"carrier_changes\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"ifalias\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"carrier\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"tx_queue_len\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"gro_flush_timeout\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"napi_defer_hard_irqs\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"phys_port_id\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"%*phN\0A\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"phys_port_name\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"phys_switch_id\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"proto_down\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"carrier_up_count\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"carrier_down_count\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"threaded\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"INTERFACE=%s\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"IFINDEX=%d\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@netstat_attrs = internal global [25 x ptr] [ptr @dev_attr_rx_packets, ptr @dev_attr_tx_packets, ptr @dev_attr_rx_bytes, ptr @dev_attr_tx_bytes, ptr @dev_attr_rx_errors, ptr @dev_attr_tx_errors, ptr @dev_attr_rx_dropped, ptr @dev_attr_tx_dropped, ptr @dev_attr_multicast, ptr @dev_attr_collisions, ptr @dev_attr_rx_length_errors, ptr @dev_attr_rx_over_errors, ptr @dev_attr_rx_crc_errors, ptr @dev_attr_rx_frame_errors, ptr @dev_attr_rx_fifo_errors, ptr @dev_attr_rx_missed_errors, ptr @dev_attr_tx_aborted_errors, ptr @dev_attr_tx_carrier_errors, ptr @dev_attr_tx_fifo_errors, ptr @dev_attr_tx_heartbeat_errors, ptr @dev_attr_tx_window_errors, ptr @dev_attr_rx_compressed, ptr @dev_attr_tx_compressed, ptr @dev_attr_rx_nohandler, ptr null], section ".data..ro_after_init", align 4
@dev_attr_rx_packets = internal global %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292 }, ptr @rx_packets_show, ptr null }, align 4
@dev_attr_tx_packets = internal global %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292 }, ptr @tx_packets_show, ptr null }, align 4
@dev_attr_rx_bytes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292 }, ptr @rx_bytes_show, ptr null }, align 4
@dev_attr_tx_bytes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292 }, ptr @tx_bytes_show, ptr null }, align 4
@dev_attr_rx_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292 }, ptr @rx_errors_show, ptr null }, align 4
@dev_attr_tx_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292 }, ptr @tx_errors_show, ptr null }, align 4
@dev_attr_rx_dropped = internal global %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292 }, ptr @rx_dropped_show, ptr null }, align 4
@dev_attr_tx_dropped = internal global %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292 }, ptr @tx_dropped_show, ptr null }, align 4
@dev_attr_multicast = internal global %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292 }, ptr @multicast_show, ptr null }, align 4
@dev_attr_collisions = internal global %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292 }, ptr @collisions_show, ptr null }, align 4
@dev_attr_rx_length_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292 }, ptr @rx_length_errors_show, ptr null }, align 4
@dev_attr_rx_over_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292 }, ptr @rx_over_errors_show, ptr null }, align 4
@dev_attr_rx_crc_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292 }, ptr @rx_crc_errors_show, ptr null }, align 4
@dev_attr_rx_frame_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292 }, ptr @rx_frame_errors_show, ptr null }, align 4
@dev_attr_rx_fifo_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292 }, ptr @rx_fifo_errors_show, ptr null }, align 4
@dev_attr_rx_missed_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292 }, ptr @rx_missed_errors_show, ptr null }, align 4
@dev_attr_tx_aborted_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292 }, ptr @tx_aborted_errors_show, ptr null }, align 4
@dev_attr_tx_carrier_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292 }, ptr @tx_carrier_errors_show, ptr null }, align 4
@dev_attr_tx_fifo_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292 }, ptr @tx_fifo_errors_show, ptr null }, align 4
@dev_attr_tx_heartbeat_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292 }, ptr @tx_heartbeat_errors_show, ptr null }, align 4
@dev_attr_tx_window_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292 }, ptr @tx_window_errors_show, ptr null }, align 4
@dev_attr_rx_compressed = internal global %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292 }, ptr @rx_compressed_show, ptr null }, align 4
@dev_attr_tx_compressed = internal global %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292 }, ptr @tx_compressed_show, ptr null }, align 4
@dev_attr_rx_nohandler = internal global %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292 }, ptr @rx_nohandler_show, ptr null }, align 4
@.str.72 = private unnamed_addr constant [11 x i8] c"rx_packets\00", align 1
@fmt_u64 = internal constant [6 x i8] c"%llu\0A\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"tx_packets\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"rx_bytes\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"tx_bytes\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"rx_errors\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"tx_errors\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"rx_dropped\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"tx_dropped\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"multicast\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"collisions\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"rx_length_errors\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"rx_over_errors\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"rx_crc_errors\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"rx_frame_errors\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"rx_fifo_errors\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"rx_missed_errors\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"tx_aborted_errors\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"tx_carrier_errors\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"tx_fifo_errors\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"tx_heartbeat_errors\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"tx_window_errors\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"rx_compressed\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"tx_compressed\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"rx_nohandler\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"wireless\00", align 1
@wireless_attrs = internal global [1 x ptr] zeroinitializer, align 4
@.str.97 = private unnamed_addr constant [7 x i8] c"queues\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_net_ns_type_operations, ptr @__ksymtab_netdev_class_create_file_ns, ptr @__ksymtab_netdev_class_remove_file_ns, ptr @__ksymtab_of_find_net_device_by_node], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @net_rx_queue_update_kobjects(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %5, label %45

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 73
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 63
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 113
  br label %9

9:                                                ; preds = %41, %5
  %10 = phi i32 [ %1, %5 ], [ %43, %41 ]
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr %struct.netdev_rx_queue, ptr %11, i32 %10, i32 3
  %13 = getelementptr %struct.netdev_rx_queue, ptr %11, i32 %10, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !9
  %18 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 99
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #8, !srcloc !10
  %24 = add i32 %23, %20
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #17, !srcloc !11
  br label %28

28:                                               ; preds = %16, %9
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr %struct.netdev_rx_queue, ptr %11, i32 %10, i32 3, i32 3
  store ptr %29, ptr %30, align 4
  %31 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %12, ptr noundef nonnull @rx_queue_ktype, ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %10) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load ptr, ptr %8, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @sysfs_create_group(ptr noundef %12, ptr noundef nonnull %34) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36, %28
  %40 = phi i32 [ %31, %28 ], [ %37, %36 ]
  tail call void @kobject_put(ptr noundef %12) #17
  br label %45

41:                                               ; preds = %36, %33
  %42 = tail call i32 @kobject_uevent(ptr noundef %12, i32 noundef 0) #17
  %43 = add i32 %10, 1
  %44 = icmp eq i32 %43, %2
  br i1 %44, label %45, label %9

45:                                               ; preds = %41, %39, %3
  %46 = phi i32 [ %10, %39 ], [ %1, %3 ], [ %2, %41 ]
  %47 = phi i32 [ %1, %39 ], [ %2, %3 ], [ %2, %41 ]
  %48 = phi i32 [ %40, %39 ], [ 0, %3 ], [ 0, %41 ]
  %49 = add i32 %46, -1
  %50 = icmp slt i32 %49, %47
  br i1 %50, label %71, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 73
  %53 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 113
  br label %54

54:                                               ; preds = %68, %51
  %55 = phi i32 [ %49, %51 ], [ %69, %68 ]
  %56 = load ptr, ptr %52, align 4
  %57 = getelementptr %struct.netdev_rx_queue, ptr %56, i32 %55, i32 3
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 14, i32 3), align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = getelementptr %struct.netdev_rx_queue, ptr %56, i32 %55, i32 3, i32 7
  %62 = load i8, ptr %61, align 4
  %63 = or i8 %62, 16
  store i8 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load ptr, ptr %53, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @sysfs_remove_group(ptr noundef %57, ptr noundef nonnull %65) #17
  br label %68

68:                                               ; preds = %67, %64
  tail call void @kobject_put(ptr noundef %57) #17
  %69 = add i32 %55, -1
  %70 = icmp slt i32 %69, %47
  br i1 %70, label %71, label %54

71:                                               ; preds = %68, %45
  ret i32 %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netdev_queue_update_kobjects(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 102
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 2
  %7 = icmp sgt i32 %2, %1
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10, !prof !12

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1702, i32 noundef 9, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %9, %3
  br i1 %7, label %11, label %47

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 63
  br label %14

14:                                               ; preds = %43, %11
  %15 = phi i32 [ %1, %11 ], [ %45, %43 ]
  %16 = load ptr, ptr %12, align 64
  %17 = getelementptr %struct.netdev_queue, ptr %16, i32 %15
  %18 = getelementptr %struct.netdev_queue, ptr %16, i32 %15, i32 4
  %19 = load ptr, ptr %17, align 64
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %14
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !9
  %23 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 99
  %24 = load ptr, ptr %23, align 8
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #8, !srcloc !10
  %29 = add i32 %28, %25
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #17, !srcloc !11
  br label %33

33:                                               ; preds = %21, %14
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr %struct.netdev_queue, ptr %16, i32 %15, i32 4, i32 3
  store ptr %34, ptr %35, align 4
  %36 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %18, ptr noundef nonnull @netdev_queue_ktype, ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef %15) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = tail call i32 @sysfs_create_group(ptr noundef %18, ptr noundef nonnull @dql_group) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %33
  %42 = phi i32 [ %36, %33 ], [ %39, %38 ]
  tail call void @kobject_put(ptr noundef %18) #17
  br label %47

43:                                               ; preds = %38
  %44 = tail call i32 @kobject_uevent(ptr noundef %18, i32 noundef 0) #17
  %45 = add i32 %15, 1
  %46 = icmp eq i32 %45, %2
  br i1 %46, label %47, label %14

47:                                               ; preds = %43, %41, %10
  %48 = phi i32 [ %15, %41 ], [ %1, %10 ], [ %2, %43 ]
  %49 = phi i32 [ %42, %41 ], [ 0, %10 ], [ 0, %43 ]
  %50 = phi i32 [ %1, %41 ], [ %2, %10 ], [ %2, %43 ]
  %51 = add i32 %48, -1
  %52 = icmp slt i32 %51, %50
  br i1 %52, label %68, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %55

55:                                               ; preds = %64, %53
  %56 = phi i32 [ %51, %53 ], [ %66, %64 ]
  %57 = load ptr, ptr %54, align 64
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 14, i32 3), align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = getelementptr %struct.netdev_queue, ptr %57, i32 %56, i32 4, i32 7
  %62 = load i8, ptr %61, align 4
  %63 = or i8 %62, 16
  store i8 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = getelementptr %struct.netdev_queue, ptr %57, i32 %56, i32 4
  tail call void @sysfs_remove_group(ptr noundef %65, ptr noundef nonnull @dql_group) #17
  tail call void @kobject_put(ptr noundef %65) #17
  %66 = add i32 %56, -1
  %67 = icmp slt i32 %66, %50
  br i1 %67, label %68, label %55

68:                                               ; preds = %64, %47
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @net_current_may_mount() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #17
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 92
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nsproxy, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #17
  ret i1 %8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @net_grab_current_ns() #3 {
  %1 = tail call ptr @llvm.thread.pointer() #17
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 92
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nsproxy, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @net_netlink_ns(ptr nocapture noundef readnone %0) #4 {
  ret ptr @init_net
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @net_initial_ns() #4 {
  ret ptr @init_net
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_net_device_by_node(ptr noundef %0) #0 {
  %2 = tail call ptr @class_find_device(ptr noundef nonnull @net_class, ptr noundef null, ptr noundef %0, ptr noundef nonnull @of_dev_node_match) #17
  %3 = icmp eq ptr %2, null
  %4 = getelementptr i8, ptr %2, i32 -688
  %5 = select i1 %3, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @of_dev_node_match(ptr noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %9, %2
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4

13:                                               ; preds = %9, %4, %2
  %14 = phi i32 [ 0, %2 ], [ 0, %9 ], [ 1, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netdev_unregister_kobject(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 14, i32 3), align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 0, i32 7
  %6 = load i8, ptr %5, align 8
  %7 = or i8 %6, 16
  store i8 %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %4, %1
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %10 = tail call ptr @kobject_get(ptr noundef %9) #17
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 75
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 89
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @net_rx_queue_update_kobjects(ptr noundef %0, i32 noundef %12, i32 noundef 0) #17
  %16 = tail call i32 @netdev_queue_update_kobjects(ptr noundef %0, i32 noundef %14, i32 noundef 0) #17
  store i32 0, ptr %11, align 4
  store i32 0, ptr %13, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 63
  %18 = load ptr, ptr %17, align 4
  tail call void @kset_unregister(ptr noundef %18) #17
  tail call void @pm_runtime_set_memalloc_noio(ptr noundef %9, i1 noundef zeroext false) #17
  tail call void @device_del(ptr noundef %9) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_memalloc_noio(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netdev_register_kobject(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 112
  tail call void @device_initialize(ptr noundef %2) #17
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 31
  store ptr @net_class, ptr %4, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 7
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 32
  store ptr %3, ptr %6, align 8
  %7 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %0) #17
  %8 = load ptr, ptr %3, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr %struct.net_device, ptr %0, i32 0, i32 112, i32 1
  %11 = select i1 %9, ptr %3, ptr %10
  store ptr @netstat_group, ptr %11, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = getelementptr ptr, ptr %11, i32 1
  store ptr @wireless_group, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = tail call i32 @device_add(ptr noundef %2) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.97, ptr noundef null, ptr noundef %2) #17
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 63
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 75
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 89
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @net_rx_queue_update_kobjects(ptr noundef %0, i32 noundef 0, i32 noundef %26) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = tail call i32 @netdev_queue_update_kobjects(ptr noundef %0, i32 noundef 0, i32 noundef %28) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31, %24
  %35 = phi i32 [ %29, %24 ], [ %32, %31 ]
  %36 = phi i32 [ 0, %24 ], [ %26, %31 ]
  %37 = tail call i32 @net_rx_queue_update_kobjects(ptr noundef %0, i32 noundef %36, i32 noundef 0) #17
  %38 = load ptr, ptr %22, align 4
  tail call void @kset_unregister(ptr noundef %38) #17
  br label %39

39:                                               ; preds = %34, %20
  %40 = phi i32 [ -12, %20 ], [ %35, %34 ]
  tail call void @device_del(ptr noundef %2) #17
  br label %42

41:                                               ; preds = %31
  tail call void @pm_runtime_set_memalloc_noio(ptr noundef %2, i1 noundef zeroext true) #17
  br label %42

42:                                               ; preds = %41, %39, %17
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ], [ %18, %17 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netdev_change_owner(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netdev_class_create_file_ns(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @class_create_file_ns(ptr noundef nonnull @net_class, ptr noundef %0, ptr noundef %1) #17
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netdev_class_remove_file_ns(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @class_remove_file_ns(ptr noundef nonnull @net_class, ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @netdev_kobject_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @kobj_ns_type_register(ptr noundef nonnull @net_ns_type_operations) #17
  %2 = tail call i32 @__class_register(ptr noundef nonnull @net_class, ptr noundef nonnull @netdev_kobject_init.__key) #17
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobj_ns_type_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rx_queue_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  store volatile ptr null, ptr %2, align 64
  %6 = getelementptr inbounds %struct.rps_map, ptr %3, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %6, ptr noundef nonnull inttoptr (i32 4 to ptr)) #17
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  store volatile ptr null, ptr %8, align 4
  %12 = getelementptr inbounds %struct.rps_dev_flow_table, ptr %9, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %12, ptr noundef nonnull @rps_dev_flow_table_release) #17
  br label %13

13:                                               ; preds = %11, %7
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %0, i8 0, i32 36, i1 false)
  %14 = getelementptr i8, ptr %0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !9
  %19 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 99
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #8, !srcloc !10
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  store i32 %28, ptr %26, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #17, !srcloc !11
  br label %29

29:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rx_queue_namespace(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 111
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 111, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.class, ptr %6, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.class, ptr %6, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %4) #17
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = phi ptr [ %15, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rx_queue_get_ownership(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111
  %7 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.class, ptr %8, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.class, ptr %8, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %6) #17
  br label %18

18:                                               ; preds = %14, %10, %3
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rps_dev_flow_table_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  tail call void @vfree(ptr noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_queue_attr_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rx_queue_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -72
  %9 = tail call i32 %5(ptr noundef %8, ptr noundef %2) #17
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ -5, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_queue_attr_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.rx_queue_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -72
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %2, i32 noundef %3) #17
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -5, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_rps_map(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %4 = getelementptr inbounds %struct.netdev_rx_queue, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ %15, %10 ], [ 0, %7 ]
  %12 = getelementptr %struct.rps_map, ptr %5, i32 0, i32 2, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  call void @_set_bit(i32 noundef %14, ptr noundef nonnull %3) #17
  %15 = add nuw i32 %11, 1
  %16 = load i32, ptr %5, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %10, label %18

18:                                               ; preds = %10, %7, %2
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %19, ptr noundef nonnull %3)
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %21 = icmp ult i32 %20, 4096
  %22 = select i1 %21, i32 %20, i32 -22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_rps_map(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !15
  %5 = tail call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %5, label %6, label %65

6:                                                ; preds = %3
  %7 = call i32 @bitmap_parse(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4, i32 noundef 16) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %65

9:                                                ; preds = %6
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = call ptr @housekeeping_cpumask(i32 noundef 96) #17
  %15 = load i32, ptr %4, align 4
  %16 = load i32, ptr %14, align 4
  %17 = and i32 %15, 65535
  %18 = and i32 %17, %16
  store i32 %18, ptr %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %13, %9
  %21 = phi i32 [ 0, %9 ], [ %18, %13 ]
  %22 = call i32 @__sw_hweight32(i32 noundef %21) #17
  %23 = shl i32 %22, 1
  %24 = add i32 %23, 12
  %25 = call i32 @llvm.umax.i32(i32 %24, i32 64)
  %26 = call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %65, label %28

28:                                               ; preds = %20
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef nonnull %4, ptr noundef nonnull @__cpu_online_mask) #19
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %32, label %43

32:                                               ; preds = %32, %28
  %33 = phi i32 [ %38, %32 ], [ %30, %28 ]
  %34 = phi i32 [ %36, %32 ], [ 0, %28 ]
  %35 = trunc i32 %33 to i16
  %36 = add i32 %34, 1
  %37 = getelementptr %struct.rps_map, ptr %26, i32 0, i32 2, i32 %34
  store i16 %35, ptr %37, align 2
  %38 = call i32 @cpumask_next_and(i32 noundef %33, ptr noundef nonnull %4, ptr noundef nonnull @__cpu_online_mask) #19
  %39 = icmp ult i32 %38, %29
  br i1 %39, label %32, label %40

40:                                               ; preds = %32
  %41 = icmp eq i32 %36, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  store i32 %36, ptr %26, align 64
  br label %44

43:                                               ; preds = %40, %28
  call void @kfree(ptr noundef nonnull %26) #17
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi ptr [ %26, %42 ], [ null, %43 ]
  call void @mutex_lock(ptr noundef nonnull @store_rps_map.rps_map_mutex) #17
  %46 = getelementptr inbounds %struct.netdev_rx_queue, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  store volatile ptr %45, ptr %46, align 64
  %48 = icmp eq ptr %45, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i8, ptr @static_key_initialized, align 1, !range !17
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53, !prof !12

52:                                               ; preds = %49
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @rps_needed) #17
  br label %53

53:                                               ; preds = %52, %49
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rps_needed) #17, !srcloc !18
  %54 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rps_needed, ptr nonnull @rps_needed, i32 1, ptr nonnull elementtype(i32) @rps_needed) #17, !srcloc !19
  br label %55

55:                                               ; preds = %53, %44
  %56 = icmp eq ptr %47, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %55
  %58 = load i8, ptr @static_key_initialized, align 1, !range !17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %61, !prof !12

60:                                               ; preds = %57
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @rps_needed) #17
  br label %61

61:                                               ; preds = %60, %57
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rps_needed) #17, !srcloc !18
  %62 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rps_needed, ptr nonnull @rps_needed, i32 1, ptr nonnull elementtype(i32) @rps_needed) #17, !srcloc !20
  call void @mutex_unlock(ptr noundef nonnull @store_rps_map.rps_map_mutex) #17
  %63 = getelementptr inbounds %struct.rps_map, ptr %47, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %63, ptr noundef nonnull inttoptr (i32 4 to ptr)) #17
  br label %65

64:                                               ; preds = %55
  call void @mutex_unlock(ptr noundef nonnull @store_rps_map.rps_map_mutex) #17
  br label %65

65:                                               ; preds = %64, %61, %20, %13, %6, %3
  %66 = phi i32 [ -1, %3 ], [ %7, %6 ], [ -22, %13 ], [ -12, %20 ], [ %2, %64 ], [ %2, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %66
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_rps_dev_flow_table_cnt(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %3 = getelementptr inbounds %struct.netdev_rx_queue, ptr %0, i32 0, i32 2
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 4
  %8 = add i32 %7, 1
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_rps_dev_flow_table_cnt(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !15
  %5 = tail call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %5, label %6, label %42

6:                                                ; preds = %3
  %7 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #17
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %9
  %13 = add i32 %10, -1
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %13, %12 ], [ %17, %14 ]
  %16 = lshr i32 %15, 1
  %17 = or i32 %16, %15
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %19, label %14

19:                                               ; preds = %14
  %20 = icmp ugt i32 %15, 536870909
  br i1 %20, label %42, label %21

21:                                               ; preds = %19
  %22 = shl nuw i32 %15, 3
  %23 = add nuw i32 %22, 20
  %24 = call noalias ptr @vmalloc(i32 noundef %23) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  store i32 %15, ptr %24, align 4
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi i32 [ 0, %26 ], [ %30, %27 ]
  %29 = getelementptr %struct.rps_dev_flow_table, ptr %24, i32 0, i32 2, i32 %28
  store i16 -1, ptr %29, align 4
  %30 = add i32 %28, 1
  %31 = icmp ugt i32 %30, %15
  br i1 %31, label %32, label %27

32:                                               ; preds = %27
  store i32 %30, ptr %4, align 4
  br label %33

33:                                               ; preds = %32, %9
  %34 = phi ptr [ null, %9 ], [ %24, %32 ]
  call void @_raw_spin_lock(ptr noundef nonnull @store_rps_dev_flow_table_cnt.rps_dev_flow_lock) #17
  %35 = getelementptr inbounds %struct.netdev_rx_queue, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !21
  store volatile ptr %34, ptr %35, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %37 = load i16, ptr @store_rps_dev_flow_table_cnt.rps_dev_flow_lock, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr @store_rps_dev_flow_table_cnt.rps_dev_flow_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %39 = icmp eq ptr %36, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.rps_dev_flow_table, ptr %36, i32 0, i32 1
  call void @call_rcu(ptr noundef %41, ptr noundef nonnull @rps_dev_flow_table_release) #17
  br label %42

42:                                               ; preds = %40, %33, %21, %19, %6, %3
  %43 = phi i32 [ -1, %3 ], [ %7, %6 ], [ -22, %19 ], [ -12, %21 ], [ %2, %40 ], [ %2, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %43
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @netdev_queue_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %0, i8 0, i32 36, i1 false)
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !9
  %7 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 99
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #8, !srcloc !10
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #17, !srcloc !11
  br label %17

17:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @netdev_queue_namespace(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 111
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 111, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.class, ptr %6, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.class, ptr %6, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %4) #17
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = phi ptr [ %15, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @netdev_queue_get_ownership(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111
  %7 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.class, ptr %8, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.class, ptr %8, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %6) #17
  br label %18

18:                                               ; preds = %14, %10, %3
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netdev_queue_attr_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.netdev_queue_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -12
  %9 = tail call i32 %5(ptr noundef %8, ptr noundef %2) #17
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ -5, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netdev_queue_attr_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.netdev_queue_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %2, i32 noundef %3) #17
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -5, %4 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_timeout_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @traffic_class_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr %0, align 64
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 88
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %42

7:                                                ; preds = %2
  %8 = tail call i32 @rtnl_trylock() #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #17
  br label %42

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 64
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 87
  %15 = load ptr, ptr %14, align 64
  %16 = ptrtoint ptr %0 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  %19 = ashr exact i32 %18, 8
  %20 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 88
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %24, label %23, !prof !26

23:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #17, !srcloc !27
  unreachable

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %26 = load ptr, ptr %25, align 64
  %27 = getelementptr %struct.netdev_queue, ptr %26, i32 %19, i32 7
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr %3, ptr %28
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 117
  %32 = load i16, ptr %31, align 2
  %33 = sext i16 %32 to i32
  %34 = tail call i32 @netdev_txq_to_tc(ptr noundef %30, i32 noundef %19) #17
  tail call void @rtnl_unlock() #17
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %24
  %37 = icmp slt i16 %32, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %34, i32 noundef %33)
  br label %42

40:                                               ; preds = %36
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %34)
  br label %42

42:                                               ; preds = %40, %38, %24, %10, %2
  %43 = phi i32 [ -513, %10 ], [ -2, %2 ], [ -22, %24 ], [ %39, %38 ], [ %41, %40 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_txq_to_tc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xps_cpus_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 64
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 88
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %9 = load ptr, ptr %8, align 64
  %10 = ptrtoint ptr %0 to i32
  %11 = ptrtoint ptr %9 to i32
  %12 = sub i32 %10, %11
  %13 = ashr exact i32 %12, 8
  %14 = icmp ult i32 %13, %5
  br i1 %14, label %16, label %15, !prof !26

15:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #17, !srcloc !27
  unreachable

16:                                               ; preds = %7
  %17 = tail call i32 @rtnl_trylock() #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %20) #17
  br label %34

21:                                               ; preds = %16
  %22 = load ptr, ptr %8, align 64
  %23 = getelementptr %struct.netdev_queue, ptr %22, i32 %13, i32 7
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %3, ptr %24
  %27 = tail call i32 @netdev_txq_to_tc(ptr noundef %26, i32 noundef %13) #17
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void @rtnl_unlock() #17
  br label %34

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 111
  %32 = tail call ptr @get_device(ptr noundef %31) #17
  tail call void @rtnl_unlock() #17
  %33 = tail call fastcc i32 @xps_queue_show(ptr noundef %26, i32 noundef %13, i32 noundef %27, ptr noundef %1, i32 noundef 0)
  tail call void @put_device(ptr noundef %31) #17
  br label %34

34:                                               ; preds = %30, %29, %19, %2
  %35 = phi i32 [ -22, %29 ], [ %33, %30 ], [ -513, %19 ], [ -2, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xps_cpus_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [1 x %struct.cpumask], align 4
  %5 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !15
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 88
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  %10 = tail call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %10, label %11, label %36

11:                                               ; preds = %9
  %12 = load ptr, ptr %0, align 64
  %13 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 87
  %14 = load ptr, ptr %13, align 64
  %15 = ptrtoint ptr %0 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = ashr exact i32 %17, 8
  %19 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 88
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %23, label %22, !prof !26

22:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #17, !srcloc !27
  unreachable

23:                                               ; preds = %11
  %24 = call i32 @bitmap_parse(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4, i32 noundef 16) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = call i32 @rtnl_trylock() #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %30) #17
  br label %36

31:                                               ; preds = %26
  %32 = trunc i32 %18 to i16
  %33 = call i32 @netif_set_xps_queue(ptr noundef %5, ptr noundef nonnull %4, i16 noundef zeroext %32) #17
  call void @rtnl_unlock() #17
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 %2, i32 %33
  br label %36

36:                                               ; preds = %31, %29, %23, %9, %3
  %37 = phi i32 [ %35, %31 ], [ -513, %29 ], [ -2, %3 ], [ -1, %9 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xps_queue_show(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %6 = getelementptr %struct.net_device, ptr %0, i32 0, i32 94, i32 %4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.xps_dev_maps, ptr %7, i32 0, i32 1
  %10 = icmp eq i32 %4, 0
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 74
  %12 = select i1 %10, ptr @nr_cpu_ids, ptr %11
  %13 = select i1 %8, ptr %12, ptr %9
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @bitmap_zalloc(i32 noundef %14, i32 noundef 2048) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %62

18:                                               ; preds = %5
  br i1 %8, label %58, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.xps_dev_maps, ptr %7, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = sext i16 %21 to i32
  %23 = icmp sgt i32 %22, %2
  %24 = icmp ne i32 %14, 0
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %56, %19
  %27 = phi i16 [ %57, %56 ], [ %21, %19 ]
  %28 = phi i32 [ %54, %56 ], [ 0, %19 ]
  %29 = sext i16 %27 to i32
  %30 = mul i32 %28, %29
  %31 = add i32 %30, %2
  %32 = getelementptr %struct.xps_dev_maps, ptr %7, i32 0, i32 3, i32 %31
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %26
  %36 = load i32, ptr %33, align 4
  br label %37

37:                                               ; preds = %40, %35
  %38 = phi i32 [ %36, %35 ], [ %41, %40 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = add i32 %38, -1
  %42 = getelementptr %struct.xps_map, ptr %33, i32 0, i32 3, i32 %41
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %46, label %37

46:                                               ; preds = %40
  %47 = and i32 %28, 31
  %48 = shl nuw i32 1, %47
  %49 = lshr i32 %28, 5
  %50 = getelementptr i32, ptr %15, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %46, %37, %26
  %54 = add nuw i32 %28, 1
  %55 = icmp eq i32 %54, %14
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i16, ptr %20, align 4
  br label %26

58:                                               ; preds = %53, %19, %18
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %59 = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext false, ptr noundef %3, ptr noundef nonnull %15, i32 noundef %14) #17
  tail call void @bitmap_free(ptr noundef nonnull %15) #17
  %60 = icmp ult i32 %59, 4096
  %61 = select i1 %60, i32 %59, i32 -22
  br label %62

62:                                               ; preds = %58, %17
  %63 = phi i32 [ %61, %58 ], [ -12, %17 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_xps_queue(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xps_rxqs_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 64
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %5 = load ptr, ptr %4, align 64
  %6 = ptrtoint ptr %0 to i32
  %7 = ptrtoint ptr %5 to i32
  %8 = sub i32 %6, %7
  %9 = ashr exact i32 %8, 8
  %10 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 88
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %14, label %13, !prof !26

13:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #17, !srcloc !27
  unreachable

14:                                               ; preds = %2
  %15 = tail call i32 @rtnl_trylock() #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %18) #17
  br label %24

19:                                               ; preds = %14
  %20 = tail call i32 @netdev_txq_to_tc(ptr noundef %3, i32 noundef %9) #17
  tail call void @rtnl_unlock() #17
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @xps_queue_show(ptr noundef %3, i32 noundef %9, i32 noundef %20, ptr noundef %1, i32 noundef 1)
  br label %24

24:                                               ; preds = %22, %19, %17
  %25 = phi i32 [ %23, %22 ], [ -513, %17 ], [ -22, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xps_rxqs_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 64
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %6 = tail call zeroext i1 @ns_capable(ptr noundef %5, i32 noundef 12) #17
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 74
  %9 = load i32, ptr %8, align 8
  %10 = tail call ptr @bitmap_zalloc(i32 noundef %9, i32 noundef 3264) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 64
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 87
  %15 = load ptr, ptr %14, align 64
  %16 = ptrtoint ptr %0 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  %19 = ashr exact i32 %18, 8
  %20 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 88
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %24, label %23, !prof !26

23:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #17, !srcloc !27
  unreachable

24:                                               ; preds = %12
  %25 = load i32, ptr %8, align 8
  %26 = tail call i32 @bitmap_parse(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %10, i32 noundef %25) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @bitmap_free(ptr noundef nonnull %10) #17
  br label %39

29:                                               ; preds = %24
  %30 = tail call i32 @rtnl_trylock() #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  tail call void @bitmap_free(ptr noundef nonnull %10) #17
  %33 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %33) #17
  br label %39

34:                                               ; preds = %29
  tail call void @cpus_read_lock() #17
  %35 = trunc i32 %19 to i16
  %36 = tail call i32 @__netif_set_xps_queue(ptr noundef %4, ptr noundef nonnull %10, i16 noundef zeroext %35, i32 noundef 1) #17
  tail call void @cpus_read_unlock() #17
  tail call void @rtnl_unlock() #17
  tail call void @bitmap_free(ptr noundef nonnull %10) #17
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 %2, i32 %36
  br label %39

39:                                               ; preds = %34, %32, %28, %7, %3
  %40 = phi i32 [ %26, %28 ], [ %38, %34 ], [ -513, %32 ], [ -1, %3 ], [ -12, %7 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netif_set_xps_queue(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_maxrate_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 16
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_maxrate_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 64
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 87
  %7 = load ptr, ptr %6, align 64
  %8 = ptrtoint ptr %0 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = ashr exact i32 %10, 8
  %12 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 88
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %16, label %15, !prof !26

15:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #17, !srcloc !27
  unreachable

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4
  %17 = tail call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %17, label %18, label %45

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.net_device_ops, ptr %20, i32 0, i32 62
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %18
  %25 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #17
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = call i32 @rtnl_trylock() #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %31) #17
  br label %45

32:                                               ; preds = %27
  %33 = load ptr, ptr %19, align 8
  %34 = getelementptr inbounds %struct.net_device_ops, ptr %33, i32 0, i32 62
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @rtnl_unlock() #17
  br label %45

38:                                               ; preds = %32
  %39 = load i32, ptr %4, align 4
  %40 = call i32 %35(ptr noundef %5, i32 noundef %11, i32 noundef %39) #17
  call void @rtnl_unlock() #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, ptr %4, align 4
  %44 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 5
  store i32 %43, ptr %44, align 16
  br label %45

45:                                               ; preds = %42, %38, %37, %30, %24, %18, %16
  %46 = phi i32 [ %2, %42 ], [ -513, %30 ], [ -1, %16 ], [ -95, %18 ], [ %25, %24 ], [ %40, %38 ], [ -95, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bql_show_limit(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 14, i32 4
  %4 = load i32, ptr %3, align 64
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %4) #17
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bql_set_limit(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 14, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !15
  %6 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.21) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.22) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #17
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 4
  %16 = icmp ugt i32 %15, 1879048192
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %8, %3
  %18 = phi i32 [ %15, %14 ], [ 1879048192, %8 ], [ 1879048192, %3 ]
  store i32 %18, ptr %5, align 4
  br label %19

19:                                               ; preds = %17, %14, %11
  %20 = phi i32 [ %2, %17 ], [ %12, %11 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bql_show_limit_max(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 14, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %4) #17
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bql_set_limit_max(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 14, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !15
  %6 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.21) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.22) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #17
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 4
  %16 = icmp ugt i32 %15, 1879048192
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %8, %3
  %18 = phi i32 [ %15, %14 ], [ 1879048192, %8 ], [ 1879048192, %3 ]
  store i32 %18, ptr %5, align 4
  br label %19

19:                                               ; preds = %17, %14, %11
  %20 = phi i32 [ %2, %17 ], [ %12, %11 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bql_show_limit_min(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 14, i32 12
  %4 = load i32, ptr %3, align 32
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %4) #17
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bql_set_limit_min(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 14, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !15
  %6 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.21) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.22) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #17
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 4
  %16 = icmp ugt i32 %15, 1879048192
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %8, %3
  %18 = phi i32 [ %15, %14 ], [ 1879048192, %8 ], [ 1879048192, %3 ]
  store i32 %18, ptr %5, align 4
  br label %19

19:                                               ; preds = %17, %14, %11
  %20 = phi i32 [ %2, %17 ], [ %12, %11 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bql_show_hold_time(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 14, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @jiffies_to_msecs(i32 noundef %4) #17
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bql_set_hold_time(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !15
  %5 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #17
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = call i32 @__msecs_to_jiffies(i32 noundef %8) #17
  %10 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 14, i32 13
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %2, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bql_show_inflight(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 64
  %5 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 14, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netdev_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -688
  %4 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.69, ptr noundef %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -564
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.70, i32 noundef %8) #17
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %4, %2 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @netdev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 4
  br i1 %4, label %6, label %5, !prof !26

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1891, 0\0A.popsection", ""() #17, !srcloc !28
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -688
  %8 = getelementptr i8, ptr %0, i32 -668
  %9 = load volatile ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #17
  tail call void @netdev_freemem(ptr noundef %7) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @net_namespace(ptr nocapture noundef readnone %0) #4 {
  ret ptr @init_net
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @net_get_ownership(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #15 {
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @group_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -476
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %9) #17
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %17

17:                                               ; preds = %16, %11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @group_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #17
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = call i32 @rtnl_trylock() #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %16) #17
  br label %25

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 -28
  %19 = load i8, ptr %18, align 4
  %20 = icmp ugt i8 %19, 1
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4
  call void @dev_set_group(ptr noundef %6, i32 noundef %22) #17
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ 0, %17 ], [ %3, %21 ]
  call void @rtnl_unlock() #17
  br label %25

25:                                               ; preds = %23, %15, %9, %4
  %26 = phi i32 [ -513, %15 ], [ -1, %4 ], [ %10, %9 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_set_group(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -480
  %9 = load i16, ptr %8, align 16
  %10 = zext i16 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %10) #17
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %14 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %18

18:                                               ; preds = %17, %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -306
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_hex, i32 noundef %10) #17
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %14 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %18

18:                                               ; preds = %17, %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_port_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -304
  %9 = load i16, ptr %8, align 64
  %10 = zext i16 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %10) #17
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %14 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %18

18:                                               ; preds = %17, %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iflink_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -688
  %5 = tail call i32 @dev_get_iflink(ptr noundef %4) #17
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_iflink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ifindex_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -564
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %9) #17
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %17

17:                                               ; preds = %16, %11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_assign_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -477
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %8 = getelementptr i8, ptr %0, i32 -28
  %9 = load i8, ptr %8, align 4
  %10 = icmp ugt i8 %9, 1
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i8, ptr %4, align 1
  %13 = zext i8 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %13) #17
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %14, %11 ], [ -22, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %17 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %21

21:                                               ; preds = %20, %15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  br label %22

22:                                               ; preds = %21, %3
  %23 = phi i32 [ %16, %21 ], [ -22, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addr_assign_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -312
  %9 = load i8, ptr %8, align 8
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %10) #17
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %14 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %18

18:                                               ; preds = %17, %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addr_len_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -311
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %10) #17
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %14 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %18

18:                                               ; preds = %17, %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @link_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -347
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %10) #17
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %14 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %18

18:                                               ; preds = %17, %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @address_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -208
  %9 = load ptr, ptr %8, align 32
  %10 = getelementptr i8, ptr %0, i32 -311
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = tail call i32 @sysfs_format_mac(ptr noundef %2, ptr noundef %9, i32 noundef %12) #17
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %13, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_format_mac(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @broadcast_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -164
  %9 = getelementptr i8, ptr %0, i32 -311
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @sysfs_format_mac(ptr noundef %2, ptr noundef %8, i32 noundef %11) #17
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %12, %7 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @speed_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.ethtool_link_ksettings, align 4
  %5 = getelementptr i8, ptr %0, i32 -688
  %6 = getelementptr i8, ptr %0, i32 -360
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 56
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @rtnl_trylock() #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %15) #17
  br label %36

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %0, i32 -652
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = load volatile i32, ptr %17, align 4
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !15
  %26 = call i32 @__ethtool_get_link_ksettings(ptr noundef %5, ptr noundef nonnull %4) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ -22, %25 ], [ %31, %28 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #17
  br label %34

34:                                               ; preds = %32, %21, %16
  %35 = phi i32 [ %33, %32 ], [ -22, %21 ], [ -22, %16 ]
  call void @rtnl_unlock() #17
  br label %36

36:                                               ; preds = %34, %14, %3
  %37 = phi i32 [ %35, %34 ], [ -513, %14 ], [ -22, %3 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @duplex_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.ethtool_link_ksettings, align 4
  %5 = getelementptr i8, ptr %0, i32 -688
  %6 = getelementptr i8, ptr %0, i32 -360
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 56
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @rtnl_trylock() #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %15) #17
  br label %36

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %0, i32 -652
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !15
  %22 = call i32 @__ethtool_get_link_ksettings(ptr noundef %5, ptr noundef nonnull %4) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 2
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  %28 = select i1 %27, ptr @.str.43, ptr @.str.44
  %29 = icmp eq i8 %26, 0
  %30 = select i1 %29, ptr @.str.42, ptr %28
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef nonnull %30)
  br label %32

32:                                               ; preds = %24, %21
  %33 = phi i32 [ -22, %21 ], [ %31, %24 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #17
  br label %34

34:                                               ; preds = %32, %16
  %35 = phi i32 [ %33, %32 ], [ -22, %16 ]
  call void @rtnl_unlock() #17
  br label %36

36:                                               ; preds = %34, %14, %3
  %37 = phi i32 [ %35, %34 ], [ -513, %14 ], [ -22, %3 ]
  ret i32 %37
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dormant_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 -652
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load volatile i32, ptr %4, align 4
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 1
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %11)
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @testing_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 -652
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load volatile i32, ptr %4, align 4
  %10 = lshr i32 %9, 5
  %11 = and i32 %10, 1
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %11)
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @operstate_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -348
  %5 = load i8, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -652
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i8 2, i8 %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %11 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %15

15:                                               ; preds = %14, %3
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %16 = icmp ugt i8 %10, 6
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = zext i8 %10 to i32
  %19 = getelementptr [7 x ptr], ptr @operstates, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef %20)
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %21, %17 ], [ -22, %15 ]
  ret i32 %23
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @carrier_changes_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 -368
  %5 = load volatile i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -364
  %7 = load volatile i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ifalias_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca [256 x i8], align 1
  %5 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 0, i32 256, i1 false), !annotation !15
  %6 = call i32 @dev_get_alias(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 256) #17
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef nonnull %4)
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #17
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ifalias_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -688
  %6 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %7 = tail call zeroext i1 @ns_capable(ptr noundef %6, i32 noundef 12) #17
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = add i32 %3, -1
  %12 = getelementptr i8, ptr %2, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 10
  %15 = select i1 %14, i32 %11, i32 %3
  br label %16

16:                                               ; preds = %10, %8
  %17 = phi i32 [ 0, %8 ], [ %15, %10 ]
  %18 = tail call i32 @rtnl_trylock() #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %21) #17
  br label %32

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i32 -28
  %24 = load i8, ptr %23, align 4
  %25 = icmp ugt i8 %24, 1
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @dev_set_alias(ptr noundef %5, ptr noundef %2, i32 noundef %17) #17
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @netdev_state_change(ptr noundef %5) #17
  br label %30

30:                                               ; preds = %29, %26, %22
  %31 = phi i32 [ %27, %26 ], [ %3, %29 ], [ 0, %22 ]
  tail call void @rtnl_unlock() #17
  br label %32

32:                                               ; preds = %30, %20, %4
  %33 = phi i32 [ %31, %30 ], [ -513, %20 ], [ -1, %4 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @carrier_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 -652
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load volatile i32, ptr %4, align 4
  %10 = lshr i32 %9, 2
  %11 = and i32 %10, 1
  %12 = xor i32 %11, 1
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %12)
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @carrier_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -568
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.net_device_ops, ptr %7, i32 0, i32 56
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !15
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %14 = tail call zeroext i1 @ns_capable(ptr noundef %13, i32 noundef 12) #17
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = call i32 @rtnl_trylock() #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %22) #17
  br label %40

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %0, i32 -28
  %25 = load i8, ptr %24, align 4
  %26 = icmp ugt i8 %25, 1
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %5, align 4
  %29 = getelementptr i8, ptr %0, i32 -652
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = icmp ne i32 %28, 0
  %35 = call i32 @dev_change_carrier(ptr noundef %12, i1 noundef zeroext %34) #17
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 %3, i32 %35
  br label %38

38:                                               ; preds = %33, %27, %23
  %39 = phi i32 [ 0, %23 ], [ -22, %27 ], [ %37, %33 ]
  call void @rtnl_unlock() #17
  br label %40

40:                                               ; preds = %38, %21, %15, %11
  %41 = phi i32 [ -513, %21 ], [ -1, %11 ], [ %16, %15 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %42

42:                                               ; preds = %40, %4
  %43 = phi i32 [ %41, %40 ], [ -95, %4 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_carrier(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtu_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -556
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %9) #17
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %17

17:                                               ; preds = %16, %11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtu_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #17
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = call i32 @rtnl_trylock() #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %16) #17
  br label %28

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 -28
  %19 = load i8, ptr %18, align 4
  %20 = icmp ugt i8 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4
  %23 = call i32 @dev_set_mtu(ptr noundef %6, i32 noundef %22) #17
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %3, i32 %23
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i32 [ 0, %17 ], [ %25, %21 ]
  call void @rtnl_unlock() #17
  br label %28

28:                                               ; preds = %26, %15, %9, %4
  %29 = phi i32 [ -513, %15 ], [ -1, %4 ], [ %10, %9 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flags_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -584
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_hex, i32 noundef %9) #17
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %17

17:                                               ; preds = %16, %11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flags_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #17
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = call i32 @rtnl_trylock() #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %16) #17
  br label %28

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 -28
  %19 = load i8, ptr %18, align 4
  %20 = icmp ugt i8 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4
  %23 = call i32 @dev_change_flags(ptr noundef %6, i32 noundef %22, ptr noundef null) #17
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %3, i32 %23
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i32 [ 0, %17 ], [ %25, %21 ]
  call void @rtnl_unlock() #17
  br label %28

28:                                               ; preds = %26, %15, %9, %4
  %29 = phi i32 [ -513, %15 ], [ -1, %4 ], [ %10, %9 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_queue_len_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -96
  %9 = load i32, ptr %8, align 16
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %9) #17
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %17

17:                                               ; preds = %16, %11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_queue_len_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = tail call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !15
  %9 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %10 = tail call zeroext i1 @ns_capable(ptr noundef %9, i32 noundef 12) #17
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = call i32 @rtnl_trylock() #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %18) #17
  br label %30

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 -28
  %21 = load i8, ptr %20, align 4
  %22 = icmp ugt i8 %21, 1
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %5, align 4
  %25 = call i32 @dev_change_tx_queue_len(ptr noundef %8, i32 noundef %24) #17
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 %3, i32 %25
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i32 [ 0, %19 ], [ %27, %23 ]
  call void @rtnl_unlock() #17
  br label %30

30:                                               ; preds = %28, %17, %11, %7
  %31 = phi i32 [ -513, %17 ], [ -1, %7 ], [ %12, %11 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %32

32:                                               ; preds = %30, %4
  %33 = phi i32 [ %31, %30 ], [ -1, %4 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_tx_queue_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gro_flush_timeout_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -188
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %9) #17
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %17

17:                                               ; preds = %16, %11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gro_flush_timeout_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = tail call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !15
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %9 = tail call zeroext i1 @ns_capable(ptr noundef %8, i32 noundef 12) #17
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = call i32 @rtnl_trylock() #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %17) #17
  br label %27

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %0, i32 -28
  %20 = load i8, ptr %19, align 4
  %21 = icmp ugt i8 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %5, align 4
  %24 = getelementptr i8, ptr %0, i32 -188
  store volatile i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i32 [ 0, %18 ], [ %3, %22 ]
  call void @rtnl_unlock() #17
  br label %27

27:                                               ; preds = %25, %16, %10, %7
  %28 = phi i32 [ -513, %16 ], [ -1, %7 ], [ %11, %10 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %29

29:                                               ; preds = %27, %4
  %30 = phi i32 [ %28, %27 ], [ -1, %4 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @napi_defer_hard_irqs_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -184
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %9) #17
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %17

17:                                               ; preds = %16, %11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @napi_defer_hard_irqs_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = tail call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !15
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %9 = tail call zeroext i1 @ns_capable(ptr noundef %8, i32 noundef 12) #17
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = call i32 @rtnl_trylock() #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %17) #17
  br label %27

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %0, i32 -28
  %20 = load i8, ptr %19, align 4
  %21 = icmp ugt i8 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %5, align 4
  %24 = getelementptr i8, ptr %0, i32 -184
  store volatile i32 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i32 [ 0, %18 ], [ %3, %22 ]
  call void @rtnl_unlock() #17
  br label %27

27:                                               ; preds = %25, %16, %10, %7
  %28 = phi i32 [ -513, %16 ], [ -1, %7 ], [ %11, %10 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %29

29:                                               ; preds = %27, %4
  %30 = phi i32 [ %28, %27 ], [ -1, %4 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phys_port_id_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.netdev_phys_item_id, align 1
  %5 = getelementptr i8, ptr %0, i32 -688
  %6 = getelementptr i8, ptr %0, i32 -568
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.net_device_ops, ptr %7, i32 0, i32 57
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @rtnl_trylock() #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %15) #17
  br label %32

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %0, i32 -28
  %18 = load i8, ptr %17, align 4
  %19 = icmp ugt i8 %18, 1
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(33) %4, i8 0, i32 33, i1 false), !annotation !15
  %21 = call i32 @dev_get_phys_port_id(ptr noundef %5, ptr noundef nonnull %4) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.netdev_phys_item_id, ptr %4, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.62, i32 noundef %26, ptr noundef nonnull %4)
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i32 [ %21, %20 ], [ %27, %23 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %4) #17
  br label %30

30:                                               ; preds = %28, %16
  %31 = phi i32 [ %29, %28 ], [ -22, %16 ]
  call void @rtnl_unlock() #17
  br label %32

32:                                               ; preds = %30, %14, %3
  %33 = phi i32 [ %31, %30 ], [ -513, %14 ], [ -95, %3 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_phys_port_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phys_port_name_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca [16 x i8], align 1
  %5 = getelementptr i8, ptr %0, i32 -688
  %6 = getelementptr i8, ptr %0, i32 -568
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.net_device_ops, ptr %7, i32 0, i32 59
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.net_device_ops, ptr %7, i32 0, i32 70
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %11, %3
  %16 = tail call i32 @rtnl_trylock() #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %19) #17
  br label %33

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -28
  %22 = load i8, ptr %21, align 4
  %23 = icmp ugt i8 %22, 1
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !15
  %25 = call i32 @dev_get_phys_port_name(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 16) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef nonnull %4)
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32 [ %25, %24 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i32 [ %30, %29 ], [ -22, %20 ]
  call void @rtnl_unlock() #17
  br label %33

33:                                               ; preds = %31, %18, %11
  %34 = phi i32 [ %32, %31 ], [ -513, %18 ], [ -95, %11 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_phys_port_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phys_switch_id_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.netdev_phys_item_id, align 1
  %5 = getelementptr i8, ptr %0, i32 -688
  %6 = getelementptr i8, ptr %0, i32 -568
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.net_device_ops, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.net_device_ops, ptr %7, i32 0, i32 70
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %11, %3
  %16 = tail call i32 @rtnl_trylock() #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %19) #17
  br label %36

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -28
  %22 = load i8, ptr %21, align 4
  %23 = icmp ugt i8 %22, 1
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(33) %4, i8 0, i32 33, i1 false)
  %25 = call i32 @dev_get_port_parent_id(ptr noundef %5, ptr noundef nonnull %4, i1 noundef zeroext false) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.netdev_phys_item_id, ptr %4, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.62, i32 noundef %30, ptr noundef nonnull %4)
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i32 [ %25, %24 ], [ %31, %27 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %4) #17
  br label %34

34:                                               ; preds = %32, %20
  %35 = phi i32 [ %33, %32 ], [ -22, %20 ]
  call void @rtnl_unlock() #17
  br label %36

36:                                               ; preds = %34, %18, %11
  %37 = phi i32 [ %35, %34 ], [ -513, %18 ], [ -95, %11 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_port_parent_id(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proto_down_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 596
  %9 = load i8, ptr %8, align 4, !range !17
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %10) #17
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %14 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %18

18:                                               ; preds = %17, %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proto_down_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #17
  br i1 %8, label %9, label %29

9:                                                ; preds = %4
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = call i32 @rtnl_trylock() #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %16) #17
  br label %29

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 -28
  %19 = load i8, ptr %18, align 4
  %20 = icmp ugt i8 %19, 1
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = call i32 @dev_change_proto_down(ptr noundef %6, i1 noundef zeroext %23) #17
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 %3, i32 %24
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i32 [ 0, %17 ], [ %26, %21 ]
  call void @rtnl_unlock() #17
  br label %29

29:                                               ; preds = %27, %15, %9, %4
  %30 = phi i32 [ -513, %15 ], [ -1, %4 ], [ %10, %9 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_proto_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @carrier_up_count_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 -368
  %5 = load volatile i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @carrier_down_count_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 -364
  %5 = load volatile i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @threaded_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call i32 @rtnl_trylock() #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %7) #17
  br label %21

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -28
  %10 = load i8, ptr %9, align 4
  %11 = icmp ugt i8 %10, 1
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 597
  %14 = load i8, ptr %13, align 1
  %15 = lshr i8 %14, 1
  %16 = and i8 %15, 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %17)
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %18, %12 ], [ -22, %8 ]
  tail call void @rtnl_unlock() #17
  br label %21

21:                                               ; preds = %19, %6
  %22 = phi i32 [ %20, %19 ], [ -513, %6 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @threaded_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #17
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = call i32 @rtnl_trylock() #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #17
  call void @_set_bit(i32 noundef 0, ptr noundef %16) #17
  br label %35

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 -28
  %19 = load i8, ptr %18, align 4
  %20 = icmp ugt i8 %19, 1
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4
  %23 = getelementptr i8, ptr %0, i32 -640
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  %26 = icmp ugt i32 %22, 1
  %27 = or i1 %26, %25
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = icmp ne i32 %22, 0
  %30 = call i32 @dev_set_threaded(ptr noundef %6, i1 noundef zeroext %29) #17
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %3, i32 %30
  br label %33

33:                                               ; preds = %28, %21, %17
  %34 = phi i32 [ 0, %17 ], [ -95, %21 ], [ %32, %28 ]
  call void @rtnl_unlock() #17
  br label %35

35:                                               ; preds = %33, %15, %9, %4
  %36 = phi i32 [ -513, %15 ], [ -1, %4 ], [ %10, %9 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_threaded(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_freemem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_packets_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = load i64, ptr %10, align 8
  %12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %11) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %15 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %19

19:                                               ; preds = %18, %13
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_packets_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_bytes_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_bytes_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 24
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 32
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 40
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_dropped_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 48
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_dropped_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 56
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @multicast_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 64
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @collisions_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 72
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_length_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 80
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_over_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 88
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_crc_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 96
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_frame_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 104
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_fifo_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 112
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_missed_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 120
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_aborted_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 128
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_carrier_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 136
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_fifo_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 144
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_heartbeat_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 152
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_window_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 160
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_compressed_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 168
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_compressed_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 176
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_nohandler_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #17
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -688
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false) #17, !annotation !15
  %10 = call ptr @dev_get_stats(ptr noundef %9, ptr noundef nonnull %4) #17
  %11 = getelementptr i8, ptr %10, i32 184
  %12 = load i64, ptr %11, align 8
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @fmt_u64, i64 noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_base_lock) #17, !srcloc !18
  %16 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @dev_base_lock) #17, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  br label %20

20:                                               ; preds = %19, %14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }

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
!9 = !{i64 392810, i64 392871}
!10 = !{i64 411510}
!11 = !{i64 395827}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2149361348}
!14 = !{i64 2149361565}
!15 = !{!"auto-init"}
!16 = !{i64 2156150351}
!17 = !{i8 0, i8 2}
!18 = !{i64 497571, i64 2147987542, i64 2147987568, i64 2147987615, i64 2147987637, i64 2147987665, i64 2147987685}
!19 = !{i64 2147999754, i64 2147999780, i64 2147999809, i64 2147999843, i64 2147999874, i64 2147999897}
!20 = !{i64 2148002111, i64 2148002137, i64 2148002166, i64 2148002200, i64 2148002231, i64 2148002254}
!21 = !{i64 2156167190}
!22 = !{i64 2149156234}
!23 = !{i64 2149152058}
!24 = !{i64 2149152133, i64 2149152160, i64 2149152207, i64 2149152229, i64 2149152257, i64 2149152277}
!25 = !{i64 2149179237}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2156193425, i64 2156193911, i64 2156193462, i64 2156193518, i64 2156193552, i64 2156193576, i64 2156193617, i64 2156193638, i64 2156193666, i64 2156193700}
!28 = !{i64 2156224533, i64 2156225019, i64 2156224570, i64 2156224626, i64 2156224660, i64 2156224684, i64 2156224725, i64 2156224746, i64 2156224774, i64 2156224808}
!29 = !{i64 2149164116}
!30 = !{i64 1667540, i64 1667563, i64 1667583, i64 1667607, i64 1667623}
!31 = !{i64 2149201719}
