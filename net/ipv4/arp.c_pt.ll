; ModuleID = '/llk/IR/net/ipv4/arp.c_pt.bc'
source_filename = "../net/ipv4/arp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arp_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22arp_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_arp_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arp_send:\09\09\09\09\09"
module asm "\09.asciz \09\22arp_send\22\09\09\09\09\09"
module asm "__kstrtabns_arp_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arp_create:\09\09\09\09\09"
module asm "\09.asciz \09\22arp_create\22\09\09\09\09\09"
module asm "__kstrtabns_arp_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arp_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22arp_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_arp_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, %struct.netdevice_tracker, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.neigh_ops = type { i32, ptr, ptr, ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.67, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.67 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.183, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.183 = type { ptr }
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
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.arpreq = type { %struct.sockaddr, %struct.sockaddr, i32, %struct.sockaddr, [16 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.58, i32, %struct.list_head, ptr }
%union.anon.58 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.neigh_seq_state = type { %struct.seq_net_private, ptr, ptr, ptr, i32, i32 }
%struct.seq_net_private = type {}
%struct.pneigh_entry = type { ptr, %struct.possible_net_t, ptr, %struct.netdevice_tracker, i32, i8, [0 x i8] }
%struct.netdev_notifier_change_info = type { %struct.netdev_notifier_info, i32 }
%struct.netdev_notifier_info = type { ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"arp_cache\00", align 1
@arp_tbl = dso_local global %struct.neigh_table { i32 2, i32 0, i32 4, i16 8, ptr @arp_hash, ptr @arp_key_eq, ptr @arp_constructor, ptr null, ptr null, ptr @parp_redo, ptr @arp_is_multicast, ptr null, ptr @.str, %struct.neigh_parms { %struct.possible_net_t zeroinitializer, ptr null, %struct.netdevice_tracker zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @arp_tbl, ptr null, i32 0, %struct.refcount_struct zeroinitializer, %struct.callback_head zeroinitializer, i32 3000, [13 x i32] [i32 3, i32 3, i32 0, i32 0, i32 100, i32 3000, i32 500, i32 6000, i32 180224, i32 64, i32 100, i32 80, i32 100], [1 x i32] zeroinitializer }, %struct.list_head zeroinitializer, i32 3000, i32 128, i32 512, i32 1024, i32 0, %struct.delayed_work zeroinitializer, %struct.delayed_work zeroinitializer, %struct.timer_list zeroinitializer, %struct.sk_buff_head zeroinitializer, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.rwlock_t zeroinitializer, i32 0, ptr null, ptr null, ptr null }, align 4
@__kstrtab_arp_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_arp_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_arp_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arp_tbl to i32), ptr @__kstrtab_arp_tbl, ptr @__kstrtabns_arp_tbl }, section "___ksymtab+arp_tbl", align 4
@__kstrtab_arp_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_arp_send = external dso_local constant [0 x i8], align 1
@__ksymtab_arp_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arp_send to i32), ptr @__kstrtab_arp_send, ptr @__kstrtabns_arp_send }, section "___ksymtab+arp_send", align 4
@__kstrtab_arp_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_arp_create = external dso_local constant [0 x i8], align 1
@__ksymtab_arp_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arp_create to i32), ptr @__kstrtab_arp_create, ptr @__kstrtabns_arp_create }, section "___ksymtab+arp_create", align 4
@__kstrtab_arp_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_arp_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_arp_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arp_xmit to i32), ptr @__kstrtab_arp_xmit, ptr @__kstrtabns_arp_xmit }, section "___ksymtab+arp_xmit", align 4
@arp_packet_type = internal global %struct.packet_type { i16 1544, i8 0, ptr null, %struct.netdevice_tracker zeroinitializer, ptr @arp_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@arp_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @arp_net_init, ptr null, ptr @arp_net_exit, ptr null, ptr null, i32 0 }, align 4
@arp_netdev_notifier = internal global %struct.notifier_block { ptr @arp_netdev_event, ptr null, i32 0 }, align 4
@arp_direct_ops = internal constant %struct.neigh_ops { i32 2, ptr null, ptr null, ptr @neigh_direct_output, ptr @neigh_direct_output }, align 4
@arp_hh_ops = internal constant %struct.neigh_ops { i32 2, ptr @arp_solicit, ptr @arp_error_report, ptr @neigh_resolve_output, ptr @neigh_resolve_output }, align 4
@arp_generic_ops = internal constant %struct.neigh_ops { i32 2, ptr @arp_solicit, ptr @arp_error_report, ptr @neigh_resolve_output, ptr @neigh_connected_output }, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@init_net = external dso_local global %struct.net, align 64
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.6 = private unnamed_addr constant [4 x i8] c"arp\00", align 1
@arp_seq_ops = internal constant %struct.seq_operations { ptr @arp_seq_start, ptr @neigh_seq_stop, ptr @neigh_seq_next, ptr @arp_seq_show }, align 4
@.str.7 = private unnamed_addr constant [80 x i8] c"IP address       HW type     Flags       HW address            Mask     Device\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"%-16s 0x%-10x0x%-10x%s     *        %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"00:00:00:00:00:00\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"%-16s 0x%-10x0x%-10x%-17s     *        %s\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_arp_create, ptr @__ksymtab_arp_send, ptr @__ksymtab_arp_tbl, ptr @__ksymtab_arp_xmit], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @arp_hash(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  %6 = xor i32 %4, %5
  %7 = load i32, ptr %2, align 4
  %8 = mul i32 %6, %7
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @arp_key_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 28
  %4 = load i32, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %4, %5
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arp_constructor(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 0, ptr %2, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 28
  %11 = load i32, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 2), align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %10, ptr nonnull align 4 %2, i32 %11, i1 false)
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 28
  %14 = load i32, ptr %13, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %15 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 68
  %16 = load volatile ptr, ptr %15, align 16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %98

19:                                               ; preds = %12
  %20 = tail call i32 @inet_addr_type_dev_table(ptr noundef nonnull @init_net, ptr noundef %4, i32 noundef %14) #17
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 13
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.in_device, ptr %16, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.neigh_parms, ptr %26, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #17, !srcloc !12
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #17, !srcloc !13
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %32, !prof !14

31:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 4) #17
  br label %32

32:                                               ; preds = %31, %19
  %33 = getelementptr inbounds %struct.neigh_parms, ptr %24, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #17, !srcloc !12
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #17, !srcloc !15
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !14

37:                                               ; preds = %32
  %38 = add i32 %35, 1
  %39 = or i32 %38, %35
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %43, label %41, !prof !16

41:                                               ; preds = %37, %32
  %42 = phi i32 [ 2, %32 ], [ 1, %37 ]
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef %42) #17
  br label %43

43:                                               ; preds = %41, %37
  store ptr %24, ptr %25, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %44 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 44
  %45 = load ptr, ptr %44, align 16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  store i8 64, ptr %48, align 4
  %49 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 22
  store ptr @arp_direct_ops, ptr %49, align 8
  %50 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 21
  store ptr @neigh_direct_output, ptr %50, align 4
  br label %98

51:                                               ; preds = %43
  %52 = load i8, ptr %22, align 1
  %53 = icmp eq i8 %52, 5
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  store i8 64, ptr %55, align 4
  %56 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %57 = tail call i32 @arp_mc_map(i32 noundef %14, ptr noundef %56, ptr noundef %4, i32 noundef 1)
  br label %82

58:                                               ; preds = %51
  %59 = load i32, ptr %5, align 8
  %60 = and i32 %59, 136
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  store i8 64, ptr %63, align 4
  %64 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %65 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 72
  %66 = load ptr, ptr %65, align 32
  %67 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 51
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %64, ptr align 1 %66, i32 %69, i1 false)
  br label %82

70:                                               ; preds = %58
  %71 = icmp ne i8 %52, 3
  %72 = and i32 %59, 16
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  store i8 64, ptr %76, align 4
  %77 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %78 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 83
  %79 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 51
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %77, ptr align 4 %78, i32 %81, i1 false)
  br label %82

82:                                               ; preds = %75, %70, %62, %54
  %83 = load ptr, ptr %44, align 16
  %84 = getelementptr inbounds %struct.header_ops, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  %87 = select i1 %86, ptr @arp_generic_ops, ptr @arp_hh_ops
  %88 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 22
  store ptr %87, ptr %88, align 8
  %89 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, -34
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %82
  %94 = select i1 %86, ptr @neigh_connected_output, ptr @neigh_resolve_output
  %95 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 21
  store ptr %94, ptr %95, align 4
  br label %98

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 21
  store ptr @neigh_resolve_output, ptr %97, align 4
  br label %98

98:                                               ; preds = %96, %93, %47, %18
  %99 = phi i32 [ -22, %18 ], [ 0, %93 ], [ 0, %96 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parp_redo(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @arp_process(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @arp_is_multicast(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 240
  %4 = icmp eq i32 %3, 224
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @arp_mc_map(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 32
  %6 = load i16, ptr %5, align 16
  switch i16 %6, label %66 [
    i16 1, label %7
    i16 774, label %7
    i16 6, label %7
    i16 32, label %20
    i16 778, label %49
  ]

7:                                                ; preds = %4, %4, %4
  %8 = tail call i32 @llvm.bswap.i32(i32 %0) #17
  store i8 1, ptr %1, align 1
  %9 = getelementptr i8, ptr %1, i32 1
  store i8 0, ptr %9, align 1
  %10 = getelementptr i8, ptr %1, i32 2
  store i8 94, ptr %10, align 1
  %11 = trunc i32 %8 to i8
  %12 = getelementptr i8, ptr %1, i32 5
  store i8 %11, ptr %12, align 1
  %13 = lshr i32 %8, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr i8, ptr %1, i32 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i32 %8, 16
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 127
  %19 = getelementptr i8, ptr %1, i32 3
  store i8 %18, ptr %19, align 1
  br label %73

20:                                               ; preds = %4
  %21 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 15
  store i8 0, ptr %1, align 1
  %24 = getelementptr i8, ptr %1, i32 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %0) #17
  %26 = or i8 %23, 16
  %27 = getelementptr i8, ptr %1, i32 5
  store i32 -1, ptr %24, align 1
  store i8 %26, ptr %27, align 1
  %28 = getelementptr i8, ptr %1, i32 6
  store i8 64, ptr %28, align 1
  %29 = getelementptr i8, ptr %1, i32 7
  store i8 27, ptr %29, align 1
  %30 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 8
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr i8, ptr %1, i32 8
  store i8 %31, ptr %32, align 1
  %33 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 9
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr i8, ptr %1, i32 9
  store i8 %34, ptr %35, align 1
  %36 = getelementptr i8, ptr %1, i32 10
  %37 = trunc i32 %25 to i8
  %38 = getelementptr i8, ptr %1, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %36, i8 0, i64 6, i1 false) #17
  store i8 %37, ptr %38, align 1
  %39 = lshr i32 %25, 8
  %40 = trunc i32 %39 to i8
  %41 = getelementptr i8, ptr %1, i32 18
  store i8 %40, ptr %41, align 1
  %42 = lshr i32 %25, 16
  %43 = trunc i32 %42 to i8
  %44 = getelementptr i8, ptr %1, i32 17
  store i8 %43, ptr %44, align 1
  %45 = lshr i32 %25, 24
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 15
  %48 = getelementptr i8, ptr %1, i32 16
  store i8 %47, ptr %48, align 1
  br label %73

49:                                               ; preds = %4
  %50 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 83
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = or i8 %53, %51
  %55 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = or i8 %54, %56
  %58 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = or i8 %57, %59
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %49
  %63 = load i32, ptr %50, align 1
  br label %64

64:                                               ; preds = %62, %49
  %65 = phi i32 [ %63, %62 ], [ %0, %49 ]
  store i32 %65, ptr %1, align 1
  br label %73

66:                                               ; preds = %4
  %67 = icmp eq i32 %3, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 83
  %70 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 51
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 4 %69, i32 %72, i1 false)
  br label %73

73:                                               ; preds = %68, %66, %64, %20, %7
  %74 = phi i32 [ 0, %68 ], [ 0, %64 ], [ 0, %20 ], [ 0, %7 ], [ -22, %66 ]
  ret i32 %74
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arp_send(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #1 {
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = tail call ptr @arp_create(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 4
  store i32 0, ptr %17, align 8
  %18 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %14) #17
  br label %19

19:                                               ; preds = %16, %13, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @arp_send_dst(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 {
  %10 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = tail call ptr @arp_create(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %14
  %18 = icmp eq ptr %8, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #17, !srcloc !12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 1, ptr elementtype(i32) %20) #17, !srcloc !18
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  br label %26

25:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 231, i32 noundef 9, ptr noundef null) #17
  br label %26

26:                                               ; preds = %25, %24, %17
  %27 = icmp ne ptr %8, null
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 13, i32 0, i32 3
  %30 = load i16, ptr %29, align 2
  %31 = lshr i16 %30, 14
  %32 = trunc i16 %31 to i8
  %33 = and i8 %32, 1
  %34 = or i8 %33, %28
  %35 = zext i8 %34 to i16
  %36 = shl nuw nsw i16 %35, 14
  %37 = and i16 %30, -16385
  %38 = or i16 %36, %37
  store i16 %38, ptr %29, align 2
  %39 = ptrtoint ptr %8 to i32
  %40 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 4
  store i32 %39, ptr %40, align 8
  %41 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %15) #17
  br label %42

42:                                               ; preds = %26, %14, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @arp_create(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly %7) #1 {
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 21
  %13 = load i16, ptr %12, align 8
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, %11
  %16 = and i32 %15, 131056
  %17 = add nuw nsw i32 %16, 16
  %18 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 22
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 51
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 1
  %25 = add nuw nsw i32 %20, 16
  %26 = add nuw nsw i32 %25, %24
  %27 = add nuw nsw i32 %26, %17
  %28 = tail call ptr @__alloc_skb(i32 noundef %27, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %100, label %30

30:                                               ; preds = %8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %17
  store ptr %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 14
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i32 %17
  store ptr %36, ptr %34, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 16
  %38 = load ptr, ptr %37, align 8
  %39 = ptrtoint ptr %33 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %39, %40
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13, i32 0, i32 18
  store i16 %42, ptr %43, align 4
  %44 = load i8, ptr %21, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 1
  %47 = add nuw nsw i32 %46, 16
  %48 = tail call ptr @skb_put(ptr noundef nonnull %28, i32 noundef %47) #17
  %49 = getelementptr inbounds %struct.anon.0, ptr %28, i32 0, i32 2
  store ptr %3, ptr %49, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13, i32 0, i32 16
  store i16 1544, ptr %50, align 8
  %51 = icmp eq ptr %6, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %30
  %53 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 72
  %54 = load ptr, ptr %53, align 32
  br label %55

55:                                               ; preds = %52, %30
  %56 = phi ptr [ %6, %30 ], [ %54, %52 ]
  %57 = icmp eq ptr %5, null
  %58 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %59 = select i1 %57, ptr %58, ptr %5
  %60 = trunc i32 %1 to i16
  %61 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 44
  %64 = load ptr, ptr %63, align 16
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %55
  %67 = load ptr, ptr %64, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call i32 %67(ptr noundef nonnull %28, ptr noundef %3, i16 noundef zeroext %60, ptr noundef %59, ptr noundef %56, i32 noundef %62) #17
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %99, label %72

72:                                               ; preds = %69, %66, %55
  %73 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 32
  %74 = load i16, ptr %73, align 16
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  store i16 %75, ptr %48, align 2
  %76 = getelementptr inbounds %struct.arphdr, ptr %48, i32 0, i32 1
  store i16 8, ptr %76, align 2
  %77 = load i8, ptr %21, align 1
  %78 = getelementptr inbounds %struct.arphdr, ptr %48, i32 0, i32 2
  store i8 %77, ptr %78, align 2
  %79 = getelementptr inbounds %struct.arphdr, ptr %48, i32 0, i32 3
  store i8 4, ptr %79, align 1
  %80 = trunc i32 %0 to i16
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %82 = getelementptr inbounds %struct.arphdr, ptr %48, i32 0, i32 4
  store i16 %81, ptr %82, align 2
  %83 = getelementptr %struct.arphdr, ptr %48, i32 1
  %84 = load i8, ptr %21, align 1
  %85 = zext i8 %84 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %83, ptr align 1 %56, i32 %85, i1 false)
  %86 = load i8, ptr %21, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr i8, ptr %83, i32 %87
  store i32 %4, ptr %88, align 1
  %89 = getelementptr i8, ptr %88, i32 4
  %90 = icmp eq ptr %7, null
  %91 = load i8, ptr %21, align 1
  %92 = zext i8 %91 to i32
  br i1 %90, label %94, label %93

93:                                               ; preds = %72
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %89, ptr nonnull align 1 %7, i32 %92, i1 false)
  br label %95

94:                                               ; preds = %72
  tail call void @llvm.memset.p0.i32(ptr align 1 %89, i8 0, i32 %92, i1 false)
  br label %95

95:                                               ; preds = %94, %93
  %96 = load i8, ptr %21, align 1
  %97 = zext i8 %96 to i32
  %98 = getelementptr i8, ptr %89, i32 %97
  store i32 %2, ptr %98, align 1
  br label %100

99:                                               ; preds = %69
  tail call void @kfree_skb_reason(ptr noundef nonnull %28, i32 noundef 0) #17
  br label %100

100:                                              ; preds = %99, %95, %8
  %101 = phi ptr [ null, %99 ], [ %28, %95 ], [ null, %8 ]
  ret ptr %101
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arp_xmit(ptr noundef %0) #1 {
  %2 = tail call i32 @dev_queue_xmit(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arp_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.arpreq, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false), !annotation !20
  switch i32 %1, label %87 [
    i32 35155, label %5
    i32 35157, label %5
    i32 35156, label %9
  ]

5:                                                ; preds = %3, %3
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #17
  br i1 %8, label %9, label %87

9:                                                ; preds = %5, %3
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 68, i32 -1090519040) #18
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !16

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #17
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !21
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #17, !srcloc !22
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !23
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %2, i32 noundef 68) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #17, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !16

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 68, %9 ]
  %23 = sub i32 68, %22
  %24 = getelementptr i8, ptr %4, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #17
  br label %87

25:                                               ; preds = %13
  %26 = load i16, ptr %4, align 4
  %27 = icmp eq i16 %26, 2
  br i1 %27, label %28, label %87

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.arpreq, ptr %4, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 8
  %32 = icmp ne i32 %31, 0
  %33 = and i32 %30, 96
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %32, %34
  br i1 %35, label %36, label %87

36:                                               ; preds = %28
  %37 = and i32 %30, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.arpreq, ptr %4, i32 0, i32 3, i32 1, i32 2
  store i32 -1, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %36
  call void @rtnl_lock() #17
  %42 = getelementptr inbounds %struct.arpreq, ptr %4, i32 0, i32 4
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = call ptr @__dev_get_by_name(ptr noundef %0, ptr noundef %42) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %75, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.arpreq, ptr %4, i32 0, i32 1
  %50 = load i16, ptr %49, align 4
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 32
  %54 = load i16, ptr %53, align 16
  store i16 %54, ptr %49, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i16 [ %54, %52 ], [ %50, %48 ]
  %57 = load i32, ptr %29, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 32
  %62 = load i16, ptr %61, align 16
  %63 = icmp eq i16 %56, %62
  br i1 %63, label %66, label %75

64:                                               ; preds = %41
  %65 = icmp eq i32 %1, 35156
  br i1 %65, label %75, label %66

66:                                               ; preds = %64, %60, %55
  %67 = phi i32 [ -22, %60 ], [ -22, %55 ], [ 0, %64 ]
  %68 = phi ptr [ %46, %60 ], [ %46, %55 ], [ null, %64 ]
  switch i32 %1, label %75 [
    i32 35155, label %69
    i32 35157, label %71
    i32 35156, label %73
  ]

69:                                               ; preds = %66
  %70 = call fastcc i32 @arp_req_delete(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %68)
  br label %75

71:                                               ; preds = %66
  %72 = call fastcc i32 @arp_req_set(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %68)
  br label %75

73:                                               ; preds = %66
  %74 = call fastcc i32 @arp_req_get(ptr noundef nonnull %4, ptr noundef %68)
  br label %75

75:                                               ; preds = %73, %71, %69, %66, %64, %60, %45
  %76 = phi i32 [ -22, %60 ], [ %67, %66 ], [ %74, %73 ], [ %72, %71 ], [ %70, %69 ], [ -19, %45 ], [ -19, %64 ]
  call void @rtnl_unlock() #17
  %77 = icmp ne i32 %1, 35156
  %78 = icmp ne i32 %76, 0
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !21
  %82 = and i32 %81, -13
  %83 = or i32 %82, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #17, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !23
  %84 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %4, i32 noundef 68) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #17, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !23
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 0, i32 -14
  br label %87

87:                                               ; preds = %80, %75, %28, %25, %21, %5, %3
  %88 = phi i32 [ -1, %5 ], [ -22, %3 ], [ -96, %25 ], [ -22, %28 ], [ %76, %75 ], [ -14, %21 ], [ %86, %80 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #17
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @arp_req_delete(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flowi4, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.arpreq, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %12 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.arpreq, ptr %1, i32 0, i32 3, i32 1, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %33 [
    i32 -1, label %16
    i32 0, label %18
  ]

16:                                               ; preds = %11
  %17 = call i32 @pneigh_delete(ptr noundef nonnull @arp_tbl, ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2) #17
  br label %33

18:                                               ; preds = %11
  %19 = icmp eq ptr %2, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.ipv4_devconf, ptr %22, i32 0, i32 1, i32 2
  br label %31

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 68
  %26 = load ptr, ptr %25, align 16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.in_device, ptr %26, i32 0, i32 21, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %29) #17
  %30 = getelementptr %struct.in_device, ptr %26, i32 0, i32 21, i32 1, i32 2
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi ptr [ %30, %28 ], [ %23, %20 ]
  store i32 0, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %24, %16, %11
  %34 = phi i32 [ %17, %16 ], [ -22, %11 ], [ -6, %24 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  br label %74

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq ptr %2, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #17
  %40 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #17
  store i8 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.flowi4, ptr %5, i32 0, i32 2
  store i32 %37, ptr %41, align 4
  %42 = call ptr @ip_route_output_flow(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #17
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = ptrtoint ptr %42 to i32
  br label %74

46:                                               ; preds = %39
  %47 = load ptr, ptr %42, align 4
  call void @dst_release(ptr noundef %42) #17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %74, label %49

49:                                               ; preds = %46, %35
  %50 = phi ptr [ %2, %35 ], [ %47, %46 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %37, ptr %4, align 4
  %51 = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %4, ptr noundef nonnull %50) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %72, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.neighbour, ptr %51, i32 0, i32 12
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, -65
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = call i32 @neigh_update(ptr noundef nonnull %51, ptr noundef null, i8 noundef zeroext 32, i32 noundef 129, i32 noundef 0) #17
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi i32 [ %59, %58 ], [ -6, %53 ]
  call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 28)) #17
  %62 = getelementptr inbounds %struct.neighbour, ptr %51, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #17, !srcloc !12
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #17, !srcloc !13
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = icmp sgt i32 %64, 0
  br i1 %67, label %70, label %68, !prof !16

68:                                               ; preds = %66
  call void @refcount_warn_saturate(ptr noundef %62, i32 noundef 3) #17
  br label %70

69:                                               ; preds = %60
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  call void @neigh_destroy(ptr noundef nonnull %51) #17
  br label %70

70:                                               ; preds = %69, %68, %66
  %71 = call zeroext i1 @neigh_remove_one(ptr noundef nonnull %51, ptr noundef nonnull @arp_tbl) #17
  call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 28)) #17
  br label %72

72:                                               ; preds = %70, %49
  %73 = phi i32 [ %61, %70 ], [ -6, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %74

74:                                               ; preds = %72, %46, %44, %33
  %75 = phi i32 [ %34, %33 ], [ %73, %72 ], [ -22, %46 ], [ %45, %44 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @arp_req_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.flowi4, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %7 = getelementptr inbounds %struct.arpreq, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %12 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.arpreq, ptr %1, i32 0, i32 3, i32 1, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = add i32 %15, -1
  %18 = icmp ult i32 %17, -2
  br i1 %18, label %51, label %19

19:                                               ; preds = %11
  %20 = icmp eq ptr %2, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = and i32 %8, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.arpreq, ptr %1, i32 0, i32 1
  %26 = load i16, ptr %25, align 4
  %27 = getelementptr inbounds %struct.arpreq, ptr %1, i32 0, i32 1, i32 1
  %28 = tail call ptr @dev_getbyhwaddr_rcu(ptr noundef %0, i16 noundef zeroext %26, ptr noundef %27) #17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %24, %19
  %31 = phi ptr [ %2, %19 ], [ %28, %24 ]
  br i1 %16, label %42, label %33

32:                                               ; preds = %21
  br i1 %16, label %38, label %33

33:                                               ; preds = %32, %30
  %34 = phi ptr [ null, %32 ], [ %31, %30 ]
  %35 = call ptr @pneigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %34, i32 noundef 1) #17
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, i32 -105, i32 0
  br label %51

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.ipv4_devconf, ptr %40, i32 0, i32 1, i32 2
  br label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 68
  %44 = load ptr, ptr %43, align 16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.in_device, ptr %44, i32 0, i32 21, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %47) #17
  %48 = getelementptr %struct.in_device, ptr %44, i32 0, i32 21, i32 1, i32 2
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi ptr [ %48, %46 ], [ %41, %38 ]
  store i32 1, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %42, %33, %24, %11
  %52 = phi i32 [ -22, %11 ], [ -19, %24 ], [ %37, %33 ], [ -6, %42 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %106

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %6, align 4
  %56 = and i32 %8, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = or i32 %8, 2
  store i32 %59, ptr %7, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = icmp eq ptr %2, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  %63 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #17
  store i8 1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  store i32 %55, ptr %64, align 4
  %65 = call ptr @ip_route_output_flow(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = ptrtoint ptr %65 to i32
  br label %106

69:                                               ; preds = %62
  %70 = load ptr, ptr %65, align 4
  call void @dst_release(ptr noundef %65) #17
  %71 = icmp eq ptr %70, null
  br i1 %71, label %106, label %72

72:                                               ; preds = %69, %60
  %73 = phi ptr [ %2, %60 ], [ %70, %69 ]
  %74 = getelementptr inbounds %struct.arpreq, ptr %1, i32 0, i32 1
  %75 = load i16, ptr %74, align 4
  %76 = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 32
  %77 = load i16, ptr %76, align 16
  %78 = icmp eq i16 %75, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %72
  %80 = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %6, ptr noundef nonnull %73) #17
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %6, ptr noundef nonnull %73, i1 noundef zeroext true) #17
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi ptr [ %83, %82 ], [ %80, %79 ]
  %86 = ptrtoint ptr %85 to i32
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %106, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr %7, align 4
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  %92 = and i32 %89, 2
  %93 = icmp eq i32 %92, 0
  %94 = getelementptr inbounds %struct.arpreq, ptr %1, i32 0, i32 1, i32 1
  %95 = select i1 %93, ptr null, ptr %94
  %96 = select i1 %91, i8 4, i8 -128
  %97 = call i32 @neigh_update(ptr noundef %85, ptr noundef %95, i8 noundef zeroext %96, i32 noundef 129, i32 noundef 0) #17
  %98 = getelementptr inbounds %struct.neighbour, ptr %85, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #17, !srcloc !12
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #17, !srcloc !13
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %88
  %103 = icmp sgt i32 %100, 0
  br i1 %103, label %106, label %104, !prof !16

104:                                              ; preds = %102
  call void @refcount_warn_saturate(ptr noundef %98, i32 noundef 3) #17
  br label %106

105:                                              ; preds = %88
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  call void @neigh_destroy(ptr noundef %85) #17
  br label %106

106:                                              ; preds = %105, %104, %102, %84, %72, %69, %67, %51
  %107 = phi i32 [ %52, %51 ], [ -22, %69 ], [ -22, %72 ], [ %86, %84 ], [ %68, %67 ], [ %97, %102 ], [ %97, %104 ], [ %97, %105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @arp_req_get(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %3, align 4
  %6 = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %3, ptr noundef %1) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.neighbour, ptr %6, i32 0, i32 12
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.neighbour, ptr %6, i32 0, i32 5
  call void @_raw_read_lock_bh(ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.arpreq, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.arpreq, ptr %0, i32 0, i32 1, i32 1
  %17 = getelementptr inbounds %struct.neighbour, ptr %6, i32 0, i32 19
  %18 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %16, ptr align 8 %17, i32 %20, i1 false)
  %21 = load i8, ptr %9, align 4
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %22, 222
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 2
  %28 = select i1 %24, i32 %27, i32 6
  %29 = getelementptr inbounds %struct.arpreq, ptr %0, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  call void @_raw_read_unlock_bh(ptr noundef %14) #17
  %30 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %31 = load i16, ptr %30, align 16
  store i16 %31, ptr %15, align 4
  %32 = getelementptr inbounds %struct.arpreq, ptr %0, i32 0, i32 4
  %33 = call i32 @strlcpy(ptr noundef %32, ptr noundef %1, i32 noundef 16) #17
  br label %34

34:                                               ; preds = %13, %8
  %35 = phi i32 [ -6, %8 ], [ 0, %13 ]
  %36 = getelementptr inbounds %struct.neighbour, ptr %6, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #17, !srcloc !12
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #17, !srcloc !13
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %44, label %42, !prof !16

42:                                               ; preds = %40
  call void @refcount_warn_saturate(ptr noundef %36, i32 noundef 3) #17
  br label %44

43:                                               ; preds = %34
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  call void @neigh_destroy(ptr noundef nonnull %6) #17
  br label %44

44:                                               ; preds = %43, %42, %40, %2
  %45 = phi i32 [ -6, %2 ], [ %35, %40 ], [ %35, %42 ], [ %35, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arp_ifdown(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 @neigh_ifdown(ptr noundef nonnull @arp_tbl, ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_ifdown(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @arp_init() local_unnamed_addr #8 section ".init.text" {
  tail call void @neigh_table_init(i32 noundef 0, ptr noundef nonnull @arp_tbl) #17
  tail call void @dev_add_pack(ptr noundef nonnull @arp_packet_type) #17
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @arp_net_ops) #17
  %2 = tail call i32 @neigh_sysctl_register(ptr noundef null, ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 13), ptr noundef null) #17
  %3 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @arp_netdev_notifier) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_table_init(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_sysctl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_dev_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_direct_output(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arp_solicit(ptr noundef %0, ptr noundef readonly %1) #1 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !20
  %4 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 26
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 11
  %9 = load volatile i32, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %10 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 68
  %11 = load volatile ptr, ptr %10, align 16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %112

14:                                               ; preds = %2
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %16 = getelementptr %struct.ipv4_devconf, ptr %15, i32 0, i32 1, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.in_device, ptr %11, i32 0, i32 21, i32 1, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %19)
  switch i32 %20, label %21 [
    i32 2, label %57
    i32 1, label %41
  ]

21:                                               ; preds = %14
  %22 = icmp eq ptr %1, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = getelementptr inbounds %struct.iphdr, ptr %29, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @inet_addr_type_dev_table(ptr noundef nonnull @init_net, ptr noundef %5, i32 noundef %31) #17
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %57

34:                                               ; preds = %23
  %35 = load ptr, ptr %24, align 8
  %36 = load i16, ptr %26, align 4
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr inbounds %struct.iphdr, ptr %38, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  br label %58

41:                                               ; preds = %14
  %42 = icmp eq ptr %1, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %45, i32 %48
  %50 = getelementptr inbounds %struct.iphdr, ptr %49, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @inet_addr_type_dev_table(ptr noundef nonnull @init_net, ptr noundef %5, i32 noundef %51) #17
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = tail call i32 @inet_addr_onlink(ptr noundef nonnull %11, i32 noundef %7, i32 noundef %51) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %43, %41, %23, %21, %14
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %61

58:                                               ; preds = %54, %34
  %59 = phi i32 [ %40, %34 ], [ %51, %54 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %57
  %62 = tail call i32 @inet_select_addr(ptr noundef %5, i32 noundef %7, i32 noundef 253) #17
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i32 [ %59, %58 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr %struct.neigh_parms, ptr %66, i32 0, i32 11, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 %9, %68
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 17
  %73 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %74 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 51
  br label %75

75:                                               ; preds = %83, %71
  %76 = load volatile i32, ptr %72, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %79, %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !26
  %80 = load volatile i32, ptr %72, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %79

83:                                               ; preds = %79, %75
  %84 = phi i32 [ %76, %75 ], [ %80, %79 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !27
  %85 = load i8, ptr %74, align 1
  %86 = zext i8 %85 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %3, ptr align 8 %73, i32 %86, i1 false) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %87 = load volatile i32, ptr %72, align 4
  %88 = icmp eq i32 %87, %84
  br i1 %88, label %95, label %75

89:                                               ; preds = %63
  %90 = getelementptr %struct.neigh_parms, ptr %66, i32 0, i32 11, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = sub i32 %69, %91
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  tail call void @neigh_app_ns(ptr noundef %0) #17
  br label %112

95:                                               ; preds = %89, %83
  %96 = phi ptr [ null, %89 ], [ %3, %83 ]
  %97 = icmp eq ptr %1, null
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %100 = load i64, ptr %99, align 16
  %101 = and i64 %100, 32
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, -2
  %107 = inttoptr i32 %106 to ptr
  br label %108

108:                                              ; preds = %103, %98, %95
  %109 = phi ptr [ null, %98 ], [ %107, %103 ], [ null, %95 ]
  %110 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  %111 = load ptr, ptr %110, align 32
  call fastcc void @arp_send_dst(i32 noundef 1, i32 noundef 2054, i32 noundef %7, ptr noundef %5, i32 noundef %64, ptr noundef %96, ptr noundef %111, ptr noundef null, ptr noundef %109)
  br label %112

112:                                              ; preds = %108, %94, %13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arp_error_report(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = inttoptr i32 %5 to ptr
  %9 = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 10
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %1) #17
  br label %17

17:                                               ; preds = %16, %12, %7, %2
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_resolve_output(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_onlink(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_app_ns(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_connected_output(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @arp_process(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 68
  %10 = load volatile ptr, ptr %9, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %11 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 32
  %12 = load i16, ptr %11, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %13 = icmp eq ptr %10, null
  br i1 %13, label %279, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  switch i16 %12, label %21 [
    i16 1, label %29
    i16 774, label %29
    i16 6, label %29
    i16 3, label %35
    i16 0, label %42
  ]

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.arphdr, ptr %20, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, 8
  br i1 %24, label %25, label %279

25:                                               ; preds = %21
  %26 = tail call i16 @llvm.bswap.i16(i16 %12)
  %27 = load i16, ptr %20, align 2
  %28 = icmp eq i16 %26, %27
  br i1 %28, label %49, label %279

29:                                               ; preds = %14, %14, %14
  %30 = load i16, ptr %20, align 2
  switch i16 %30, label %279 [
    i16 256, label %31
    i16 1536, label %31
  ]

31:                                               ; preds = %29, %29
  %32 = getelementptr inbounds %struct.arphdr, ptr %20, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, 8
  br i1 %34, label %49, label %279

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.arphdr, ptr %20, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %37, -13312
  br i1 %38, label %39, label %279

39:                                               ; preds = %35
  %40 = load i16, ptr %20, align 2
  %41 = icmp eq i16 %40, 768
  br i1 %41, label %49, label %279

42:                                               ; preds = %14
  %43 = getelementptr inbounds %struct.arphdr, ptr %20, i32 0, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, -13312
  br i1 %45, label %46, label %279

46:                                               ; preds = %42
  %47 = load i16, ptr %20, align 2
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %279

49:                                               ; preds = %46, %39, %31, %25
  %50 = getelementptr inbounds %struct.arphdr, ptr %20, i32 0, i32 4
  %51 = load i16, ptr %50, align 2
  switch i16 %51, label %279 [
    i16 512, label %52
    i16 256, label %52
  ]

52:                                               ; preds = %49, %49
  %53 = getelementptr %struct.arphdr, ptr %20, i32 1
  %54 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 51
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = load i32, ptr %57, align 1
  store i32 %58, ptr %4, align 4
  %59 = getelementptr i8, ptr %57, i32 4
  %60 = getelementptr i8, ptr %59, i32 %56
  %61 = load i32, ptr %60, align 1
  store i32 %61, ptr %5, align 4
  %62 = and i32 %61, 240
  %63 = icmp eq i32 %62, 224
  br i1 %63, label %279, label %64

64:                                               ; preds = %52
  %65 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %66 = getelementptr %struct.ipv4_devconf, ptr %65, i32 0, i32 1, i32 25
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = getelementptr %struct.in_device, ptr %10, i32 0, i32 21, i32 1, i32 25
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %61, 255
  %74 = icmp eq i32 %73, 127
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %279, label %76

76:                                               ; preds = %69, %64
  %77 = icmp eq i32 %58, %61
  br i1 %77, label %78, label %86

78:                                               ; preds = %76
  %79 = getelementptr %struct.ipv4_devconf, ptr %65, i32 0, i32 1, i32 30
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %279

82:                                               ; preds = %78
  %83 = getelementptr %struct.in_device, ptr %10, i32 0, i32 21, i32 1, i32 30
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %279

86:                                               ; preds = %82, %76
  %87 = icmp eq i16 %12, 15
  %88 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 83
  %89 = select i1 %87, ptr %88, ptr %53
  %90 = load i16, ptr %50, align 2
  %91 = icmp eq i16 %90, 256
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, -2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = inttoptr i32 %95 to ptr
  %99 = getelementptr inbounds %struct.dst_entry, ptr %98, i32 0, i32 7
  %100 = load i16, ptr %99, align 4
  %101 = and i16 %100, 128
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = tail call ptr @iptunnel_metadata_reply(ptr noundef nonnull %98, i32 noundef 2592) #17
  br label %105

105:                                              ; preds = %103, %97, %92, %86
  %106 = phi ptr [ %104, %103 ], [ null, %86 ], [ null, %92 ], [ null, %97 ]
  %107 = icmp eq i32 %58, 0
  %108 = load i16, ptr %50, align 2
  %109 = icmp eq i16 %108, 256
  br i1 %107, label %110, label %120

110:                                              ; preds = %105
  br i1 %109, label %111, label %277

111:                                              ; preds = %110
  %112 = tail call i32 @inet_addr_type_dev_table(ptr noundef %0, ptr noundef %8, i32 noundef %61) #17
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %277

114:                                              ; preds = %111
  %115 = tail call fastcc i32 @arp_ignore(ptr noundef nonnull %10, i32 noundef 0, i32 noundef %61)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %277

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 72
  %119 = load ptr, ptr %118, align 32
  tail call fastcc void @arp_send_dst(i32 noundef 2, i32 noundef 2054, i32 noundef 0, ptr noundef %8, i32 noundef %61, ptr noundef %89, ptr noundef %119, ptr noundef %89, ptr noundef %106)
  br label %277

120:                                              ; preds = %105
  br i1 %109, label %121, label %207

121:                                              ; preds = %120
  %122 = tail call i32 @ip_route_input_noref(ptr noundef %2, i32 noundef %61, i32 noundef %58, i8 noundef zeroext 0, ptr noundef %8) #17
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %207

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, -2
  %128 = inttoptr i32 %127 to ptr
  %129 = getelementptr inbounds %struct.rtable, ptr %128, i32 0, i32 3
  %130 = load i16, ptr %129, align 4
  %131 = icmp eq i16 %130, 2
  br i1 %131, label %132, label %154

132:                                              ; preds = %124
  %133 = tail call fastcc i32 @arp_ignore(ptr noundef nonnull %10, i32 noundef %58, i32 noundef %61)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %277

135:                                              ; preds = %132
  %136 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %137 = getelementptr %struct.ipv4_devconf, ptr %136, i32 0, i32 1, i32 12
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = getelementptr %struct.in_device, ptr %10, i32 0, i32 21, i32 1, i32 12
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %140, %135
  %145 = tail call fastcc i32 @arp_filter(i32 noundef %58, i32 noundef %61, ptr noundef %8)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %277

147:                                              ; preds = %144, %140
  %148 = call ptr @neigh_event_ns(ptr noundef nonnull @arp_tbl, ptr noundef %89, ptr noundef nonnull %4, ptr noundef %8) #17
  %149 = icmp eq ptr %148, null
  br i1 %149, label %277, label %150

150:                                              ; preds = %147
  %151 = load i32, ptr %4, align 4
  %152 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 72
  %153 = load ptr, ptr %152, align 32
  call fastcc void @arp_send_dst(i32 noundef 2, i32 noundef 2054, i32 noundef %151, ptr noundef %8, i32 noundef %61, ptr noundef %89, ptr noundef %153, ptr noundef %89, ptr noundef %106)
  call fastcc void @neigh_release(ptr noundef nonnull %148)
  br label %277

154:                                              ; preds = %124
  %155 = getelementptr %struct.in_device, ptr %10, i32 0, i32 21, i32 1, i32 0
  %156 = load i32, ptr %155, align 4
  %157 = icmp ne i32 %156, 0
  %158 = icmp eq i16 %130, 1
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %160, label %207

160:                                              ; preds = %154
  %161 = tail call fastcc i32 @arp_fwd_proxy(ptr noundef nonnull %10, ptr noundef %8, ptr noundef %128)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %160
  %164 = load ptr, ptr %128, align 4
  %165 = icmp ne ptr %164, %8
  %166 = or i1 %77, %165
  br i1 %166, label %176, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %169 = getelementptr %struct.ipv4_devconf, ptr %168, i32 0, i32 1, i32 24
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = getelementptr %struct.in_device, ptr %10, i32 0, i32 21, i32 1, i32 24
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %172, %163
  %177 = icmp eq ptr %164, %8
  br i1 %177, label %207, label %178

178:                                              ; preds = %176
  %179 = call ptr @pneigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %8, i32 noundef 0) #17
  %180 = icmp eq ptr %179, null
  br i1 %180, label %207, label %181

181:                                              ; preds = %178, %172, %167, %160
  %182 = call ptr @neigh_event_ns(ptr noundef nonnull @arp_tbl, ptr noundef %89, ptr noundef nonnull %4, ptr noundef %8) #17
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  call fastcc void @neigh_release(ptr noundef nonnull %182)
  br label %185

185:                                              ; preds = %184, %181
  %186 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  %187 = load i32, ptr %186, align 4
  %188 = and i32 %187, 1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %192 = load i16, ptr %191, align 8
  %193 = and i16 %192, 7
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.in_device, ptr %10, i32 0, i32 20
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr %struct.neigh_parms, ptr %197, i32 0, i32 11, i32 11
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %195, %190, %185
  %202 = load i32, ptr %4, align 4
  %203 = load i32, ptr %5, align 4
  %204 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 72
  %205 = load ptr, ptr %204, align 32
  call fastcc void @arp_send_dst(i32 noundef 2, i32 noundef 2054, i32 noundef %202, ptr noundef %8, i32 noundef %203, ptr noundef %89, ptr noundef %205, ptr noundef %89, ptr noundef %106)
  br label %277

206:                                              ; preds = %195
  call void @pneigh_enqueue(ptr noundef nonnull @arp_tbl, ptr noundef %197, ptr noundef %2) #17
  br label %278

207:                                              ; preds = %178, %176, %154, %121, %120
  %208 = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %4, ptr noundef %8) #17
  store i32 -1, ptr %6, align 4
  %209 = icmp ne ptr %208, null
  br i1 %209, label %219, label %210

210:                                              ; preds = %207
  %211 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %212 = getelementptr %struct.ipv4_devconf, ptr %211, i32 0, i32 1, i32 20
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = getelementptr %struct.in_device, ptr %10, i32 0, i32 21, i32 1, i32 20
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %277, label %219

219:                                              ; preds = %215, %210, %207
  %220 = load i16, ptr %50, align 2
  %221 = load i32, ptr %4, align 4
  %222 = load i32, ptr %5, align 4
  %223 = call fastcc zeroext i1 @arp_is_garp(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, i16 noundef zeroext %220, i32 noundef %221, i32 noundef %222, ptr noundef %89, ptr noundef %59)
  %224 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %225 = getelementptr %struct.ipv4_devconf, ptr %224, i32 0, i32 1, i32 20
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %219
  %229 = getelementptr %struct.in_device, ptr %10, i32 0, i32 21, i32 1, i32 20
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %230, 0
  %232 = select i1 %231, i1 true, i1 %209
  br i1 %232, label %249, label %234

233:                                              ; preds = %219
  br i1 %209, label %252, label %234

234:                                              ; preds = %233, %228
  br i1 %223, label %247, label %235

235:                                              ; preds = %234
  %236 = load i16, ptr %50, align 2
  %237 = icmp eq i16 %236, 512
  br i1 %237, label %238, label %277

238:                                              ; preds = %235
  %239 = load i32, ptr %6, align 4
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %247, label %241

241:                                              ; preds = %238
  %242 = icmp slt i32 %239, 0
  br i1 %242, label %243, label %277

243:                                              ; preds = %241
  %244 = load i32, ptr %4, align 4
  %245 = call i32 @inet_addr_type_dev_table(ptr noundef %0, ptr noundef %8, i32 noundef %244) #17
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %277

247:                                              ; preds = %243, %238, %234
  %248 = call fastcc ptr @__neigh_lookup(ptr noundef nonnull %4, ptr noundef %8, i32 noundef 1)
  br label %249

249:                                              ; preds = %247, %228
  %250 = phi ptr [ %248, %247 ], [ %208, %228 ]
  %251 = icmp eq ptr %250, null
  br i1 %251, label %277, label %252

252:                                              ; preds = %249, %233
  %253 = phi ptr [ %250, %249 ], [ %208, %233 ]
  %254 = getelementptr inbounds %struct.neighbour, ptr %253, i32 0, i32 4
  %255 = load i32, ptr %254, align 8
  %256 = getelementptr inbounds %struct.neighbour, ptr %253, i32 0, i32 2
  %257 = load ptr, ptr %256, align 8
  %258 = getelementptr %struct.neigh_parms, ptr %257, i32 0, i32 11, i32 12
  %259 = load i32, ptr %258, align 4
  %260 = add i32 %259, %255
  %261 = load volatile i32, ptr @jiffies, align 64
  %262 = sub i32 %260, %261
  %263 = icmp slt i32 %262, 0
  %264 = select i1 %263, i1 true, i1 %223
  %265 = load i16, ptr %50, align 2
  %266 = icmp eq i16 %265, 512
  br i1 %266, label %267, label %272

267:                                              ; preds = %252
  %268 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %269 = load i16, ptr %268, align 8
  %270 = and i16 %269, 7
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %267, %252
  br label %273

273:                                              ; preds = %272, %267
  %274 = phi i8 [ 4, %272 ], [ 2, %267 ]
  %275 = zext i1 %264 to i32
  %276 = call i32 @neigh_update(ptr noundef nonnull %253, ptr noundef %89, i8 noundef zeroext %274, i32 noundef %275, i32 noundef 0) #17
  call fastcc void @neigh_release(ptr noundef nonnull %253)
  br label %277

277:                                              ; preds = %273, %249, %243, %241, %235, %215, %201, %150, %147, %144, %132, %117, %114, %111, %110
  call void @consume_skb(ptr noundef %2) #17
  br label %278

278:                                              ; preds = %277, %206
  call void @dst_release(ptr noundef %106) #17
  br label %280

279:                                              ; preds = %82, %78, %69, %52, %49, %46, %42, %39, %35, %31, %29, %25, %21, %3
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #17
  br label %280

280:                                              ; preds = %279, %278
  %281 = phi i32 [ 1, %279 ], [ 0, %278 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %281
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iptunnel_metadata_reply(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @arp_ignore(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %5 = getelementptr %struct.ipv4_devconf, ptr %4, i32 0, i32 1, i32 18
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.in_device, ptr %0, i32 0, i32 21, i32 1, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %6, i32 %8)
  switch i32 %9, label %20 [
    i32 8, label %12
    i32 1, label %13
    i32 2, label %10
    i32 3, label %11
  ]

10:                                               ; preds = %3
  br label %13

11:                                               ; preds = %3
  br label %13

12:                                               ; preds = %3
  br label %20

13:                                               ; preds = %11, %10, %3
  %14 = phi i32 [ 253, %11 ], [ 254, %10 ], [ 254, %3 ]
  %15 = phi i32 [ 0, %11 ], [ %1, %10 ], [ 0, %3 ]
  %16 = phi ptr [ null, %11 ], [ %0, %10 ], [ %0, %3 ]
  %17 = tail call i32 @inet_confirm_addr(ptr noundef nonnull @init_net, ptr noundef %16, i32 noundef %15, i32 noundef %2, i32 noundef %14) #17
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %13, %12, %3
  %21 = phi i32 [ 1, %12 ], [ %19, %13 ], [ 0, %3 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @arp_filter(i32 noundef %0, i32 noundef %1, ptr noundef readnone %2) unnamed_addr #1 {
  %4 = alloca %struct.flowi4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i32 %1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  store i32 %0, ptr %6, align 4
  %7 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %4, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %14 = getelementptr [126 x i32], ptr %13, i32 0, i32 10
  %15 = ptrtoint ptr %14 to i32
  %16 = call i32 @llvm.read_register.i32(metadata !0) #17
  %17 = inttoptr i32 %16 to ptr
  %18 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #11, !srcloc !29
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %12, %9
  %24 = phi i32 [ 1, %12 ], [ 0, %9 ]
  call void @dst_release(ptr noundef %7) #17
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i32 [ %24, %23 ], [ 1, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_event_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @neigh_release(ptr noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #17, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #17, !srcloc !13
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !16

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #17
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void @neigh_destroy(ptr noundef %0) #17
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @arp_fwd_proxy(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #10 {
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %8 = getelementptr %struct.ipv4_devconf, ptr %7, i32 0, i32 1, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr %struct.in_device, ptr %0, i32 0, i32 21, i32 1, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr %struct.in_device, ptr %0, i32 0, i32 21, i32 1, i32 13
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %19 [
    i32 0, label %32
    i32 -1, label %18
  ]

18:                                               ; preds = %15
  br label %32

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 68
  %21 = load volatile ptr, ptr %20, align 16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.in_device, ptr %21, i32 0, i32 21, i32 1, i32 13
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i32 [ %25, %23 ], [ -1, %19 ]
  %28 = icmp ne i32 %27, %17
  %29 = icmp ne i32 %27, -1
  %30 = and i1 %28, %29
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %26, %18, %15, %11, %3
  %33 = phi i32 [ 0, %18 ], [ %31, %26 ], [ 0, %3 ], [ 0, %11 ], [ 1, %15 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pneigh_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pneigh_enqueue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__neigh_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = tail call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef %0, ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = tail call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #17
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %11 = select i1 %10, ptr null, ptr %9
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi ptr [ %11, %8 ], [ %4, %3 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @arp_is_garp(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef readonly %7) unnamed_addr #1 {
  %9 = icmp eq i32 %5, %4
  %10 = icmp eq i16 %3, 512
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = icmp eq ptr %7, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 @bcmp(ptr nonnull %7, ptr %6, i32 %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %24

20:                                               ; preds = %8
  br i1 %9, label %21, label %24

21:                                               ; preds = %20, %14
  %22 = tail call i32 @inet_addr_type_dev_table(ptr noundef %0, ptr noundef %1, i32 noundef %4) #17
  store i32 %22, ptr %2, align 4
  %23 = icmp eq i32 %22, 1
  br label %24

24:                                               ; preds = %21, %20, %14, %12
  %25 = phi i1 [ false, %20 ], [ %23, %21 ], [ false, %14 ], [ false, %12 ]
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_update(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_confirm_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pneigh_delete(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @neigh_remove_one(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_getbyhwaddr_rcu(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arp_rcv(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #1 {
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %63

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %11 = load i16, ptr %10, align 8
  %12 = trunc i16 %11 to i3
  switch i3 %12, label %13 [
    i3 3, label %63
    i3 -3, label %63
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !14

20:                                               ; preds = %17
  tail call void @consume_skb(ptr noundef %0) #17
  br label %24

21:                                               ; preds = %17
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #17
  br label %65

22:                                               ; preds = %13
  %23 = icmp eq ptr %0, null
  br i1 %23, label %65, label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %18, %20 ], [ %0, %22 ]
  %26 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 1
  %30 = add nuw nsw i32 %29, 16
  %31 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %32, %34
  %36 = icmp ugt i32 %30, %35
  br i1 %36, label %37, label %45, !prof !14

37:                                               ; preds = %24
  %38 = icmp ult i32 %32, %30
  br i1 %38, label %64, label %39, !prof !14

39:                                               ; preds = %37
  %40 = sub i32 %30, %35
  %41 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %25, i32 noundef %40) #17
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = load i8, ptr %26, align 1
  br label %45

45:                                               ; preds = %43, %24
  %46 = phi i8 [ %44, %43 ], [ %27, %24 ]
  %47 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 16
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 13, i32 0, i32 18
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %48, i32 %51
  %53 = getelementptr inbounds %struct.arphdr, ptr %52, i32 0, i32 2
  %54 = load i8, ptr %53, align 2
  %55 = icmp eq i8 %54, %46
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.arphdr, ptr %52, i32 0, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 4
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3
  store i64 0, ptr %61, align 8
  %62 = tail call fastcc i32 @arp_process(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef nonnull %25) #17, !callees !30
  br label %65

63:                                               ; preds = %9, %9, %4
  tail call void @consume_skb(ptr noundef %0) #17
  br label %65

64:                                               ; preds = %56, %45, %39, %37
  tail call void @kfree_skb_reason(ptr noundef nonnull %25, i32 noundef 0) #17
  br label %65

65:                                               ; preds = %64, %63, %60, %22, %21
  %66 = phi i32 [ 0, %63 ], [ %62, %60 ], [ 1, %22 ], [ 1, %64 ], [ 1, %21 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @arp_net_init(ptr nocapture noundef readonly %0) #8 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @arp_seq_ops, i32 noundef 20, ptr noundef null) #17
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arp_net_exit(ptr nocapture noundef readonly %0) #14 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @arp_seq_start(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @neigh_seq_start(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @arp_tbl, i32 noundef 4) #17
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_seq_stop(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_seq_next(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arp_seq_show(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca [30 x i8], align 1
  %4 = alloca [16 x i8], align 1
  %5 = alloca [16 x i8], align 1
  %6 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #17
  br label %190

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.neigh_seq_state, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.pneigh_entry, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 32
  %21 = load i16, ptr %20, align 16
  %22 = zext i16 %21 to i32
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ @.str.11, %15 ], [ %17, %19 ]
  %25 = phi i32 [ 0, %15 ], [ %22, %19 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false) #17, !annotation !20
  %26 = getelementptr inbounds %struct.pneigh_entry, ptr %1, i32 0, i32 6
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef %26) #17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %5, i32 noundef %25, i32 noundef 12, ptr noundef nonnull @.str.10, ptr noundef nonnull %24) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  br label %190

28:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(30) %3, i8 0, i32 30, i1 false) #17, !annotation !20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #17, !annotation !20
  %29 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 26
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 32
  %32 = load i16, ptr %31, align 16
  %33 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 5
  tail call void @_raw_read_lock(ptr noundef %33) #17
  %34 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 51
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %170, label %37

37:                                               ; preds = %28
  %38 = getelementptr %struct.neighbour, ptr %1, i32 0, i32 19, i32 0
  %39 = load i8, ptr %38, align 1
  %40 = lshr i8 %39, 4
  %41 = zext i8 %40 to i32
  %42 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %41
  %43 = load i8, ptr %42, align 1
  store i8 %43, ptr %3, align 1
  %44 = and i8 %39, 15
  %45 = zext i8 %44 to i32
  %46 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 2
  store i8 58, ptr %49, align 1
  %50 = icmp eq i8 %35, 1
  br i1 %50, label %170, label %51

51:                                               ; preds = %37
  %52 = getelementptr %struct.neighbour, ptr %1, i32 0, i32 19, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = lshr i8 %53, 4
  %55 = zext i8 %54 to i32
  %56 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 3
  store i8 %57, ptr %58, align 1
  %59 = and i8 %53, 15
  %60 = zext i8 %59 to i32
  %61 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 4
  store i8 %62, ptr %63, align 1
  %64 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 5
  store i8 58, ptr %64, align 1
  %65 = icmp ugt i8 %35, 2
  br i1 %65, label %66, label %170

66:                                               ; preds = %51
  %67 = getelementptr %struct.neighbour, ptr %1, i32 0, i32 19, i32 2
  %68 = load i8, ptr %67, align 1
  %69 = lshr i8 %68, 4
  %70 = zext i8 %69 to i32
  %71 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 6
  store i8 %72, ptr %73, align 1
  %74 = and i8 %68, 15
  %75 = zext i8 %74 to i32
  %76 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 7
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 8
  store i8 58, ptr %79, align 1
  %80 = icmp eq i8 %35, 3
  br i1 %80, label %170, label %81

81:                                               ; preds = %66
  %82 = getelementptr %struct.neighbour, ptr %1, i32 0, i32 19, i32 3
  %83 = load i8, ptr %82, align 1
  %84 = lshr i8 %83, 4
  %85 = zext i8 %84 to i32
  %86 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %85
  %87 = load i8, ptr %86, align 1
  %88 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 9
  store i8 %87, ptr %88, align 1
  %89 = and i8 %83, 15
  %90 = zext i8 %89 to i32
  %91 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %90
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 10
  store i8 %92, ptr %93, align 1
  %94 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 11
  store i8 58, ptr %94, align 1
  %95 = icmp ugt i8 %35, 4
  br i1 %95, label %96, label %170

96:                                               ; preds = %81
  %97 = getelementptr %struct.neighbour, ptr %1, i32 0, i32 19, i32 4
  %98 = load i8, ptr %97, align 1
  %99 = lshr i8 %98, 4
  %100 = zext i8 %99 to i32
  %101 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 12
  store i8 %102, ptr %103, align 1
  %104 = and i8 %98, 15
  %105 = zext i8 %104 to i32
  %106 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %105
  %107 = load i8, ptr %106, align 1
  %108 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 13
  store i8 %107, ptr %108, align 1
  %109 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 14
  store i8 58, ptr %109, align 1
  %110 = icmp eq i8 %35, 5
  br i1 %110, label %170, label %111

111:                                              ; preds = %96
  %112 = getelementptr %struct.neighbour, ptr %1, i32 0, i32 19, i32 5
  %113 = load i8, ptr %112, align 1
  %114 = lshr i8 %113, 4
  %115 = zext i8 %114 to i32
  %116 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 15
  store i8 %117, ptr %118, align 1
  %119 = and i8 %113, 15
  %120 = zext i8 %119 to i32
  %121 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %120
  %122 = load i8, ptr %121, align 1
  %123 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 16
  store i8 %122, ptr %123, align 1
  %124 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 17
  store i8 58, ptr %124, align 1
  %125 = icmp ugt i8 %35, 6
  br i1 %125, label %126, label %170

126:                                              ; preds = %111
  %127 = getelementptr %struct.neighbour, ptr %1, i32 0, i32 19, i32 6
  %128 = load i8, ptr %127, align 1
  %129 = lshr i8 %128, 4
  %130 = zext i8 %129 to i32
  %131 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %130
  %132 = load i8, ptr %131, align 1
  %133 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 18
  store i8 %132, ptr %133, align 1
  %134 = and i8 %128, 15
  %135 = zext i8 %134 to i32
  %136 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %135
  %137 = load i8, ptr %136, align 1
  %138 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 19
  store i8 %137, ptr %138, align 1
  %139 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 20
  store i8 58, ptr %139, align 1
  %140 = icmp eq i8 %35, 7
  br i1 %140, label %170, label %141

141:                                              ; preds = %126
  %142 = getelementptr %struct.neighbour, ptr %1, i32 0, i32 19, i32 7
  %143 = load i8, ptr %142, align 1
  %144 = lshr i8 %143, 4
  %145 = zext i8 %144 to i32
  %146 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %145
  %147 = load i8, ptr %146, align 1
  %148 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 21
  store i8 %147, ptr %148, align 1
  %149 = and i8 %143, 15
  %150 = zext i8 %149 to i32
  %151 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %150
  %152 = load i8, ptr %151, align 1
  %153 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 22
  store i8 %152, ptr %153, align 1
  %154 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 23
  store i8 58, ptr %154, align 1
  %155 = icmp ugt i8 %35, 8
  br i1 %155, label %156, label %170

156:                                              ; preds = %141
  %157 = getelementptr %struct.neighbour, ptr %1, i32 0, i32 19, i32 8
  %158 = load i8, ptr %157, align 1
  %159 = lshr i8 %158, 4
  %160 = zext i8 %159 to i32
  %161 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %160
  %162 = load i8, ptr %161, align 1
  %163 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 24
  store i8 %162, ptr %163, align 1
  %164 = and i8 %158, 15
  %165 = zext i8 %164 to i32
  %166 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %165
  %167 = load i8, ptr %166, align 1
  %168 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 25
  store i8 %167, ptr %168, align 1
  %169 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 26
  store i8 58, ptr %169, align 1
  br label %170

170:                                              ; preds = %156, %141, %126, %111, %96, %81, %66, %51, %37, %28
  %171 = phi i32 [ 26, %156 ], [ 23, %141 ], [ 20, %126 ], [ 17, %111 ], [ 14, %96 ], [ 11, %81 ], [ 8, %66 ], [ 5, %51 ], [ 2, %37 ], [ 0, %28 ]
  %172 = zext i16 %32 to i32
  %173 = getelementptr [30 x i8], ptr %3, i32 0, i32 %171
  store i8 0, ptr %173, align 1
  %174 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 28
  %175 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.8, ptr noundef %174) #17
  %176 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 12
  %177 = load i8, ptr %176, align 4
  %178 = zext i8 %177 to i32
  %179 = and i32 %178, 128
  %180 = icmp eq i32 %179, 0
  %181 = and i32 %178, 222
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 0, i32 2
  %184 = select i1 %180, i32 %183, i32 6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, i32 noundef %172, i32 noundef %184, ptr noundef nonnull %3, ptr noundef %30) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !31
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #17, !srcloc !12
  %185 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %33) #17, !srcloc !32
  %186 = extractvalue { i32, i32 } %185, 0
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %170
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !33
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !34
  br label %189

189:                                              ; preds = %188, %170
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #17
  br label %190

190:                                              ; preds = %189, %23, %7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_seq_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arp_netdev_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load ptr, ptr %2, align 4
  switch i32 %1, label %32 [
    i32 8, label %5
    i32 4, label %6
  ]

5:                                                ; preds = %3
  tail call void @neigh_changeaddr(ptr noundef nonnull @arp_tbl, ptr noundef %4) #17
  tail call void @rt_cache_flush(ptr noundef nonnull @init_net) #17
  br label %32

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.netdev_notifier_change_info, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @neigh_changeaddr(ptr noundef nonnull @arp_tbl, ptr noundef %4) #17
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 68
  %14 = load ptr, ptr %13, align 16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %18 = getelementptr %struct.ipv4_devconf, ptr %17, i32 0, i32 1, i32 32
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = getelementptr %struct.in_device, ptr %14, i32 0, i32 21, i32 1, i32 32
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %12
  %26 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @neigh_carrier_down(ptr noundef nonnull @arp_tbl, ptr noundef %4) #17
  br label %32

32:                                               ; preds = %30, %25, %21, %16, %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_changeaddr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_cache_flush(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_carrier_down(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone }

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
!9 = !{i64 2149079254}
!10 = !{i64 2149079471}
!11 = !{i64 2148179440}
!12 = !{i64 576374, i64 2148066345, i64 2148066371, i64 2148066418, i64 2148066440, i64 2148066468, i64 2148066488}
!13 = !{i64 2148081575, i64 2148081607, i64 2148081636, i64 2148081670, i64 2148081701, i64 2148081724}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148079218, i64 2148079250, i64 2148079279, i64 2148079313, i64 2148079344, i64 2148079367}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148077267}
!18 = !{i64 562943, i64 562968, i64 562990, i64 563006, i64 563018, i64 563038, i64 563062, i64 563078, i64 563090}
!19 = !{i64 2148077393}
!20 = !{!"auto-init"}
!21 = !{i64 4341846}
!22 = !{i64 4342043}
!23 = !{i64 2151827322}
!24 = !{i64 2149028887}
!25 = !{i64 2149429898}
!26 = !{i64 2149429740}
!27 = !{i64 2149430042}
!28 = !{i64 2149416475}
!29 = !{i64 500752}
!30 = distinct !{ptr @arp_process, null}
!31 = !{i64 2148968781}
!32 = !{i64 1472205, i64 1472228, i64 1472248, i64 1472272, i64 1472288}
!33 = !{i64 2148956723}
!34 = !{i64 2148956798, i64 2148956825, i64 2148956872, i64 2148956894, i64 2148956922, i64 2148956942}
!35 = !{i64 2149006384}
