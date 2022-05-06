; ModuleID = '/llk/IR/net/ipv4/devinet.c_pt.bc'
source_filename = "../net/ipv4/devinet.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_dev_find:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_dev_find\22\09\09\09\09\09"
module asm "__kstrtabns___ip_dev_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_in_dev_finish_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22in_dev_finish_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_in_dev_finish_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inetdev_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22inetdev_by_index\22\09\09\09\09\09"
module asm "__kstrtabns_inetdev_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_select_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_select_addr\22\09\09\09\09\09"
module asm "__kstrtabns_inet_select_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_confirm_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_confirm_addr\22\09\09\09\09\09"
module asm "__kstrtabns_inet_confirm_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_inetaddr_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_inetaddr_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_inetaddr_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_inetaddr_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_inetaddr_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_inetaddr_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_inetaddr_validator_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_inetaddr_validator_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_inetaddr_validator_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_inetaddr_validator_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_inetaddr_validator_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_inetaddr_validator_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rtnl_af_ops = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
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
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.58 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.devinet_sysctl_table = type { ptr, [34 x %struct.ctl_table] }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type {}
%struct.netdevice_tracker = type {}
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.132, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.132 = type { ptr }
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
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ifreq = type { %union.anon.118, %union.anon.119 }
%union.anon.118 = type { [16 x i8] }
%union.anon.119 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.inet_fill_args = type { i32, i32, i32, i32, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.121 }
%union.anon.121 = type { [6 x i32], [24 x i8] }
%struct.ifa_cacheinfo = type { i32, i32, i32, i32 }
%struct.in_validator_info = type { i32, ptr, ptr }
%struct.nlattr = type { i16, i16 }

@__kstrtab___ip_dev_find = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_dev_find = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_dev_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_dev_find to i32), ptr @__kstrtab___ip_dev_find, ptr @__kstrtabns___ip_dev_find }, section "___ksymtab+__ip_dev_find", align 4
@inet_addr_lst = internal global [256 x %struct.hlist_head] zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"net/ipv4/devinet.c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013Freeing alive in_device %p\0A\00", align 1
@__kstrtab_in_dev_finish_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_in_dev_finish_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_in_dev_finish_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @in_dev_finish_destroy to i32), ptr @__kstrtab_in_dev_finish_destroy, ptr @__kstrtabns_in_dev_finish_destroy }, section "___ksymtab+in_dev_finish_destroy", align 4
@__kstrtab_inetdev_by_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_inetdev_by_index = external dso_local constant [0 x i8], align 1
@__ksymtab_inetdev_by_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inetdev_by_index to i32), ptr @__kstrtab_inetdev_by_index, ptr @__kstrtabns_inetdev_by_index }, section "___ksymtab+inetdev_by_index", align 4
@inet_ifa_byprefix.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@__kstrtab_inet_select_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_select_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_select_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_select_addr to i32), ptr @__kstrtab_inet_select_addr, ptr @__kstrtabns_inet_select_addr }, section "___ksymtab+inet_select_addr", align 4
@__kstrtab_inet_confirm_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_confirm_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_confirm_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_confirm_addr to i32), ptr @__kstrtab_inet_confirm_addr, ptr @__kstrtabns_inet_confirm_addr }, section "___ksymtab+inet_confirm_addr", align 4
@inetaddr_chain = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @inetaddr_chain, i64 16), ptr getelementptr (i8, ptr @inetaddr_chain, i64 16) } }, ptr null }, align 4
@__kstrtab_register_inetaddr_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_inetaddr_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_inetaddr_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_inetaddr_notifier to i32), ptr @__kstrtab_register_inetaddr_notifier, ptr @__kstrtabns_register_inetaddr_notifier }, section "___ksymtab+register_inetaddr_notifier", align 4
@__kstrtab_unregister_inetaddr_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_inetaddr_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_inetaddr_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_inetaddr_notifier to i32), ptr @__kstrtab_unregister_inetaddr_notifier, ptr @__kstrtabns_unregister_inetaddr_notifier }, section "___ksymtab+unregister_inetaddr_notifier", align 4
@inetaddr_validator_chain = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @inetaddr_validator_chain, i64 16), ptr getelementptr (i8, ptr @inetaddr_validator_chain, i64 16) } }, ptr null }, align 4
@__kstrtab_register_inetaddr_validator_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_inetaddr_validator_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_inetaddr_validator_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_inetaddr_validator_notifier to i32), ptr @__kstrtab_register_inetaddr_validator_notifier, ptr @__kstrtabns_register_inetaddr_validator_notifier }, section "___ksymtab+register_inetaddr_validator_notifier", align 4
@__kstrtab_unregister_inetaddr_validator_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_inetaddr_validator_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_inetaddr_validator_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_inetaddr_validator_notifier to i32), ptr @__kstrtab_unregister_inetaddr_validator_notifier, ptr @__kstrtabns_unregister_inetaddr_validator_notifier }, section "___ksymtab+unregister_inetaddr_validator_notifier", align 4
@devinet_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @devinet_init_net, ptr null, ptr @devinet_exit_net, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@ip_netdev_notifier = internal global %struct.notifier_block { ptr @inetdev_event, ptr null, i32 0 }, align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@check_lifetime_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @check_lifetime_work, i64 4), ptr getelementptr (i8, ptr @check_lifetime_work, i64 4) }, ptr @check_lifetime }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@inet_af_ops = internal global %struct.rtnl_af_ops { %struct.list_head zeroinitializer, i32 2, ptr @inet_fill_link_af, ptr @inet_get_link_af_size, ptr @inet_validate_link_af, ptr @inet_set_link_af, ptr null, ptr null }, section ".data..read_mostly", align 4
@init_net = external dso_local global %struct.net, align 64
@__inet_del_ifa.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inet_hash_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@inet_set_ifa.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__inet_insert_ifa.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inet_hash_insert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipv4_devconf = internal global %struct.ipv4_devconf { ptr null, [33 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10000, i32 1000, i32 0, i32 0, i32 0, i32 0, i32 1], [2 x i32] zeroinitializer }, align 4
@ipv4_devconf_dflt = internal global %struct.ipv4_devconf { ptr null, [33 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10000, i32 1000, i32 0, i32 0, i32 0, i32 0, i32 1], [2 x i32] zeroinitializer }, align 4
@ctl_forward_entry = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.9, ptr getelementptr (i8, ptr @ipv4_devconf, i64 4), i32 4, i16 420, ptr null, ptr @devinet_sysctl_forward, ptr null, ptr @ipv4_devconf, ptr @init_net }, %struct.ctl_table zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"net/ipv4\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ip_forward\00", align 1
@devinet_sysctl = internal global %struct.devinet_sysctl_table { ptr null, [34 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.11, ptr getelementptr (i8, ptr @ipv4_devconf, i64 4), i32 4, i16 420, ptr null, ptr @devinet_sysctl_forward, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.12, ptr getelementptr (i8, ptr @ipv4_devconf, i64 8), i32 4, i16 292, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.13, ptr getelementptr (i8, ptr @ipv4_devconf, i64 128), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.14, ptr getelementptr (i8, ptr @ipv4_devconf, i64 16), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.15, ptr getelementptr (i8, ptr @ipv4_devconf, i64 20), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.16, ptr getelementptr (i8, ptr @ipv4_devconf, i64 28), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.17, ptr getelementptr (i8, ptr @ipv4_devconf, i64 32), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.18, ptr getelementptr (i8, ptr @ipv4_devconf, i64 24), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.19, ptr getelementptr (i8, ptr @ipv4_devconf, i64 36), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.20, ptr getelementptr (i8, ptr @ipv4_devconf, i64 92), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.21, ptr getelementptr (i8, ptr @ipv4_devconf, i64 96), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.22, ptr getelementptr (i8, ptr @ipv4_devconf, i64 12), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.23, ptr getelementptr (i8, ptr @ipv4_devconf, i64 56), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.24, ptr getelementptr (i8, ptr @ipv4_devconf, i64 40), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.25, ptr getelementptr (i8, ptr @ipv4_devconf, i64 44), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.26, ptr getelementptr (i8, ptr @ipv4_devconf, i64 48), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.27, ptr getelementptr (i8, ptr @ipv4_devconf, i64 52), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.28, ptr getelementptr (i8, ptr @ipv4_devconf, i64 72), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.29, ptr getelementptr (i8, ptr @ipv4_devconf, i64 76), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.30, ptr getelementptr (i8, ptr @ipv4_devconf, i64 84), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.31, ptr getelementptr (i8, ptr @ipv4_devconf, i64 88), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.32, ptr getelementptr (i8, ptr @ipv4_devconf, i64 132), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.33, ptr getelementptr (i8, ptr @ipv4_devconf, i64 100), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.34, ptr getelementptr (i8, ptr @ipv4_devconf, i64 68), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.35, ptr getelementptr (i8, ptr @ipv4_devconf, i64 108), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.36, ptr getelementptr (i8, ptr @ipv4_devconf, i64 112), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.37, ptr getelementptr (i8, ptr @ipv4_devconf, i64 116), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.38, ptr getelementptr (i8, ptr @ipv4_devconf, i64 124), i32 4, i16 420, ptr null, ptr @devinet_conf_proc, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.39, ptr getelementptr (i8, ptr @ipv4_devconf, i64 60), i32 4, i16 420, ptr null, ptr @ipv4_doint_and_flush, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.40, ptr getelementptr (i8, ptr @ipv4_devconf, i64 64), i32 4, i16 420, ptr null, ptr @ipv4_doint_and_flush, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.41, ptr getelementptr (i8, ptr @ipv4_devconf, i64 80), i32 4, i16 420, ptr null, ptr @ipv4_doint_and_flush, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.42, ptr getelementptr (i8, ptr @ipv4_devconf, i64 104), i32 4, i16 420, ptr null, ptr @ipv4_doint_and_flush, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table { ptr @.str.43, ptr getelementptr (i8, ptr @ipv4_devconf, i64 120), i32 4, i16 420, ptr null, ptr @ipv4_doint_and_flush, ptr null, ptr @ipv4_devconf, ptr null }, %struct.ctl_table zeroinitializer] }, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"net/ipv4/conf/%s\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"forwarding\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"mc_forwarding\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"bc_forwarding\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"accept_redirects\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"secure_redirects\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"shared_media\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"rp_filter\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"send_redirects\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"accept_source_route\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"accept_local\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"src_valid_mark\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"proxy_arp\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"medium_id\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"bootp_relay\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"log_martians\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"arp_filter\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"arp_announce\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"arp_ignore\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"arp_accept\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"arp_notify\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"arp_evict_nocarrier\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"proxy_arp_pvlan\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"force_igmp_version\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"igmpv2_unsolicited_report_interval\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"igmpv3_unsolicited_report_interval\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"ignore_routes_with_linkdown\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"drop_gratuitous_arp\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"disable_xfrm\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"disable_policy\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"promote_secondaries\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"route_localnet\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"drop_unicast_in_l2_multicast\00", align 1
@inetdev_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inetdev_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@inetdev_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@inet_af_policy = internal constant [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.49 zeroinitializer }], align 4
@inet_rtm_newaddr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ifa_ipv4_policy = internal constant [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 15, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.49 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.49 zeroinitializer }], align 4
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@inet_rtm_deladdr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inet_valid_dump_ifaddr_req.__msg = internal constant [46 x i8] c"ipv4: Invalid header for address dump request\00", align 1
@inet_valid_dump_ifaddr_req.__msg.45 = internal constant [56 x i8] c"ipv4: Invalid values in header for address dump request\00", align 1
@inet_valid_dump_ifaddr_req.__msg.46 = internal constant [42 x i8] c"ipv4: Invalid target network namespace id\00", align 1
@inet_valid_dump_ifaddr_req.__msg.47 = internal constant [44 x i8] c"ipv4: Unsupported attribute in dump request\00", align 1
@inet_netconf_valid_get_req.__msg = internal constant [45 x i8] c"ipv4: Invalid header for netconf get request\00", align 1
@devconf_ipv4_policy = internal constant [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.49 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.49 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], align 4
@inet_netconf_valid_get_req.__msg.48 = internal constant [51 x i8] c"ipv4: Unsupported attribute in netconf get request\00", align 1
@inet_netconf_dump_devconf.__msg = internal constant [46 x i8] c"ipv4: Invalid header for netconf dump request\00", align 1
@inet_netconf_dump_devconf.__msg.49 = internal constant [56 x i8] c"ipv4: Invalid data after header in netconf dump request\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___ip_dev_find, ptr @__ksymtab_in_dev_finish_destroy, ptr @__ksymtab_inet_confirm_addr, ptr @__ksymtab_inet_select_addr, ptr @__ksymtab_inetdev_by_index, ptr @__ksymtab_register_inetaddr_notifier, ptr @__ksymtab_register_inetaddr_validator_notifier, ptr @__ksymtab_unregister_inetaddr_notifier, ptr @__ksymtab_unregister_inetaddr_validator_notifier], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__ip_dev_find(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.flowi4, align 8
  %5 = alloca %struct.fib_result, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %7, %1
  %9 = mul i32 %8, 1640531527
  %10 = lshr i32 %9, 24
  %11 = getelementptr [256 x %struct.hlist_head], ptr @inet_addr_lst, i32 0, i32 %10
  br label %12

12:                                               ; preds = %16, %3
  %13 = phi ptr [ %11, %3 ], [ %14, %16 ]
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.in_ifaddr, ptr %14, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %40, label %12

20:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #20
  %21 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i32 %1, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false)
  %22 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %23 = load ptr, ptr %22, align 64
  %24 = getelementptr %struct.hlist_head, ptr %23, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %20
  %28 = call i32 @fib_table_lookup(ptr noundef nonnull %25, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 1) #20
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 3
  %31 = load i8, ptr %30, align 2
  %32 = icmp eq i8 %31, 2
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %34, %27, %20
  %39 = phi ptr [ %37, %34 ], [ null, %27 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #20
  br label %44

40:                                               ; preds = %16
  %41 = getelementptr inbounds %struct.in_ifaddr, ptr %14, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi ptr [ %43, %40 ], [ %39, %38 ]
  %46 = icmp ne ptr %45, null
  %47 = and i1 %46, %2
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !10
  %50 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 99
  %51 = load ptr, ptr %50, align 8
  %52 = ptrtoint ptr %51 to i32
  %53 = call i32 @llvm.read_register.i32(metadata !0) #20
  %54 = inttoptr i32 %53 to ptr
  %55 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %54) #12, !srcloc !11
  %56 = add i32 %55, %52
  %57 = inttoptr i32 %56 to ptr
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #20, !srcloc !12
  br label %60

60:                                               ; preds = %48, %44
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  ret ptr %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_lookup_ifaddr_rcu(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %4 = load i32, ptr %3, align 4
  %5 = xor i32 %4, %1
  %6 = mul i32 %5, 1640531527
  %7 = lshr i32 %6, 24
  %8 = getelementptr [256 x %struct.hlist_head], ptr @inet_addr_lst, i32 0, i32 %7
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %8, %2 ], [ %11, %13 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.in_ifaddr, ptr %11, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %13, %9
  ret ptr %11
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @in_dev_finish_destroy(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !14

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 9, ptr noundef null) #20
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !14

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef null) #20
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #20
  %15 = icmp eq ptr %2, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !10
  %18 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 99
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #12, !srcloc !11
  %24 = add i32 %23, %20
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #20, !srcloc !12
  br label %28

28:                                               ; preds = %16, %12
  %29 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #21
  br label %35

34:                                               ; preds = %28
  tail call void @kfree(ptr noundef %0) #20
  br label %35

35:                                               ; preds = %34, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_addr_onlink(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  %4 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 4
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br label %9

9:                                                ; preds = %24, %7
  %10 = phi ptr [ %5, %7 ], [ %26, %24 ]
  %11 = getelementptr inbounds %struct.in_ifaddr, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, %1
  %14 = getelementptr inbounds %struct.in_ifaddr, ptr %10, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  br i1 %8, label %23, label %19

19:                                               ; preds = %18
  %20 = xor i32 %12, %2
  %21 = and i32 %20, %15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %18
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  br label %29

24:                                               ; preds = %19, %9
  %25 = getelementptr inbounds %struct.in_ifaddr, ptr %10, i32 0, i32 1
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9

28:                                               ; preds = %24, %3
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i32 [ 1, %23 ], [ 0, %28 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inetdev_by_index(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  %3 = tail call ptr @dev_get_by_index_rcu(ptr noundef %0, i32 noundef %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 68
  %7 = load volatile ptr, ptr %6, align 16
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_ifa_byprefix(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @rtnl_is_locked() #20
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @inet_ifa_byprefix.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !15

9:                                                ; preds = %3
  store i1 true, ptr @inet_ifa_byprefix.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 611, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 611) #20
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %25, %10
  %15 = phi ptr [ %27, %25 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.in_ifaddr, ptr %15, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.in_ifaddr, ptr %15, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %21, %1
  %23 = and i32 %22, %2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19, %14
  %26 = getelementptr inbounds %struct.in_ifaddr, ptr %15, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %14

29:                                               ; preds = %25, %19, %10
  %30 = phi ptr [ null, %10 ], [ null, %25 ], [ %15, %19 ]
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devinet_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1
  %5 = getelementptr [16 x i8], ptr %2, i32 0, i32 15
  store i8 0, ptr %5, align 1
  %6 = load i16, ptr %4, align 4
  %7 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @strchr(ptr noundef %2, i32 noundef 58)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i8 0, ptr %9, align 1
  br label %12

12:                                               ; preds = %11, %3
  tail call void @dev_load(ptr noundef %0, ptr noundef %2) #20
  switch i32 %1, label %237 [
    i32 35093, label %13
    i32 35097, label %13
    i32 35095, label %13
    i32 35099, label %13
    i32 35092, label %16
    i32 35094, label %20
    i32 35098, label %20
    i32 35096, label %20
    i32 35100, label %20
  ]

13:                                               ; preds = %12, %12, %12, %12
  %14 = icmp eq i16 %6, 2
  %15 = zext i1 %14 to i32
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  store i16 2, ptr %4, align 4
  br label %27

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 @ns_capable(ptr noundef %18, i32 noundef 12) #20
  br i1 %19, label %27, label %237

20:                                               ; preds = %12, %12, %12, %12
  %21 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i1 @ns_capable(ptr noundef %22, i32 noundef 12) #20
  br i1 %23, label %24, label %237

24:                                               ; preds = %20
  %25 = load i16, ptr %4, align 4
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %27, label %237

27:                                               ; preds = %24, %16, %13
  %28 = phi i32 [ 0, %24 ], [ 0, %16 ], [ %15, %13 ]
  tail call void @rtnl_lock() #20
  %29 = tail call ptr @__dev_get_by_name(ptr noundef %0, ptr noundef %2) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %235, label %31

31:                                               ; preds = %27
  br i1 %10, label %33, label %32

32:                                               ; preds = %31
  store i8 58, ptr %9, align 1
  br label %33

33:                                               ; preds = %32, %31
  %34 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 68
  %35 = load ptr, ptr %34, align 16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %77, label %37

37:                                               ; preds = %33
  %38 = icmp eq i32 %28, 0
  %39 = getelementptr inbounds %struct.in_device, ptr %35, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  br i1 %38, label %59, label %41

41:                                               ; preds = %37
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.in_device, ptr %35, i32 0, i32 4
  br label %77

45:                                               ; preds = %55, %41
  %46 = phi ptr [ %57, %55 ], [ %40, %41 ]
  %47 = phi ptr [ %56, %55 ], [ %39, %41 ]
  %48 = getelementptr inbounds %struct.in_ifaddr, ptr %46, i32 0, i32 12
  %49 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.in_ifaddr, ptr %46, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %8, %53
  br i1 %54, label %83, label %55

55:                                               ; preds = %51, %45
  %56 = getelementptr inbounds %struct.in_ifaddr, ptr %46, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %45

59:                                               ; preds = %55, %37
  %60 = getelementptr inbounds %struct.in_device, ptr %35, i32 0, i32 4
  %61 = icmp eq ptr %40, null
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.in_ifaddr, ptr %40, i32 0, i32 12
  %64 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %83, label %70

66:                                               ; preds = %70
  %67 = getelementptr inbounds %struct.in_ifaddr, ptr %73, i32 0, i32 12
  %68 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %66, %62
  %71 = phi ptr [ %73, %66 ], [ %40, %62 ]
  %72 = getelementptr inbounds %struct.in_ifaddr, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %66

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.in_ifaddr, ptr %71, i32 0, i32 1
  br label %77

77:                                               ; preds = %75, %59, %43, %33
  %78 = phi ptr [ null, %33 ], [ %60, %59 ], [ %44, %43 ], [ %76, %75 ]
  %79 = and i32 %1, -3
  %80 = icmp eq i32 %79, 35092
  br i1 %80, label %83, label %235

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.in_ifaddr, ptr %71, i32 0, i32 1
  br label %83

83:                                               ; preds = %81, %77, %62, %51
  %84 = phi i1 [ true, %77 ], [ false, %62 ], [ false, %81 ], [ false, %51 ]
  %85 = phi ptr [ null, %77 ], [ %40, %62 ], [ %73, %81 ], [ %46, %51 ]
  %86 = phi ptr [ %78, %77 ], [ %60, %62 ], [ %82, %81 ], [ %47, %51 ]
  switch i32 %1, label %235 [
    i32 35093, label %87
    i32 35097, label %90
    i32 35095, label %93
    i32 35099, label %96
    i32 35092, label %99
    i32 35094, label %110
    i32 35098, label %176
    i32 35096, label %184
    i32 35100, label %195
  ]

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %7, align 4
  br label %235

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 8
  %92 = load i32, ptr %91, align 4
  store i32 %92, ptr %7, align 4
  br label %235

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  store i32 %95, ptr %7, align 4
  br label %235

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 6
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %7, align 4
  br label %235

99:                                               ; preds = %83
  br i1 %10, label %106, label %100

100:                                              ; preds = %99
  br i1 %84, label %235, label %101

101:                                              ; preds = %100
  %102 = load i16, ptr %4, align 4
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %235

105:                                              ; preds = %101
  tail call fastcc void @__inet_del_ifa(ptr noundef %35, ptr noundef %86, i32 noundef 1, ptr noundef null, i32 noundef 0) #20
  br label %235

106:                                              ; preds = %99
  %107 = load i16, ptr %4, align 4
  %108 = sext i16 %107 to i32
  %109 = tail call i32 @dev_change_flags(ptr noundef nonnull %29, i32 noundef %108, ptr noundef null) #20
  br label %235

110:                                              ; preds = %83
  %111 = load i32, ptr %7, align 4
  %112 = tail call fastcc i32 @inet_abc_len(i32 noundef %111)
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %235, label %114

114:                                              ; preds = %110
  br i1 %84, label %115, label %124

115:                                              ; preds = %114
  %116 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %117 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %116, i32 noundef 4197824, i32 noundef 84) #22
  %118 = icmp eq ptr %117, null
  br i1 %118, label %235, label %119

119:                                              ; preds = %115
  store ptr null, ptr %117, align 8
  %120 = getelementptr inbounds %struct.hlist_node, ptr %117, i32 0, i32 1
  store ptr null, ptr %120, align 4
  %121 = getelementptr inbounds %struct.in_ifaddr, ptr %117, i32 0, i32 12
  br i1 %10, label %123, label %122

122:                                              ; preds = %119
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %121, ptr noundef align 4 dereferenceable(16) %2, i32 16, i1 false)
  br label %131

123:                                              ; preds = %119
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %121, ptr noundef nonnull align 64 dereferenceable(16) %29, i32 16, i1 false)
  br label %131

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 4
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, %111
  br i1 %127, label %235, label %128

128:                                              ; preds = %124
  tail call fastcc void @__inet_del_ifa(ptr noundef %35, ptr noundef %86, i32 noundef 0, ptr noundef null, i32 noundef 0) #20
  %129 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 8
  store i32 0, ptr %129, align 4
  %130 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 9
  store i8 0, ptr %130, align 4
  br label %131

131:                                              ; preds = %128, %123, %122
  %132 = phi ptr [ %85, %128 ], [ %117, %122 ], [ %117, %123 ]
  %133 = load i32, ptr %7, align 4
  %134 = getelementptr inbounds %struct.in_ifaddr, ptr %132, i32 0, i32 4
  store i32 %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.in_ifaddr, ptr %132, i32 0, i32 5
  store i32 %133, ptr %135, align 4
  %136 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 14
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %131
  %141 = tail call fastcc i32 @inet_abc_len(i32 noundef %133)
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds %struct.in_ifaddr, ptr %132, i32 0, i32 10
  store i8 %142, ptr %143, align 1
  %144 = and i32 %141, 255
  %145 = icmp eq i32 %144, 0
  %146 = sub nsw i32 32, %144
  %147 = shl nsw i32 -1, %146
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #20
  %149 = select i1 %145, i32 0, i32 %148
  %150 = getelementptr inbounds %struct.in_ifaddr, ptr %132, i32 0, i32 6
  store i32 %149, ptr %150, align 4
  %151 = load i32, ptr %136, align 8
  %152 = and i32 %151, 2
  %153 = icmp ne i32 %152, 0
  %154 = icmp ult i8 %142, 31
  %155 = select i1 %153, i1 %154, i1 false
  br i1 %155, label %156, label %163

156:                                              ; preds = %140
  %157 = xor i32 %149, -1
  %158 = or i32 %133, %157
  %159 = getelementptr inbounds %struct.in_ifaddr, ptr %132, i32 0, i32 8
  store i32 %158, ptr %159, align 4
  br label %163

160:                                              ; preds = %131
  %161 = getelementptr inbounds %struct.in_ifaddr, ptr %132, i32 0, i32 10
  store i8 32, ptr %161, align 1
  %162 = getelementptr inbounds %struct.in_ifaddr, ptr %132, i32 0, i32 6
  store i32 -1, ptr %162, align 4
  br label %163

163:                                              ; preds = %160, %156, %140
  %164 = getelementptr inbounds %struct.in_ifaddr, ptr %132, i32 0, i32 11
  %165 = load i32, ptr %164, align 4
  %166 = and i32 %165, -161
  %167 = or i32 %166, 128
  store i32 %167, ptr %164, align 4
  %168 = load volatile i32, ptr @jiffies, align 64
  %169 = getelementptr inbounds %struct.in_ifaddr, ptr %132, i32 0, i32 16
  store i32 %168, ptr %169, align 4
  %170 = getelementptr inbounds %struct.in_ifaddr, ptr %132, i32 0, i32 15
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  store i32 %168, ptr %170, align 4
  br label %174

174:                                              ; preds = %173, %163
  %175 = tail call fastcc i32 @inet_set_ifa(ptr noundef nonnull %29, ptr noundef nonnull %132)
  br label %235

176:                                              ; preds = %83
  %177 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 8
  %178 = load i32, ptr %177, align 4
  %179 = load i32, ptr %7, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %235, label %181

181:                                              ; preds = %176
  tail call fastcc void @__inet_del_ifa(ptr noundef %35, ptr noundef %86, i32 noundef 0, ptr noundef null, i32 noundef 0) #20
  %182 = load i32, ptr %7, align 4
  store i32 %182, ptr %177, align 4
  %183 = tail call fastcc i32 @__inet_insert_ifa(ptr noundef %85, ptr noundef null, i32 noundef 0, ptr noundef null) #20
  br label %235

184:                                              ; preds = %83
  %185 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = load i32, ptr %7, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %235, label %189

189:                                              ; preds = %184
  %190 = tail call fastcc i32 @inet_abc_len(i32 noundef %187)
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %235, label %192

192:                                              ; preds = %189
  tail call fastcc void @__inet_del_ifa(ptr noundef %35, ptr noundef %86, i32 noundef 0, ptr noundef null, i32 noundef 0) #20
  %193 = load i32, ptr %7, align 4
  store i32 %193, ptr %185, align 4
  %194 = tail call fastcc i32 @__inet_insert_ifa(ptr noundef %85, ptr noundef null, i32 noundef 0, ptr noundef null) #20
  br label %235

195:                                              ; preds = %83
  %196 = load i32, ptr %7, align 4
  %197 = xor i32 %196, -1
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #20
  %199 = add i32 %198, 1
  %200 = and i32 %199, %198
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %235

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, %196
  br i1 %205, label %235, label %206

206:                                              ; preds = %202
  tail call fastcc void @__inet_del_ifa(ptr noundef %35, ptr noundef %86, i32 noundef 0, ptr noundef null, i32 noundef 0) #20
  %207 = load i32, ptr %7, align 4
  store i32 %207, ptr %203, align 4
  %208 = icmp eq i32 %207, 0
  %209 = tail call i32 @llvm.bswap.i32(i32 %207) #20
  %210 = tail call i32 @llvm.cttz.i32(i32 %209, i1 false) #20, !range !16
  %211 = sub nuw nsw i32 32, %210
  %212 = select i1 %208, i32 0, i32 %211
  %213 = trunc i32 %212 to i8
  %214 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 10
  store i8 %213, ptr %214, align 1
  %215 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 14
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 2
  %218 = icmp ne i32 %217, 0
  %219 = icmp ult i32 %212, 31
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %221, label %233

221:                                              ; preds = %206
  %222 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 8
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.in_ifaddr, ptr %85, i32 0, i32 4
  %225 = load i32, ptr %224, align 4
  %226 = xor i32 %204, -1
  %227 = or i32 %225, %226
  %228 = icmp eq i32 %223, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %221
  %230 = load i32, ptr %7, align 4
  %231 = xor i32 %230, -1
  %232 = or i32 %225, %231
  store i32 %232, ptr %222, align 4
  br label %233

233:                                              ; preds = %229, %221, %206
  %234 = tail call fastcc i32 @__inet_insert_ifa(ptr noundef %85, ptr noundef null, i32 noundef 0, ptr noundef null) #20
  br label %235

235:                                              ; preds = %233, %202, %195, %192, %189, %184, %181, %176, %174, %124, %115, %110, %106, %105, %101, %100, %96, %93, %90, %87, %83, %77, %27
  %236 = phi i32 [ -99, %77 ], [ -99, %83 ], [ -22, %195 ], [ 0, %233 ], [ 0, %202 ], [ 0, %184 ], [ -22, %189 ], [ 0, %192 ], [ 0, %181 ], [ 0, %176 ], [ -22, %110 ], [ 0, %124 ], [ %175, %174 ], [ -105, %115 ], [ 0, %101 ], [ 0, %105 ], [ -99, %100 ], [ %109, %106 ], [ 0, %96 ], [ 0, %93 ], [ 0, %90 ], [ 0, %87 ], [ -19, %27 ]
  tail call void @rtnl_unlock() #20
  br label %237

237:                                              ; preds = %235, %24, %20, %16, %12
  %238 = phi i32 [ -22, %24 ], [ %236, %235 ], [ -1, %20 ], [ -1, %16 ], [ -22, %12 ]
  ret i32 %238
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_load(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc i32 @inet_abc_len(i32 noundef %0) unnamed_addr #8 {
  switch i32 %0, label %2 [
    i32 0, label %14
    i32 -1, label %14
  ]

2:                                                ; preds = %1
  %3 = tail call i32 @llvm.bswap.i32(i32 %0)
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = and i32 %3, -1073741824
  %7 = icmp eq i32 %6, -2147483648
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = and i32 %3, -536870912
  %10 = icmp eq i32 %9, -1073741824
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = icmp ugt i32 %3, -268435457
  %13 = select i1 %12, i32 32, i32 -1
  br label %14

14:                                               ; preds = %11, %8, %5, %2, %1, %1
  %15 = phi i32 [ 0, %1 ], [ 8, %2 ], [ 16, %5 ], [ 24, %8 ], [ %13, %11 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet_set_ifa(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 68
  %4 = load ptr, ptr %3, align 16
  %5 = tail call i32 @rtnl_is_locked() #20
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @inet_set_ifa.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !15

10:                                               ; preds = %2
  store i1 true, ptr @inet_set_ifa.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 569, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 569) #20
  br label %11

11:                                               ; preds = %10, %2
  %12 = icmp eq ptr %4, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %14, ptr noundef nonnull @inet_rcu_free_ifa) #20
  br label %47

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.in_device, ptr %4, i32 0, i32 21, i32 2
  store i64 -1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.in_device, ptr %4, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.neigh_parms, ptr %18, i32 0, i32 12
  store i32 -1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %4
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = icmp eq ptr %21, null
  br i1 %24, label %26, label %25, !prof !14

25:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 578, i32 noundef 9, ptr noundef null) #20
  br label %26

26:                                               ; preds = %25, %23
  %27 = getelementptr inbounds %struct.in_device, ptr %4, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #20, !srcloc !17
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #20, !srcloc !18
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !15

31:                                               ; preds = %26
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !14

35:                                               ; preds = %31, %26
  %36 = phi i32 [ 2, %26 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #20
  br label %37

37:                                               ; preds = %35, %31
  store ptr %4, ptr %20, align 4
  br label %38

38:                                               ; preds = %37, %15
  %39 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 127
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 9
  store i8 -2, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = tail call fastcc i32 @__inet_insert_ifa(ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null) #20
  br label %47

47:                                               ; preds = %45, %13
  %48 = phi i32 [ %46, %45 ], [ -105, %13 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_gifconf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ifreq, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 68
  %7 = load ptr, ptr %6, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !19
  %8 = icmp ugt i32 %3, 32
  br i1 %8, label %9, label %10, !prof !15

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1255, i32 noundef 9, ptr noundef null) #20
  br label %53

10:                                               ; preds = %4
  %11 = icmp eq ptr %7, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %53, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %1, null
  %18 = getelementptr inbounds %struct.ifreq, ptr %5, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ifreq, ptr %5, i32 0, i32 1, i32 0, i32 1
  br label %20

20:                                               ; preds = %47, %16
  %21 = phi ptr [ %14, %16 ], [ %51, %47 ]
  %22 = phi i32 [ %2, %16 ], [ %48, %47 ]
  %23 = phi i32 [ 0, %16 ], [ %49, %47 ]
  br i1 %17, label %47, label %24

24:                                               ; preds = %20
  %25 = icmp slt i32 %22, %3
  br i1 %25, label %53, label %26

26:                                               ; preds = %24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false)
  %27 = getelementptr inbounds %struct.in_ifaddr, ptr %21, i32 0, i32 12
  %28 = call ptr @strcpy(ptr noundef nonnull %5, ptr noundef %27)
  store i16 2, ptr %18, align 4
  %29 = getelementptr inbounds %struct.in_ifaddr, ptr %21, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %19, align 4
  %31 = getelementptr i8, ptr %1, i32 %23
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 %3, i32 -1090519040) #23, !srcloc !20
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = tail call ptr @llvm.thread.pointer() #20
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #12, !srcloc !21
  %39 = and i32 %38, -13
  %40 = or i32 %39, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #20, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !23
  %41 = call i32 @arm_copy_to_user(ptr noundef %31, ptr noundef nonnull %5, i32 noundef %3) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #20, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !23
  br label %42

42:                                               ; preds = %35, %26
  %43 = phi i32 [ %41, %35 ], [ %3, %26 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = sub i32 %22, %3
  br label %47

47:                                               ; preds = %45, %20
  %48 = phi i32 [ %46, %45 ], [ %22, %20 ]
  %49 = add i32 %23, %3
  %50 = getelementptr inbounds %struct.in_ifaddr, ptr %21, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %20

53:                                               ; preds = %47, %42, %24, %12, %10, %9
  %54 = phi i32 [ 0, %10 ], [ 0, %9 ], [ 0, %12 ], [ %23, %24 ], [ %49, %47 ], [ -14, %42 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  ret i32 %54
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_select_addr(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 68
  %5 = load volatile ptr, ptr %4, align 16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %62, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %9 = getelementptr %struct.ipv4_devconf, ptr %8, i32 0, i32 1, i32 25
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !14

12:                                               ; preds = %7
  %13 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 25
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !14

16:                                               ; preds = %12, %7
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ 253, %16 ], [ 254, %12 ]
  %19 = getelementptr inbounds %struct.in_device, ptr %5, i32 0, i32 4
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %62, label %22

22:                                               ; preds = %17
  %23 = icmp eq i32 %1, 0
  br label %24

24:                                               ; preds = %54, %22
  %25 = phi ptr [ %20, %22 ], [ %57, %54 ]
  %26 = phi i32 [ 0, %22 ], [ %55, %54 ]
  %27 = getelementptr inbounds %struct.in_ifaddr, ptr %25, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.in_ifaddr, ptr %25, i32 0, i32 9
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = tail call i32 @llvm.umin.i32(i32 %18, i32 %34)
  %36 = icmp sgt i32 %35, %2
  br i1 %36, label %54, label %37

37:                                               ; preds = %31
  br i1 %23, label %46, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.in_ifaddr, ptr %25, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, %1
  %42 = getelementptr inbounds %struct.in_ifaddr, ptr %25, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %41, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38, %37
  %47 = getelementptr inbounds %struct.in_ifaddr, ptr %25, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  br label %59

49:                                               ; preds = %38
  %50 = icmp eq i32 %26, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.in_ifaddr, ptr %25, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %49, %31, %24
  %55 = phi i32 [ %26, %24 ], [ %26, %31 ], [ %26, %49 ], [ %53, %51 ]
  %56 = getelementptr inbounds %struct.in_ifaddr, ptr %25, i32 0, i32 1
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %24

59:                                               ; preds = %54, %46
  %60 = phi i32 [ %48, %46 ], [ %55, %54 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %59, %17, %3
  %63 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %64 = icmp eq ptr %63, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %64, label %98, label %65

65:                                               ; preds = %95, %62
  %66 = phi ptr [ %96, %95 ], [ %63, %62 ]
  %67 = getelementptr i8, ptr %66, i32 424
  %68 = load volatile ptr, ptr %67, align 16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %95, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.in_device, ptr %68, i32 0, i32 4
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %95, label %74

74:                                               ; preds = %87, %70
  %75 = phi ptr [ %89, %87 ], [ %72, %70 ]
  %76 = getelementptr inbounds %struct.in_ifaddr, ptr %75, i32 0, i32 11
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.in_ifaddr, ptr %75, i32 0, i32 9
  %82 = load i8, ptr %81, align 4
  %83 = icmp eq i8 %82, -3
  %84 = zext i8 %82 to i32
  %85 = icmp sgt i32 %84, %2
  %86 = or i1 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80, %74
  %88 = getelementptr inbounds %struct.in_ifaddr, ptr %75, i32 0, i32 1
  %89 = load volatile ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %74

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.in_ifaddr, ptr %75, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %87, %70, %65
  %96 = load volatile ptr, ptr %66, align 8
  %97 = icmp eq ptr %96, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %97, label %98, label %65

98:                                               ; preds = %95, %91, %62, %59
  %99 = phi i32 [ %60, %59 ], [ 0, %62 ], [ %93, %91 ], [ 0, %95 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_confirm_addr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc i32 @confirm_addr_indev(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %26

9:                                                ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 16
  %11 = load volatile ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %24, label %13

13:                                               ; preds = %21, %9
  %14 = phi ptr [ %22, %21 ], [ %11, %9 ]
  %15 = getelementptr i8, ptr %14, i32 424
  %16 = load volatile ptr, ptr %15, align 16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @confirm_addr_indev(ptr noundef nonnull %16, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %13
  %22 = load volatile ptr, ptr %14, align 8
  %23 = icmp eq ptr %22, %10
  br i1 %23, label %24, label %13

24:                                               ; preds = %21, %18, %9
  %25 = phi i32 [ 0, %9 ], [ %19, %18 ], [ 0, %21 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi i32 [ %8, %7 ], [ %25, %24 ]
  ret i32 %27
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @confirm_addr_indev(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %6 = getelementptr %struct.ipv4_devconf, ptr %5, i32 0, i32 1, i32 25
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13, !prof !14

9:                                                ; preds = %4
  %10 = getelementptr %struct.in_device, ptr %0, i32 0, i32 21, i32 1, i32 25
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !14

13:                                               ; preds = %9, %4
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ 253, %13 ], [ 254, %9 ]
  %16 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 4
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %93, label %19

19:                                               ; preds = %14
  %20 = icmp ne i32 %2, 0
  %21 = icmp eq i32 %2, 0
  %22 = icmp eq i32 %1, 0
  %23 = icmp ne i32 %1, 0
  %24 = and i1 %23, %21
  br label %25

25:                                               ; preds = %83, %19
  %26 = phi ptr [ %17, %19 ], [ %87, %83 ]
  %27 = phi i32 [ 0, %19 ], [ %85, %83 ]
  %28 = phi i32 [ 0, %19 ], [ %84, %83 ]
  %29 = getelementptr inbounds %struct.in_ifaddr, ptr %26, i32 0, i32 9
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = tail call i32 @llvm.umin.i32(i32 %15, i32 %31)
  %33 = icmp eq i32 %27, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.in_ifaddr, ptr %26, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, %2
  %38 = and i1 %20, %37
  %39 = icmp sgt i32 %32, %3
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = icmp eq i32 %28, 0
  br i1 %42, label %45, label %94

43:                                               ; preds = %34, %25
  %44 = icmp eq i32 %28, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %27, %43 ], [ %36, %41 ]
  br i1 %21, label %55, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.in_ifaddr, ptr %26, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %49, %2
  %51 = getelementptr inbounds %struct.in_ifaddr, ptr %26, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %50, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %47, %45
  br i1 %22, label %64, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.in_ifaddr, ptr %26, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = xor i32 %58, %1
  %60 = getelementptr inbounds %struct.in_ifaddr, ptr %26, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %59, %61
  %63 = icmp eq i32 %62, 0
  br label %64

64:                                               ; preds = %56, %55
  %65 = phi i1 [ true, %55 ], [ %63, %56 ]
  %66 = zext i1 %65 to i32
  %67 = icmp ne i32 %46, 0
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  br i1 %24, label %70, label %89

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.in_ifaddr, ptr %26, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = xor i32 %72, %46
  %74 = getelementptr inbounds %struct.in_ifaddr, ptr %26, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %73, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %70
  %79 = icmp sgt i32 %32, %3
  br i1 %79, label %83, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.in_ifaddr, ptr %26, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  br label %89

83:                                               ; preds = %78, %64, %47, %43
  %84 = phi i32 [ 0, %78 ], [ %66, %64 ], [ 1, %43 ], [ 0, %47 ]
  %85 = phi i32 [ %46, %78 ], [ %46, %64 ], [ %27, %43 ], [ %46, %47 ]
  %86 = getelementptr inbounds %struct.in_ifaddr, ptr %26, i32 0, i32 1
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %25

89:                                               ; preds = %83, %80, %70, %69
  %90 = phi i32 [ %66, %80 ], [ %84, %83 ], [ %66, %70 ], [ %66, %69 ]
  %91 = phi i32 [ %82, %80 ], [ %85, %83 ], [ %46, %70 ], [ %46, %69 ]
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %14
  br label %94

94:                                               ; preds = %93, %89, %41
  %95 = phi i32 [ 0, %93 ], [ %91, %89 ], [ %36, %41 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_inetaddr_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @inetaddr_chain, ptr noundef %0) #20
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_inetaddr_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @inetaddr_chain, ptr noundef %0) #20
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_inetaddr_validator_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @inetaddr_validator_chain, ptr noundef %0) #20
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_inetaddr_validator_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @inetaddr_validator_chain, ptr noundef %0) #20
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_netconf_notify_devconf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %2, -1
  %7 = icmp eq i32 %2, 2
  %8 = or i1 %6, %7
  %9 = select i1 %8, i32 20, i32 12
  switch i32 %2, label %12 [
    i32 -1, label %10
    i32 3, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = add nuw nsw i32 %9, 8
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ %11, %10 ], [ %9, %5 ]
  switch i32 %2, label %16 [
    i32 -1, label %14
    i32 4, label %14
  ]

14:                                               ; preds = %12, %12
  %15 = add nuw nsw i32 %13, 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %15, %14 ], [ %13, %12 ]
  switch i32 %2, label %20 [
    i32 -1, label %18
    i32 8, label %18
  ]

18:                                               ; preds = %16, %16
  %19 = add nuw nsw i32 %17, 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %19, %18 ], [ %17, %16 ]
  switch i32 %2, label %24 [
    i32 -1, label %22
    i32 5, label %22
  ]

22:                                               ; preds = %20, %20
  %23 = add nuw nsw i32 %21, 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %23, %22 ], [ %21, %20 ]
  switch i32 %2, label %28 [
    i32 -1, label %26
    i32 6, label %26
  ]

26:                                               ; preds = %24, %24
  %27 = add nuw nsw i32 %25, 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %27, %26 ], [ %25, %24 ]
  %30 = add nuw nsw i32 %29, 19
  %31 = and i32 %30, -4
  %32 = tail call ptr @__alloc_skb(i32 noundef %31, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = tail call fastcc i32 @inet_netconf_fill_devconf(ptr noundef nonnull %32, i32 noundef %3, ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef 0, i32 noundef %2)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = icmp eq i32 %35, -90
  br i1 %38, label %39, label %40, !prof !15

39:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2104, i32 noundef 9, ptr noundef null) #20
  br label %40

40:                                               ; preds = %39, %37
  tail call void @kfree_skb_reason(ptr noundef nonnull %32, i32 noundef 0) #20
  br label %42

41:                                               ; preds = %34
  tail call void @rtnl_notify(ptr noundef nonnull %32, ptr noundef %0, i32 noundef 0, i32 noundef 24, ptr noundef null, i32 noundef 3264) #20
  br label %44

42:                                               ; preds = %40, %28
  %43 = phi i32 [ %35, %40 ], [ -105, %28 ]
  tail call void @rtnl_set_sk_err(ptr noundef %0, i32 noundef 24, i32 noundef %43) #20
  br label %44

44:                                               ; preds = %42, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet_netconf_fill_devconf(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %93

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %21 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = icmp slt i32 %26, 20
  br i1 %27, label %93, label %28, !prof !15

28:                                               ; preds = %19
  %29 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef %6) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %93, label %31

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %29, i32 16
  store i8 2, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #20
  store i32 %1, ptr %15, align 4
  %33 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #20
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %82, label %35

35:                                               ; preds = %31
  %36 = icmp eq ptr %2, null
  br i1 %36, label %77, label %37

37:                                               ; preds = %35
  switch i32 %7, label %77 [
    i32 -1, label %38
    i32 2, label %38
    i32 3, label %45
    i32 4, label %52
    i32 8, label %59
    i32 5, label %65
    i32 6, label %72
  ]

38:                                               ; preds = %37, %37
  %39 = getelementptr inbounds %struct.ipv4_devconf, ptr %2, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #20
  store i32 %40, ptr %14, align 4
  %41 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #20
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %82, label %43

43:                                               ; preds = %38
  %44 = icmp eq i32 %7, -1
  br i1 %44, label %45, label %77

45:                                               ; preds = %43, %37
  %46 = getelementptr %struct.ipv4_devconf, ptr %2, i32 0, i32 1, i32 7
  %47 = load i32, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #20
  store i32 %47, ptr %13, align 4
  %48 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #20
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %82, label %50

50:                                               ; preds = %45
  %51 = icmp eq i32 %7, -1
  br i1 %51, label %52, label %77

52:                                               ; preds = %50, %37
  %53 = getelementptr %struct.ipv4_devconf, ptr %2, i32 0, i32 1, i32 1
  %54 = load i32, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  store i32 %54, ptr %12, align 4
  %55 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %82, label %57

57:                                               ; preds = %52
  %58 = icmp eq i32 %7, -1
  br i1 %58, label %59, label %77

59:                                               ; preds = %57, %37
  %60 = getelementptr %struct.ipv4_devconf, ptr %2, i32 0, i32 1, i32 31
  %61 = load i32, ptr %60, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  store i32 %61, ptr %11, align 4
  %62 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %59
  switch i32 %7, label %77 [
    i32 -1, label %65
    i32 5, label %65
    i32 6, label %72
  ]

65:                                               ; preds = %64, %64, %37
  %66 = getelementptr %struct.ipv4_devconf, ptr %2, i32 0, i32 1, i32 2
  %67 = load i32, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  store i32 %67, ptr %10, align 4
  %68 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %65
  %71 = icmp eq i32 %7, -1
  br i1 %71, label %72, label %77

72:                                               ; preds = %70, %64, %37
  %73 = getelementptr %struct.ipv4_devconf, ptr %2, i32 0, i32 1, i32 28
  %74 = load i32, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  store i32 %74, ptr %9, align 4
  %75 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72, %70, %64, %57, %50, %43, %37, %35
  %78 = load ptr, ptr %22, align 8
  %79 = ptrtoint ptr %78 to i32
  %80 = ptrtoint ptr %29 to i32
  %81 = sub i32 %79, %80
  store i32 %81, ptr %29, align 4
  br label %93

82:                                               ; preds = %72, %65, %59, %52, %45, %38, %31
  %83 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %84 = load ptr, ptr %83, align 4
  %85 = icmp ugt ptr %84, %29
  br i1 %85, label %86, label %88, !prof !15

86:                                               ; preds = %82
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #20
  %87 = load ptr, ptr %83, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi ptr [ %87, %86 ], [ %84, %82 ]
  %90 = ptrtoint ptr %29 to i32
  %91 = ptrtoint ptr %89 to i32
  %92 = sub i32 %90, %91
  call void @skb_trim(ptr noundef %0, i32 noundef %92) #20
  br label %93

93:                                               ; preds = %88, %77, %28, %19, %8
  %94 = phi i32 [ -90, %88 ], [ 0, %77 ], [ -90, %28 ], [ -90, %19 ], [ -90, %8 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @devinet_init() local_unnamed_addr #11 section ".init.text" {
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(1024) @inet_addr_lst, i8 0, i32 1024, i1 false)
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @devinet_ops) #20
  %2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ip_netdev_notifier) #20
  %3 = load ptr, ptr @system_power_efficient_wq, align 4
  %4 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef nonnull @check_lifetime_work, i32 noundef 0) #20
  tail call void @rtnl_af_register(ptr noundef nonnull @inet_af_ops) #20
  tail call void @rtnl_register(i32 noundef 2, i32 noundef 20, ptr noundef nonnull @inet_rtm_newaddr, ptr noundef null, i32 noundef 0) #20
  tail call void @rtnl_register(i32 noundef 2, i32 noundef 21, ptr noundef nonnull @inet_rtm_deladdr, ptr noundef null, i32 noundef 0) #20
  tail call void @rtnl_register(i32 noundef 2, i32 noundef 22, ptr noundef null, ptr noundef nonnull @inet_dump_ifaddr, i32 noundef 0) #20
  tail call void @rtnl_register(i32 noundef 2, i32 noundef 82, ptr noundef nonnull @inet_netconf_get_devconf, ptr noundef nonnull @inet_netconf_dump_devconf, i32 noundef 0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_af_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_register(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_rtm_newaddr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [11 x ptr], align 4
  %5 = tail call i32 @rtnl_is_locked() #20
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @inet_rtm_newaddr.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !15

10:                                               ; preds = %3
  store i1 true, ptr @inet_rtm_newaddr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 938, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 938) #20
  br label %11

11:                                               ; preds = %10, %3
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false) #20, !annotation !19
  %12 = load i32, ptr %1, align 4
  %13 = icmp ult i32 %12, 24
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #20
  %15 = icmp eq ptr %2, null
  br i1 %15, label %137, label %16

16:                                               ; preds = %14
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %137

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %1, i32 24
  %19 = add i32 %12, -24
  %20 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 10, ptr noundef %18, i32 noundef %19, ptr noundef nonnull @ifa_ipv4_policy, i32 noundef 0, ptr noundef %2) #20
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %137, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %1, i32 17
  %24 = load i8, ptr %23, align 1
  %25 = icmp ult i8 %24, 33
  %26 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ne ptr %27, null
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %30, label %137

30:                                               ; preds = %22
  %31 = getelementptr i8, ptr %1, i32 20
  %32 = load i32, ptr %31, align 4
  %33 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %32) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %137, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 68
  %37 = load ptr, ptr %36, align 16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %137, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %41 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 4197824, i32 noundef 84) #22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %137, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.in_device, ptr %37, i32 0, i32 21, i32 2
  store i64 -1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.in_device, ptr %37, i32 0, i32 20
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.neigh_parms, ptr %46, i32 0, i32 12
  store i32 -1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.in_device, ptr %37, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #20, !srcloc !17
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #20, !srcloc !18
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !15

52:                                               ; preds = %43
  %53 = add i32 %50, 1
  %54 = or i32 %53, %50
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %58, label %56, !prof !14

56:                                               ; preds = %52, %43
  %57 = phi i32 [ 2, %43 ], [ 1, %52 ]
  call void @refcount_warn_saturate(ptr noundef %48, i32 noundef %57) #20
  br label %58

58:                                               ; preds = %56, %52
  %59 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load ptr, ptr %26, align 4
  store ptr %63, ptr %59, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi ptr [ %63, %62 ], [ %60, %58 ]
  store ptr null, ptr %41, align 8
  %66 = getelementptr inbounds %struct.hlist_node, ptr %41, i32 0, i32 1
  store ptr null, ptr %66, align 4
  %67 = load i8, ptr %23, align 1
  %68 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 10
  store i8 %67, ptr %68, align 1
  %69 = zext i8 %67 to i32
  %70 = icmp eq i8 %67, 0
  %71 = sub nsw i32 32, %69
  %72 = shl nsw i32 -1, %71
  %73 = call i32 @llvm.bswap.i32(i32 %72) #20
  %74 = select i1 %70, i32 0, i32 %73
  %75 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 6
  store i32 %74, ptr %75, align 8
  %76 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 8
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %64
  %80 = getelementptr i8, ptr %77, i32 4
  %81 = load i32, ptr %80, align 4
  br label %86

82:                                               ; preds = %64
  %83 = getelementptr i8, ptr %1, i32 18
  %84 = load i8, ptr %83, align 2
  %85 = zext i8 %84 to i32
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i32 [ %81, %79 ], [ %85, %82 ]
  %88 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 11
  store i32 %87, ptr %88, align 8
  %89 = getelementptr i8, ptr %1, i32 19
  %90 = load i8, ptr %89, align 1
  %91 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 9
  store i8 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 2
  store ptr %37, ptr %92, align 4
  %93 = load ptr, ptr %26, align 4
  %94 = getelementptr i8, ptr %93, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 4
  store i32 %95, ptr %96, align 8
  %97 = getelementptr i8, ptr %65, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 5
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %86
  %104 = getelementptr i8, ptr %101, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 8
  store i32 %105, ptr %106, align 8
  br label %107

107:                                              ; preds = %103, %86
  %108 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  %111 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 12
  br i1 %110, label %114, label %112

112:                                              ; preds = %107
  %113 = call i32 @nla_strscpy(ptr noundef %111, ptr noundef nonnull %109, i32 noundef 16) #20
  br label %115

114:                                              ; preds = %107
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %111, ptr noundef nonnull align 64 dereferenceable(16) %33, i32 16, i1 false) #20
  br label %115

115:                                              ; preds = %114, %112
  %116 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 9
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = getelementptr i8, ptr %117, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 7
  store i32 %121, ptr %122, align 4
  br label %123

123:                                              ; preds = %119, %115
  %124 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 6
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %140, label %127

127:                                              ; preds = %123
  %128 = getelementptr i8, ptr %125, i32 8
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = getelementptr i8, ptr %125, i32 4
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %133, %129
  br i1 %134, label %135, label %140

135:                                              ; preds = %131, %127
  %136 = getelementptr inbounds %struct.in_ifaddr, ptr %41, i32 0, i32 3
  call void @call_rcu(ptr noundef %136, ptr noundef nonnull @inet_rcu_free_ifa) #20
  br label %137

137:                                              ; preds = %135, %39, %35, %30, %22, %17, %16, %14
  %138 = phi i32 [ %20, %17 ], [ -22, %135 ], [ -105, %39 ], [ -105, %35 ], [ -19, %30 ], [ -22, %22 ], [ -22, %16 ], [ -22, %14 ]
  %139 = inttoptr i32 %138 to ptr
  br label %140

140:                                              ; preds = %137, %131, %123
  %141 = phi i32 [ -1, %137 ], [ -1, %123 ], [ %129, %131 ]
  %142 = phi i32 [ -1, %137 ], [ -1, %123 ], [ %133, %131 ]
  %143 = phi ptr [ %139, %137 ], [ %41, %123 ], [ %41, %131 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #20
  %144 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = ptrtoint ptr %143 to i32
  br label %267

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 4
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %181, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.in_device, ptr %153, i32 0, i32 4
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %181, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 5
  br label %161

161:                                              ; preds = %177, %157
  %162 = phi ptr [ %155, %157 ], [ %179, %177 ]
  %163 = getelementptr inbounds %struct.in_ifaddr, ptr %162, i32 0, i32 6
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, %159
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.in_ifaddr, ptr %162, i32 0, i32 5
  %168 = load i32, ptr %167, align 4
  %169 = load i32, ptr %160, align 4
  %170 = xor i32 %169, %168
  %171 = and i32 %170, %159
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.in_ifaddr, ptr %162, i32 0, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, %149
  br i1 %176, label %220, label %177

177:                                              ; preds = %173, %166, %161
  %178 = getelementptr inbounds %struct.in_ifaddr, ptr %162, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %161

181:                                              ; preds = %177, %151, %147
  %182 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 11
  %183 = load i32, ptr %182, align 4
  %184 = and i32 %183, -161
  store i32 %184, ptr %182, align 4
  %185 = icmp eq i32 %141, -1
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = call i32 @llvm.umin.i32(i32 %141, i32 21474836) #20
  %188 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 13
  store i32 %187, ptr %188, align 4
  br label %191

189:                                              ; preds = %181
  %190 = or i32 %184, 128
  store i32 %190, ptr %182, align 4
  br label %191

191:                                              ; preds = %189, %186
  %192 = phi i32 [ %190, %189 ], [ %184, %186 ]
  %193 = icmp eq i32 %142, -1
  %194 = call i32 @llvm.umin.i32(i32 %142, i32 21474836) #20
  %195 = select i1 %193, i32 -1, i32 %194
  br i1 %193, label %203, label %196

196:                                              ; preds = %191
  %197 = icmp eq i32 %195, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %196
  %199 = or i32 %192, 32
  store i32 %199, ptr %182, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %199, %198 ], [ %192, %196 ]
  %202 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 14
  store i32 %195, ptr %202, align 4
  br label %203

203:                                              ; preds = %200, %191
  %204 = phi i32 [ %201, %200 ], [ %192, %191 ]
  %205 = load volatile i32, ptr @jiffies, align 64
  %206 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 16
  store i32 %205, ptr %206, align 4
  %207 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 15
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  store i32 %205, ptr %207, align 4
  br label %211

211:                                              ; preds = %210, %203
  %212 = and i32 %204, 1024
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 3
  call void @call_rcu(ptr noundef %215, ptr noundef nonnull @inet_rcu_free_ifa) #20
  br label %267

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %218 = load i32, ptr %217, align 4
  %219 = call fastcc i32 @__inet_insert_ifa(ptr noundef %143, ptr noundef %1, i32 noundef %218, ptr noundef %2)
  br label %267

220:                                              ; preds = %173
  %221 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 7
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr inbounds %struct.in_ifaddr, ptr %143, i32 0, i32 3
  call void @call_rcu(ptr noundef %223, ptr noundef nonnull @inet_rcu_free_ifa) #20
  %224 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %225 = load i16, ptr %224, align 2
  %226 = and i16 %225, 768
  %227 = icmp eq i16 %226, 256
  br i1 %227, label %228, label %267

228:                                              ; preds = %220
  %229 = getelementptr inbounds %struct.in_ifaddr, ptr %162, i32 0, i32 7
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %230, %222
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  call void @fib_modify_prefix_metric(ptr noundef nonnull %162, i32 noundef %222) #20
  store i32 %222, ptr %229, align 4
  br label %233

233:                                              ; preds = %232, %228
  %234 = getelementptr inbounds %struct.in_ifaddr, ptr %162, i32 0, i32 11
  %235 = load i32, ptr %234, align 4
  %236 = and i32 %235, -161
  store i32 %236, ptr %234, align 4
  %237 = icmp eq i32 %141, -1
  br i1 %237, label %241, label %238

238:                                              ; preds = %233
  %239 = call i32 @llvm.umin.i32(i32 %141, i32 21474836) #20
  %240 = getelementptr inbounds %struct.in_ifaddr, ptr %162, i32 0, i32 13
  store i32 %239, ptr %240, align 4
  br label %243

241:                                              ; preds = %233
  %242 = or i32 %236, 128
  store i32 %242, ptr %234, align 4
  br label %243

243:                                              ; preds = %241, %238
  %244 = phi i32 [ %242, %241 ], [ %236, %238 ]
  %245 = icmp eq i32 %142, -1
  %246 = call i32 @llvm.umin.i32(i32 %142, i32 21474836) #20
  %247 = select i1 %245, i32 -1, i32 %246
  br i1 %245, label %254, label %248

248:                                              ; preds = %243
  %249 = icmp eq i32 %247, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %248
  %251 = or i32 %244, 32
  store i32 %251, ptr %234, align 4
  br label %252

252:                                              ; preds = %250, %248
  %253 = getelementptr inbounds %struct.in_ifaddr, ptr %162, i32 0, i32 14
  store i32 %247, ptr %253, align 4
  br label %254

254:                                              ; preds = %252, %243
  %255 = load volatile i32, ptr @jiffies, align 64
  %256 = getelementptr inbounds %struct.in_ifaddr, ptr %162, i32 0, i32 16
  store i32 %255, ptr %256, align 4
  %257 = getelementptr inbounds %struct.in_ifaddr, ptr %162, i32 0, i32 15
  %258 = load i32, ptr %257, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  store i32 %255, ptr %257, align 4
  br label %261

261:                                              ; preds = %260, %254
  %262 = call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @check_lifetime_work) #20
  %263 = load ptr, ptr @system_power_efficient_wq, align 4
  %264 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %263, ptr noundef nonnull @check_lifetime_work, i32 noundef 0) #20
  %265 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %266 = load i32, ptr %265, align 4
  call fastcc void @rtmsg_ifa(i32 noundef 20, ptr noundef nonnull %162, ptr noundef %1, i32 noundef %266)
  br label %267

267:                                              ; preds = %261, %220, %216, %214, %145
  %268 = phi i32 [ %146, %145 ], [ %219, %216 ], [ -95, %214 ], [ 0, %261 ], [ -17, %220 ]
  ret i32 %268
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_rtm_deladdr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [11 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !19
  %5 = tail call i32 @rtnl_is_locked() #20
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @inet_rtm_deladdr.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !15

10:                                               ; preds = %3
  store i1 true, ptr @inet_rtm_deladdr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 657, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 657) #20
  br label %11

11:                                               ; preds = %10, %3
  %12 = load i32, ptr %1, align 4
  %13 = icmp ult i32 %12, 24
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #20
  %15 = icmp eq ptr %2, null
  br i1 %15, label %84, label %16

16:                                               ; preds = %14
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %84

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %1, i32 24
  %19 = add i32 %12, -24
  %20 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 10, ptr noundef %18, i32 noundef %19, ptr noundef nonnull @ifa_ipv4_policy, i32 noundef 0, ptr noundef %2) #20
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %84, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %1, i32 20
  %24 = load i32, ptr %23, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  %25 = call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %24) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  br label %84

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 68
  %30 = load volatile ptr, ptr %29, align 16
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %84, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.in_device, ptr %30, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %84, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 2
  %38 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 3
  %39 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 1
  %40 = getelementptr i8, ptr %1, i32 17
  br label %41

41:                                               ; preds = %80, %36
  %42 = phi ptr [ %34, %36 ], [ %82, %80 ]
  %43 = phi ptr [ %33, %36 ], [ %81, %80 ]
  %44 = load ptr, ptr %37, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.in_ifaddr, ptr %42, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %44, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %46, %41
  %53 = load ptr, ptr %38, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.in_ifaddr, ptr %42, i32 0, i32 12
  %57 = call i32 @nla_strcmp(ptr noundef nonnull %53, ptr noundef %56) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %55, %52
  %60 = load ptr, ptr %39, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = load i8, ptr %40, align 1
  %64 = getelementptr inbounds %struct.in_ifaddr, ptr %42, i32 0, i32 10
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %63, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = getelementptr i8, ptr %60, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.in_ifaddr, ptr %42, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = xor i32 %71, %69
  %73 = getelementptr inbounds %struct.in_ifaddr, ptr %42, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %72, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67, %59
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %79 = load i32, ptr %78, align 4
  call fastcc void @__inet_del_ifa(ptr noundef nonnull %30, ptr noundef %43, i32 noundef 1, ptr noundef %1, i32 noundef %79)
  br label %84

80:                                               ; preds = %67, %62, %55, %46
  %81 = getelementptr inbounds %struct.in_ifaddr, ptr %42, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %41

84:                                               ; preds = %80, %77, %32, %28, %27, %17, %16, %14
  %85 = phi i32 [ 0, %77 ], [ %20, %17 ], [ -19, %28 ], [ -19, %27 ], [ -22, %16 ], [ -22, %14 ], [ -99, %32 ], [ -99, %80 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #20
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_dump_ifaddr(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [11 x ptr], align 4
  %4 = alloca %struct.inet_fill_args, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.inet_fill_args, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nlmsghdr, ptr %6, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.inet_fill_args, ptr %4, i32 0, i32 2
  store i32 20, ptr %13, align 4
  %14 = getelementptr inbounds %struct.inet_fill_args, ptr %4, i32 0, i32 3
  store i32 2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inet_fill_args, ptr %4, i32 0, i32 4
  store i32 -1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inet_fill_args, ptr %4, i32 0, i32 5
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %24 = load i8, ptr %23, align 4, !range !24
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %174, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false) #20, !annotation !19
  %31 = load i32, ptr %6, align 4
  %32 = icmp ult i32 %31, 24
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_valid_dump_ifaddr_req.__msg) #20
  %34 = icmp eq ptr %30, null
  br i1 %34, label %122, label %120

35:                                               ; preds = %26
  %36 = getelementptr i8, ptr %6, i32 17
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %6, i32 18
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %6, i32 19
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %39, %35
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_valid_dump_ifaddr_req.__msg.45) #20
  %48 = icmp eq ptr %30, null
  br i1 %48, label %122, label %120

49:                                               ; preds = %43
  %50 = getelementptr i8, ptr %6, i32 20
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %16, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 8
  %55 = load i16, ptr %54, align 2
  %56 = or i16 %55, 32
  store i16 %56, ptr %54, align 2
  store i32 34, ptr %14, align 4
  %57 = load i32, ptr %6, align 4
  %58 = icmp ult i32 %57, 24
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #20
  %60 = icmp eq ptr %30, null
  br i1 %60, label %122, label %120

61:                                               ; preds = %53, %49
  %62 = phi i32 [ %57, %53 ], [ %31, %49 ]
  %63 = getelementptr i8, ptr %6, i32 24
  %64 = add i32 %62, -24
  %65 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 10, ptr noundef %63, i32 noundef %64, ptr noundef nonnull @ifa_ipv4_policy, i32 noundef 3, ptr noundef %30) #20
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %122, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %3, align 4
  %69 = icmp eq ptr %68, null
  %70 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  %73 = select i1 %69, i1 %72, i1 false
  %74 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  %77 = select i1 %73, i1 %76, i1 false
  %78 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  %81 = select i1 %77, i1 %80, i1 false
  %82 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  %85 = select i1 %81, i1 %84, i1 false
  %86 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  %89 = select i1 %85, i1 %88, i1 false
  %90 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  %93 = select i1 %89, i1 %92, i1 false
  %94 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 7
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  %97 = select i1 %93, i1 %96, i1 false
  %98 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 8
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  %101 = select i1 %97, i1 %100, i1 false
  %102 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 9
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  %105 = select i1 %101, i1 %104, i1 false
  br i1 %105, label %116, label %114

106:                                              ; preds = %116
  %107 = getelementptr i8, ptr %118, i32 4
  %108 = load i32, ptr %107, align 4
  store i32 %108, ptr %15, align 4
  %109 = call ptr @rtnl_get_net_ns_capable(ptr noundef %28, i32 noundef %108) #20
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  store i32 -1, ptr %15, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet_valid_dump_ifaddr_req.__msg.46) #20
  %112 = icmp eq ptr %30, null
  br i1 %112, label %126, label %113

113:                                              ; preds = %111
  store ptr @inet_valid_dump_ifaddr_req.__msg.46, ptr %30, align 4
  br label %126

114:                                              ; preds = %67
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet_valid_dump_ifaddr_req.__msg.47) #20
  %115 = icmp eq ptr %30, null
  br i1 %115, label %122, label %120

116:                                              ; preds = %67
  %117 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 10
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %106

120:                                              ; preds = %114, %59, %47, %33
  %121 = phi ptr [ @inet_valid_dump_ifaddr_req.__msg, %33 ], [ @inet_valid_dump_ifaddr_req.__msg.45, %47 ], [ @__nlmsg_parse.__msg, %59 ], [ @inet_valid_dump_ifaddr_req.__msg.47, %114 ]
  store ptr %121, ptr %30, align 4
  br label %122

122:                                              ; preds = %120, %114, %61, %59, %47, %33
  %123 = phi i32 [ -22, %59 ], [ -22, %114 ], [ %65, %61 ], [ -22, %47 ], [ -22, %33 ], [ -22, %120 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #20
  br label %262

124:                                              ; preds = %116, %106
  %125 = phi ptr [ %109, %106 ], [ @init_net, %116 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #20
  br label %129

126:                                              ; preds = %113, %111
  %127 = ptrtoint ptr %109 to i32
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #20
  %128 = icmp slt ptr %109, null
  br i1 %128, label %262, label %129

129:                                              ; preds = %126, %124
  %130 = phi ptr [ %125, %124 ], [ @init_net, %126 ]
  br i1 %52, label %174, label %131

131:                                              ; preds = %129
  %132 = call ptr @__dev_get_by_index(ptr noundef %130, i32 noundef %51) #20
  %133 = icmp eq ptr %132, null
  br i1 %133, label %262, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.net_device, ptr %132, i32 0, i32 68
  %136 = load ptr, ptr %135, align 16
  %137 = icmp eq ptr %136, null
  br i1 %137, label %262, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.in_device, ptr %136, i32 0, i32 4
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %171, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %144 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  %145 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  br label %146

146:                                              ; preds = %166, %142
  %147 = phi ptr [ %140, %142 ], [ %169, %166 ]
  %148 = phi i32 [ 0, %142 ], [ %167, %166 ]
  %149 = icmp slt i32 %148, %22
  br i1 %149, label %166, label %150

150:                                              ; preds = %146
  %151 = call fastcc i32 @inet_fill_ifaddr(ptr noundef %0, ptr noundef nonnull %147, ptr noundef nonnull %4) #20
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %171, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %143, align 4
  %155 = load i32, ptr %144, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %145, align 4
  %159 = icmp eq i32 %158, %155
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.nlmsghdr, ptr %154, i32 0, i32 2
  %162 = load i16, ptr %161, align 2
  %163 = or i16 %162, 16
  store i16 %163, ptr %161, align 2
  br label %164

164:                                              ; preds = %160, %157, %153
  %165 = load i32, ptr %145, align 4
  store i32 %165, ptr %144, align 4
  br label %166

166:                                              ; preds = %164, %146
  %167 = add i32 %148, 1
  %168 = getelementptr inbounds %struct.in_ifaddr, ptr %147, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %146

171:                                              ; preds = %166, %150, %138
  %172 = phi i32 [ 0, %138 ], [ %148, %150 ], [ %167, %166 ]
  %173 = phi i32 [ 0, %138 ], [ %151, %150 ], [ 0, %166 ]
  store i32 %172, ptr %21, align 4
  br label %262

174:                                              ; preds = %129, %2
  %175 = phi ptr [ @init_net, %2 ], [ %130, %129 ]
  %176 = icmp slt i32 %18, 256
  br i1 %176, label %177, label %258

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.net, ptr %175, i32 0, i32 24
  %179 = getelementptr inbounds %struct.net, ptr %175, i32 0, i32 35, i32 115
  %180 = getelementptr inbounds %struct.net, ptr %175, i32 0, i32 3
  %181 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  %182 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %183 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  br label %184

184:                                              ; preds = %253, %177
  %185 = phi i32 [ %18, %177 ], [ %256, %253 ]
  %186 = phi i32 [ %20, %177 ], [ 0, %253 ]
  %187 = phi i32 [ %22, %177 ], [ %254, %253 ]
  %188 = load ptr, ptr %178, align 4
  %189 = getelementptr %struct.hlist_head, ptr %188, i32 %185
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  %190 = load volatile i32, ptr %179, align 4
  %191 = load i32, ptr %180, align 4
  %192 = xor i32 %191, %190
  store i32 %192, ptr %181, align 4
  %193 = load volatile ptr, ptr %189, align 4
  %194 = icmp eq ptr %193, null
  %195 = getelementptr i8, ptr %193, i32 -560
  %196 = icmp eq ptr %195, null
  %197 = or i1 %194, %196
  br i1 %197, label %253, label %198

198:                                              ; preds = %184
  %199 = icmp sgt i32 %185, %18
  br label %200

200:                                              ; preds = %244, %198
  %201 = phi i32 [ 0, %198 ], [ %246, %244 ]
  %202 = phi i32 [ %187, %198 ], [ %245, %244 ]
  %203 = phi ptr [ %195, %198 ], [ %250, %244 ]
  %204 = icmp slt i32 %201, %186
  br i1 %204, label %244, label %205

205:                                              ; preds = %200
  %206 = icmp sgt i32 %201, %186
  %207 = select i1 %199, i1 true, i1 %206
  %208 = select i1 %207, i32 0, i32 %202
  %209 = getelementptr inbounds %struct.net_device, ptr %203, i32 0, i32 68
  %210 = load volatile ptr, ptr %209, align 16
  %211 = icmp eq ptr %210, null
  br i1 %211, label %244, label %212

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.in_device, ptr %210, i32 0, i32 4
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %241, label %216

216:                                              ; preds = %236, %212
  %217 = phi ptr [ %239, %236 ], [ %214, %212 ]
  %218 = phi i32 [ %237, %236 ], [ 0, %212 ]
  %219 = icmp slt i32 %218, %208
  br i1 %219, label %236, label %220

220:                                              ; preds = %216
  %221 = call fastcc i32 @inet_fill_ifaddr(ptr noundef %0, ptr noundef nonnull %217, ptr noundef nonnull %4) #20
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %243, label %223

223:                                              ; preds = %220
  %224 = load ptr, ptr %182, align 4
  %225 = load i32, ptr %183, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %223
  %228 = load i32, ptr %181, align 4
  %229 = icmp eq i32 %228, %225
  br i1 %229, label %234, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.nlmsghdr, ptr %224, i32 0, i32 2
  %232 = load i16, ptr %231, align 2
  %233 = or i16 %232, 16
  store i16 %233, ptr %231, align 2
  br label %234

234:                                              ; preds = %230, %227, %223
  %235 = load i32, ptr %181, align 4
  store i32 %235, ptr %183, align 4
  br label %236

236:                                              ; preds = %234, %216
  %237 = add i32 %218, 1
  %238 = getelementptr inbounds %struct.in_ifaddr, ptr %217, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %216

241:                                              ; preds = %236, %212
  %242 = phi i32 [ 0, %212 ], [ %237, %236 ]
  store i32 %242, ptr %21, align 4
  br label %244

243:                                              ; preds = %220
  store i32 %218, ptr %21, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  br label %258

244:                                              ; preds = %241, %205, %200
  %245 = phi i32 [ %202, %200 ], [ %208, %205 ], [ %208, %241 ]
  %246 = add i32 %201, 1
  %247 = getelementptr inbounds %struct.net_device, ptr %203, i32 0, i32 85
  %248 = load volatile ptr, ptr %247, align 16
  %249 = icmp eq ptr %248, null
  %250 = getelementptr i8, ptr %248, i32 -560
  %251 = icmp eq ptr %250, null
  %252 = or i1 %249, %251
  br i1 %252, label %253, label %200

253:                                              ; preds = %244, %184
  %254 = phi i32 [ %187, %184 ], [ %245, %244 ]
  %255 = phi i32 [ 0, %184 ], [ %246, %244 ]
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  %256 = add nsw i32 %185, 1
  %257 = icmp eq i32 %256, 256
  br i1 %257, label %258, label %184

258:                                              ; preds = %253, %243, %174
  %259 = phi i32 [ %185, %243 ], [ %18, %174 ], [ 256, %253 ]
  %260 = phi i32 [ %221, %243 ], [ 0, %174 ], [ 0, %253 ]
  %261 = phi i32 [ %201, %243 ], [ %20, %174 ], [ %255, %253 ]
  store i32 %259, ptr %17, align 4
  store i32 %261, ptr %19, align 4
  br label %262

262:                                              ; preds = %258, %171, %134, %131, %126, %122
  %263 = phi i32 [ %127, %126 ], [ %173, %171 ], [ 0, %134 ], [ %260, %258 ], [ -19, %131 ], [ %123, %122 ]
  %264 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %265 = load i32, ptr %264, align 8
  %266 = icmp eq i32 %265, 0
  %267 = select i1 %266, i32 %263, i32 %265
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret i32 %267
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_netconf_get_devconf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [9 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !19
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 17
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_netconf_valid_get_req.__msg) #20
  %8 = icmp eq ptr %2, null
  br i1 %8, label %104, label %9

9:                                                ; preds = %7
  store ptr @inet_netconf_valid_get_req.__msg, ptr %2, align 4
  br label %104

10:                                               ; preds = %3
  %11 = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %0) #20
  %12 = load i32, ptr %1, align 4
  %13 = icmp ult i32 %12, 17
  br i1 %11, label %18, label %14

14:                                               ; preds = %10
  br i1 %13, label %15, label %61

15:                                               ; preds = %14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #20
  %16 = icmp eq ptr %2, null
  br i1 %16, label %104, label %17

17:                                               ; preds = %15
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %104

18:                                               ; preds = %10
  br i1 %13, label %19, label %22

19:                                               ; preds = %18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #20
  %20 = icmp eq ptr %2, null
  br i1 %20, label %104, label %21

21:                                               ; preds = %19
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %104

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %1, i32 20
  %24 = add i32 %12, -20
  %25 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 8, ptr noundef %23, i32 noundef %24, ptr noundef nonnull @devconf_ipv4_policy, i32 noundef 3, ptr noundef %2) #20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %104

27:                                               ; preds = %22
  %28 = load ptr, ptr %4, align 4
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds ptr, ptr %4, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = select i1 %29, i1 %32, i1 false
  %34 = getelementptr inbounds ptr, ptr %4, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  %37 = select i1 %33, i1 %36, i1 false
  %38 = getelementptr inbounds ptr, ptr %4, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = select i1 %37, i1 %40, i1 false
  %42 = getelementptr inbounds ptr, ptr %4, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = select i1 %41, i1 %44, i1 false
  %46 = getelementptr inbounds ptr, ptr %4, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = select i1 %45, i1 %48, i1 false
  %50 = getelementptr inbounds ptr, ptr %4, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = select i1 %49, i1 %52, i1 false
  %54 = getelementptr inbounds ptr, ptr %4, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  %57 = select i1 %53, i1 %56, i1 false
  br i1 %57, label %66, label %58

58:                                               ; preds = %27
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet_netconf_valid_get_req.__msg.48) #20
  %59 = icmp eq ptr %2, null
  br i1 %59, label %104, label %60

60:                                               ; preds = %58
  store ptr @inet_netconf_valid_get_req.__msg.48, ptr %2, align 4
  br label %104

61:                                               ; preds = %14
  %62 = getelementptr i8, ptr %1, i32 20
  %63 = add i32 %12, -20
  %64 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 8, ptr noundef %62, i32 noundef %63, ptr noundef nonnull @devconf_ipv4_policy, i32 noundef 0, ptr noundef %2) #20
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %104

66:                                               ; preds = %61, %27
  %67 = getelementptr inbounds [9 x ptr], ptr %4, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %104, label %70

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %68, i32 4
  %72 = load i32, ptr %71, align 4
  switch i32 %72, label %77 [
    i32 -1, label %73
    i32 -2, label %75
  ]

73:                                               ; preds = %70
  %74 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  br label %86

75:                                               ; preds = %70
  %76 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 7), align 32
  br label %86

77:                                               ; preds = %70
  %78 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %72) #20
  %79 = icmp eq ptr %78, null
  br i1 %79, label %104, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 68
  %82 = load ptr, ptr %81, align 16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %104, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.in_device, ptr %82, i32 0, i32 21
  br label %86

86:                                               ; preds = %84, %75, %73
  %87 = phi ptr [ %85, %84 ], [ %76, %75 ], [ %74, %73 ]
  %88 = call ptr @__alloc_skb(i32 noundef 76, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #20
  %89 = icmp eq ptr %88, null
  br i1 %89, label %104, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = call fastcc i32 @inet_netconf_fill_devconf(ptr noundef nonnull %88, i32 noundef %72, ptr noundef %87, i32 noundef %92, i32 noundef %94, i32 noundef 80, i32 noundef 0, i32 noundef -1)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = icmp eq i32 %95, -90
  br i1 %98, label %99, label %100, !prof !15

99:                                               ; preds = %97
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2213, i32 noundef 9, ptr noundef null) #20
  br label %100

100:                                              ; preds = %99, %97
  call void @kfree_skb_reason(ptr noundef nonnull %88, i32 noundef 0) #20
  br label %104

101:                                              ; preds = %90
  %102 = load i32, ptr %91, align 4
  %103 = call i32 @rtnl_unicast(ptr noundef nonnull %88, ptr noundef nonnull @init_net, i32 noundef %102) #20
  br label %104

104:                                              ; preds = %101, %100, %86, %80, %77, %66, %61, %60, %58, %22, %21, %19, %17, %15, %9, %7
  %105 = phi i32 [ %64, %61 ], [ %95, %100 ], [ %103, %101 ], [ -105, %86 ], [ -22, %80 ], [ -22, %77 ], [ -22, %66 ], [ -22, %19 ], [ -22, %21 ], [ -22, %15 ], [ -22, %17 ], [ -22, %58 ], [ -22, %60 ], [ %25, %22 ], [ -22, %7 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_netconf_dump_devconf(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %6 = load i8, ptr %5, align 4, !range !24
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = icmp ult i32 %11, 17
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_netconf_dump_devconf.__msg) #20
  %14 = icmp eq ptr %10, null
  br i1 %14, label %116, label %15

15:                                               ; preds = %13
  store ptr @inet_netconf_dump_devconf.__msg, ptr %10, align 4
  br label %116

16:                                               ; preds = %8
  %17 = icmp eq i32 %11, 20
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_netconf_dump_devconf.__msg.49) #20
  %19 = icmp eq ptr %10, null
  br i1 %19, label %116, label %20

20:                                               ; preds = %18
  store ptr @inet_netconf_dump_devconf.__msg.49, ptr %10, align 4
  br label %116

21:                                               ; preds = %16, %2
  %22 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %23, 256
  br i1 %26, label %27, label %89

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  %29 = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %31 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  br label %32

32:                                               ; preds = %85, %27
  %33 = phi i32 [ %23, %27 ], [ %87, %85 ]
  %34 = phi i32 [ %25, %27 ], [ 0, %85 ]
  %35 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 24), align 4
  %36 = getelementptr %struct.hlist_head, ptr %35, i32 %33
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115), align 8
  %38 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 3), align 4
  %39 = xor i32 %38, %37
  store i32 %39, ptr %28, align 4
  %40 = load volatile ptr, ptr %36, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 -560
  %43 = icmp eq ptr %42, null
  %44 = or i1 %41, %43
  br i1 %44, label %85, label %45

45:                                               ; preds = %77, %32
  %46 = phi i32 [ %78, %77 ], [ 0, %32 ]
  %47 = phi ptr [ %82, %77 ], [ %42, %32 ]
  %48 = icmp slt i32 %46, %34
  br i1 %48, label %77, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 68
  %51 = load volatile ptr, ptr %50, align 16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %77, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 17
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.in_device, ptr %51, i32 0, i32 21
  %57 = load ptr, ptr %1, align 4
  %58 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 3, i32 12
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %29, align 4
  %61 = tail call fastcc i32 @inet_netconf_fill_devconf(ptr noundef %0, i32 noundef %55, ptr noundef %56, i32 noundef %59, i32 noundef %60, i32 noundef 80, i32 noundef 2, i32 noundef -1)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  br label %111

64:                                               ; preds = %53
  %65 = load ptr, ptr %30, align 4
  %66 = load i32, ptr %31, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %28, align 4
  %70 = icmp eq i32 %69, %66
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.nlmsghdr, ptr %65, i32 0, i32 2
  %73 = load i16, ptr %72, align 2
  %74 = or i16 %73, 16
  store i16 %74, ptr %72, align 2
  br label %75

75:                                               ; preds = %71, %68, %64
  %76 = load i32, ptr %28, align 4
  store i32 %76, ptr %31, align 4
  br label %77

77:                                               ; preds = %75, %49, %45
  %78 = add i32 %46, 1
  %79 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 85
  %80 = load volatile ptr, ptr %79, align 16
  %81 = icmp eq ptr %80, null
  %82 = getelementptr i8, ptr %80, i32 -560
  %83 = icmp eq ptr %82, null
  %84 = or i1 %81, %83
  br i1 %84, label %85, label %45

85:                                               ; preds = %77, %32
  %86 = phi i32 [ 0, %32 ], [ %78, %77 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  %87 = add nsw i32 %33, 1
  %88 = icmp eq i32 %87, 256
  br i1 %88, label %90, label %32

89:                                               ; preds = %21
  switch i32 %23, label %111 [
    i32 256, label %90
    i32 257, label %100
  ]

90:                                               ; preds = %89, %85
  %91 = phi i32 [ %25, %89 ], [ %86, %85 ]
  %92 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %93 = load ptr, ptr %1, align 4
  %94 = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 3, i32 12
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = tail call fastcc i32 @inet_netconf_fill_devconf(ptr noundef %0, i32 noundef -1, ptr noundef %92, i32 noundef %95, i32 noundef %97, i32 noundef 80, i32 noundef 2, i32 noundef -1)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %90, %89
  %101 = phi i32 [ %25, %89 ], [ %91, %90 ]
  %102 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 7), align 32
  %103 = load ptr, ptr %1, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 3, i32 12
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = tail call fastcc i32 @inet_netconf_fill_devconf(ptr noundef %0, i32 noundef -2, ptr noundef %102, i32 noundef %105, i32 noundef %107, i32 noundef 80, i32 noundef 2, i32 noundef -1)
  %109 = icmp slt i32 %108, 0
  %110 = select i1 %109, i32 257, i32 258
  br label %111

111:                                              ; preds = %100, %90, %89, %63
  %112 = phi i32 [ %46, %63 ], [ %91, %90 ], [ %101, %100 ], [ %25, %89 ]
  %113 = phi i32 [ %33, %63 ], [ 256, %90 ], [ %110, %100 ], [ %23, %89 ]
  store i32 %113, ptr %22, align 4
  store i32 %112, ptr %24, align 4
  %114 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %115 = load i32, ptr %114, align 8
  br label %116

116:                                              ; preds = %111, %20, %18, %15, %13
  %117 = phi i32 [ %115, %111 ], [ -22, %15 ], [ -22, %20 ], [ -22, %13 ], [ -22, %18 ]
  ret i32 %117
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__inet_del_ifa(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %7 = getelementptr %struct.ipv4_devconf, ptr %6, i32 0, i32 1, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr %struct.in_device, ptr %0, i32 0, i32 21, i32 1, i32 19
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i1 [ true, %5 ], [ %13, %10 ]
  %16 = tail call i32 @rtnl_is_locked() #20
  %17 = icmp eq i32 %16, 0
  %18 = load i1, ptr @__inet_del_ifa.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !15

21:                                               ; preds = %14
  store i1 true, ptr @__inet_del_ifa.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 360, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 360) #20
  br label %22

22:                                               ; preds = %21, %14
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %124

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %124

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %124, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 6
  %40 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 5
  %41 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 9
  br label %42

42:                                               ; preds = %71, %38
  %43 = phi ptr [ %36, %38 ], [ %74, %71 ]
  %44 = phi ptr [ %25, %38 ], [ %72, %71 ]
  %45 = phi ptr [ null, %38 ], [ %48, %71 ]
  %46 = phi ptr [ %35, %38 ], [ %73, %71 ]
  br label %47

47:                                               ; preds = %94, %42
  %48 = phi ptr [ %43, %42 ], [ %99, %94 ]
  %49 = getelementptr inbounds %struct.in_ifaddr, ptr %48, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i8, ptr %41, align 4
  %55 = getelementptr inbounds %struct.in_ifaddr, ptr %48, i32 0, i32 9
  %56 = load i8, ptr %55, align 4
  %57 = icmp ugt i8 %54, %56
  %58 = select i1 %57, ptr %44, ptr %48
  br label %71

59:                                               ; preds = %47
  %60 = load i32, ptr %39, align 4
  %61 = getelementptr inbounds %struct.in_ifaddr, ptr %48, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, ptr %40, align 4
  %66 = getelementptr inbounds %struct.in_ifaddr, ptr %48, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = xor i32 %67, %65
  %69 = and i32 %68, %60
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64, %59, %53
  %72 = phi ptr [ %58, %53 ], [ %44, %59 ], [ %44, %64 ]
  %73 = getelementptr inbounds %struct.in_ifaddr, ptr %48, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %124, label %42

76:                                               ; preds = %64
  br i1 %15, label %101, label %77

77:                                               ; preds = %76
  %78 = tail call i32 @rtnl_is_locked() #20
  %79 = icmp eq i32 %78, 0
  %80 = load i1, ptr @inet_hash_remove.__already_done, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !15

83:                                               ; preds = %77
  store i1 true, ptr @inet_hash_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 140) #20
  br label %84

84:                                               ; preds = %83, %77
  %85 = getelementptr inbounds %struct.hlist_node, ptr %48, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %48, align 4
  store volatile ptr %89, ptr %86, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.hlist_node, ptr %89, i32 0, i32 1
  store volatile ptr %86, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %88
  store volatile ptr null, ptr %85, align 4
  br label %94

94:                                               ; preds = %93, %84
  %95 = getelementptr inbounds %struct.in_ifaddr, ptr %48, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  store ptr %96, ptr %46, align 4
  tail call fastcc void @rtmsg_ifa(i32 noundef 21, ptr noundef nonnull %48, ptr noundef %3, i32 noundef %4)
  %97 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @inetaddr_chain, i32 noundef 2, ptr noundef nonnull %48) #20
  %98 = getelementptr inbounds %struct.in_ifaddr, ptr %48, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %98, ptr noundef nonnull @inet_rcu_free_ifa) #20
  %99 = load ptr, ptr %46, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %124, label %47

101:                                              ; preds = %76
  %102 = icmp eq ptr %43, null
  br i1 %102, label %124, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 6
  %105 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 5
  br label %106

106:                                              ; preds = %120, %103
  %107 = phi ptr [ %43, %103 ], [ %122, %120 ]
  %108 = load i32, ptr %104, align 4
  %109 = getelementptr inbounds %struct.in_ifaddr, ptr %107, i32 0, i32 6
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load i32, ptr %105, align 4
  %114 = getelementptr inbounds %struct.in_ifaddr, ptr %107, i32 0, i32 5
  %115 = load i32, ptr %114, align 4
  %116 = xor i32 %115, %113
  %117 = and i32 %116, %108
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  tail call void @fib_del_ifaddr(ptr noundef nonnull %107, ptr noundef %23) #20
  br label %120

120:                                              ; preds = %119, %112, %106
  %121 = getelementptr inbounds %struct.in_ifaddr, ptr %107, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %106

124:                                              ; preds = %120, %101, %94, %71, %34, %29, %22
  %125 = phi ptr [ null, %22 ], [ %45, %101 ], [ null, %34 ], [ null, %29 ], [ %45, %120 ], [ %45, %94 ], [ %48, %71 ]
  %126 = phi ptr [ %25, %22 ], [ %44, %101 ], [ %25, %34 ], [ %25, %29 ], [ %44, %120 ], [ %44, %94 ], [ %72, %71 ]
  %127 = phi ptr [ null, %22 ], [ null, %101 ], [ null, %34 ], [ null, %29 ], [ %43, %120 ], [ null, %94 ], [ null, %71 ]
  %128 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  store ptr %129, ptr %1, align 4
  %130 = tail call i32 @rtnl_is_locked() #20
  %131 = icmp eq i32 %130, 0
  %132 = load i1, ptr @inet_hash_remove.__already_done, align 1
  %133 = xor i1 %132, true
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %136, !prof !15

135:                                              ; preds = %124
  store i1 true, ptr @inet_hash_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 140) #20
  br label %136

136:                                              ; preds = %135, %124
  %137 = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %23, align 4
  store volatile ptr %141, ptr %138, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.hlist_node, ptr %141, i32 0, i32 1
  store volatile ptr %138, ptr %144, align 4
  br label %145

145:                                              ; preds = %143, %140
  store volatile ptr null, ptr %137, align 4
  br label %146

146:                                              ; preds = %145, %136
  tail call fastcc void @rtmsg_ifa(i32 noundef 21, ptr noundef %23, ptr noundef %3, i32 noundef %4)
  %147 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @inetaddr_chain, i32 noundef 2, ptr noundef %23) #20
  %148 = icmp eq ptr %127, null
  br i1 %148, label %184, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.in_ifaddr, ptr %127, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %125, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !25
  %154 = getelementptr inbounds %struct.in_ifaddr, ptr %125, i32 0, i32 1
  store volatile ptr %151, ptr %154, align 4
  %155 = getelementptr inbounds %struct.in_ifaddr, ptr %126, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !26
  store volatile ptr %156, ptr %150, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !27
  store volatile ptr %127, ptr %155, align 4
  br label %157

157:                                              ; preds = %153, %149
  %158 = getelementptr inbounds %struct.in_ifaddr, ptr %127, i32 0, i32 11
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, -2
  store i32 %160, ptr %158, align 4
  tail call fastcc void @rtmsg_ifa(i32 noundef 20, ptr noundef nonnull %127, ptr noundef %3, i32 noundef %4)
  %161 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @inetaddr_chain, i32 noundef 1, ptr noundef nonnull %127) #20
  %162 = icmp eq ptr %151, null
  br i1 %162, label %184, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 6
  %165 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 5
  br label %166

166:                                              ; preds = %180, %163
  %167 = phi ptr [ %151, %163 ], [ %182, %180 ]
  %168 = load i32, ptr %164, align 4
  %169 = getelementptr inbounds %struct.in_ifaddr, ptr %167, i32 0, i32 6
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load i32, ptr %165, align 4
  %174 = getelementptr inbounds %struct.in_ifaddr, ptr %167, i32 0, i32 5
  %175 = load i32, ptr %174, align 4
  %176 = xor i32 %175, %173
  %177 = and i32 %176, %168
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  tail call void @fib_add_ifaddr(ptr noundef nonnull %167) #20
  br label %180

180:                                              ; preds = %179, %172, %166
  %181 = getelementptr inbounds %struct.in_ifaddr, ptr %167, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %166

184:                                              ; preds = %180, %157, %146
  %185 = icmp eq i32 %2, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.in_ifaddr, ptr %23, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %187, ptr noundef nonnull @inet_rcu_free_ifa) #20
  br label %188

188:                                              ; preds = %186, %184
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtmsg_ifa(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.inet_fill_args, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  store i32 %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inet_fill_args, ptr %5, i32 0, i32 1
  %7 = icmp eq ptr %2, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nlmsghdr, ptr %2, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ 0, %4 ]
  store i32 %12, ptr %6, align 4
  %13 = getelementptr inbounds %struct.inet_fill_args, ptr %5, i32 0, i32 2
  store i32 %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.inet_fill_args, ptr %5, i32 0, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inet_fill_args, ptr %5, i32 0, i32 4
  store i32 -1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inet_fill_args, ptr %5, i32 0, i32 5
  store i32 0, ptr %16, align 4
  %17 = tail call ptr @__alloc_skb(i32 noundef 104, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = call fastcc i32 @inet_fill_ifaddr(ptr noundef nonnull %17, ptr noundef %1, ptr noundef nonnull %5)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, -90
  br i1 %23, label %24, label %25, !prof !15

24:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1908, i32 noundef 9, ptr noundef null) #20
  br label %25

25:                                               ; preds = %24, %22
  tail call void @kfree_skb_reason(ptr noundef nonnull %17, i32 noundef 0) #20
  br label %27

26:                                               ; preds = %19
  tail call void @rtnl_notify(ptr noundef nonnull %17, ptr noundef nonnull @init_net, i32 noundef %3, i32 noundef 5, ptr noundef %2, i32 noundef 3264) #20
  br label %29

27:                                               ; preds = %25, %11
  %28 = phi i32 [ %20, %25 ], [ -105, %11 ]
  tail call void @rtnl_set_sk_err(ptr noundef nonnull @init_net, i32 noundef 5, i32 noundef %28) #20
  br label %29

29:                                               ; preds = %27, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_del_ifaddr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_add_ifaddr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet_fill_ifaddr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, ptr %2, align 4
  %11 = getelementptr inbounds %struct.inet_fill_args, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.inet_fill_args, ptr %2, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.inet_fill_args, ptr %2, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %143

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = ptrtoint ptr %22 to i32
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %25, %26
  %28 = icmp slt i32 %27, 24
  br i1 %28, label %143, label %29, !prof !15

29:                                               ; preds = %20
  %30 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef 8, i32 noundef %16) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %143, label %32

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %30, i32 16
  store i8 2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 10
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr i8, ptr %30, i32 17
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr i8, ptr %30, i32 18
  store i8 %39, ptr %40, align 2
  %41 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 9
  %42 = load i8, ptr %41, align 4
  %43 = getelementptr i8, ptr %30, i32 19
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 17
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %30, i32 20
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.inet_fill_args, ptr %2, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  store i32 %51, ptr %9, align 4
  %54 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %132

56:                                               ; preds = %53
  %57 = load i8, ptr %40, align 2
  br label %58

58:                                               ; preds = %56, %32
  %59 = phi i8 [ %57, %56 ], [ %39, %32 ]
  %60 = icmp sgt i8 %59, -1
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 14
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 13
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %63, -1
  br i1 %66, label %77, label %67

67:                                               ; preds = %61
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 16
  %70 = load i32, ptr %69, align 4
  %71 = sub i32 %68, %70
  %72 = udiv i32 %71, 100
  %73 = call i32 @llvm.usub.sat.i32(i32 %63, i32 %72)
  %74 = icmp eq i32 %65, -1
  br i1 %74, label %77, label %75

75:                                               ; preds = %67
  %76 = call i32 @llvm.usub.sat.i32(i32 %65, i32 %72)
  br label %77

77:                                               ; preds = %75, %67, %61, %58
  %78 = phi i32 [ -1, %61 ], [ %73, %67 ], [ -1, %58 ], [ %73, %75 ]
  %79 = phi i32 [ %65, %61 ], [ -1, %67 ], [ -1, %58 ], [ %76, %75 ]
  %80 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  store i32 %81, ptr %8, align 4
  %84 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %132

86:                                               ; preds = %83, %77
  %87 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 %88, ptr %7, align 4
  %91 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %90, %86
  %94 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 8
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 %95, ptr %6, align 4
  %98 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %97, %93
  %101 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 12
  %102 = load i8, ptr %101, align 4
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = call i32 @strlen(ptr noundef %101) #20
  %106 = add i32 %105, 1
  %107 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef %106, ptr noundef %101) #20
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %104, %100
  %110 = load i32, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 %110, ptr %5, align 4
  %111 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 7
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 %115, ptr %4, align 4
  %118 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %117, %113
  %121 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 15
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 16
  %124 = load i32, ptr %123, align 4
  %125 = call fastcc i32 @put_cacheinfo(ptr noundef %0, i32 noundef %122, i32 noundef %124, i32 noundef %78, i32 noundef %79)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load ptr, ptr %23, align 8
  %129 = ptrtoint ptr %128 to i32
  %130 = ptrtoint ptr %30 to i32
  %131 = sub i32 %129, %130
  store i32 %131, ptr %30, align 4
  br label %143

132:                                              ; preds = %120, %117, %109, %104, %97, %90, %83, %53
  %133 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %134 = load ptr, ptr %133, align 4
  %135 = icmp ugt ptr %134, %30
  br i1 %135, label %136, label %138, !prof !15

136:                                              ; preds = %132
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #20
  %137 = load ptr, ptr %133, align 4
  br label %138

138:                                              ; preds = %136, %132
  %139 = phi ptr [ %137, %136 ], [ %134, %132 ]
  %140 = ptrtoint ptr %30 to i32
  %141 = ptrtoint ptr %139 to i32
  %142 = sub i32 %140, %141
  call void @skb_trim(ptr noundef %0, i32 noundef %142) #20
  br label %143

143:                                              ; preds = %138, %127, %29, %20, %3
  %144 = phi i32 [ -90, %138 ], [ 0, %127 ], [ -90, %29 ], [ -90, %20 ], [ -90, %3 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @put_cacheinfo(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ifa_cacheinfo, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %7 = mul i32 %1, 100
  %8 = add i32 %7, 3000000
  %9 = udiv i32 %8, 100
  %10 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %6, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = mul i32 %2, 100
  %12 = add i32 %11, 3000000
  %13 = udiv i32 %12, 100
  %14 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %6, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  store i32 %3, ptr %6, align 4
  %15 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %6, i32 0, i32 1
  store i32 %4, ptr %15, align 4
  %16 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 16, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inet_rcu_free_ifa(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.in_device, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #20, !srcloc !17
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #20, !srcloc !29
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %14, label %12, !prof !14

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #20
  br label %14

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !30
  tail call void @in_dev_finish_destroy(ptr noundef nonnull %3) #20
  br label %14

14:                                               ; preds = %13, %12, %10, %1
  %15 = getelementptr i8, ptr %0, i32 -16
  tail call void @kfree(ptr noundef %15) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #15 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #20, !srcloc !17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #20, !srcloc !18
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !15

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !14

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #20
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__inet_insert_ifa(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.in_validator_info, align 4
  %6 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %8 = tail call i32 @rtnl_is_locked() #20
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @__inet_insert_ifa.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !15

13:                                               ; preds = %4
  store i1 true, ptr @__inet_insert_ifa.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 483, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 483) #20
  br label %14

14:                                               ; preds = %13, %4
  %15 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %19, ptr noundef nonnull @inet_rcu_free_ifa) #20
  br label %130

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 4
  %24 = and i32 %22, -2400
  store i32 %24, ptr %21, align 4
  %25 = load ptr, ptr %23, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %81, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 9
  %29 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 5
  br label %32

32:                                               ; preds = %74, %27
  %33 = phi i32 [ %24, %27 ], [ %75, %74 ]
  %34 = phi ptr [ %25, %27 ], [ %77, %74 ]
  %35 = phi ptr [ %23, %27 ], [ %48, %74 ]
  %36 = getelementptr inbounds %struct.in_ifaddr, ptr %34, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i8, ptr %28, align 4
  %42 = getelementptr inbounds %struct.in_ifaddr, ptr %34, i32 0, i32 9
  %43 = load i8, ptr %42, align 4
  %44 = icmp ugt i8 %41, %43
  %45 = getelementptr inbounds %struct.in_ifaddr, ptr %34, i32 0, i32 1
  %46 = select i1 %44, ptr %35, ptr %45
  br label %47

47:                                               ; preds = %40, %32
  %48 = phi ptr [ %35, %32 ], [ %46, %40 ]
  %49 = getelementptr inbounds %struct.in_ifaddr, ptr %34, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %30
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.in_ifaddr, ptr %34, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %31, align 4
  %56 = xor i32 %55, %54
  %57 = and i32 %56, %30
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.in_ifaddr, ptr %34, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %16
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %64, ptr noundef nonnull @inet_rcu_free_ifa) #20
  br label %130

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.in_ifaddr, ptr %34, i32 0, i32 9
  %67 = load i8, ptr %66, align 4
  %68 = load i8, ptr %28, align 4
  %69 = icmp eq i8 %67, %68
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %71, ptr noundef nonnull @inet_rcu_free_ifa) #20
  br label %130

72:                                               ; preds = %65
  %73 = or i32 %33, 1
  store i32 %73, ptr %21, align 4
  br label %74

74:                                               ; preds = %72, %52, %47
  %75 = phi i32 [ %73, %72 ], [ %33, %52 ], [ %33, %47 ]
  %76 = getelementptr inbounds %struct.in_ifaddr, ptr %34, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %32

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.in_ifaddr, ptr %34, i32 0, i32 1
  br label %81

81:                                               ; preds = %79, %20
  %82 = phi ptr [ %23, %20 ], [ %80, %79 ]
  %83 = phi ptr [ %23, %20 ], [ %48, %79 ]
  %84 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  store i32 %85, ptr %5, align 4
  %86 = load ptr, ptr %6, align 4
  %87 = getelementptr inbounds %struct.in_validator_info, ptr %5, i32 0, i32 1
  store ptr %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.in_validator_info, ptr %5, i32 0, i32 2
  store ptr %3, ptr %88, align 4
  %89 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @inetaddr_validator_chain, i32 noundef 1, ptr noundef nonnull %5) #20
  %90 = and i32 %89, -32769
  %91 = icmp sgt i32 %90, 1
  %92 = sub i32 1, %90
  %93 = select i1 %91, i32 %92, i32 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 3
  call void @call_rcu(ptr noundef %96, ptr noundef nonnull @inet_rcu_free_ifa) #20
  br label %130

97:                                               ; preds = %81
  %98 = load i32, ptr %21, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, ptr %15, align 4
  call void @prandom_seed(i32 noundef %102) #20
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi ptr [ %82, %97 ], [ %83, %101 ]
  %105 = load ptr, ptr %104, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !31
  %106 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 1
  store volatile ptr %105, ptr %106, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !32
  store volatile ptr %0, ptr %104, align 4
  %107 = load i32, ptr %15, align 4
  %108 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %109 = xor i32 %108, %107
  %110 = mul i32 %109, 1640531527
  %111 = lshr i32 %110, 24
  %112 = call i32 @rtnl_is_locked() #20
  %113 = icmp eq i32 %112, 0
  %114 = load i1, ptr @inet_hash_insert.__already_done, align 1
  %115 = xor i1 %114, true
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %117, label %118, !prof !15

117:                                              ; preds = %103
  store i1 true, ptr @inet_hash_insert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 134) #20
  br label %118

118:                                              ; preds = %117, %103
  %119 = getelementptr [256 x %struct.hlist_head], ptr @inet_addr_lst, i32 0, i32 %111
  %120 = load ptr, ptr %119, align 4
  store ptr %120, ptr %0, align 4
  %121 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  store volatile ptr %119, ptr %121, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !33
  store volatile ptr %0, ptr %119, align 4
  %122 = icmp eq ptr %120, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.hlist_node, ptr %120, i32 0, i32 1
  store volatile ptr %0, ptr %124, align 4
  br label %125

125:                                              ; preds = %123, %118
  %126 = call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @check_lifetime_work) #20
  %127 = load ptr, ptr @system_power_efficient_wq, align 4
  %128 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %127, ptr noundef nonnull @check_lifetime_work, i32 noundef 0) #20
  call fastcc void @rtmsg_ifa(i32 noundef 20, ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %129 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @inetaddr_chain, i32 noundef 1, ptr noundef %0) #20
  br label %130

130:                                              ; preds = %125, %95, %70, %63, %18
  %131 = phi i32 [ -17, %63 ], [ -22, %70 ], [ %93, %95 ], [ 0, %125 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_seed(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @devinet_init_net(ptr noundef %0) #11 section ".init.text" {
  %2 = tail call ptr @kmemdup(ptr noundef nonnull @ipv4_devconf, i32 noundef 144, i32 noundef 3264) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @kmemdup(ptr noundef nonnull @ipv4_devconf_dflt, i32 noundef 144, i32 noundef 3264) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @kmemdup(ptr noundef nonnull @ctl_forward_entry, i32 noundef 72, i32 noundef 3264) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ipv4_devconf, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 7
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 8
  store ptr %0, ptr %14, align 4
  %15 = tail call fastcc i32 @__devinet_sysctl_register(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef -1, ptr noundef nonnull %2)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %10
  %18 = tail call fastcc i32 @__devinet_sysctl_register(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef -2, ptr noundef nonnull %5)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 1
  store ptr %21, ptr %24, align 8
  %25 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 6
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 7
  store ptr %5, ptr %26, align 32
  br label %36

27:                                               ; preds = %20
  tail call fastcc void @__devinet_sysctl_unregister(ptr noundef %0, ptr noundef nonnull %5, i32 noundef -2)
  br label %28

28:                                               ; preds = %27, %17
  %29 = phi i32 [ %18, %17 ], [ -12, %27 ]
  tail call fastcc void @__devinet_sysctl_unregister(ptr noundef %0, ptr noundef nonnull %2, i32 noundef -1)
  br label %30

30:                                               ; preds = %28, %10
  %31 = phi i32 [ %15, %10 ], [ %29, %28 ]
  tail call void @kfree(ptr noundef nonnull %8) #20
  br label %32

32:                                               ; preds = %30, %7
  %33 = phi i32 [ %31, %30 ], [ -12, %7 ]
  tail call void @kfree(ptr noundef nonnull %5) #20
  br label %34

34:                                               ; preds = %32, %4
  %35 = phi i32 [ %33, %32 ], [ -12, %4 ]
  tail call void @kfree(ptr noundef nonnull %2) #20
  br label %36

36:                                               ; preds = %34, %23, %1
  %37 = phi i32 [ 0, %23 ], [ %35, %34 ], [ -12, %1 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devinet_exit_net(ptr noundef %0) #17 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %3) #20
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 7
  %7 = load ptr, ptr %6, align 32
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  store ptr null, ptr %7, align 4
  %11 = load ptr, ptr %8, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %11) #20
  tail call void @kfree(ptr noundef nonnull %8) #20
  br label %12

12:                                               ; preds = %10, %1
  tail call void @inet_netconf_notify_devconf(ptr noundef %0, i32 noundef 81, i32 noundef 0, i32 noundef -2, ptr noundef null) #20
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  store ptr null, ptr %14, align 4
  %18 = load ptr, ptr %15, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %18) #20
  tail call void @kfree(ptr noundef nonnull %15) #20
  br label %19

19:                                               ; preds = %17, %12
  tail call void @inet_netconf_notify_devconf(ptr noundef %0, i32 noundef 81, i32 noundef 0, i32 noundef -1, ptr noundef null) #20
  tail call void @kfree(ptr noundef %5) #20
  %20 = load ptr, ptr %6, align 32
  tail call void @kfree(ptr noundef %20) #20
  %21 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %21) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__devinet_sysctl_register(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [31 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %5, i8 0, i32 31, i1 false), !annotation !19
  %6 = tail call ptr @kmemdup(ptr noundef nonnull @devinet_sysctl, i32 noundef 1228, i32 noundef 3264) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = ptrtoint ptr %3 to i32
  %10 = sub i32 %9, ptrtoint (ptr @ipv4_devconf to i32)
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ 0, %8 ], [ %18, %11 ]
  %13 = getelementptr %struct.devinet_sysctl_table, ptr %6, i32 0, i32 1, i32 %12, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %10
  store ptr %15, ptr %13, align 4
  %16 = getelementptr %struct.devinet_sysctl_table, ptr %6, i32 0, i32 1, i32 %12, i32 7
  store ptr %3, ptr %16, align 4
  %17 = getelementptr %struct.devinet_sysctl_table, ptr %6, i32 0, i32 1, i32 %12, i32 8
  store ptr %0, ptr %17, align 4
  %18 = add nuw nsw i32 %12, 1
  %19 = icmp eq i32 %18, 33
  br i1 %19, label %20, label %11

20:                                               ; preds = %11
  %21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 31, ptr noundef nonnull @.str.10, ptr noundef %1)
  %22 = getelementptr inbounds %struct.devinet_sysctl_table, ptr %6, i32 0, i32 1
  %23 = call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %22) #20
  store ptr %23, ptr %6, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store ptr %6, ptr %3, align 4
  call void @inet_netconf_notify_devconf(ptr noundef %0, i32 noundef 80, i32 noundef -1, i32 noundef %2, ptr noundef %3)
  br label %27

26:                                               ; preds = %20
  call void @kfree(ptr noundef nonnull %6) #20
  br label %27

27:                                               ; preds = %26, %25, %4
  %28 = phi i32 [ 0, %25 ], [ -12, %4 ], [ -12, %26 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %5) #20
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__devinet_sysctl_unregister(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  store ptr null, ptr %1, align 4
  %7 = load ptr, ptr %4, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %7) #20
  tail call void @kfree(ptr noundef nonnull %4) #20
  br label %8

8:                                                ; preds = %6, %3
  tail call void @inet_netconf_notify_devconf(ptr noundef %0, i32 noundef 81, i32 noundef 0, i32 noundef %2, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devinet_sysctl_forward(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = load i64, ptr %4, align 8
  %10 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef 0, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  br label %81

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = tail call zeroext i1 @ns_capable(ptr noundef %17, i32 noundef 12) #20
  br i1 %18, label %19, label %81

19:                                               ; preds = %15
  %20 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  %21 = load i32, ptr %7, align 4
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %81, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 35, i32 7
  %25 = load ptr, ptr %24, align 32
  %26 = getelementptr inbounds %struct.ipv4_devconf, ptr %25, i32 0, i32 1
  %27 = icmp eq ptr %7, %26
  br i1 %27, label %80, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @rtnl_trylock() #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  store i32 %8, ptr %7, align 4
  store i64 %9, ptr %4, align 8
  %32 = tail call ptr @llvm.thread.pointer() #20
  tail call void @_set_bit(i32 noundef 0, ptr noundef %32) #20
  br label %81

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 35, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ipv4_devconf, ptr %35, i32 0, i32 1
  %37 = icmp eq ptr %7, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = load i32, ptr %7, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = getelementptr %struct.ipv4_devconf, ptr %35, i32 0, i32 1, i32 3
  store i32 %41, ptr %42, align 4
  %43 = load ptr, ptr %24, align 32
  %44 = getelementptr inbounds %struct.ipv4_devconf, ptr %43, i32 0, i32 1
  store i32 %39, ptr %44, align 4
  %45 = load ptr, ptr %34, align 4
  tail call void @inet_netconf_notify_devconf(ptr noundef %11, i32 noundef 80, i32 noundef 2, i32 noundef -1, ptr noundef %45) #20
  %46 = load ptr, ptr %24, align 32
  tail call void @inet_netconf_notify_devconf(ptr noundef %11, i32 noundef 80, i32 noundef 2, i32 noundef -2, ptr noundef %46) #20
  %47 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 16
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %79, label %50

50:                                               ; preds = %64, %38
  %51 = phi ptr [ %65, %64 ], [ %48, %38 ]
  br i1 %40, label %54, label %52

52:                                               ; preds = %50
  %53 = getelementptr i8, ptr %51, i32 -40
  tail call void @dev_disable_lro(ptr noundef %53) #20
  br label %54

54:                                               ; preds = %52, %50
  %55 = getelementptr i8, ptr %51, i32 424
  %56 = load ptr, ptr %55, align 16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.in_device, ptr %56, i32 0, i32 21, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %59) #20
  %60 = getelementptr %struct.in_device, ptr %56, i32 0, i32 21, i32 1, i32 0
  store i32 %39, ptr %60, align 4
  %61 = getelementptr i8, ptr %51, i32 84
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.in_device, ptr %56, i32 0, i32 21
  tail call void @inet_netconf_notify_devconf(ptr noundef %11, i32 noundef 80, i32 noundef 2, i32 noundef %62, ptr noundef %63) #20
  br label %64

64:                                               ; preds = %58, %54
  %65 = load ptr, ptr %51, align 8
  %66 = icmp eq ptr %65, %47
  br i1 %66, label %79, label %50

67:                                               ; preds = %33
  %68 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 -108
  %71 = load i32, ptr %7, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %70, align 4
  tail call void @dev_disable_lro(ptr noundef %74) #20
  br label %75

75:                                               ; preds = %73, %67
  %76 = load ptr, ptr %70, align 4
  %77 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 17
  %78 = load i32, ptr %77, align 4
  tail call void @inet_netconf_notify_devconf(ptr noundef %11, i32 noundef 80, i32 noundef 2, i32 noundef %78, ptr noundef %69)
  br label %79

79:                                               ; preds = %75, %64, %38
  tail call void @rtnl_unlock() #20
  tail call void @rt_cache_flush(ptr noundef %11) #20
  br label %81

80:                                               ; preds = %23
  tail call void @inet_netconf_notify_devconf(ptr noundef %11, i32 noundef 80, i32 noundef 2, i32 noundef -2, ptr noundef %25)
  br label %81

81:                                               ; preds = %80, %79, %31, %19, %15, %13
  %82 = phi i32 [ -513, %31 ], [ -1, %15 ], [ %20, %79 ], [ %20, %80 ], [ %20, %19 ], [ %14, %13 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_disable_lro(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_cache_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devinet_conf_proc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  %10 = load ptr, ptr %6, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %112, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ipv4_devconf, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %10 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  %22 = ashr exact i32 %21, 2
  %23 = getelementptr inbounds %struct.ipv4_devconf, ptr %15, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %22, ptr noundef %23) #20
  %24 = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 35, i32 7
  %25 = load ptr, ptr %24, align 32
  %26 = icmp eq ptr %15, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  %28 = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 16
  %29 = load volatile ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %54, label %31

31:                                               ; preds = %27
  %32 = lshr i32 %22, 5
  %33 = and i32 %22, 31
  %34 = shl nuw i32 1, %33
  br label %35

35:                                               ; preds = %51, %31
  %36 = phi ptr [ %29, %31 ], [ %52, %51 ]
  %37 = getelementptr i8, ptr %36, i32 424
  %38 = load volatile ptr, ptr %37, align 16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.in_device, ptr %38, i32 0, i32 21, i32 2
  %42 = getelementptr i32, ptr %41, i32 %32
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, %34
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load ptr, ptr %24, align 32
  %48 = getelementptr %struct.ipv4_devconf, ptr %47, i32 0, i32 1, i32 %22
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.in_device, ptr %38, i32 0, i32 21, i32 1, i32 %22
  store i32 %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %46, %40, %35
  %52 = load volatile ptr, ptr %36, align 8
  %53 = icmp eq ptr %52, %28
  br i1 %53, label %54, label %35

54:                                               ; preds = %51, %27
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  br label %55

55:                                               ; preds = %54, %13
  switch i32 %21, label %112 [
    i32 100, label %56
    i32 88, label %56
    i32 124, label %61
    i32 28, label %64
    i32 8, label %80
    i32 112, label %96
  ]

56:                                               ; preds = %55, %55
  %57 = icmp eq i32 %11, 0
  %58 = icmp ne i32 %8, 0
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %112

60:                                               ; preds = %56
  tail call void @rt_cache_flush(ptr noundef %17) #20
  br label %112

61:                                               ; preds = %55
  %62 = icmp eq i32 %11, %8
  br i1 %62, label %112, label %63

63:                                               ; preds = %61
  tail call void @rt_cache_flush(ptr noundef %17) #20
  br label %112

64:                                               ; preds = %55
  %65 = icmp eq i32 %11, %8
  br i1 %65, label %112, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr %24, align 32
  %68 = icmp eq ptr %67, %15
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 35, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %15
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %15, i32 -108
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 17
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %73, %69, %66
  %79 = phi i32 [ %77, %73 ], [ -2, %66 ], [ -1, %69 ]
  tail call void @inet_netconf_notify_devconf(ptr noundef %17, i32 noundef 80, i32 noundef 3, i32 noundef %79, ptr noundef %15)
  br label %112

80:                                               ; preds = %55
  %81 = icmp eq i32 %11, %8
  br i1 %81, label %112, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr %24, align 32
  %84 = icmp eq ptr %83, %15
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 35, i32 6
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %15
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = getelementptr i8, ptr %15, i32 -108
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 17
  %93 = load i32, ptr %92, align 4
  br label %94

94:                                               ; preds = %89, %85, %82
  %95 = phi i32 [ %93, %89 ], [ -2, %82 ], [ -1, %85 ]
  tail call void @inet_netconf_notify_devconf(ptr noundef %17, i32 noundef 80, i32 noundef 5, i32 noundef %95, ptr noundef %15)
  br label %112

96:                                               ; preds = %55
  %97 = icmp eq i32 %11, %8
  br i1 %97, label %112, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr %24, align 32
  %100 = icmp eq ptr %99, %15
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 35, i32 6
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, %15
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = getelementptr i8, ptr %15, i32 -108
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 17
  %109 = load i32, ptr %108, align 4
  br label %110

110:                                              ; preds = %105, %101, %98
  %111 = phi i32 [ %109, %105 ], [ -2, %98 ], [ -1, %101 ]
  tail call void @inet_netconf_notify_devconf(ptr noundef %17, i32 noundef 80, i32 noundef 6, i32 noundef %111, ptr noundef %15)
  br label %112

112:                                              ; preds = %110, %96, %94, %80, %78, %64, %63, %61, %60, %56, %55, %5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv4_doint_and_flush(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  %10 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = load i32, ptr %7, align 4
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @rt_cache_flush(ptr noundef %11) #20
  br label %17

17:                                               ; preds = %16, %13, %5
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inetdev_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [16 x i8], align 1
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 68
  %7 = load ptr, ptr %6, align 16
  %8 = tail call i32 @rtnl_is_locked() #20
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @inetdev_event.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !15

13:                                               ; preds = %3
  store i1 true, ptr @inetdev_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1528, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 1528) #20
  br label %14

14:                                               ; preds = %13, %3
  %15 = icmp eq ptr %7, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %14
  switch i32 %1, label %187 [
    i32 5, label %17
    i32 7, label %33
  ]

17:                                               ; preds = %16
  %18 = tail call fastcc ptr @inetdev_init(ptr noundef %5)
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = ptrtoint ptr %18 to i32
  %22 = sub i32 1, %21
  %23 = or i32 %22, 32768
  br label %187

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %187, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.in_device, ptr %18, i32 0, i32 21, i32 2
  tail call void @_set_bit(i32 noundef 14, ptr noundef %30) #20
  %31 = getelementptr %struct.in_device, ptr %18, i32 0, i32 21, i32 1, i32 14
  store i32 1, ptr %31, align 4
  tail call void @_set_bit(i32 noundef 15, ptr noundef %30) #20
  %32 = getelementptr %struct.in_device, ptr %18, i32 0, i32 21, i32 1, i32 15
  store i32 1, ptr %32, align 4
  br label %187

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, 67
  br i1 %36, label %37, label %187

37:                                               ; preds = %33
  %38 = tail call fastcc ptr @inetdev_init(ptr noundef %5)
  br label %187

39:                                               ; preds = %14
  switch i32 %1, label %187 [
    i32 5, label %40
    i32 1, label %41
    i32 8, label %81
    i32 19, label %89
    i32 2, label %103
    i32 15, label %104
    i32 16, label %105
    i32 7, label %106
    i32 6, label %110
    i32 11, label %143
  ]

40:                                               ; preds = %39
  store volatile ptr null, ptr %6, align 16
  br label %187

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, 67
  br i1 %44, label %45, label %187

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %80, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 4197824, i32 noundef 84) #22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %80, label %54

54:                                               ; preds = %50
  store ptr null, ptr %52, align 8
  %55 = getelementptr inbounds %struct.hlist_node, ptr %52, i32 0, i32 1
  store ptr null, ptr %55, align 4
  %56 = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 5
  store i32 16777343, ptr %56, align 4
  %57 = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 4
  store i32 16777343, ptr %57, align 8
  %58 = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 10
  store i8 8, ptr %58, align 1
  %59 = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 6
  store i32 255, ptr %59, align 8
  %60 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 2
  tail call fastcc void @refcount_inc(ptr noundef %60)
  %61 = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 2
  store ptr %7, ptr %61, align 4
  %62 = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 9
  store i8 -2, ptr %62, align 4
  %63 = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %63, ptr noundef align 64 dereferenceable(16) %5, i32 16, i1 false)
  %64 = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 11
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, -161
  %67 = or i32 %66, 128
  store i32 %67, ptr %64, align 8
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 16
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 15
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  store i32 %68, ptr %70, align 4
  br label %74

74:                                               ; preds = %73, %54
  %75 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 21, i32 2
  store i64 -1, ptr %75, align 4
  %76 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 20
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.neigh_parms, ptr %77, i32 0, i32 12
  store i32 -1, ptr %78, align 4
  %79 = tail call fastcc i32 @__inet_insert_ifa(ptr noundef nonnull %52, ptr noundef null, i32 noundef 0, ptr noundef null) #20
  br label %80

80:                                               ; preds = %74, %50, %45
  tail call void @ip_mc_up(ptr noundef nonnull %7) #20
  br label %81

81:                                               ; preds = %80, %39
  %82 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %83 = getelementptr %struct.ipv4_devconf, ptr %82, i32 0, i32 1, i32 21
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr %struct.in_device, ptr %7, i32 0, i32 21, i32 1, i32 21
  %86 = load i32, ptr %85, align 4
  %87 = tail call i32 @llvm.smax.i32(i32 %84, i32 %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %187, label %89

89:                                               ; preds = %81, %39
  %90 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %187, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  br label %95

95:                                               ; preds = %95, %93
  %96 = phi ptr [ %91, %93 ], [ %101, %95 ]
  %97 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %94, align 32
  tail call void @arp_send(i32 noundef 1, i32 noundef 2054, i32 noundef %98, ptr noundef %5, i32 noundef %98, ptr noundef null, ptr noundef %99, ptr noundef null) #20
  %100 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %187, label %95

103:                                              ; preds = %39
  tail call void @ip_mc_down(ptr noundef nonnull %7) #20
  br label %187

104:                                              ; preds = %39
  tail call void @ip_mc_unmap(ptr noundef nonnull %7) #20
  br label %187

105:                                              ; preds = %39
  tail call void @ip_mc_remap(ptr noundef nonnull %7) #20
  br label %187

106:                                              ; preds = %39
  %107 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %108 = load i32, ptr %107, align 4
  %109 = icmp ugt i32 %108, 67
  br i1 %109, label %187, label %110

110:                                              ; preds = %106, %39
  %111 = tail call i32 @rtnl_is_locked() #20
  %112 = icmp eq i32 %111, 0
  %113 = load i1, ptr @inetdev_destroy.__already_done, align 1
  %114 = xor i1 %113, true
  %115 = select i1 %112, i1 %114, i1 false
  br i1 %115, label %116, label %117, !prof !15

116:                                              ; preds = %110
  store i1 true, ptr @inetdev_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 311, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 311) #20
  br label %117

117:                                              ; preds = %116, %110
  %118 = load ptr, ptr %7, align 4
  %119 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 3
  store i32 1, ptr %119, align 4
  tail call void @ip_mc_destroy_dev(ptr noundef nonnull %7) #20
  %120 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 4
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %123, %117
  %124 = phi ptr [ %126, %123 ], [ %121, %117 ]
  tail call fastcc void @__inet_del_ifa(ptr noundef nonnull %7, ptr noundef %120, i32 noundef 0, ptr noundef null, i32 noundef 0) #20
  %125 = getelementptr inbounds %struct.in_ifaddr, ptr %124, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %125, ptr noundef nonnull @inet_rcu_free_ifa) #20
  %126 = load ptr, ptr %120, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %123

128:                                              ; preds = %123, %117
  %129 = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 68
  store volatile ptr null, ptr %129, align 16
  %130 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 21
  %131 = load ptr, ptr %7, align 4
  %132 = getelementptr inbounds %struct.net_device, ptr %131, i32 0, i32 17
  %133 = load i32, ptr %132, align 4
  %134 = load ptr, ptr %130, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %128
  store ptr null, ptr %130, align 4
  %137 = load ptr, ptr %134, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %137) #20
  tail call void @kfree(ptr noundef nonnull %134) #20
  br label %138

138:                                              ; preds = %136, %128
  tail call void @inet_netconf_notify_devconf(ptr noundef nonnull @init_net, i32 noundef 81, i32 noundef 0, i32 noundef %133, ptr noundef null) #20
  %139 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 20
  %140 = load ptr, ptr %139, align 4
  tail call void @neigh_sysctl_unregister(ptr noundef %140) #20
  %141 = load ptr, ptr %139, align 4
  tail call void @neigh_parms_release(ptr noundef nonnull @arp_tbl, ptr noundef %141) #20
  tail call void @arp_ifdown(ptr noundef %118) #20
  %142 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 22
  tail call void @call_rcu(ptr noundef %142, ptr noundef nonnull @in_dev_rcu_put) #20
  br label %187

143:                                              ; preds = %39
  %144 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 4
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %174, label %147

147:                                              ; preds = %170, %143
  %148 = phi ptr [ %172, %170 ], [ %145, %143 ]
  %149 = phi i32 [ %151, %170 ], [ 0, %143 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %150 = getelementptr inbounds %struct.in_ifaddr, ptr %148, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %150, i32 16, i1 false) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %150, ptr noundef align 64 dereferenceable(16) %5, i32 16, i1 false) #20
  %151 = add i32 %149, 1
  %152 = icmp eq i32 %149, 0
  br i1 %152, label %170, label %153

153:                                              ; preds = %147
  %154 = call ptr @strchr(ptr noundef nonnull %4, i32 noundef 58) #20
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.44, i32 noundef %151) #20
  br label %158

158:                                              ; preds = %156, %153
  %159 = phi ptr [ %154, %153 ], [ %4, %156 ]
  %160 = call i32 @strlen(ptr noundef %159) #20
  %161 = call i32 @strlen(ptr noundef %5) #20
  %162 = add i32 %161, %160
  %163 = icmp ult i32 %162, 16
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = call ptr @strcat(ptr noundef %150, ptr noundef %159) #20
  br label %170

166:                                              ; preds = %158
  %167 = sub i32 15, %160
  %168 = getelementptr i8, ptr %150, i32 %167
  %169 = call ptr @strcpy(ptr noundef %168, ptr noundef %159) #20
  br label %170

170:                                              ; preds = %166, %164, %147
  call fastcc void @rtmsg_ifa(i32 noundef 20, ptr noundef nonnull %148, ptr noundef null, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  %171 = getelementptr inbounds %struct.in_ifaddr, ptr %148, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %147

174:                                              ; preds = %170, %143
  %175 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 21
  %176 = load ptr, ptr %7, align 4
  %177 = getelementptr inbounds %struct.net_device, ptr %176, i32 0, i32 17
  %178 = load i32, ptr %177, align 4
  %179 = load ptr, ptr %175, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %174
  store ptr null, ptr %175, align 4
  %182 = load ptr, ptr %179, align 4
  call void @unregister_net_sysctl_table(ptr noundef %182) #20
  call void @kfree(ptr noundef nonnull %179) #20
  br label %183

183:                                              ; preds = %181, %174
  call void @inet_netconf_notify_devconf(ptr noundef nonnull @init_net, i32 noundef 81, i32 noundef 0, i32 noundef %178, ptr noundef null) #20
  %184 = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 20
  %185 = load ptr, ptr %184, align 4
  call void @neigh_sysctl_unregister(ptr noundef %185) #20
  %186 = call fastcc i32 @devinet_sysctl_register(ptr noundef nonnull %7)
  br label %187

187:                                              ; preds = %183, %138, %106, %105, %104, %103, %95, %89, %81, %41, %40, %39, %37, %33, %29, %24, %20, %16
  %188 = phi i32 [ %23, %20 ], [ 0, %16 ], [ 0, %40 ], [ 0, %103 ], [ 0, %104 ], [ 0, %105 ], [ 0, %138 ], [ 0, %183 ], [ 0, %39 ], [ 0, %41 ], [ 0, %81 ], [ 0, %106 ], [ 0, %29 ], [ 0, %24 ], [ 0, %33 ], [ 0, %37 ], [ 0, %89 ], [ 0, %95 ]
  ret i32 %188
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @inetdev_init(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @rtnl_is_locked() #20
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @inetdev_init.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !15

7:                                                ; preds = %1
  store i1 true, ptr @inetdev_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 259) #20
  br label %8

8:                                                ; preds = %7, %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 260) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %59, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.in_device, ptr %10, i32 0, i32 21
  %14 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 7), align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %13, ptr noundef align 4 dereferenceable(144) %14, i32 144, i1 false)
  store ptr null, ptr %13, align 4
  store ptr %0, ptr %10, align 8
  %15 = tail call ptr @neigh_parms_alloc(ptr noundef %0, ptr noundef nonnull @arp_tbl) #20
  %16 = getelementptr inbounds %struct.in_device, ptr %10, i32 0, i32 20
  store ptr %15, ptr %16, align 8
  %17 = icmp eq ptr %15, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.in_device, ptr %10, i32 0, i32 21, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @dev_disable_lro(ptr noundef %0) #20
  br label %23

23:                                               ; preds = %22, %18
  %24 = icmp eq ptr %0, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %23
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !10
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %28 = load ptr, ptr %27, align 8
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #12, !srcloc !11
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #20, !srcloc !12
  br label %37

37:                                               ; preds = %25, %23
  %38 = getelementptr inbounds %struct.in_device, ptr %10, i32 0, i32 2
  store volatile i32 1, ptr %38, align 4
  %39 = tail call fastcc i32 @devinet_sysctl_register(ptr noundef nonnull %10)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.in_device, ptr %10, i32 0, i32 3
  store i32 1, ptr %42, align 8
  %43 = load ptr, ptr %16, align 8
  tail call void @neigh_parms_release(ptr noundef nonnull @arp_tbl, ptr noundef %43) #20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #20, !srcloc !17
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #20, !srcloc !29
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %59, label %49, !prof !14

49:                                               ; preds = %47
  tail call void @refcount_warn_saturate(ptr noundef %38, i32 noundef 3) #20
  br label %59

50:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !30
  tail call void @in_dev_finish_destroy(ptr noundef nonnull %10) #20
  br label %59

51:                                               ; preds = %37
  tail call void @ip_mc_init_dev(ptr noundef nonnull %10) #20
  %52 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  tail call void @ip_mc_up(ptr noundef nonnull %10) #20
  br label %57

57:                                               ; preds = %56, %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !34
  %58 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 68
  store volatile ptr %10, ptr %58, align 16
  br label %62

59:                                               ; preds = %64, %50, %49, %47, %8
  %60 = phi i32 [ %39, %50 ], [ %39, %49 ], [ %39, %47 ], [ -12, %8 ], [ -12, %64 ]
  %61 = inttoptr i32 %60 to ptr
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi ptr [ %61, %59 ], [ %10, %57 ]
  ret ptr %63

64:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %10) #20
  br label %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_mc_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_mc_down(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_mc_unmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_mc_remap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @devinet_sysctl_register(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(8) @.str.7) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(4) @.str.6) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @neigh_sysctl_register(ptr noundef %2, ptr noundef %10, ptr noundef null) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.in_device, ptr %0, i32 0, i32 21
  %18 = tail call fastcc i32 @__devinet_sysctl_register(ptr noundef nonnull @init_net, ptr noundef %14, i32 noundef %16, ptr noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %9, align 4
  tail call void @neigh_sysctl_unregister(ptr noundef %21) #20
  br label %22

22:                                               ; preds = %20, %13, %8, %5, %1
  %23 = phi i32 [ -22, %5 ], [ %11, %8 ], [ %18, %20 ], [ 0, %13 ], [ -22, %1 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_parms_alloc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_parms_release(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_mc_init_dev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_send(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_mc_destroy_dev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_ifdown(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @in_dev_rcu_put(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -248
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #20, !srcloc !17
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #20, !srcloc !29
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %11, label %8, !prof !14

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #20
  br label %11

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -252
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !30
  tail call void @in_dev_finish_destroy(ptr noundef %10) #20
  br label %11

11:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_sysctl_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_sysctl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @check_lifetime(ptr nocapture noundef readnone %0) #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = add i32 %2, 12000
  %4 = tail call i32 @round_jiffies_up(i32 noundef %3) #20
  %5 = add i32 %2, 2
  br label %6

6:                                                ; preds = %111, %1
  %7 = phi i32 [ %4, %1 ], [ %112, %111 ]
  %8 = phi i32 [ 0, %1 ], [ %113, %111 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  %9 = getelementptr [256 x %struct.hlist_head], ptr @inet_addr_lst, i32 0, i32 %8
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  br label %111

13:                                               ; preds = %52, %6
  %14 = phi ptr [ %55, %52 ], [ %10, %6 ]
  %15 = phi i32 [ %54, %52 ], [ %7, %6 ]
  %16 = phi i1 [ %53, %52 ], [ false, %6 ]
  %17 = getelementptr inbounds %struct.in_ifaddr, ptr %14, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.in_ifaddr, ptr %14, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %5, %23
  %25 = udiv i32 %24, 100
  %26 = getelementptr inbounds %struct.in_ifaddr, ptr %14, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  %29 = icmp ult i32 %25, %27
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.in_ifaddr, ptr %14, i32 0, i32 14
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = icmp ult i32 %25, %33
  br i1 %36, label %46, label %37

37:                                               ; preds = %35
  %38 = mul i32 %27, 100
  %39 = add i32 %38, %23
  %40 = sub i32 %39, %15
  %41 = icmp slt i32 %40, 0
  %42 = select i1 %41, i32 %39, i32 %15
  %43 = and i32 %18, 32
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i1 true, i1 %16
  br label %52

46:                                               ; preds = %35
  %47 = mul i32 %33, 100
  %48 = add i32 %47, %23
  %49 = sub i32 %48, %15
  %50 = icmp slt i32 %49, 0
  %51 = select i1 %50, i32 %48, i32 %15
  br label %52

52:                                               ; preds = %46, %37, %31, %21, %13
  %53 = phi i1 [ %16, %13 ], [ %16, %31 ], [ true, %21 ], [ %16, %46 ], [ %45, %37 ]
  %54 = phi i32 [ %15, %13 ], [ %15, %31 ], [ %15, %21 ], [ %51, %46 ], [ %42, %37 ]
  %55 = load volatile ptr, ptr %14, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %13

57:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  br i1 %53, label %58, label %111

58:                                               ; preds = %57
  tail call void @rtnl_lock() #20
  %59 = load ptr, ptr %9, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %110, label %61

61:                                               ; preds = %108, %58
  %62 = phi ptr [ %63, %108 ], [ %59, %58 ]
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.in_ifaddr, ptr %62, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %108

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.in_ifaddr, ptr %62, i32 0, i32 16
  %70 = load i32, ptr %69, align 4
  %71 = sub i32 %5, %70
  %72 = udiv i32 %71, 100
  %73 = getelementptr inbounds %struct.in_ifaddr, ptr %62, i32 0, i32 13
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, -1
  %76 = icmp ult i32 %72, %74
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %97, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.in_ifaddr, ptr %62, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.in_device, ptr %80, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %108, label %84

84:                                               ; preds = %78
  %85 = icmp eq ptr %82, %62
  br i1 %85, label %95, label %86

86:                                               ; preds = %91, %84
  %87 = phi ptr [ %89, %91 ], [ %82, %84 ]
  %88 = getelementptr inbounds %struct.in_ifaddr, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %108, label %91

91:                                               ; preds = %86
  %92 = icmp eq ptr %89, %62
  br i1 %92, label %93, label %86

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.in_ifaddr, ptr %87, i32 0, i32 1
  br label %95

95:                                               ; preds = %93, %84
  %96 = phi ptr [ %81, %84 ], [ %94, %93 ]
  tail call fastcc void @__inet_del_ifa(ptr noundef %80, ptr noundef %96, i32 noundef 1, ptr noundef null, i32 noundef 0) #20
  br label %108

97:                                               ; preds = %68
  %98 = getelementptr inbounds %struct.in_ifaddr, ptr %62, i32 0, i32 14
  %99 = load i32, ptr %98, align 4
  %100 = icmp ne i32 %99, -1
  %101 = icmp uge i32 %72, %99
  %102 = select i1 %100, i1 %101, i1 false
  %103 = and i32 %65, 32
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = or i32 %65, 32
  store i32 %107, ptr %64, align 4
  tail call fastcc void @rtmsg_ifa(i32 noundef 20, ptr noundef nonnull %62, ptr noundef null, i32 noundef 0)
  br label %108

108:                                              ; preds = %106, %97, %95, %86, %78, %61
  %109 = icmp eq ptr %63, null
  br i1 %109, label %110, label %61

110:                                              ; preds = %108, %58
  tail call void @rtnl_unlock() #20
  br label %111

111:                                              ; preds = %110, %57, %12
  %112 = phi i32 [ %7, %12 ], [ %54, %57 ], [ %54, %110 ]
  %113 = add nuw nsw i32 %8, 1
  %114 = icmp eq i32 %113, 256
  br i1 %114, label %115, label %6

115:                                              ; preds = %111
  %116 = tail call i32 @round_jiffies_up(i32 noundef %112) #20
  %117 = sub i32 -25, %112
  %118 = add i32 %117, %116
  %119 = icmp slt i32 %118, 0
  %120 = select i1 %119, i32 %116, i32 %112
  %121 = load volatile i32, ptr @jiffies, align 64
  %122 = add i32 %121, 100
  %123 = sub i32 %120, %122
  %124 = icmp slt i32 %123, 0
  %125 = select i1 %124, i32 %122, i32 %120
  %126 = load ptr, ptr @system_power_efficient_wq, align 4
  %127 = sub i32 %125, %121
  %128 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %126, ptr noundef nonnull @check_lifetime_work, i32 noundef %127) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_fill_link_af(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 68
  %5 = load volatile ptr, ptr %4, align 16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %110, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @nla_reserve(ptr noundef %0, i32 noundef 1, i32 noundef 132) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %110, label %10

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %8, i32 4
  %12 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 0
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %11, align 4
  %14 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %8, i32 8
  store i32 %15, ptr %16, align 4
  %17 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %8, i32 12
  store i32 %18, ptr %19, align 4
  %20 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %8, i32 16
  store i32 %21, ptr %22, align 4
  %23 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %8, i32 20
  store i32 %24, ptr %25, align 4
  %26 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %8, i32 24
  store i32 %27, ptr %28, align 4
  %29 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %8, i32 28
  store i32 %30, ptr %31, align 4
  %32 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %8, i32 32
  store i32 %33, ptr %34, align 4
  %35 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %8, i32 36
  store i32 %36, ptr %37, align 4
  %38 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %8, i32 40
  store i32 %39, ptr %40, align 4
  %41 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 10
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %8, i32 44
  store i32 %42, ptr %43, align 4
  %44 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %8, i32 48
  store i32 %45, ptr %46, align 4
  %47 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 12
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %8, i32 52
  store i32 %48, ptr %49, align 4
  %50 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 13
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %8, i32 56
  store i32 %51, ptr %52, align 4
  %53 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 14
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %8, i32 60
  store i32 %54, ptr %55, align 4
  %56 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 15
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i8, ptr %8, i32 64
  store i32 %57, ptr %58, align 4
  %59 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 16
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %8, i32 68
  store i32 %60, ptr %61, align 4
  %62 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 17
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %8, i32 72
  store i32 %63, ptr %64, align 4
  %65 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 18
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i8, ptr %8, i32 76
  store i32 %66, ptr %67, align 4
  %68 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 19
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %8, i32 80
  store i32 %69, ptr %70, align 4
  %71 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 20
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %8, i32 84
  store i32 %72, ptr %73, align 4
  %74 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 21
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %8, i32 88
  store i32 %75, ptr %76, align 4
  %77 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 22
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %8, i32 92
  store i32 %78, ptr %79, align 4
  %80 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 23
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %8, i32 96
  store i32 %81, ptr %82, align 4
  %83 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 24
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %8, i32 100
  store i32 %84, ptr %85, align 4
  %86 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 25
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %8, i32 104
  store i32 %87, ptr %88, align 4
  %89 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 26
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i8, ptr %8, i32 108
  store i32 %90, ptr %91, align 4
  %92 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 27
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr i8, ptr %8, i32 112
  store i32 %93, ptr %94, align 4
  %95 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 28
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr i8, ptr %8, i32 116
  store i32 %96, ptr %97, align 4
  %98 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 29
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr i8, ptr %8, i32 120
  store i32 %99, ptr %100, align 4
  %101 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 30
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr i8, ptr %8, i32 124
  store i32 %102, ptr %103, align 4
  %104 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 31
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i8, ptr %8, i32 128
  store i32 %105, ptr %106, align 4
  %107 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 32
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr i8, ptr %8, i32 132
  store i32 %108, ptr %109, align 4
  br label %110

110:                                              ; preds = %10, %7, %3
  %111 = phi i32 [ -61, %3 ], [ -90, %7 ], [ 0, %10 ]
  ret i32 %111
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @inet_get_link_af_size(ptr noundef %0, i32 noundef %1) #19 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 68
  %4 = load volatile ptr, ptr %3, align 16
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 0, i32 136
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_validate_link_af(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i64 0, ptr %4, align 8, !annotation !19
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 68
  %8 = load ptr, ptr %7, align 16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %6, %3
  %11 = getelementptr i8, ptr %1, i32 4
  %12 = load i16, ptr %1, align 2
  %13 = zext i16 %12 to i32
  %14 = add nsw i32 %13, -4
  %15 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %11, i32 noundef %14, ptr noundef nonnull @inet_af_policy, i32 noundef 0, ptr noundef %2) #20
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds [2 x ptr], ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %51, label %21

21:                                               ; preds = %17
  %22 = load i16, ptr %19, align 2
  %23 = icmp ugt i16 %22, 7
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = zext i16 %22 to i32
  %26 = add nsw i32 %25, -4
  %27 = getelementptr i8, ptr %19, i32 4
  br label %28

28:                                               ; preds = %45, %24
  %29 = phi ptr [ %49, %45 ], [ %27, %24 ]
  %30 = phi i32 [ %48, %45 ], [ %26, %24 ]
  %31 = load i16, ptr %29, align 2
  %32 = icmp ult i16 %31, 4
  %33 = zext i16 %31 to i32
  %34 = icmp ult i32 %30, %33
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %51, label %36

36:                                               ; preds = %28
  %37 = icmp ult i16 %31, 8
  br i1 %37, label %51, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.nlattr, ptr %29, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  %41 = and i16 %40, 16383
  %42 = zext i16 %41 to i32
  %43 = add nsw i32 %42, -1
  %44 = icmp ult i32 %43, 33
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = add nuw nsw i32 %33, 3
  %47 = and i32 %46, 131068
  %48 = sub nsw i32 %30, %47
  %49 = getelementptr i8, ptr %29, i32 %47
  %50 = icmp sgt i32 %48, 3
  br i1 %50, label %28, label %51

51:                                               ; preds = %45, %38, %36, %28, %21, %17, %10, %6
  %52 = phi i32 [ -97, %6 ], [ %15, %10 ], [ 0, %17 ], [ 0, %21 ], [ -22, %38 ], [ -22, %36 ], [ 0, %28 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_set_link_af(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca [2 x ptr], align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 68
  %6 = load ptr, ptr %5, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i64 0, ptr %4, align 8, !annotation !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %1, i32 4
  %10 = load i16, ptr %1, align 2
  %11 = zext i16 %10 to i32
  %12 = add nsw i32 %11, -4
  %13 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %9, i32 noundef %12, ptr noundef null, i32 noundef 0, ptr noundef null) #20
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %51, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds [2 x ptr], ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %15
  %20 = load i16, ptr %17, align 2
  %21 = icmp ugt i16 %20, 7
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = zext i16 %20 to i32
  %24 = add nsw i32 %23, -4
  %25 = getelementptr i8, ptr %17, i32 4
  %26 = getelementptr inbounds %struct.in_device, ptr %6, i32 0, i32 21, i32 2
  br label %27

27:                                               ; preds = %35, %22
  %28 = phi ptr [ %25, %22 ], [ %49, %35 ]
  %29 = phi i32 [ %24, %22 ], [ %48, %35 ]
  %30 = load i16, ptr %28, align 2
  %31 = icmp ult i16 %30, 4
  %32 = zext i16 %30 to i32
  %33 = icmp ult i32 %29, %32
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.nlattr, ptr %28, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = and i16 %37, 16383
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %28, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = add nsw i32 %39, -1
  call void @_set_bit(i32 noundef %42, ptr noundef %26) #20
  %43 = getelementptr %struct.in_device, ptr %6, i32 0, i32 21, i32 1, i32 %42
  store i32 %41, ptr %43, align 4
  %44 = load i16, ptr %28, align 2
  %45 = zext i16 %44 to i32
  %46 = add nuw nsw i32 %45, 3
  %47 = and i32 %46, 131068
  %48 = sub nsw i32 %29, %47
  %49 = getelementptr i8, ptr %28, i32 %47
  %50 = icmp sgt i32 %48, 3
  br i1 %50, label %27, label %51

51:                                               ; preds = %35, %27, %19, %15, %8, %3
  %52 = phi i32 [ -97, %3 ], [ -22, %8 ], [ 0, %15 ], [ 0, %19 ], [ 0, %35 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_modify_prefix_metric(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strcmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtnl_get_net_ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_strict_get_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind readnone }

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
!9 = !{i64 2149021280}
!10 = !{i64 638103, i64 638164}
!11 = !{i64 645208}
!12 = !{i64 641120}
!13 = !{i64 2149021497}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i32 0, i32 33}
!17 = !{i64 609356, i64 2148110922, i64 2148110948, i64 2148110995, i64 2148111017, i64 2148111045, i64 2148111065}
!18 = !{i64 2148175642, i64 2148175674, i64 2148175703, i64 2148175737, i64 2148175768, i64 2148175791}
!19 = !{!"auto-init"}
!20 = !{i64 2149974215, i64 2149974240}
!21 = !{i64 2469749}
!22 = !{i64 2469946}
!23 = !{i64 2149955225}
!24 = !{i8 0, i8 2}
!25 = !{i64 2156005015}
!26 = !{i64 2156013461}
!27 = !{i64 2156021472}
!28 = !{i64 2148275864}
!29 = !{i64 2148177999, i64 2148178031, i64 2148178060, i64 2148178094, i64 2148178125, i64 2148178148}
!30 = !{i64 2149321394}
!31 = !{i64 2156033172}
!32 = !{i64 2156040247}
!33 = !{i64 2149122584}
!34 = !{i64 2155979372}
