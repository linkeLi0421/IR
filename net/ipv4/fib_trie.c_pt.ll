; ModuleID = '/llk/IR/net/ipv4/fib_trie.c_pt.bc'
source_filename = "../net/ipv4/fib_trie.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_alias_hw_flags_set:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_alias_hw_flags_set\22\09\09\09\09\09"
module asm "__kstrtabns_fib_alias_hw_flags_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_table_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_table_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_fib_table_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fib_prop = type { i32, i8 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.180, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.180 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.fib_rt_info = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.fib_table = type { %struct.hlist_node, i32, i32, %struct.callback_head, ptr, [0 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.key_vector = type { i32, i8, i8, i8, %union.anon.187 }
%union.anon.187 = type { %struct.hlist_head }
%struct.fib_alias = type { %struct.hlist_node, ptr, i8, i8, i8, i8, i32, i16, i8, i8, i8, %struct.callback_head }
%struct.fib_config = type { i8, i8, i8, i8, i8, i8, i32, i32, %union.anon.186, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.nl_info, ptr, i16 }
%union.anon.186 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.132 }
%union.anon.132 = type { [4 x i32] }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32 }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.136, i32, %struct.atomic_t, ptr, ptr, ptr }
%struct.netdevice_tracker = type {}
%union.anon.136 = type { %struct.in6_addr }
%struct.fib_entry_notifier_info = type { %struct.fib_notifier_info, i32, i32, ptr, i8, i8, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.tnode = type { %struct.callback_head, i32, i32, ptr, [1 x %struct.key_vector] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.145 = type { ptr }
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
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%union.flowi_uli = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.134 }
%union.anon.134 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.138, %struct.list_head, ptr }
%union.anon.138 = type { %struct.anon.140 }
%struct.anon.140 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.135 }
%union.anon.135 = type { %struct.fib_nh }
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.86 }
%union.anon.86 = type { [6 x i32], [24 x i8] }
%struct.fib_dump_filter = type { i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.sk_buff = type { %union.anon.75, %union.anon.146, %union.anon.147, [48 x i8], %union.anon.148, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.150, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.146 = type { ptr }
%union.anon.147 = type { i64 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { i32, ptr }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.152, i32, i32, i32, i16, i16, %union.anon.154, %union.anon.155, %union.anon.156, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.152 = type { i32 }
%union.anon.154 = type { i32 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { i16 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.trie_stat = type { i32, i32, i32, i32, i32, i32, [32 x i32] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.fib_trie_iter = type { %struct.seq_net_private, ptr, ptr, i32, i32 }
%struct.seq_net_private = type {}
%struct.fib_route_iter = type { %struct.seq_net_private, ptr, ptr, i64, i32 }

@sysctl_fib_sync_mem = dso_local local_unnamed_addr global i32 524288, align 4
@sysctl_fib_sync_mem_min = dso_local local_unnamed_addr global i32 65536, align 4
@sysctl_fib_sync_mem_max = dso_local local_unnamed_addr global i32 67108864, align 4
@.str = private unnamed_addr constant [20 x i8] c"net/ipv4/fib_trie.c\00", align 1
@__kstrtab_fib_alias_hw_flags_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_alias_hw_flags_set = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_alias_hw_flags_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_alias_hw_flags_set to i32), ptr @__kstrtab_fib_alias_hw_flags_set, ptr @__kstrtabns_fib_alias_hw_flags_set }, section "___ksymtab_gpl+fib_alias_hw_flags_set", align 4
@fn_alias_kmem = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@fib_table_insert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fib_props = external dso_local local_unnamed_addr constant [12 x %struct.fib_prop], align 4
@__kstrtab_fib_table_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_table_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_table_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_table_lookup to i32), ptr @__kstrtab_fib_table_lookup, ptr @__kstrtabns_fib_table_lookup }, section "___ksymtab_gpl+fib_table_lookup", align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ip_fib_alias\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ip_fib_trie\00", align 1
@trie_leaf_kmem = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"fib_trie\00", align 1
@fib_trie_seq_ops = internal constant %struct.seq_operations { ptr @fib_trie_seq_start, ptr @fib_trie_seq_stop, ptr @fib_trie_seq_next, ptr @fib_trie_seq_show }, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"fib_triestat\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"route\00", align 1
@fib_route_seq_ops = internal constant %struct.seq_operations { ptr @fib_route_seq_start, ptr @fib_route_seq_stop, ptr @fib_route_seq_next, ptr @fib_route_seq_show }, align 4
@fib_valid_key_len.__msg = internal constant [22 x i8] c"Invalid prefix length\00", align 1
@fib_valid_key_len.__msg.6 = internal constant [39 x i8] c"Invalid prefix for given prefix length\00", align 1
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@__tracepoint_fib_table_lookup = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@tnode_free_size = internal unnamed_addr global i32 0, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"  +-- %pI4/%zu %u %u %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"  |-- %pI4\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"  /%zu %s %s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" tos=%d\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Local:\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Main:\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Id %d:\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"universe\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"site\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"nowhere\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"scope=%d\00", align 1
@rtn_type_names = internal unnamed_addr constant [12 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"type %u\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"UNSPEC\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"UNICAST\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"BROADCAST\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ANYCAST\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"MULTICAST\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"BLACKHOLE\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"UNREACHABLE\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"PROHIBIT\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"THROW\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"NAT\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"XRESOLVE\00", align 1
@.str.35 = private unnamed_addr constant [64 x i8] c"Basic info: size of leaf: %zd bytes, size of tnode: %zd bytes.\0A\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"\09Aver depth:     %u.%02d\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"\09Max depth:      %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"\09Leaves:         %u\0A\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"\09Prefixes:       %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"\09Internal nodes: %u\0A\09\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"  %u: %u\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"\09Pointers: %u\0A\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Null ptrs: %u\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"Total size: %u  kB\0A\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"%-127s\0A\00", align 1
@.str.47 = private unnamed_addr constant [73 x i8] c"Iface\09Destination\09Gateway \09Flags\09RefCnt\09Use\09Metric\09Mask\09\09MTU\09Window\09IRTT\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"%s\09%08X\09%08X\09%04X\09%d\09%u\09%d\09%08X\09%d\09%u\09%u\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"*\09%08X\09%08X\09%04X\09%d\09%u\09%d\09%08X\09%d\09%u\09%u\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_fib_alias_hw_flags_set, ptr @__ksymtab_fib_table_lookup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_alias_hw_flags_set(ptr noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !8
  %3 = getelementptr inbounds %struct.fib_rt_info, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fib_rt_info, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 255
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %9 = load ptr, ptr %8, align 64
  %10 = zext i1 %7 to i32
  %11 = getelementptr %struct.hlist_head, ptr %9, i32 %10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %136, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.fib_table, ptr %12, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fib_rt_info, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #17
  br label %20

20:                                               ; preds = %39, %14
  %21 = phi i32 [ 0, %14 ], [ %33, %39 ]
  %22 = phi ptr [ %16, %14 ], [ %25, %39 ]
  %23 = getelementptr inbounds %struct.key_vector, ptr %22, i32 0, i32 4
  %24 = getelementptr [0 x ptr], ptr %23, i32 0, i32 %21
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %136, label %27

27:                                               ; preds = %20
  %28 = load i32, ptr %25, align 4
  %29 = xor i32 %28, %19
  %30 = getelementptr inbounds %struct.key_vector, ptr %25, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i32
  %33 = lshr i32 %29, %32
  %34 = getelementptr inbounds %struct.key_vector, ptr %25, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = lshr i32 %33, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %136

39:                                               ; preds = %27
  %40 = icmp eq i8 %35, 0
  br i1 %40, label %41, label %20

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.key_vector, ptr %25, i32 0, i32 4
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %136, label %45

45:                                               ; preds = %41
  %46 = trunc i32 %4 to i8
  %47 = sub i8 32, %46
  %48 = getelementptr inbounds %struct.fib_rt_info, ptr %1, i32 0, i32 4
  %49 = getelementptr inbounds %struct.fib_rt_info, ptr %1, i32 0, i32 5
  br label %50

50:                                               ; preds = %74, %45
  %51 = phi ptr [ %43, %45 ], [ %75, %74 ]
  %52 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 5
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, %47
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %6
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 2
  %61 = load i8, ptr %60, align 4
  %62 = load i8, ptr %48, align 4
  %63 = icmp eq i8 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %1, align 4
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 3
  %71 = load i8, ptr %70, align 1
  %72 = load i8, ptr %49, align 1
  %73 = icmp eq i8 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %69, %64, %59, %55, %50
  %75 = load volatile ptr, ptr %51, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %136, label %50

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 8
  %79 = load volatile i8, ptr %78, align 2
  %80 = getelementptr inbounds %struct.fib_rt_info, ptr %1, i32 0, i32 6
  %81 = load i8, ptr %80, align 2
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 9
  %86 = load volatile i8, ptr %85, align 1
  %87 = lshr i8 %81, 1
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 10
  %92 = load volatile i8, ptr %91, align 4
  %93 = lshr i8 %81, 2
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %92, %94
  br i1 %95, label %136, label %96

96:                                               ; preds = %90, %84, %77
  store volatile i8 %82, ptr %78, align 2
  %97 = load i8, ptr %80, align 2
  %98 = lshr i8 %97, 1
  %99 = and i8 %98, 1
  %100 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 9
  store volatile i8 %99, ptr %100, align 1
  %101 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 109
  %102 = load i8, ptr %101, align 8
  %103 = icmp eq i8 %102, 2
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = load i8, ptr %80, align 2
  %106 = lshr i8 %105, 2
  %107 = and i8 %106, 1
  br label %115

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 10
  %110 = load volatile i8, ptr %109, align 4
  %111 = load i8, ptr %80, align 2
  %112 = lshr i8 %111, 2
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %110, %113
  br i1 %114, label %136, label %115

115:                                              ; preds = %108, %104
  %116 = phi i8 [ %107, %104 ], [ %113, %108 ]
  %117 = getelementptr inbounds %struct.fib_alias, ptr %51, i32 0, i32 10
  store volatile i8 %116, ptr %117, align 4
  %118 = load i8, ptr %101, align 8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %115
  %121 = tail call i32 @fib_nlmsg_size(ptr noundef %66) #17
  %122 = add i32 %121, 19
  %123 = and i32 %122, -4
  %124 = tail call ptr @__alloc_skb(i32 noundef %123, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #17
  %125 = icmp eq ptr %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %120
  %127 = tail call i32 @fib_dump_info(ptr noundef nonnull %124, i32 noundef 0, i32 noundef 0, i32 noundef 24, ptr noundef %1, i32 noundef 0) #17
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = icmp eq i32 %127, -90
  br i1 %130, label %131, label %132, !prof !9

131:                                              ; preds = %129
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef null) #17
  br label %132

132:                                              ; preds = %131, %129
  tail call void @kfree_skb_reason(ptr noundef nonnull %124, i32 noundef 0) #17
  br label %134

133:                                              ; preds = %126
  tail call void @rtnl_notify(ptr noundef nonnull %124, ptr noundef %0, i32 noundef 0, i32 noundef 7, ptr noundef null, i32 noundef 2592) #17
  br label %136

134:                                              ; preds = %132, %120
  %135 = phi i32 [ %127, %132 ], [ -105, %120 ]
  tail call void @rtnl_set_sk_err(ptr noundef %0, i32 noundef 7, i32 noundef %135) #17
  br label %136

136:                                              ; preds = %134, %133, %115, %108, %90, %74, %41, %27, %20, %2
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_nlmsg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_dump_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_table_insert(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.fib_table, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %2, align 4
  %8 = zext i8 %7 to i32
  %9 = sub i8 32, %7
  %10 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = icmp ugt i8 %7, 32
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_key_len.__msg) #17
  %17 = icmp eq ptr %3, null
  br i1 %17, label %343, label %25

18:                                               ; preds = %4
  %19 = icmp eq i8 %7, 32
  %20 = shl i32 %14, %8
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_key_len.__msg.6) #17
  %24 = icmp eq ptr %3, null
  br i1 %24, label %343, label %25

25:                                               ; preds = %23, %16
  %26 = phi ptr [ @fib_valid_key_len.__msg, %16 ], [ @fib_valid_key_len.__msg.6, %23 ]
  store ptr %26, ptr %3, align 4
  br label %343

27:                                               ; preds = %18
  %28 = tail call ptr @fib_create_info(ptr noundef %2, ptr noundef %3) #17
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i32
  br label %343

32:                                               ; preds = %51, %27
  %33 = phi i32 [ %45, %51 ], [ 0, %27 ]
  %34 = phi ptr [ %37, %51 ], [ %6, %27 ]
  %35 = getelementptr inbounds %struct.key_vector, ptr %34, i32 0, i32 4
  %36 = getelementptr [0 x ptr], ptr %35, i32 0, i32 %33
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %231, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %37, align 4
  %41 = xor i32 %40, %14
  %42 = getelementptr inbounds %struct.key_vector, ptr %37, i32 0, i32 1
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = lshr i32 %41, %44
  %46 = getelementptr inbounds %struct.key_vector, ptr %37, i32 0, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = lshr i32 %45, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %231

51:                                               ; preds = %39
  %52 = icmp eq i8 %47, 0
  br i1 %52, label %53, label %32

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.key_vector, ptr %37, i32 0, i32 4
  %55 = getelementptr inbounds %struct.fib_info, ptr %28, i32 0, i32 13
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.fib_table, ptr %1, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq ptr %54, null
  br i1 %59, label %231, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr %54, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %231, label %63

63:                                               ; preds = %88, %60
  %64 = phi ptr [ %89, %88 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.fib_alias, ptr %64, i32 0, i32 5
  %66 = load i8, ptr %65, align 1
  %67 = icmp ult i8 %66, %9
  br i1 %67, label %88, label %68

68:                                               ; preds = %63
  %69 = icmp eq i8 %66, %9
  br i1 %69, label %70, label %231

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.fib_alias, ptr %64, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %72, %58
  br i1 %73, label %88, label %74

74:                                               ; preds = %70
  %75 = icmp eq i32 %72, %58
  br i1 %75, label %76, label %231

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.fib_alias, ptr %64, i32 0, i32 2
  %78 = load i8, ptr %77, align 4
  %79 = icmp ugt i8 %78, %11
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.fib_alias, ptr %64, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.fib_info, ptr %82, i32 0, i32 13
  %84 = load i32, ptr %83, align 4
  %85 = icmp uge i32 %84, %56
  %86 = icmp ult i8 %78, %11
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %80, %76, %70, %63
  %89 = load ptr, ptr %64, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %231, label %63

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.fib_alias, ptr %64, i32 0, i32 5
  %93 = getelementptr inbounds %struct.fib_alias, ptr %64, i32 0, i32 2
  %94 = getelementptr inbounds %struct.fib_alias, ptr %64, i32 0, i32 1
  %95 = icmp eq i8 %78, %11
  %96 = icmp eq i32 %84, %56
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %231

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 19
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 512
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %341

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 4
  br label %105

105:                                              ; preds = %130, %103
  %106 = phi ptr [ %64, %103 ], [ %128, %130 ]
  %107 = getelementptr inbounds %struct.fib_alias, ptr %106, i32 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, %58
  br i1 %109, label %110, label %134

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.fib_alias, ptr %106, i32 0, i32 2
  %112 = load i8, ptr %111, align 4
  %113 = icmp eq i8 %112, %11
  br i1 %113, label %114, label %134

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.fib_alias, ptr %106, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.fib_info, ptr %116, i32 0, i32 13
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, %56
  br i1 %119, label %120, label %134

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.fib_alias, ptr %106, i32 0, i32 3
  %122 = load i8, ptr %121, align 1
  %123 = load i8, ptr %104, align 4
  %124 = icmp eq i8 %122, %123
  %125 = icmp eq ptr %116, %28
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %134, label %127

127:                                              ; preds = %120
  %128 = load ptr, ptr %106, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.fib_alias, ptr %128, i32 0, i32 5
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, %9
  br i1 %133, label %105, label %134

134:                                              ; preds = %130, %127, %120, %114, %110, %105
  %135 = phi ptr [ null, %127 ], [ %106, %110 ], [ %106, %105 ], [ %128, %130 ], [ %106, %114 ], [ %106, %120 ]
  %136 = phi ptr [ null, %127 ], [ null, %110 ], [ null, %105 ], [ null, %130 ], [ null, %114 ], [ %106, %120 ]
  %137 = and i32 %100, 256
  %138 = icmp eq i32 %137, 0
  %139 = icmp eq ptr %136, null
  br i1 %138, label %224, label %140

140:                                              ; preds = %134
  br i1 %139, label %144, label %141

141:                                              ; preds = %140
  %142 = icmp eq ptr %64, %136
  %143 = select i1 %142, i32 0, i32 -17
  br label %341

144:                                              ; preds = %140
  %145 = load ptr, ptr @fn_alias_kmem, align 4
  %146 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %145, i32 noundef 3264) #17
  %147 = icmp eq ptr %146, null
  br i1 %147, label %341, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %94, align 4
  %150 = load i8, ptr %93, align 4
  %151 = getelementptr inbounds %struct.fib_alias, ptr %146, i32 0, i32 2
  store i8 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.fib_alias, ptr %146, i32 0, i32 1
  store ptr %28, ptr %152, align 8
  %153 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 4
  %154 = load i8, ptr %153, align 4
  %155 = getelementptr inbounds %struct.fib_alias, ptr %146, i32 0, i32 3
  store i8 %154, ptr %155, align 1
  %156 = getelementptr inbounds %struct.fib_alias, ptr %64, i32 0, i32 4
  %157 = load i8, ptr %156, align 2
  %158 = and i8 %157, -2
  %159 = getelementptr inbounds %struct.fib_alias, ptr %146, i32 0, i32 4
  store i8 %158, ptr %159, align 2
  %160 = load i8, ptr %92, align 1
  %161 = getelementptr inbounds %struct.fib_alias, ptr %146, i32 0, i32 5
  store i8 %160, ptr %161, align 1
  %162 = load i32, ptr %57, align 4
  %163 = getelementptr inbounds %struct.fib_alias, ptr %146, i32 0, i32 6
  store i32 %162, ptr %163, align 8
  %164 = getelementptr inbounds %struct.fib_alias, ptr %146, i32 0, i32 7
  store i16 -1, ptr %164, align 4
  %165 = getelementptr inbounds %struct.fib_alias, ptr %146, i32 0, i32 8
  store i8 0, ptr %165, align 2
  %166 = getelementptr inbounds %struct.fib_alias, ptr %146, i32 0, i32 9
  store i8 0, ptr %166, align 1
  %167 = getelementptr inbounds %struct.fib_alias, ptr %146, i32 0, i32 10
  store i8 0, ptr %167, align 8
  %168 = load ptr, ptr %64, align 4
  store ptr %168, ptr %146, align 8
  %169 = getelementptr inbounds %struct.hlist_node, ptr %64, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.hlist_node, ptr %146, i32 0, i32 1
  store volatile ptr %170, ptr %171, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %172 = load ptr, ptr %171, align 4
  store volatile ptr %146, ptr %172, align 4
  %173 = icmp eq ptr %168, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %148
  %175 = load ptr, ptr %146, align 8
  %176 = getelementptr inbounds %struct.hlist_node, ptr %175, i32 0, i32 1
  store volatile ptr %146, ptr %176, align 4
  br label %177

177:                                              ; preds = %174, %148
  store volatile ptr inttoptr (i32 290 to ptr), ptr %169, align 4
  %178 = load i8, ptr %92, align 1
  %179 = load i32, ptr %57, align 4
  %180 = load ptr, ptr %54, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %199, label %182

182:                                              ; preds = %196, %177
  %183 = phi ptr [ %197, %196 ], [ %180, %177 ]
  %184 = getelementptr inbounds %struct.fib_alias, ptr %183, i32 0, i32 5
  %185 = load i8, ptr %184, align 1
  %186 = icmp ult i8 %185, %178
  br i1 %186, label %196, label %187

187:                                              ; preds = %182
  %188 = icmp eq i8 %185, %178
  br i1 %188, label %189, label %199

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.fib_alias, ptr %183, i32 0, i32 6
  %191 = load i32, ptr %190, align 4
  %192 = icmp ugt i32 %191, %179
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = icmp eq i32 %191, %179
  %195 = select i1 %194, ptr %183, ptr null
  br label %199

196:                                              ; preds = %189, %182
  %197 = load ptr, ptr %183, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %182

199:                                              ; preds = %196, %193, %187, %177
  %200 = phi ptr [ %195, %193 ], [ null, %177 ], [ null, %196 ], [ null, %187 ]
  %201 = icmp eq ptr %200, %146
  br i1 %201, label %202, label %215

202:                                              ; preds = %199
  %203 = tail call fastcc i32 @call_fib_entry_notifiers(ptr noundef %0, i32 noundef 0, i32 noundef %14, i32 noundef %8, ptr noundef nonnull %146, ptr noundef %3)
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32, ptr %57, align 4
  br label %215

207:                                              ; preds = %202
  %208 = load ptr, ptr %146, align 8
  store ptr %208, ptr %64, align 4
  %209 = load ptr, ptr %171, align 4
  store volatile ptr %209, ptr %169, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %210 = load ptr, ptr %169, align 4
  store volatile ptr %64, ptr %210, align 4
  %211 = icmp eq ptr %208, null
  br i1 %211, label %230, label %212

212:                                              ; preds = %207
  %213 = load ptr, ptr %64, align 4
  %214 = getelementptr inbounds %struct.hlist_node, ptr %213, i32 0, i32 1
  store volatile ptr %64, ptr %214, align 4
  br label %230

215:                                              ; preds = %205, %199
  %216 = phi i32 [ %206, %205 ], [ %179, %199 ]
  %217 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20
  tail call void @rtmsg_fib(i32 noundef 24, i32 noundef %13, ptr noundef nonnull %146, i32 noundef %8, i32 noundef %216, ptr noundef %217, i32 noundef 256) #17
  %218 = getelementptr inbounds %struct.fib_alias, ptr %64, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %218, ptr noundef nonnull @__alias_free_mem) #17
  tail call void @fib_release_info(ptr noundef %149) #17
  %219 = and i8 %157, 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %343, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20, i32 1
  %223 = load ptr, ptr %222, align 4
  tail call void @rt_cache_flush(ptr noundef %223) #17
  br label %343

224:                                              ; preds = %134
  br i1 %139, label %225, label %341

225:                                              ; preds = %224
  %226 = and i32 %100, 2048
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %227, ptr %64, ptr %135
  %229 = or i32 %226, 1024
  br label %231

230:                                              ; preds = %212, %207
  store volatile ptr inttoptr (i32 290 to ptr), ptr %171, align 4
  br label %337

231:                                              ; preds = %225, %91, %88, %74, %68, %60, %53, %39, %32
  %232 = phi ptr [ %37, %91 ], [ %37, %225 ], [ %37, %60 ], [ %37, %53 ], [ %37, %68 ], [ %37, %88 ], [ %37, %74 ], [ null, %32 ], [ null, %39 ]
  %233 = phi i1 [ false, %91 ], [ false, %225 ], [ false, %60 ], [ false, %53 ], [ false, %68 ], [ false, %88 ], [ false, %74 ], [ true, %32 ], [ true, %39 ]
  %234 = phi i32 [ 1536, %91 ], [ %229, %225 ], [ 1536, %60 ], [ 1536, %53 ], [ 1536, %68 ], [ 1536, %88 ], [ 1536, %74 ], [ 1536, %32 ], [ 1536, %39 ]
  %235 = phi ptr [ %64, %91 ], [ %228, %225 ], [ null, %60 ], [ null, %53 ], [ null, %68 ], [ null, %88 ], [ null, %74 ], [ null, %32 ], [ null, %39 ]
  %236 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 19
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %237, 1024
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %341, label %240

240:                                              ; preds = %231
  %241 = load ptr, ptr @fn_alias_kmem, align 4
  %242 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %241, i32 noundef 3264) #17
  %243 = icmp eq ptr %242, null
  br i1 %243, label %341, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 1
  store ptr %28, ptr %245, align 8
  %246 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 2
  store i8 %11, ptr %246, align 4
  %247 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 4
  %248 = load i8, ptr %247, align 4
  %249 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 3
  store i8 %248, ptr %249, align 1
  %250 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 4
  store i8 0, ptr %250, align 2
  %251 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 5
  store i8 %9, ptr %251, align 1
  %252 = getelementptr inbounds %struct.fib_table, ptr %1, i32 0, i32 1
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 6
  store i32 %253, ptr %254, align 8
  %255 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 7
  store i16 -1, ptr %255, align 4
  %256 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 8
  store i8 0, ptr %256, align 2
  %257 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 9
  store i8 0, ptr %257, align 1
  %258 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 10
  store i8 0, ptr %258, align 8
  %259 = tail call fastcc i32 @fib_insert_alias(ptr noundef %34, ptr noundef %232, ptr noundef nonnull %242, ptr noundef %235, i32 noundef %14)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %337

261:                                              ; preds = %244
  br i1 %233, label %262, label %283

262:                                              ; preds = %281, %261
  %263 = phi i32 [ %275, %281 ], [ 0, %261 ]
  %264 = phi ptr [ %267, %281 ], [ %6, %261 ]
  %265 = getelementptr inbounds %struct.key_vector, ptr %264, i32 0, i32 4
  %266 = getelementptr [0 x ptr], ptr %265, i32 0, i32 %263
  %267 = load volatile ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %283, label %269

269:                                              ; preds = %262
  %270 = load i32, ptr %267, align 4
  %271 = xor i32 %270, %14
  %272 = getelementptr inbounds %struct.key_vector, ptr %267, i32 0, i32 1
  %273 = load i8, ptr %272, align 4
  %274 = zext i8 %273 to i32
  %275 = lshr i32 %271, %274
  %276 = getelementptr inbounds %struct.key_vector, ptr %267, i32 0, i32 2
  %277 = load i8, ptr %276, align 1
  %278 = zext i8 %277 to i32
  %279 = lshr i32 %275, %278
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %269
  %282 = icmp eq i8 %277, 0
  br i1 %282, label %292, label %262

283:                                              ; preds = %269, %262, %261
  %284 = phi ptr [ %34, %261 ], [ %264, %262 ], [ %264, %269 ]
  %285 = phi ptr [ %232, %261 ], [ null, %262 ], [ null, %269 ]
  %286 = icmp eq ptr %285, null
  %287 = load i1, ptr @fib_table_insert.__already_done, align 1
  %288 = xor i1 %287, true
  %289 = select i1 %286, i1 %288, i1 false
  br i1 %289, label %290, label %291, !prof !9

290:                                              ; preds = %283
  store i1 true, ptr @fib_table_insert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1375, i32 noundef 9, ptr noundef null) #17
  br label %337

291:                                              ; preds = %283
  br i1 %286, label %337, label %292

292:                                              ; preds = %291, %281
  %293 = phi ptr [ %284, %291 ], [ %264, %281 ]
  %294 = phi ptr [ %285, %291 ], [ %267, %281 ]
  %295 = getelementptr inbounds %struct.key_vector, ptr %294, i32 0, i32 4
  %296 = load i8, ptr %251, align 1
  %297 = load i32, ptr %252, align 4
  %298 = icmp eq ptr %295, null
  br i1 %298, label %319, label %299

299:                                              ; preds = %292
  %300 = load ptr, ptr %295, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %319, label %302

302:                                              ; preds = %316, %299
  %303 = phi ptr [ %317, %316 ], [ %300, %299 ]
  %304 = getelementptr inbounds %struct.fib_alias, ptr %303, i32 0, i32 5
  %305 = load i8, ptr %304, align 1
  %306 = icmp ult i8 %305, %296
  br i1 %306, label %316, label %307

307:                                              ; preds = %302
  %308 = icmp eq i8 %305, %296
  br i1 %308, label %309, label %319

309:                                              ; preds = %307
  %310 = getelementptr inbounds %struct.fib_alias, ptr %303, i32 0, i32 6
  %311 = load i32, ptr %310, align 4
  %312 = icmp ugt i32 %311, %297
  br i1 %312, label %316, label %313

313:                                              ; preds = %309
  %314 = icmp eq i32 %311, %297
  %315 = select i1 %314, ptr %303, ptr null
  br label %319

316:                                              ; preds = %309, %302
  %317 = load ptr, ptr %303, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %302

319:                                              ; preds = %316, %313, %307, %299, %292
  %320 = phi ptr [ null, %292 ], [ %315, %313 ], [ null, %299 ], [ null, %316 ], [ null, %307 ]
  %321 = icmp eq ptr %320, %242
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = tail call fastcc i32 @call_fib_entry_notifiers(ptr noundef %0, i32 noundef 0, i32 noundef %14, i32 noundef %8, ptr noundef nonnull %242, ptr noundef %3)
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %336

325:                                              ; preds = %322, %319
  %326 = icmp eq i8 %7, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %325
  %328 = getelementptr inbounds %struct.fib_table, ptr %1, i32 0, i32 2
  %329 = load i32, ptr %328, align 4
  %330 = add i32 %329, 1
  store i32 %330, ptr %328, align 4
  br label %331

331:                                              ; preds = %327, %325
  %332 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20
  %333 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20, i32 1
  %334 = load ptr, ptr %333, align 4
  tail call void @rt_cache_flush(ptr noundef %334) #17
  %335 = load i32, ptr %254, align 8
  tail call void @rtmsg_fib(i32 noundef 24, i32 noundef %13, ptr noundef nonnull %242, i32 noundef %8, i32 noundef %335, ptr noundef %332, i32 noundef %234) #17
  br label %343

336:                                              ; preds = %322
  tail call fastcc void @fib_remove_alias(ptr noundef %293, ptr noundef nonnull %294, ptr noundef nonnull %242)
  br label %337

337:                                              ; preds = %336, %291, %290, %244, %230
  %338 = phi i32 [ %203, %230 ], [ %259, %244 ], [ 0, %291 ], [ %323, %336 ], [ 0, %290 ]
  %339 = phi ptr [ %146, %230 ], [ %242, %244 ], [ %242, %291 ], [ %242, %336 ], [ %242, %290 ]
  %340 = load ptr, ptr @fn_alias_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %340, ptr noundef %339) #17
  br label %341

341:                                              ; preds = %337, %240, %231, %224, %144, %141, %98
  %342 = phi i32 [ %338, %337 ], [ -105, %240 ], [ -2, %231 ], [ -17, %224 ], [ -105, %144 ], [ %143, %141 ], [ -17, %98 ]
  tail call void @fib_release_info(ptr noundef %28) #17
  br label %343

343:                                              ; preds = %341, %331, %221, %215, %30, %25, %23, %16
  %344 = phi i32 [ 0, %331 ], [ %31, %30 ], [ %342, %341 ], [ -22, %16 ], [ -22, %23 ], [ -22, %25 ], [ 0, %221 ], [ 0, %215 ]
  ret i32 %344
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_create_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @call_fib_entry_notifiers(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.fib_entry_notifier_info, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #17
  %8 = getelementptr inbounds %struct.fib_notifier_info, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %7, i32 0, i32 1
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %7, i32 0, i32 2
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %7, i32 0, i32 3
  %12 = getelementptr inbounds %struct.fib_alias, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %7, i32 0, i32 4
  %15 = getelementptr inbounds %struct.fib_alias, ptr %4, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  store i8 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %7, i32 0, i32 5
  %18 = getelementptr inbounds %struct.fib_alias, ptr %4, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %17, align 1
  %20 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %7, i32 0, i32 6
  %21 = getelementptr inbounds %struct.fib_alias, ptr %4, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %20, align 4
  %23 = call i32 @call_fib4_notifiers(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #17
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtmsg_fib(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_release_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_cache_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fib_insert_alias(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %209

7:                                                ; preds = %5
  %8 = load ptr, ptr @trie_leaf_kmem, align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3264) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %282, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tnode, ptr %9, i32 0, i32 4
  store i32 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tnode, ptr %9, i32 0, i32 4, i32 0, i32 1
  store i8 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.tnode, ptr %9, i32 0, i32 4, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.fib_alias, ptr %2, i32 0, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.tnode, ptr %9, i32 0, i32 4, i32 0, i32 3
  store i8 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.tnode, ptr %9, i32 0, i32 4, i32 0, i32 4
  store volatile ptr null, ptr %2, align 4
  store volatile ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  store volatile ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 4
  %21 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 32
  br i1 %23, label %29, label %24

24:                                               ; preds = %11
  %25 = zext i8 %22 to i32
  %26 = load i32, ptr %0, align 4
  %27 = xor i32 %26, %4
  %28 = lshr i32 %27, %25
  br label %29

29:                                               ; preds = %24, %11
  %30 = phi i32 [ %28, %24 ], [ 0, %11 ]
  %31 = getelementptr [0 x ptr], ptr %20, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %173, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %32, align 4
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 36) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %208, label %39

39:                                               ; preds = %34
  %40 = xor i32 %35, %4
  %41 = tail call i32 @llvm.ctlz.i32(i32 %40, i1 false) #17, !range !12
  %42 = sub nuw nsw i32 32, %41
  %43 = getelementptr %struct.tnode, ptr %37, i32 0, i32 1
  store i32 2, ptr %43, align 8
  %44 = getelementptr inbounds %struct.tnode, ptr %37, i32 0, i32 4
  %45 = icmp eq i32 %41, 0
  %46 = shl nsw i32 -1, %42
  %47 = and i32 %46, %4
  %48 = select i1 %45, i32 0, i32 %47
  store i32 %48, ptr %44, align 4
  %49 = trunc i32 %41 to i8
  %50 = sub nsw i8 31, %49
  %51 = getelementptr inbounds %struct.tnode, ptr %37, i32 0, i32 4, i32 0, i32 1
  store i8 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.tnode, ptr %37, i32 0, i32 4, i32 0, i32 2
  store i8 1, ptr %52, align 1
  %53 = getelementptr inbounds %struct.tnode, ptr %37, i32 0, i32 4, i32 0, i32 3
  store i8 %50, ptr %53, align 2
  %54 = getelementptr inbounds %struct.tnode, ptr %37, i32 0, i32 3
  store volatile ptr %0, ptr %54, align 8
  %55 = zext i8 %50 to i32
  %56 = xor i32 %48, %4
  %57 = lshr i32 %56, %55
  %58 = xor i32 %57, 1
  %59 = getelementptr inbounds %struct.tnode, ptr %37, i32 0, i32 4, i32 0, i32 4
  %60 = getelementptr [0 x ptr], ptr %59, i32 0, i32 %58
  %61 = load ptr, ptr %60, align 4
  %62 = icmp ult i32 %58, 2
  br i1 %62, label %64, label %63, !prof !13

63:                                               ; preds = %39
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

64:                                               ; preds = %39
  %65 = icmp eq ptr %61, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  store i32 1, ptr %43, align 8
  br label %78

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.key_vector, ptr %61, i32 0, i32 1
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds %struct.key_vector, ptr %61, i32 0, i32 2
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %73, %70
  %75 = icmp ne i32 %74, %55
  %76 = icmp eq i8 %72, 0
  %77 = select i1 %75, i1 true, i1 %76
  br label %78

78:                                               ; preds = %67, %66
  %79 = phi i1 [ %77, %67 ], [ true, %66 ]
  %80 = getelementptr inbounds %struct.key_vector, ptr %32, i32 0, i32 1
  %81 = load i8, ptr %80, align 4
  %82 = zext i8 %81 to i32
  %83 = getelementptr inbounds %struct.key_vector, ptr %32, i32 0, i32 2
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nuw nsw i32 %85, %82
  %87 = icmp eq i32 %86, %55
  %88 = icmp ne i8 %84, 0
  %89 = select i1 %87, i1 %88, i1 false
  %90 = select i1 %79, i1 true, i1 %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = select i1 %79, i1 %89, i1 false
  br i1 %92, label %93, label %98

93:                                               ; preds = %91, %78
  %94 = phi i32 [ -1, %78 ], [ 1, %91 ]
  %95 = getelementptr %struct.tnode, ptr %37, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, %94
  store i32 %97, ptr %95, align 4
  br label %98

98:                                               ; preds = %93, %91
  %99 = getelementptr inbounds %struct.key_vector, ptr %32, i32 0, i32 3
  %100 = load i8, ptr %99, align 2
  %101 = icmp ult i8 %50, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i8 %100, ptr %53, align 2
  br label %103

103:                                              ; preds = %102, %98
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  store volatile ptr %32, ptr %60, align 4
  %104 = load i8, ptr %21, align 4
  %105 = icmp ugt i8 %104, 31
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  br label %169

107:                                              ; preds = %103
  %108 = zext i8 %104 to i32
  %109 = load i32, ptr %0, align 4
  %110 = xor i32 %109, %4
  %111 = lshr i32 %110, %108
  %112 = getelementptr [0 x ptr], ptr %20, i32 0, i32 %111
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 2
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, -2
  %119 = icmp ugt i32 %118, %111
  br i1 %119, label %121, label %120, !prof !13

120:                                              ; preds = %107
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

121:                                              ; preds = %107
  %122 = icmp eq ptr %113, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %121
  %124 = getelementptr i8, ptr %0, i32 -12
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = getelementptr i8, ptr %0, i32 -8
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, -1
  store i32 %130, ptr %128, align 4
  br label %131

131:                                              ; preds = %127, %123
  %132 = add i32 %125, -1
  store i32 %132, ptr %124, align 4
  br label %144

133:                                              ; preds = %121
  %134 = getelementptr inbounds %struct.key_vector, ptr %113, i32 0, i32 1
  %135 = load i8, ptr %134, align 4
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds %struct.key_vector, ptr %113, i32 0, i32 2
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = add nuw nsw i32 %139, %136
  %141 = icmp ne i32 %140, %108
  %142 = icmp eq i8 %138, 0
  %143 = select i1 %141, i1 true, i1 %142
  br label %144

144:                                              ; preds = %133, %131
  %145 = phi i1 [ true, %131 ], [ %143, %133 ]
  %146 = load i8, ptr %51, align 8
  %147 = zext i8 %146 to i32
  %148 = load i8, ptr %52, align 1
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %149, %147
  %151 = icmp eq i32 %150, %108
  %152 = icmp ne i8 %148, 0
  %153 = select i1 %151, i1 %152, i1 false
  %154 = select i1 %145, i1 true, i1 %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = select i1 %145, i1 %153, i1 false
  br i1 %156, label %157, label %162

157:                                              ; preds = %155, %144
  %158 = phi i32 [ -1, %144 ], [ 1, %155 ]
  %159 = getelementptr i8, ptr %0, i32 -8
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, %158
  store i32 %161, ptr %159, align 4
  br label %162

162:                                              ; preds = %157, %155
  %163 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 3
  %164 = load i8, ptr %163, align 2
  %165 = load i8, ptr %53, align 2
  %166 = icmp ult i8 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i8 %165, ptr %163, align 2
  br label %168

168:                                              ; preds = %167, %162
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  br label %169

169:                                              ; preds = %168, %106
  %170 = phi ptr [ %112, %168 ], [ %20, %106 ]
  store volatile ptr %44, ptr %170, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %171 = getelementptr i8, ptr %32, i32 -4
  store volatile ptr %44, ptr %171, align 4
  %172 = load i8, ptr %15, align 1
  br label %173

173:                                              ; preds = %169, %29
  %174 = phi i8 [ %172, %169 ], [ %16, %29 ]
  %175 = phi ptr [ %44, %169 ], [ %0, %29 ]
  %176 = getelementptr inbounds %struct.key_vector, ptr %175, i32 0, i32 3
  %177 = load i8, ptr %176, align 2
  %178 = icmp ult i8 %177, %174
  br i1 %178, label %179, label %187

179:                                              ; preds = %179, %173
  %180 = phi ptr [ %184, %179 ], [ %176, %173 ]
  %181 = phi ptr [ %183, %179 ], [ %175, %173 ]
  store i8 %174, ptr %180, align 2
  %182 = getelementptr i8, ptr %181, i32 -4
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.key_vector, ptr %183, i32 0, i32 3
  %185 = load i8, ptr %184, align 2
  %186 = icmp ult i8 %185, %174
  br i1 %186, label %179, label %187

187:                                              ; preds = %179, %173
  %188 = getelementptr inbounds %struct.tnode, ptr %9, i32 0, i32 3
  store volatile ptr %175, ptr %188, align 8
  %189 = getelementptr inbounds %struct.key_vector, ptr %175, i32 0, i32 1
  %190 = load i8, ptr %189, align 4
  %191 = icmp ugt i8 %190, 31
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %193 = getelementptr inbounds %struct.key_vector, ptr %175, i32 0, i32 4
  store volatile ptr %12, ptr %193, align 4
  br label %199

194:                                              ; preds = %187
  %195 = zext i8 %190 to i32
  %196 = load i32, ptr %175, align 4
  %197 = xor i32 %196, %4
  %198 = lshr i32 %197, %195
  tail call fastcc void @put_child(ptr noundef %175, i32 noundef %198, ptr noundef %12) #17
  br label %199

199:                                              ; preds = %194, %192
  %200 = load i8, ptr %189, align 4
  %201 = icmp ult i8 %200, 32
  br i1 %201, label %202, label %282

202:                                              ; preds = %202, %199
  %203 = phi ptr [ %204, %202 ], [ %175, %199 ]
  %204 = tail call fastcc ptr @resize(ptr noundef %203) #17
  %205 = getelementptr inbounds %struct.key_vector, ptr %204, i32 0, i32 1
  %206 = load i8, ptr %205, align 4
  %207 = icmp ult i8 %206, 32
  br i1 %207, label %202, label %282

208:                                              ; preds = %34
  tail call void @call_rcu(ptr noundef nonnull %9, ptr noundef nonnull @__node_free_rcu) #17
  br label %282

209:                                              ; preds = %5
  %210 = icmp eq ptr %3, null
  br i1 %210, label %216, label %211

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  store volatile ptr %213, ptr %214, align 4
  store ptr %3, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %215 = load ptr, ptr %214, align 4
  store volatile ptr %2, ptr %215, align 4
  br label %261

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 4
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  %220 = getelementptr inbounds %struct.fib_alias, ptr %2, i32 0, i32 6
  br i1 %219, label %259, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.fib_alias, ptr %2, i32 0, i32 5
  %223 = load i8, ptr %222, align 1
  %224 = getelementptr inbounds %struct.fib_alias, ptr %218, i32 0, i32 5
  %225 = load i8, ptr %224, align 1
  %226 = icmp ult i8 %223, %225
  br i1 %226, label %244, label %231

227:                                              ; preds = %241
  %228 = getelementptr inbounds %struct.fib_alias, ptr %242, i32 0, i32 5
  %229 = load i8, ptr %228, align 1
  %230 = icmp ult i8 %223, %229
  br i1 %230, label %244, label %231

231:                                              ; preds = %227, %221
  %232 = phi i8 [ %229, %227 ], [ %225, %221 ]
  %233 = phi ptr [ %242, %227 ], [ %218, %221 ]
  %234 = phi ptr [ %233, %227 ], [ null, %221 ]
  %235 = icmp eq i8 %223, %232
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load i32, ptr %220, align 4
  %238 = getelementptr inbounds %struct.fib_alias, ptr %233, i32 0, i32 6
  %239 = load i32, ptr %238, align 4
  %240 = icmp ugt i32 %237, %239
  br i1 %240, label %244, label %241

241:                                              ; preds = %236, %231
  %242 = load ptr, ptr %233, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %247, label %227

244:                                              ; preds = %236, %227, %221
  %245 = phi ptr [ null, %221 ], [ %234, %236 ], [ %233, %227 ]
  %246 = icmp eq ptr %245, null
  br i1 %246, label %255, label %247

247:                                              ; preds = %244, %241
  %248 = phi ptr [ %245, %244 ], [ %233, %241 ]
  %249 = load ptr, ptr %248, align 4
  store ptr %249, ptr %2, align 4
  %250 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  store volatile ptr %248, ptr %250, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  store volatile ptr %2, ptr %248, align 4
  %251 = load ptr, ptr %2, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %263, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.hlist_node, ptr %251, i32 0, i32 1
  br label %261

255:                                              ; preds = %244
  store ptr %218, ptr %2, align 4
  %256 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  store volatile ptr %217, ptr %256, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  store volatile ptr %2, ptr %217, align 4
  br i1 %219, label %263, label %257

257:                                              ; preds = %255
  %258 = getelementptr inbounds %struct.hlist_node, ptr %218, i32 0, i32 1
  br label %261

259:                                              ; preds = %216
  store ptr %218, ptr %2, align 4
  %260 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  store volatile ptr %217, ptr %260, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  br label %261

261:                                              ; preds = %259, %257, %253, %211
  %262 = phi ptr [ %217, %259 ], [ %258, %257 ], [ %254, %253 ], [ %212, %211 ]
  store volatile ptr %2, ptr %262, align 4
  br label %263

263:                                              ; preds = %261, %255, %247
  %264 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 3
  %265 = load i8, ptr %264, align 2
  %266 = getelementptr inbounds %struct.fib_alias, ptr %2, i32 0, i32 5
  %267 = load i8, ptr %266, align 1
  %268 = icmp ult i8 %265, %267
  br i1 %268, label %269, label %282

269:                                              ; preds = %263
  store i8 %267, ptr %264, align 2
  %270 = load i8, ptr %266, align 1
  %271 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 3
  %272 = load i8, ptr %271, align 2
  %273 = icmp ult i8 %272, %270
  br i1 %273, label %274, label %282

274:                                              ; preds = %274, %269
  %275 = phi ptr [ %279, %274 ], [ %271, %269 ]
  %276 = phi ptr [ %278, %274 ], [ %0, %269 ]
  store i8 %270, ptr %275, align 2
  %277 = getelementptr i8, ptr %276, i32 -4
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.key_vector, ptr %278, i32 0, i32 3
  %280 = load i8, ptr %279, align 2
  %281 = icmp ult i8 %280, %270
  br i1 %281, label %274, label %282

282:                                              ; preds = %274, %269, %263, %208, %202, %199, %7
  %283 = phi i32 [ 0, %263 ], [ -12, %208 ], [ 0, %199 ], [ -12, %7 ], [ 0, %269 ], [ 0, %202 ], [ 0, %274 ]
  ret i32 %283
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fib_remove_alias(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %2, align 4
  store volatile ptr %6, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  store volatile ptr %5, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %3
  store volatile ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %11 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 4
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %138

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 3
  %16 = load i8, ptr %15, align 2
  %17 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 3
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %16, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = icmp ugt i8 %16, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %68, %20
  %25 = phi i8 [ %74, %68 ], [ %22, %20 ]
  %26 = phi i8 [ %72, %68 ], [ %16, %20 ]
  %27 = phi ptr [ %71, %68 ], [ %15, %20 ]
  %28 = phi ptr [ %70, %68 ], [ %0, %20 ]
  %29 = getelementptr inbounds %struct.key_vector, ptr %28, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = add i8 %25, -1
  %32 = add i8 %31, %30
  %33 = tail call i8 @llvm.umin.i8(i8 %32, i8 %26) #17
  %34 = zext i8 %30 to i32
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, -2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.key_vector, ptr %28, i32 0, i32 4
  br label %40

40:                                               ; preds = %59, %38
  %41 = phi i8 [ %25, %38 ], [ %60, %59 ]
  %42 = phi i32 [ 2, %38 ], [ %61, %59 ]
  %43 = phi i32 [ 0, %38 ], [ %63, %59 ]
  %44 = getelementptr [0 x ptr], ptr %39, i32 0, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.key_vector, ptr %45, i32 0, i32 3
  %49 = load i8, ptr %48, align 2
  %50 = icmp ugt i8 %49, %41
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = zext i8 %41 to i32
  %53 = zext i8 %49 to i32
  %54 = sub nsw i32 %53, %52
  %55 = shl i32 %42, %54
  %56 = sub i32 0, %55
  %57 = and i32 %43, %56
  %58 = icmp ult i8 %49, %33
  br i1 %58, label %59, label %65

59:                                               ; preds = %51, %47, %40
  %60 = phi i8 [ %49, %51 ], [ %41, %47 ], [ %41, %40 ]
  %61 = phi i32 [ %55, %51 ], [ %42, %47 ], [ %42, %40 ]
  %62 = phi i32 [ %57, %51 ], [ %43, %47 ], [ %43, %40 ]
  %63 = add i32 %62, %61
  %64 = icmp ult i32 %63, %36
  br i1 %64, label %40, label %65

65:                                               ; preds = %59, %51, %24
  %66 = phi i8 [ %25, %24 ], [ %49, %51 ], [ %60, %59 ]
  store i8 %66, ptr %27, align 2
  %67 = icmp eq i8 %26, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = getelementptr i8, ptr %28, i32 -4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.key_vector, ptr %70, i32 0, i32 3
  %72 = load i8, ptr %71, align 2
  %73 = getelementptr inbounds %struct.key_vector, ptr %70, i32 0, i32 1
  %74 = load i8, ptr %73, align 4
  %75 = icmp ugt i8 %72, %74
  %76 = icmp ugt i8 %72, %66
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %24, label %78

78:                                               ; preds = %68, %65, %20, %14
  %79 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 1
  %80 = load i8, ptr %79, align 4
  %81 = icmp ugt i8 %80, 31
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %83 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 4
  br label %127

84:                                               ; preds = %78
  %85 = load i32, ptr %1, align 4
  %86 = zext i8 %80 to i32
  %87 = load i32, ptr %0, align 4
  %88 = xor i32 %87, %85
  %89 = lshr i32 %88, %86
  %90 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 4
  %91 = getelementptr [0 x ptr], ptr %90, i32 0, i32 %89
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 2
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw i32 1, %95
  %97 = and i32 %96, -2
  %98 = icmp ugt i32 %97, %89
  br i1 %98, label %100, label %99, !prof !13

99:                                               ; preds = %84
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

100:                                              ; preds = %84
  %101 = icmp eq ptr %92, null
  br i1 %101, label %126, label %102

102:                                              ; preds = %100
  %103 = getelementptr i8, ptr %0, i32 -12
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %103, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = getelementptr i8, ptr %0, i32 -8
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = getelementptr inbounds %struct.key_vector, ptr %92, i32 0, i32 1
  %113 = load i8, ptr %112, align 4
  %114 = zext i8 %113 to i32
  %115 = getelementptr inbounds %struct.key_vector, ptr %92, i32 0, i32 2
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = add nuw nsw i32 %117, %114
  %119 = icmp ne i32 %118, %86
  %120 = icmp eq i8 %116, 0
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %111
  %123 = getelementptr i8, ptr %0, i32 -8
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, -1
  store i32 %125, ptr %123, align 4
  br label %126

126:                                              ; preds = %122, %111, %100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  br label %127

127:                                              ; preds = %126, %82
  %128 = phi ptr [ %83, %82 ], [ %91, %126 ]
  store volatile ptr null, ptr %128, align 4
  %129 = getelementptr i8, ptr %1, i32 -20
  tail call void @call_rcu(ptr noundef %129, ptr noundef nonnull @__node_free_rcu) #17
  %130 = load i8, ptr %79, align 4
  %131 = icmp ult i8 %130, 32
  br i1 %131, label %132, label %207

132:                                              ; preds = %132, %127
  %133 = phi ptr [ %134, %132 ], [ %0, %127 ]
  %134 = tail call fastcc ptr @resize(ptr noundef %133) #17
  %135 = getelementptr inbounds %struct.key_vector, ptr %134, i32 0, i32 1
  %136 = load i8, ptr %135, align 4
  %137 = icmp ult i8 %136, 32
  br i1 %137, label %132, label %207

138:                                              ; preds = %10
  %139 = load ptr, ptr %5, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %207

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.fib_alias, ptr %5, i32 0, i32 5
  %143 = load i8, ptr %142, align 1
  %144 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 3
  store i8 %143, ptr %144, align 2
  %145 = load i8, ptr %142, align 1
  %146 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 3
  %147 = load i8, ptr %146, align 2
  %148 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 1
  %149 = load i8, ptr %148, align 4
  %150 = icmp ugt i8 %147, %149
  %151 = icmp ugt i8 %147, %145
  %152 = and i1 %151, %150
  br i1 %152, label %153, label %207

153:                                              ; preds = %197, %141
  %154 = phi i8 [ %203, %197 ], [ %149, %141 ]
  %155 = phi i8 [ %201, %197 ], [ %147, %141 ]
  %156 = phi ptr [ %200, %197 ], [ %146, %141 ]
  %157 = phi ptr [ %199, %197 ], [ %0, %141 ]
  %158 = getelementptr inbounds %struct.key_vector, ptr %157, i32 0, i32 2
  %159 = load i8, ptr %158, align 1
  %160 = add i8 %154, -1
  %161 = add i8 %160, %159
  %162 = tail call i8 @llvm.umin.i8(i8 %161, i8 %155) #17
  %163 = zext i8 %159 to i32
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, -2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %194, label %167

167:                                              ; preds = %153
  %168 = getelementptr inbounds %struct.key_vector, ptr %157, i32 0, i32 4
  br label %169

169:                                              ; preds = %188, %167
  %170 = phi i8 [ %154, %167 ], [ %189, %188 ]
  %171 = phi i32 [ 2, %167 ], [ %190, %188 ]
  %172 = phi i32 [ 0, %167 ], [ %192, %188 ]
  %173 = getelementptr [0 x ptr], ptr %168, i32 0, i32 %172
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %188, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.key_vector, ptr %174, i32 0, i32 3
  %178 = load i8, ptr %177, align 2
  %179 = icmp ugt i8 %178, %170
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = zext i8 %170 to i32
  %182 = zext i8 %178 to i32
  %183 = sub nsw i32 %182, %181
  %184 = shl i32 %171, %183
  %185 = sub i32 0, %184
  %186 = and i32 %172, %185
  %187 = icmp ult i8 %178, %162
  br i1 %187, label %188, label %194

188:                                              ; preds = %180, %176, %169
  %189 = phi i8 [ %178, %180 ], [ %170, %176 ], [ %170, %169 ]
  %190 = phi i32 [ %184, %180 ], [ %171, %176 ], [ %171, %169 ]
  %191 = phi i32 [ %186, %180 ], [ %172, %176 ], [ %172, %169 ]
  %192 = add i32 %191, %190
  %193 = icmp ult i32 %192, %165
  br i1 %193, label %169, label %194

194:                                              ; preds = %188, %180, %153
  %195 = phi i8 [ %154, %153 ], [ %178, %180 ], [ %189, %188 ]
  store i8 %195, ptr %156, align 2
  %196 = icmp eq i8 %155, %195
  br i1 %196, label %207, label %197

197:                                              ; preds = %194
  %198 = getelementptr i8, ptr %157, i32 -4
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.key_vector, ptr %199, i32 0, i32 3
  %201 = load i8, ptr %200, align 2
  %202 = getelementptr inbounds %struct.key_vector, ptr %199, i32 0, i32 1
  %203 = load i8, ptr %202, align 4
  %204 = icmp ugt i8 %201, %203
  %205 = icmp ugt i8 %201, %195
  %206 = select i1 %204, i1 %205, i1 false
  br i1 %206, label %153, label %207

207:                                              ; preds = %197, %194, %141, %138, %132, %127
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @fib_lookup_good_nhc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 68
  %11 = load volatile ptr, ptr %10, align 16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %15 = getelementptr %struct.ipv4_devconf, ptr %14, i32 0, i32 1, i32 28
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr %struct.in_device, ptr %11, i32 0, i32 21, i32 1, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18, %13
  %23 = and i8 %5, 16
  %24 = icmp ne i8 %23, 0
  %25 = and i32 %1, 2
  %26 = icmp eq i32 %25, 0
  %27 = and i1 %26, %24
  br i1 %27, label %41, label %28

28:                                               ; preds = %22, %18, %8
  %29 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, ptr %2, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %33, %28
  br label %41

41:                                               ; preds = %40, %36, %22, %3
  %42 = phi i1 [ true, %40 ], [ false, %3 ], [ false, %22 ], [ false, %36 ]
  ret i1 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_table_lookup(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = getelementptr inbounds %struct.key_vector, ptr %7, i32 0, i32 4
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fib_table_lookup, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %336

19:                                               ; preds = %14
  %20 = tail call ptr @llvm.thread.pointer() #17
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %336, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %31 = tail call i32 @__traceiter_fib_table_lookup(ptr noundef null, i32 noundef %16, ptr noundef %1, ptr noundef null, i32 noundef -11) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !22
  br label %336

32:                                               ; preds = %49, %4
  %33 = phi i32 [ %53, %49 ], [ 0, %4 ]
  %34 = phi ptr [ %54, %49 ], [ %7, %4 ]
  %35 = phi ptr [ %57, %49 ], [ %12, %4 ]
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %36, %10
  %38 = getelementptr inbounds %struct.key_vector, ptr %35, i32 0, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = lshr i32 %37, %40
  %42 = getelementptr inbounds %struct.key_vector, ptr %35, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = lshr i32 %41, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %32
  %48 = icmp eq i8 %43, 0
  br i1 %48, label %140, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.key_vector, ptr %35, i32 0, i32 3
  %51 = load i8, ptr %50, align 2
  %52 = icmp ugt i8 %51, %39
  %53 = select i1 %52, i32 %41, i32 %33
  %54 = select i1 %52, ptr %35, ptr %34
  %55 = getelementptr inbounds %struct.key_vector, ptr %35, i32 0, i32 4
  %56 = getelementptr [0 x ptr], ptr %55, i32 0, i32 %41
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %89, label %32, !prof !9

59:                                               ; preds = %86, %32
  %60 = phi i32 [ %88, %86 ], [ %37, %32 ]
  %61 = phi i32 [ %87, %86 ], [ %36, %32 ]
  %62 = phi i32 [ %82, %86 ], [ %33, %32 ]
  %63 = phi ptr [ %83, %86 ], [ %34, %32 ]
  %64 = phi ptr [ %84, %86 ], [ %35, %32 ]
  %65 = getelementptr inbounds %struct.key_vector, ptr %64, i32 0, i32 4
  %66 = sub i32 0, %61
  %67 = or i32 %61, %66
  %68 = and i32 %60, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %89, !prof !13

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.key_vector, ptr %64, i32 0, i32 3
  %72 = load i8, ptr %71, align 2
  %73 = getelementptr inbounds %struct.key_vector, ptr %64, i32 0, i32 1
  %74 = load i8, ptr %73, align 4
  %75 = icmp eq i8 %72, %74
  br i1 %75, label %89, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.key_vector, ptr %64, i32 0, i32 2
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %140, label %80, !prof !9

80:                                               ; preds = %133, %76
  %81 = phi ptr [ %139, %133 ], [ %65, %76 ]
  %82 = phi i32 [ %137, %133 ], [ %62, %76 ]
  %83 = phi ptr [ %135, %133 ], [ %63, %76 ]
  %84 = load volatile ptr, ptr %81, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, ptr %84, align 4
  %88 = xor i32 %87, %10
  br label %59

89:                                               ; preds = %333, %332, %140, %80, %70, %59, %49
  %90 = phi i32 [ %82, %80 ], [ %62, %70 ], [ %62, %59 ], [ %142, %140 ], [ %142, %332 ], [ %142, %333 ], [ %53, %49 ]
  %91 = phi ptr [ %83, %80 ], [ %63, %70 ], [ %63, %59 ], [ %143, %140 ], [ %143, %332 ], [ %143, %333 ], [ %54, %49 ]
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %93, label %133

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.key_vector, ptr %91, i32 0, i32 1
  %95 = load i8, ptr %94, align 4
  br label %96

96:                                               ; preds = %130, %93
  %97 = phi i8 [ %123, %130 ], [ %95, %93 ]
  %98 = phi ptr [ %121, %130 ], [ %91, %93 ]
  %99 = icmp ugt i8 %97, 31
  br i1 %99, label %100, label %118

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fib_table_lookup, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %336

105:                                              ; preds = %100
  %106 = tail call ptr @llvm.thread.pointer() #17
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %336, label %116

116:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %117 = tail call i32 @__traceiter_fib_table_lookup(ptr noundef null, i32 noundef %102, ptr noundef %1, ptr noundef null, i32 noundef -11) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !22
  br label %336

118:                                              ; preds = %96
  %119 = load i32, ptr %98, align 4
  %120 = getelementptr i8, ptr %98, i32 -4
  %121 = load volatile ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.key_vector, ptr %121, i32 0, i32 1
  %123 = load i8, ptr %122, align 4
  %124 = icmp eq i8 %123, 32
  br i1 %124, label %130, label %125

125:                                              ; preds = %118
  %126 = zext i8 %123 to i32
  %127 = load i32, ptr %121, align 4
  %128 = xor i32 %127, %119
  %129 = lshr i32 %128, %126
  br label %130

130:                                              ; preds = %125, %118
  %131 = phi i32 [ %129, %125 ], [ 0, %118 ]
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %96, label %133

133:                                              ; preds = %130, %89
  %134 = phi i32 [ %90, %89 ], [ %131, %130 ]
  %135 = phi ptr [ %91, %89 ], [ %121, %130 ]
  %136 = add i32 %134, -1
  %137 = and i32 %136, %134
  %138 = getelementptr inbounds %struct.key_vector, ptr %135, i32 0, i32 4
  %139 = getelementptr [0 x ptr], ptr %138, i32 0, i32 %137
  br label %80

140:                                              ; preds = %76, %47
  %141 = phi i32 [ %61, %76 ], [ %36, %47 ]
  %142 = phi i32 [ %62, %76 ], [ %33, %47 ]
  %143 = phi ptr [ %63, %76 ], [ %34, %47 ]
  %144 = phi ptr [ %64, %76 ], [ %35, %47 ]
  %145 = xor i32 %141, %10
  %146 = getelementptr inbounds %struct.key_vector, ptr %144, i32 0, i32 4
  %147 = load volatile ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %89, label %149

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 3
  %151 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 4
  %152 = and i32 %3, 2
  %153 = icmp eq i32 %152, 0
  %154 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 6
  br label %155

155:                                              ; preds = %333, %149
  %156 = phi ptr [ %147, %149 ], [ %334, %333 ]
  %157 = getelementptr inbounds %struct.fib_alias, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !23
  %159 = getelementptr inbounds %struct.fib_alias, ptr %156, i32 0, i32 5
  %160 = load i8, ptr %159, align 1
  %161 = icmp ugt i8 %160, 31
  %162 = zext i8 %160 to i32
  %163 = lshr i32 %145, %162
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %161, i1 true, i1 %164
  br i1 %165, label %166, label %333

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.fib_alias, ptr %156, i32 0, i32 2
  %168 = load i8, ptr %167, align 4
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = load i8, ptr %150, align 4
  %172 = icmp eq i8 %168, %171
  br i1 %172, label %173, label %333

173:                                              ; preds = %170, %166
  %174 = getelementptr inbounds %struct.fib_info, ptr %158, i32 0, i32 7
  %175 = load i8, ptr %174, align 4
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %333

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.fib_info, ptr %158, i32 0, i32 9
  %179 = load i8, ptr %178, align 2
  %180 = load i8, ptr %151, align 1
  %181 = icmp ult i8 %179, %180
  br i1 %181, label %333, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.fib_alias, ptr %156, i32 0, i32 4
  %184 = load i8, ptr %183, align 2
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = or i8 %184, 1
  store i8 %188, ptr %183, align 2
  br label %189

189:                                              ; preds = %187, %182
  %190 = getelementptr inbounds %struct.fib_alias, ptr %156, i32 0, i32 3
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i32
  %193 = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %192
  %194 = load i32, ptr %193, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %200, !prof !9

196:                                              ; preds = %235, %189
  %197 = phi i32 [ %236, %235 ], [ %194, %189 ]
  %198 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 1
  %199 = load i32, ptr %198, align 4
  tail call fastcc void @trace_fib_table_lookup(i32 noundef %199, ptr noundef %1, ptr noundef null, i32 noundef %197)
  br label %330

200:                                              ; preds = %189
  %201 = getelementptr inbounds %struct.fib_info, ptr %158, i32 0, i32 6
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %333

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.fib_info, ptr %158, i32 0, i32 18
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %215, !prof !13

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.fib_info, ptr %158, i32 0, i32 15
  %211 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %212 = getelementptr %struct.ipv4_devconf, ptr %211, i32 0, i32 1, i32 28
  %213 = load i32, ptr %210, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %333, label %240

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct.nexthop, ptr %207, i32 0, i32 9
  %217 = load i8, ptr %216, align 2, !range !24
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.nexthop, ptr %207, i32 0, i32 12
  %221 = load volatile ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.nh_group, ptr %221, i32 0, i32 1
  %223 = load i16, ptr %222, align 4
  %224 = icmp ugt i16 %223, 1
  br i1 %224, label %237, label %225

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.nh_group, ptr %221, i32 0, i32 8
  %227 = load ptr, ptr %226, align 4
  br label %228

228:                                              ; preds = %225, %215
  %229 = phi ptr [ %227, %225 ], [ %207, %215 ]
  %230 = getelementptr inbounds %struct.nexthop, ptr %229, i32 0, i32 12
  %231 = load volatile ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.nh_info, ptr %231, i32 0, i32 3
  %233 = load i8, ptr %232, align 1, !range !24
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %228
  %236 = load i32, ptr getelementptr inbounds ([12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 6), align 4
  br label %196

237:                                              ; preds = %228, %219
  %238 = call fastcc ptr @nexthop_get_nhc_lookup(ptr noundef nonnull %207, i32 noundef %3, ptr noundef %1, ptr noundef nonnull %5)
  %239 = icmp eq ptr %238, null
  br i1 %239, label %332, label %275

240:                                              ; preds = %327, %209
  %241 = phi i32 [ %328, %327 ], [ 0, %209 ]
  %242 = getelementptr %struct.fib_info, ptr %158, i32 0, i32 20, i32 %241
  %243 = getelementptr inbounds %struct.fib_nh_common, ptr %242, i32 0, i32 6
  %244 = load i8, ptr %243, align 1
  %245 = and i8 %244, 1
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %327

247:                                              ; preds = %240
  %248 = load ptr, ptr %242, align 4
  %249 = getelementptr inbounds %struct.net_device, ptr %248, i32 0, i32 68
  %250 = load volatile ptr, ptr %249, align 16
  %251 = icmp eq ptr %250, null
  br i1 %251, label %263, label %252

252:                                              ; preds = %247
  %253 = load i32, ptr %212, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = getelementptr %struct.in_device, ptr %250, i32 0, i32 21, i32 1, i32 28
  %257 = load i32, ptr %256, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %255, %252
  %260 = and i8 %244, 16
  %261 = icmp ne i8 %260, 0
  %262 = and i1 %153, %261
  br i1 %262, label %327, label %263

263:                                              ; preds = %259, %255, %247
  %264 = load i8, ptr %154, align 1
  %265 = and i8 %264, 4
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %263
  %268 = load i32, ptr %1, align 8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.fib_nh_common, ptr %242, i32 0, i32 2
  %272 = load i32, ptr %271, align 4
  %273 = icmp eq i32 %268, %272
  br i1 %273, label %274, label %327

274:                                              ; preds = %270, %267, %263
  store i32 %241, ptr %5, align 4
  br label %275

275:                                              ; preds = %274, %237
  %276 = phi ptr [ %238, %237 ], [ %242, %274 ]
  %277 = getelementptr inbounds %struct.fib_info, ptr %158, i32 0, i32 9
  %278 = getelementptr inbounds %struct.fib_alias, ptr %156, i32 0, i32 3
  %279 = getelementptr inbounds %struct.fib_alias, ptr %156, i32 0, i32 5
  %280 = and i32 %3, 1
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %293

282:                                              ; preds = %275
  %283 = getelementptr inbounds %struct.fib_info, ptr %158, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %283) #17, !srcloc !25
  %284 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %283, ptr %283, i32 1, ptr elementtype(i32) %283) #17, !srcloc !26
  %285 = extractvalue { i32, i32, i32 } %284, 0
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %291, label %287, !prof !9

287:                                              ; preds = %282
  %288 = add i32 %285, 1
  %289 = or i32 %288, %285
  %290 = icmp sgt i32 %289, -1
  br i1 %290, label %293, label %291, !prof !13

291:                                              ; preds = %287, %282
  %292 = phi i32 [ 2, %282 ], [ 1, %287 ]
  tail call void @refcount_warn_saturate(ptr noundef %283, i32 noundef %292) #17
  br label %293

293:                                              ; preds = %291, %287, %275
  %294 = load i32, ptr %144, align 4
  %295 = tail call i32 @llvm.bswap.i32(i32 %294)
  store i32 %295, ptr %2, align 4
  %296 = load i8, ptr %279, align 1
  %297 = sub i8 32, %296
  %298 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 1
  store i8 %297, ptr %298, align 4
  %299 = load i32, ptr %5, align 4
  %300 = trunc i32 %299 to i8
  %301 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 2
  store i8 %300, ptr %301, align 1
  %302 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 6
  store ptr %276, ptr %302, align 4
  %303 = load i8, ptr %278, align 1
  %304 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 3
  store i8 %303, ptr %304, align 2
  %305 = load i8, ptr %277, align 2
  %306 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 4
  store i8 %305, ptr %306, align 1
  %307 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 7
  store ptr %158, ptr %307, align 4
  %308 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 8
  store ptr %0, ptr %308, align 4
  %309 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 9
  store ptr %146, ptr %309, align 4
  %310 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 1
  %311 = load i32, ptr %310, align 4
  %312 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fib_table_lookup, i32 0, i32 1), align 4
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %330

314:                                              ; preds = %293
  %315 = tail call ptr @llvm.thread.pointer() #17
  %316 = getelementptr inbounds %struct.thread_info, ptr %315, i32 0, i32 2
  %317 = load i32, ptr %316, align 8
  %318 = lshr i32 %317, 5
  %319 = getelementptr i32, ptr @__cpu_online_mask, i32 %318
  %320 = load volatile i32, ptr %319, align 4
  %321 = and i32 %317, 31
  %322 = shl nuw i32 1, %321
  %323 = and i32 %322, %320
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %330, label %325

325:                                              ; preds = %314
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %326 = tail call i32 @__traceiter_fib_table_lookup(ptr noundef null, i32 noundef %311, ptr noundef %1, ptr noundef %276, i32 noundef %194) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !22
  br label %330

327:                                              ; preds = %270, %259, %240
  %328 = add nuw i32 %241, 1
  %329 = icmp ult i32 %328, %213
  br i1 %329, label %240, label %333

330:                                              ; preds = %325, %314, %293, %196
  %331 = phi i32 [ %194, %325 ], [ %194, %314 ], [ %194, %293 ], [ %197, %196 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %336

332:                                              ; preds = %237
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %89

333:                                              ; preds = %327, %209, %200, %177, %173, %170, %155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %334 = load volatile ptr, ptr %156, align 4
  %335 = icmp eq ptr %334, null
  br i1 %335, label %89, label %155

336:                                              ; preds = %330, %116, %105, %100, %30, %19, %14
  %337 = phi i32 [ -11, %14 ], [ -11, %19 ], [ -11, %30 ], [ %331, %330 ], [ -11, %116 ], [ -11, %105 ], [ -11, %100 ]
  ret i32 %337
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_fib_table_lookup(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fib_table_lookup, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #17
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %19 = tail call i32 @__traceiter_fib_table_lookup(ptr noundef null, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !22
  br label %20

20:                                               ; preds = %18, %7, %4
  ret void
}

; Function Attrs: inlinehint nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nexthop_get_nhc_lookup(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 9
  %6 = load i8, ptr %5, align 2, !range !24
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.nexthop, ptr %0, i32 0, i32 12
  %9 = load volatile ptr, ptr %8, align 4
  br i1 %7, label %62, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nh_group, ptr %9, i32 0, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp eq i16 %12, 0
  br i1 %14, label %103, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %17 = getelementptr %struct.ipv4_devconf, ptr %16, i32 0, i32 1, i32 28
  %18 = and i32 %1, 2
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 6
  br label %21

21:                                               ; preds = %59, %15
  %22 = phi i32 [ 0, %15 ], [ %60, %59 ]
  %23 = getelementptr %struct.nh_group, ptr %9, i32 0, i32 8, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nexthop, ptr %24, i32 0, i32 12
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nh_info, ptr %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.nh_info, ptr %26, i32 0, i32 5, i32 0, i32 0, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %21
  %33 = load ptr, ptr %27, align 4
  %34 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 68
  %35 = load volatile ptr, ptr %34, align 16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %17, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr %struct.in_device, ptr %35, i32 0, i32 21, i32 1, i32 28
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %37
  %45 = and i8 %29, 16
  %46 = icmp ne i8 %45, 0
  %47 = and i1 %19, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %44, %40, %32
  %49 = load i8, ptr %20, align 1
  %50 = and i8 %49, 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %100

52:                                               ; preds = %48
  %53 = load i32, ptr %2, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.nh_info, ptr %26, i32 0, i32 5, i32 0, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %100, label %59

59:                                               ; preds = %55, %44, %21
  %60 = add nuw nsw i32 %22, 1
  %61 = icmp eq i32 %60, %13
  br i1 %61, label %103, label %21

62:                                               ; preds = %4
  %63 = getelementptr inbounds %struct.nh_info, ptr %9, i32 0, i32 5
  %64 = getelementptr inbounds %struct.nh_info, ptr %9, i32 0, i32 5, i32 0, i32 0, i32 6
  %65 = load i8, ptr %64, align 1
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %103

68:                                               ; preds = %62
  %69 = load ptr, ptr %63, align 4
  %70 = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 68
  %71 = load volatile ptr, ptr %70, align 16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %75 = getelementptr %struct.ipv4_devconf, ptr %74, i32 0, i32 1, i32 28
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr %struct.in_device, ptr %71, i32 0, i32 21, i32 1, i32 28
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78, %73
  %83 = and i8 %65, 16
  %84 = icmp ne i8 %83, 0
  %85 = and i32 %1, 2
  %86 = icmp eq i32 %85, 0
  %87 = and i1 %86, %84
  br i1 %87, label %103, label %88

88:                                               ; preds = %82, %78, %68
  %89 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 6
  %90 = load i8, ptr %89, align 1
  %91 = and i8 %90, 4
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i32, ptr %2, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.nh_info, ptr %9, i32 0, i32 5, i32 0, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96, %93, %88, %55, %52, %48
  %101 = phi i32 [ 0, %96 ], [ 0, %93 ], [ 0, %88 ], [ %22, %55 ], [ %22, %52 ], [ %22, %48 ]
  %102 = phi ptr [ %63, %96 ], [ %63, %93 ], [ %63, %88 ], [ %27, %55 ], [ %27, %52 ], [ %27, %48 ]
  store i32 %101, ptr %3, align 4
  br label %103

103:                                              ; preds = %100, %96, %82, %62, %59, %10
  %104 = phi ptr [ null, %62 ], [ null, %82 ], [ null, %96 ], [ null, %10 ], [ %102, %100 ], [ null, %59 ]
  ret ptr %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_table_delete(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.fib_entry_notifier_info, align 4
  %6 = load i8, ptr %2, align 4
  %7 = zext i8 %6 to i32
  %8 = sub i8 32, %6
  %9 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = icmp ugt i8 %6, 32
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_key_len.__msg) #17
  %16 = icmp eq ptr %3, null
  br i1 %16, label %215, label %27

17:                                               ; preds = %4
  %18 = icmp eq i8 %6, 32
  %19 = shl i32 %13, %7
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fib_table, ptr %1, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  br label %29

25:                                               ; preds = %17
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_key_len.__msg.6) #17
  %26 = icmp eq ptr %3, null
  br i1 %26, label %215, label %27

27:                                               ; preds = %25, %15
  %28 = phi ptr [ @fib_valid_key_len.__msg, %15 ], [ @fib_valid_key_len.__msg.6, %25 ]
  store ptr %28, ptr %3, align 4
  br label %215

29:                                               ; preds = %48, %22
  %30 = phi i32 [ %42, %48 ], [ 0, %22 ]
  %31 = phi ptr [ %34, %48 ], [ %24, %22 ]
  %32 = getelementptr inbounds %struct.key_vector, ptr %31, i32 0, i32 4
  %33 = getelementptr [0 x ptr], ptr %32, i32 0, i32 %30
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %215, label %36

36:                                               ; preds = %29
  %37 = load i32, ptr %34, align 4
  %38 = xor i32 %37, %13
  %39 = getelementptr inbounds %struct.key_vector, ptr %34, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = lshr i32 %38, %41
  %43 = getelementptr inbounds %struct.key_vector, ptr %34, i32 0, i32 2
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = lshr i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %215

48:                                               ; preds = %36
  %49 = icmp eq i8 %44, 0
  br i1 %49, label %50, label %29

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.key_vector, ptr %34, i32 0, i32 4
  %52 = getelementptr inbounds %struct.fib_table, ptr %1, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq ptr %51, null
  br i1 %54, label %215, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %51, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %215, label %58

58:                                               ; preds = %80, %55
  %59 = phi ptr [ %81, %80 ], [ %56, %55 ]
  %60 = getelementptr inbounds %struct.fib_alias, ptr %59, i32 0, i32 5
  %61 = load i8, ptr %60, align 1
  %62 = icmp ult i8 %61, %8
  br i1 %62, label %80, label %63

63:                                               ; preds = %58
  %64 = icmp eq i8 %61, %8
  br i1 %64, label %65, label %215

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.fib_alias, ptr %59, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %67, %53
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  %70 = icmp eq i32 %67, %53
  br i1 %70, label %71, label %215

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.fib_alias, ptr %59, i32 0, i32 2
  %73 = load i8, ptr %72, align 4
  %74 = icmp ugt i8 %73, %10
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 4
  %77 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 3
  %78 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 12
  %79 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 2
  br label %83

80:                                               ; preds = %71, %65, %58
  %81 = load ptr, ptr %59, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %215, label %58

83:                                               ; preds = %131, %75
  %84 = phi ptr [ %59, %75 ], [ %129, %131 ]
  %85 = getelementptr inbounds %struct.fib_alias, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.fib_alias, ptr %84, i32 0, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr %52, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %215

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.fib_alias, ptr %84, i32 0, i32 2
  %93 = load i8, ptr %92, align 4
  %94 = icmp eq i8 %93, %10
  br i1 %94, label %95, label %215

95:                                               ; preds = %91
  %96 = load i8, ptr %76, align 4
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.fib_alias, ptr %84, i32 0, i32 3
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, %96
  br i1 %101, label %102, label %128

102:                                              ; preds = %98, %95
  %103 = load i8, ptr %77, align 1
  %104 = icmp eq i8 %103, -1
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.fib_info, ptr %86, i32 0, i32 9
  %107 = load i8, ptr %106, align 2
  %108 = icmp eq i8 %107, %103
  br i1 %108, label %109, label %128

109:                                              ; preds = %105, %102
  %110 = load i32, ptr %78, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.fib_info, ptr %86, i32 0, i32 11
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, %110
  br i1 %115, label %116, label %128

116:                                              ; preds = %112, %109
  %117 = load i8, ptr %79, align 2
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.fib_info, ptr %86, i32 0, i32 8
  %121 = load i8, ptr %120, align 1
  %122 = icmp eq i8 %121, %117
  br i1 %122, label %123, label %128

123:                                              ; preds = %119, %116
  %124 = tail call i32 @fib_nh_match(ptr noundef %0, ptr noundef %2, ptr noundef %86, ptr noundef %3) #17
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = tail call zeroext i1 @fib_metrics_match(ptr noundef %2, ptr noundef %86) #17
  br i1 %127, label %135, label %128

128:                                              ; preds = %126, %123, %119, %112, %105, %98
  %129 = load ptr, ptr %84, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %215, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.fib_alias, ptr %129, i32 0, i32 5
  %133 = load i8, ptr %132, align 1
  %134 = icmp eq i8 %133, %8
  br i1 %134, label %83, label %215

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.fib_alias, ptr %84, i32 0, i32 1
  %137 = getelementptr inbounds %struct.fib_alias, ptr %84, i32 0, i32 5
  %138 = getelementptr inbounds %struct.fib_alias, ptr %84, i32 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = load i8, ptr %137, align 1
  %141 = load ptr, ptr %51, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %160, label %143

143:                                              ; preds = %157, %135
  %144 = phi ptr [ %158, %157 ], [ %141, %135 ]
  %145 = getelementptr inbounds %struct.fib_alias, ptr %144, i32 0, i32 5
  %146 = load i8, ptr %145, align 1
  %147 = icmp ult i8 %146, %140
  br i1 %147, label %157, label %148

148:                                              ; preds = %143
  %149 = icmp eq i8 %146, %140
  br i1 %149, label %150, label %160

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.fib_alias, ptr %144, i32 0, i32 6
  %152 = load i32, ptr %151, align 4
  %153 = icmp ugt i32 %152, %139
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = icmp eq i32 %152, %139
  %156 = select i1 %155, ptr %144, ptr null
  br label %160

157:                                              ; preds = %150, %143
  %158 = load ptr, ptr %144, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %143

160:                                              ; preds = %157, %154, %148, %135
  %161 = phi ptr [ %156, %154 ], [ null, %135 ], [ null, %148 ], [ null, %157 ]
  %162 = icmp eq ptr %161, %84
  br i1 %162, label %163, label %196

163:                                              ; preds = %160
  %164 = load ptr, ptr %84, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.fib_alias, ptr %164, i32 0, i32 5
  %168 = load i8, ptr %167, align 1
  %169 = icmp eq i8 %168, %140
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.fib_alias, ptr %164, i32 0, i32 6
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, %139
  br i1 %173, label %175, label %174

174:                                              ; preds = %170, %166, %163
  br label %175

175:                                              ; preds = %174, %170
  %176 = phi i32 [ 3, %174 ], [ 0, %170 ]
  %177 = phi ptr [ %84, %174 ], [ %164, %170 ]
  %178 = zext i8 %140 to i32
  %179 = sub nsw i32 32, %178
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #17
  %180 = getelementptr inbounds %struct.fib_notifier_info, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i64 24, i1 false) #17
  store ptr %3, ptr %180, align 4
  %181 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %5, i32 0, i32 1
  store i32 %13, ptr %181, align 4
  %182 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %5, i32 0, i32 2
  store i32 %179, ptr %182, align 4
  %183 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %5, i32 0, i32 3
  %184 = getelementptr inbounds %struct.fib_alias, ptr %177, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  store ptr %185, ptr %183, align 4
  %186 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %5, i32 0, i32 4
  %187 = getelementptr inbounds %struct.fib_alias, ptr %177, i32 0, i32 2
  %188 = load i8, ptr %187, align 4
  store i8 %188, ptr %186, align 4
  %189 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %5, i32 0, i32 5
  %190 = getelementptr inbounds %struct.fib_alias, ptr %177, i32 0, i32 3
  %191 = load i8, ptr %190, align 1
  store i8 %191, ptr %189, align 1
  %192 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %5, i32 0, i32 6
  %193 = getelementptr inbounds %struct.fib_alias, ptr %177, i32 0, i32 6
  %194 = load i32, ptr %193, align 4
  store i32 %194, ptr %192, align 4
  %195 = call i32 @call_fib4_notifiers(ptr noundef %0, i32 noundef %176, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #17
  br label %196

196:                                              ; preds = %175, %160
  %197 = load i32, ptr %52, align 4
  %198 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20
  call void @rtmsg_fib(i32 noundef 25, i32 noundef %12, ptr noundef nonnull %84, i32 noundef %7, i32 noundef %197, ptr noundef %198, i32 noundef 0) #17
  %199 = icmp eq i8 %6, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.fib_table, ptr %1, i32 0, i32 2
  %202 = load i32, ptr %201, align 4
  %203 = add i32 %202, -1
  store i32 %203, ptr %201, align 4
  br label %204

204:                                              ; preds = %200, %196
  call fastcc void @fib_remove_alias(ptr noundef %31, ptr noundef nonnull %34, ptr noundef nonnull %84)
  %205 = getelementptr inbounds %struct.fib_alias, ptr %84, i32 0, i32 4
  %206 = load i8, ptr %205, align 2
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20, i32 1
  %211 = load ptr, ptr %210, align 4
  call void @rt_cache_flush(ptr noundef %211) #17
  br label %212

212:                                              ; preds = %209, %204
  %213 = load ptr, ptr %136, align 4
  call void @fib_release_info(ptr noundef %213) #17
  %214 = getelementptr inbounds %struct.fib_alias, ptr %84, i32 0, i32 11
  call void @call_rcu(ptr noundef %214, ptr noundef nonnull @__alias_free_mem) #17
  br label %215

215:                                              ; preds = %212, %131, %128, %91, %83, %80, %69, %63, %55, %50, %36, %29, %27, %25, %15
  %216 = phi i32 [ 0, %212 ], [ -22, %15 ], [ -22, %25 ], [ -22, %27 ], [ -3, %50 ], [ -3, %55 ], [ -3, %91 ], [ -3, %83 ], [ -3, %131 ], [ -3, %128 ], [ -3, %63 ], [ -3, %80 ], [ -3, %69 ], [ -3, %29 ], [ -3, %36 ]
  ret i32 %216
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_nh_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_metrics_match(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib_trie_unmerge(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 5
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %326, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 40) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %326, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fib_table, ptr %8, i32 0, i32 1
  store i32 255, ptr %11, align 8
  %12 = getelementptr inbounds %struct.fib_table, ptr %8, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fib_table, ptr %8, i32 0, i32 5
  %14 = getelementptr inbounds %struct.fib_table, ptr %8, i32 0, i32 4
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.fib_table, ptr %8, i32 1, i32 0, i32 1
  store i8 32, ptr %15, align 8
  %16 = getelementptr inbounds %struct.key_vector, ptr %13, i32 0, i32 3
  store i8 32, ptr %16, align 2
  br label %17

17:                                               ; preds = %158, %10
  %18 = phi ptr [ %3, %10 ], [ %105, %158 ]
  %19 = phi i32 [ 0, %10 ], [ %160, %158 ]
  br label %20

20:                                               ; preds = %44, %17
  %21 = phi ptr [ %18, %17 ], [ %42, %44 ]
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, %19
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 32
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = zext i8 %26 to i32
  %30 = xor i32 %22, %19
  %31 = lshr i32 %30, %29
  br label %32

32:                                               ; preds = %28, %24, %20
  %33 = phi i32 [ 0, %20 ], [ %31, %28 ], [ 0, %24 ]
  %34 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = lshr i32 %33, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 4
  %41 = getelementptr [0 x ptr], ptr %40, i32 0, i32 %33
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.key_vector, ptr %42, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %20

48:                                               ; preds = %44
  %49 = add i32 %33, 1
  %50 = load i32, ptr %42, align 4
  %51 = icmp ult i32 %50, %19
  br i1 %51, label %54, label %104

52:                                               ; preds = %39
  %53 = add i32 %33, 1
  br label %54

54:                                               ; preds = %52, %48, %32
  %55 = phi i32 [ %49, %48 ], [ %53, %52 ], [ %33, %32 ]
  %56 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 1
  %57 = load i8, ptr %56, align 4
  %58 = icmp ult i8 %57, 32
  br i1 %58, label %59, label %326

59:                                               ; preds = %89, %54
  %60 = phi i8 [ %91, %89 ], [ %35, %54 ]
  %61 = phi ptr [ %87, %89 ], [ %21, %54 ]
  %62 = phi i32 [ %86, %89 ], [ %55, %54 ]
  %63 = getelementptr inbounds %struct.key_vector, ptr %61, i32 0, i32 4
  %64 = zext i8 %60 to i32
  br label %65

65:                                               ; preds = %92, %59
  %66 = phi i32 [ %93, %92 ], [ %62, %59 ]
  %67 = lshr i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %61, align 4
  %71 = getelementptr i8, ptr %61, i32 -4
  %72 = load volatile ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.key_vector, ptr %72, i32 0, i32 1
  %74 = load i8, ptr %73, align 4
  %75 = icmp eq i8 %74, 32
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = zext i8 %74 to i32
  %78 = load i32, ptr %72, align 4
  %79 = xor i32 %78, %70
  %80 = lshr i32 %79, %77
  br label %81

81:                                               ; preds = %76, %69
  %82 = phi i32 [ %80, %76 ], [ 0, %69 ]
  %83 = add i32 %82, 1
  br label %84

84:                                               ; preds = %101, %81
  %85 = phi i8 [ %103, %101 ], [ %74, %81 ]
  %86 = phi i32 [ 0, %101 ], [ %83, %81 ]
  %87 = phi ptr [ %95, %101 ], [ %72, %81 ]
  %88 = icmp ult i8 %85, 32
  br i1 %88, label %89, label %326

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.key_vector, ptr %87, i32 0, i32 2
  %91 = load i8, ptr %90, align 1
  br label %59

92:                                               ; preds = %65
  %93 = add i32 %66, 1
  %94 = getelementptr [0 x ptr], ptr %63, i32 0, i32 %66
  %95 = load volatile ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %65, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.key_vector, ptr %95, i32 0, i32 2
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.key_vector, ptr %95, i32 0, i32 1
  %103 = load i8, ptr %102, align 4
  br label %84

104:                                              ; preds = %97, %48
  %105 = phi ptr [ %21, %48 ], [ %61, %97 ]
  %106 = phi ptr [ %42, %48 ], [ %95, %97 ]
  %107 = getelementptr inbounds %struct.key_vector, ptr %106, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %158, label %110

110:                                              ; preds = %153, %104
  %111 = phi ptr [ %156, %153 ], [ %108, %104 ]
  %112 = phi ptr [ %155, %153 ], [ null, %104 ]
  %113 = phi ptr [ %154, %153 ], [ null, %104 ]
  %114 = load i32, ptr %11, align 8
  %115 = getelementptr inbounds %struct.fib_alias, ptr %111, i32 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %153

118:                                              ; preds = %110
  %119 = load ptr, ptr @fn_alias_kmem, align 4
  %120 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %119, i32 noundef 3264) #17
  %121 = icmp eq ptr %120, null
  br i1 %121, label %162, label %122

122:                                              ; preds = %118
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(36) %120, ptr noundef nonnull align 4 dereferenceable(36) %111, i32 36, i1 false)
  %123 = icmp eq ptr %112, null
  %124 = load i32, ptr %106, align 4
  br i1 %123, label %125, label %146

125:                                              ; preds = %144, %122
  %126 = phi i32 [ %138, %144 ], [ 0, %122 ]
  %127 = phi ptr [ %130, %144 ], [ %13, %122 ]
  %128 = getelementptr inbounds %struct.key_vector, ptr %127, i32 0, i32 4
  %129 = getelementptr [0 x ptr], ptr %128, i32 0, i32 %126
  %130 = load volatile ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %146, label %132

132:                                              ; preds = %125
  %133 = load i32, ptr %130, align 4
  %134 = xor i32 %133, %124
  %135 = getelementptr inbounds %struct.key_vector, ptr %130, i32 0, i32 1
  %136 = load i8, ptr %135, align 4
  %137 = zext i8 %136 to i32
  %138 = lshr i32 %134, %137
  %139 = getelementptr inbounds %struct.key_vector, ptr %130, i32 0, i32 2
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = lshr i32 %138, %141
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %132
  %145 = icmp eq i8 %140, 0
  br i1 %145, label %146, label %125

146:                                              ; preds = %144, %132, %125, %122
  %147 = phi ptr [ %113, %122 ], [ %127, %125 ], [ %127, %132 ], [ %127, %144 ]
  %148 = phi ptr [ %112, %122 ], [ %130, %144 ], [ null, %132 ], [ null, %125 ]
  %149 = tail call fastcc i32 @fib_insert_alias(ptr noundef %147, ptr noundef %148, ptr noundef nonnull %120, ptr noundef null, i32 noundef %124)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %146
  %152 = load ptr, ptr @fn_alias_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %152, ptr noundef nonnull %120) #17
  br label %162

153:                                              ; preds = %146, %110
  %154 = phi ptr [ %147, %146 ], [ %113, %110 ]
  %155 = phi ptr [ %148, %146 ], [ %112, %110 ]
  %156 = load ptr, ptr %111, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %110

158:                                              ; preds = %153, %104
  %159 = load i32, ptr %106, align 4
  %160 = add i32 %159, 1
  %161 = icmp eq i32 %159, -1
  br i1 %161, label %326, label %17

162:                                              ; preds = %151, %118
  %163 = load ptr, ptr %14, align 8
  br label %164

164:                                              ; preds = %253, %162
  %165 = phi i32 [ 1, %162 ], [ %254, %253 ]
  %166 = phi ptr [ %163, %162 ], [ %255, %253 ]
  %167 = getelementptr inbounds %struct.key_vector, ptr %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.key_vector, ptr %166, i32 0, i32 1
  %169 = getelementptr inbounds %struct.key_vector, ptr %166, i32 0, i32 2
  %170 = getelementptr i8, ptr %166, i32 -12
  %171 = getelementptr i8, ptr %166, i32 -8
  %172 = getelementptr i8, ptr %166, i32 -8
  br label %173

173:                                              ; preds = %324, %164
  %174 = phi i32 [ %165, %164 ], [ %175, %324 ]
  %175 = add i32 %174, -1
  %176 = icmp eq i32 %174, 0
  br i1 %176, label %177, label %242

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.key_vector, ptr %166, i32 0, i32 1
  %179 = load i8, ptr %178, align 4
  %180 = icmp ugt i8 %179, 31
  br i1 %180, label %325, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr %166, align 4
  %183 = getelementptr i8, ptr %166, i32 -20
  %184 = getelementptr i8, ptr %166, i32 -4
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.key_vector, ptr %185, i32 0, i32 1
  %187 = load i8, ptr %186, align 4
  %188 = icmp ugt i8 %187, 31
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %190 = getelementptr inbounds %struct.key_vector, ptr %185, i32 0, i32 4
  br label %233

191:                                              ; preds = %181
  %192 = zext i8 %187 to i32
  %193 = load i32, ptr %185, align 4
  %194 = xor i32 %193, %182
  %195 = lshr i32 %194, %192
  %196 = getelementptr inbounds %struct.key_vector, ptr %185, i32 0, i32 4
  %197 = getelementptr [0 x ptr], ptr %196, i32 0, i32 %195
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.key_vector, ptr %185, i32 0, i32 2
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = shl nuw i32 1, %201
  %203 = and i32 %202, -2
  %204 = icmp ugt i32 %203, %195
  br i1 %204, label %206, label %205, !prof !13

205:                                              ; preds = %191
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

206:                                              ; preds = %191
  %207 = icmp eq ptr %198, null
  br i1 %207, label %232, label %208

208:                                              ; preds = %206
  %209 = getelementptr i8, ptr %185, i32 -12
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, 1
  store i32 %211, ptr %209, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = getelementptr i8, ptr %185, i32 -8
  %215 = load i32, ptr %214, align 4
  %216 = add i32 %215, 1
  store i32 %216, ptr %214, align 4
  br label %217

217:                                              ; preds = %213, %208
  %218 = getelementptr inbounds %struct.key_vector, ptr %198, i32 0, i32 1
  %219 = load i8, ptr %218, align 4
  %220 = zext i8 %219 to i32
  %221 = getelementptr inbounds %struct.key_vector, ptr %198, i32 0, i32 2
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i32
  %224 = add nuw nsw i32 %223, %220
  %225 = icmp ne i32 %224, %192
  %226 = icmp eq i8 %222, 0
  %227 = select i1 %225, i1 true, i1 %226
  br i1 %227, label %232, label %228

228:                                              ; preds = %217
  %229 = getelementptr i8, ptr %185, i32 -8
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, -1
  store i32 %231, ptr %229, align 4
  br label %232

232:                                              ; preds = %228, %217, %206
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  br label %233

233:                                              ; preds = %232, %189
  %234 = phi ptr [ %190, %189 ], [ %197, %232 ]
  store volatile ptr null, ptr %234, align 4
  tail call void @call_rcu(ptr noundef %183, ptr noundef nonnull @__node_free_rcu) #17
  %235 = load i8, ptr %186, align 4
  %236 = icmp eq i8 %235, 32
  br i1 %236, label %253, label %237

237:                                              ; preds = %233
  %238 = zext i8 %235 to i32
  %239 = load i32, ptr %185, align 4
  %240 = xor i32 %239, %182
  %241 = lshr i32 %240, %238
  br label %253

242:                                              ; preds = %173
  %243 = getelementptr [0 x ptr], ptr %167, i32 0, i32 %175
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %324, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.key_vector, ptr %244, i32 0, i32 2
  %248 = load i8, ptr %247, align 1
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %246
  %251 = zext i8 %248 to i32
  %252 = shl nuw i32 1, %251
  br label %253

253:                                              ; preds = %250, %237, %233
  %254 = phi i32 [ 0, %233 ], [ %241, %237 ], [ %252, %250 ]
  %255 = phi ptr [ %185, %233 ], [ %185, %237 ], [ %244, %250 ]
  br label %164

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.key_vector, ptr %244, i32 0, i32 4
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %279, label %260

260:                                              ; preds = %256
  %261 = load ptr, ptr %258, align 4
  %262 = getelementptr inbounds %struct.hlist_node, ptr %258, i32 0, i32 1
  %263 = load ptr, ptr %262, align 4
  store volatile ptr %261, ptr %263, align 4
  %264 = icmp eq ptr %261, null
  br i1 %264, label %275, label %265

265:                                              ; preds = %265, %260
  %266 = phi ptr [ %273, %265 ], [ %263, %260 ]
  %267 = phi ptr [ %270, %265 ], [ %262, %260 ]
  %268 = phi ptr [ %272, %265 ], [ %261, %260 ]
  %269 = phi ptr [ %268, %265 ], [ %258, %260 ]
  %270 = getelementptr inbounds %struct.hlist_node, ptr %268, i32 0, i32 1
  store volatile ptr %266, ptr %270, align 4
  store volatile ptr inttoptr (i32 290 to ptr), ptr %267, align 4
  %271 = getelementptr inbounds %struct.fib_alias, ptr %269, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %271, ptr noundef nonnull @__alias_free_mem) #17
  %272 = load ptr, ptr %268, align 4
  %273 = load ptr, ptr %270, align 4
  store volatile ptr %272, ptr %273, align 4
  %274 = icmp eq ptr %272, null
  br i1 %274, label %275, label %265

275:                                              ; preds = %265, %260
  %276 = phi ptr [ %258, %260 ], [ %268, %265 ]
  %277 = phi ptr [ %262, %260 ], [ %270, %265 ]
  store volatile ptr inttoptr (i32 290 to ptr), ptr %277, align 4
  %278 = getelementptr inbounds %struct.fib_alias, ptr %276, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %278, ptr noundef nonnull @__alias_free_mem) #17
  br label %279

279:                                              ; preds = %275, %256
  %280 = load i8, ptr %168, align 4
  %281 = icmp ugt i8 %280, 31
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  br label %321

283:                                              ; preds = %279
  %284 = load i32, ptr %244, align 4
  %285 = zext i8 %280 to i32
  %286 = load i32, ptr %166, align 4
  %287 = xor i32 %286, %284
  %288 = lshr i32 %287, %285
  %289 = getelementptr [0 x ptr], ptr %167, i32 0, i32 %288
  %290 = load ptr, ptr %289, align 4
  %291 = load i8, ptr %169, align 1
  %292 = zext i8 %291 to i32
  %293 = shl nuw i32 1, %292
  %294 = and i32 %293, -2
  %295 = icmp ugt i32 %294, %288
  br i1 %295, label %297, label %296, !prof !13

296:                                              ; preds = %283
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

297:                                              ; preds = %283
  %298 = icmp eq ptr %290, null
  br i1 %298, label %320, label %299

299:                                              ; preds = %297
  %300 = load i32, ptr %170, align 4
  %301 = add i32 %300, 1
  store i32 %301, ptr %170, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %299
  %304 = load i32, ptr %171, align 4
  %305 = add i32 %304, 1
  store i32 %305, ptr %171, align 4
  br label %306

306:                                              ; preds = %303, %299
  %307 = getelementptr inbounds %struct.key_vector, ptr %290, i32 0, i32 1
  %308 = load i8, ptr %307, align 4
  %309 = zext i8 %308 to i32
  %310 = getelementptr inbounds %struct.key_vector, ptr %290, i32 0, i32 2
  %311 = load i8, ptr %310, align 1
  %312 = zext i8 %311 to i32
  %313 = add nuw nsw i32 %312, %309
  %314 = icmp ne i32 %313, %285
  %315 = icmp eq i8 %311, 0
  %316 = select i1 %314, i1 true, i1 %315
  br i1 %316, label %320, label %317

317:                                              ; preds = %306
  %318 = load i32, ptr %172, align 4
  %319 = add i32 %318, -1
  store i32 %319, ptr %172, align 4
  br label %320

320:                                              ; preds = %317, %306, %297
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  br label %321

321:                                              ; preds = %320, %282
  %322 = phi ptr [ %167, %282 ], [ %289, %320 ]
  store volatile ptr null, ptr %322, align 4
  %323 = getelementptr i8, ptr %244, i32 -20
  tail call void @call_rcu(ptr noundef %323, ptr noundef nonnull @__node_free_rcu) #17
  br label %324

324:                                              ; preds = %321, %242
  br label %173

325:                                              ; preds = %177
  tail call void @kfree(ptr noundef nonnull %8) #17
  br label %326

326:                                              ; preds = %325, %158, %84, %54, %6, %1
  %327 = phi ptr [ null, %325 ], [ %0, %1 ], [ null, %6 ], [ %8, %84 ], [ %8, %54 ], [ %8, %158 ]
  ret ptr %327
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib_trie_table(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, i32 40, i32 28
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fib_table, ptr %5, i32 0, i32 1
  store i32 %0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.fib_table, ptr %5, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fib_table, ptr %1, i32 0, i32 5
  %11 = getelementptr inbounds %struct.fib_table, ptr %5, i32 0, i32 5
  %12 = select i1 %3, ptr %11, ptr %10
  %13 = getelementptr inbounds %struct.fib_table, ptr %5, i32 0, i32 4
  store ptr %12, ptr %13, align 8
  br i1 %3, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.key_vector, ptr %12, i32 0, i32 1
  store i8 32, ptr %15, align 4
  %16 = getelementptr inbounds %struct.key_vector, ptr %12, i32 0, i32 3
  store i8 32, ptr %16, align 2
  br label %17

17:                                               ; preds = %14, %7, %2
  ret ptr %5
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_table_flush_external(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %87, %1
  %6 = phi i32 [ 1, %1 ], [ %88, %87 ]
  %7 = phi ptr [ %3, %1 ], [ %89, %87 ]
  %8 = getelementptr inbounds %struct.key_vector, ptr %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.key_vector, ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %struct.key_vector, ptr %7, i32 0, i32 2
  %11 = getelementptr i8, ptr %7, i32 -12
  %12 = getelementptr i8, ptr %7, i32 -8
  %13 = getelementptr i8, ptr %7, i32 -8
  br label %14

14:                                               ; preds = %121, %5
  %15 = phi i32 [ %6, %5 ], [ %16, %121 ]
  %16 = add i32 %15, -1
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %14
  %19 = load i32, ptr %7, align 4
  %20 = getelementptr inbounds %struct.key_vector, ptr %7, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp ugt i8 %21, 31
  br i1 %22, label %167, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.key_vector, ptr %7, i32 0, i32 3
  %25 = load i8, ptr %24, align 2
  %26 = icmp ugt i8 %25, %21
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.key_vector, ptr %7, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = add nsw i8 %21, -1
  %31 = add i8 %30, %29
  %32 = tail call i8 @llvm.umin.i8(i8 %31, i8 %25) #17
  %33 = zext i8 %29 to i32
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, -2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.key_vector, ptr %7, i32 0, i32 4
  br label %39

39:                                               ; preds = %58, %37
  %40 = phi i8 [ %21, %37 ], [ %59, %58 ]
  %41 = phi i32 [ 2, %37 ], [ %60, %58 ]
  %42 = phi i32 [ 0, %37 ], [ %62, %58 ]
  %43 = getelementptr [0 x ptr], ptr %38, i32 0, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.key_vector, ptr %44, i32 0, i32 3
  %48 = load i8, ptr %47, align 2
  %49 = icmp ugt i8 %48, %40
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = zext i8 %40 to i32
  %52 = zext i8 %48 to i32
  %53 = sub nsw i32 %52, %51
  %54 = shl i32 %41, %53
  %55 = sub i32 0, %54
  %56 = and i32 %42, %55
  %57 = icmp ult i8 %48, %32
  br i1 %57, label %58, label %64

58:                                               ; preds = %50, %46, %39
  %59 = phi i8 [ %48, %50 ], [ %40, %46 ], [ %40, %39 ]
  %60 = phi i32 [ %54, %50 ], [ %41, %46 ], [ %41, %39 ]
  %61 = phi i32 [ %56, %50 ], [ %42, %46 ], [ %42, %39 ]
  %62 = add i32 %61, %60
  %63 = icmp ult i32 %62, %35
  br i1 %63, label %39, label %64

64:                                               ; preds = %58, %50, %27
  %65 = phi i8 [ %21, %27 ], [ %59, %58 ], [ %48, %50 ]
  store i8 %65, ptr %24, align 2
  br label %66

66:                                               ; preds = %64, %23
  %67 = tail call fastcc ptr @resize(ptr noundef %7)
  %68 = getelementptr inbounds %struct.key_vector, ptr %67, i32 0, i32 1
  %69 = load i8, ptr %68, align 4
  %70 = icmp eq i8 %69, 32
  br i1 %70, label %87, label %71

71:                                               ; preds = %66
  %72 = zext i8 %69 to i32
  %73 = load i32, ptr %67, align 4
  %74 = xor i32 %73, %19
  %75 = lshr i32 %74, %72
  br label %87

76:                                               ; preds = %14
  %77 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %16
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %121, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.key_vector, ptr %78, i32 0, i32 2
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = zext i8 %82 to i32
  %86 = shl nuw i32 1, %85
  br label %87

87:                                               ; preds = %84, %71, %66
  %88 = phi i32 [ 0, %66 ], [ %75, %71 ], [ %86, %84 ]
  %89 = phi ptr [ %67, %66 ], [ %67, %71 ], [ %78, %84 ]
  br label %5

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.key_vector, ptr %78, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %116, label %94

94:                                               ; preds = %113, %90
  %95 = phi ptr [ %97, %113 ], [ %92, %90 ]
  %96 = phi i8 [ %114, %113 ], [ 0, %90 ]
  %97 = load ptr, ptr %95, align 4
  %98 = load i32, ptr %4, align 4
  %99 = getelementptr inbounds %struct.fib_alias, ptr %95, i32 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.hlist_node, ptr %95, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  store volatile ptr %97, ptr %104, align 4
  %105 = icmp eq ptr %97, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.hlist_node, ptr %97, i32 0, i32 1
  store volatile ptr %104, ptr %107, align 4
  br label %108

108:                                              ; preds = %106, %102
  store volatile ptr inttoptr (i32 290 to ptr), ptr %103, align 4
  %109 = getelementptr inbounds %struct.fib_alias, ptr %95, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %109, ptr noundef nonnull @__alias_free_mem) #17
  br label %113

110:                                              ; preds = %94
  %111 = getelementptr inbounds %struct.fib_alias, ptr %95, i32 0, i32 5
  %112 = load i8, ptr %111, align 1
  br label %113

113:                                              ; preds = %110, %108
  %114 = phi i8 [ %96, %108 ], [ %112, %110 ]
  %115 = icmp eq ptr %97, null
  br i1 %115, label %116, label %94

116:                                              ; preds = %113, %90
  %117 = phi i8 [ 0, %90 ], [ %114, %113 ]
  %118 = getelementptr inbounds %struct.key_vector, ptr %78, i32 0, i32 3
  store i8 %117, ptr %118, align 2
  %119 = load volatile ptr, ptr %91, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %164, %116, %76
  br label %14

122:                                              ; preds = %116
  %123 = load i8, ptr %9, align 4
  %124 = icmp ugt i8 %123, 31
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  br label %164

126:                                              ; preds = %122
  %127 = load i32, ptr %78, align 4
  %128 = zext i8 %123 to i32
  %129 = load i32, ptr %7, align 4
  %130 = xor i32 %129, %127
  %131 = lshr i32 %130, %128
  %132 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %131
  %133 = load ptr, ptr %132, align 4
  %134 = load i8, ptr %10, align 1
  %135 = zext i8 %134 to i32
  %136 = shl nuw i32 1, %135
  %137 = and i32 %136, -2
  %138 = icmp ugt i32 %137, %131
  br i1 %138, label %140, label %139, !prof !13

139:                                              ; preds = %126
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

140:                                              ; preds = %126
  %141 = icmp eq ptr %133, null
  br i1 %141, label %163, label %142

142:                                              ; preds = %140
  %143 = load i32, ptr %11, align 4
  %144 = add i32 %143, 1
  store i32 %144, ptr %11, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, ptr %12, align 4
  %148 = add i32 %147, 1
  store i32 %148, ptr %12, align 4
  br label %149

149:                                              ; preds = %146, %142
  %150 = getelementptr inbounds %struct.key_vector, ptr %133, i32 0, i32 1
  %151 = load i8, ptr %150, align 4
  %152 = zext i8 %151 to i32
  %153 = getelementptr inbounds %struct.key_vector, ptr %133, i32 0, i32 2
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = add nuw nsw i32 %155, %152
  %157 = icmp ne i32 %156, %128
  %158 = icmp eq i8 %154, 0
  %159 = select i1 %157, i1 true, i1 %158
  br i1 %159, label %163, label %160

160:                                              ; preds = %149
  %161 = load i32, ptr %13, align 4
  %162 = add i32 %161, -1
  store i32 %162, ptr %13, align 4
  br label %163

163:                                              ; preds = %160, %149, %140
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  br label %164

164:                                              ; preds = %163, %125
  %165 = phi ptr [ %8, %125 ], [ %132, %163 ]
  store volatile ptr null, ptr %165, align 4
  %166 = getelementptr i8, ptr %78, i32 -20
  tail call void @call_rcu(ptr noundef %166, ptr noundef nonnull @__node_free_rcu) #17
  br label %121

167:                                              ; preds = %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @resize(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.key_vector, ptr %3, i32 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 32
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %0, align 4
  %9 = zext i8 %5 to i32
  %10 = load i32, ptr %3, align 4
  %11 = xor i32 %10, %8
  %12 = lshr i32 %11, %9
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i32 [ %12, %7 ], [ 0, %1 ]
  %15 = getelementptr inbounds %struct.key_vector, ptr %3, i32 0, i32 4
  %16 = getelementptr [0 x ptr], ptr %15, i32 0, i32 %14
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %36, !prof !13

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, -2
  %25 = getelementptr i8, ptr %0, i32 -12
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %24, %26
  %28 = getelementptr i8, ptr %0, i32 -8
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %27, %29
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %32, label %493

32:                                               ; preds = %19
  %33 = icmp ugt i8 %5, 31
  %34 = select i1 %33, i32 30, i32 50
  %35 = mul i32 %24, %34
  br label %37

36:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 862, 0\0A.popsection", ""() #17, !srcloc !27
  unreachable

37:                                               ; preds = %456, %32
  %38 = phi i32 [ %476, %456 ], [ %30, %32 ]
  %39 = phi i32 [ %470, %456 ], [ %35, %32 ]
  %40 = phi i32 [ %463, %456 ], [ %22, %32 ]
  %41 = phi i8 [ %462, %456 ], [ %21, %32 ]
  %42 = phi ptr [ %461, %456 ], [ %20, %32 ]
  %43 = phi ptr [ %460, %456 ], [ %0, %32 ]
  %44 = phi i32 [ %457, %456 ], [ 10, %32 ]
  %45 = getelementptr inbounds %struct.key_vector, ptr %43, i32 0, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %478, label %48

48:                                               ; preds = %37
  %49 = mul i32 %38, 50
  %50 = icmp uge i32 %49, %39
  %51 = icmp ne i32 %44, 0
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %478

53:                                               ; preds = %48
  %54 = load i32, ptr %43, align 4
  %55 = zext i8 %46 to i32
  %56 = add i8 %46, -1
  %57 = add i8 %41, 1
  %58 = add nuw nsw i32 %40, %55
  %59 = icmp ugt i32 %58, 32
  br i1 %59, label %60, label %61, !prof !9

60:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #17, !srcloc !28
  unreachable

61:                                               ; preds = %53
  %62 = icmp ugt i8 %41, 28
  br i1 %62, label %478, label %63

63:                                               ; preds = %61
  %64 = shl i32 8, %40
  %65 = add nuw i32 %64, 28
  %66 = icmp ult i32 %64, 4069
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3520) #19
  br label %71

69:                                               ; preds = %63
  %70 = tail call noalias ptr @vzalloc(i32 noundef %65) #19
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %70, %69 ], [ %68, %67 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %478, label %74

74:                                               ; preds = %71
  %75 = shl i32 2, %40
  %76 = getelementptr %struct.tnode, ptr %72, i32 0, i32 1
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.tnode, ptr %72, i32 0, i32 4
  %78 = icmp ult i32 %58, 32
  %79 = shl nsw i32 -1, %58
  %80 = and i32 %54, %79
  %81 = select i1 %78, i32 %80, i32 0
  store i32 %81, ptr %77, align 4
  %82 = getelementptr inbounds %struct.tnode, ptr %72, i32 0, i32 4, i32 0, i32 1
  store i8 %56, ptr %82, align 4
  %83 = getelementptr inbounds %struct.tnode, ptr %72, i32 0, i32 4, i32 0, i32 2
  store i8 %57, ptr %83, align 1
  %84 = getelementptr inbounds %struct.tnode, ptr %72, i32 0, i32 4, i32 0, i32 3
  store i8 %56, ptr %84, align 2
  %85 = icmp eq ptr %77, null
  br i1 %85, label %478, label %86

86:                                               ; preds = %74
  %87 = getelementptr i8, ptr %43, i32 -20
  store ptr null, ptr %87, align 4
  %88 = load i8, ptr %42, align 1
  %89 = zext i8 %88 to i32
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, -2
  %92 = load i8, ptr %82, align 4
  %93 = zext i8 %92 to i32
  %94 = shl nuw i32 1, %93
  %95 = icmp eq i32 %91, 0
  br i1 %95, label %453, label %96

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.key_vector, ptr %43, i32 0, i32 4
  %98 = getelementptr inbounds %struct.tnode, ptr %72, i32 0, i32 4, i32 0, i32 4
  %99 = getelementptr %struct.tnode, ptr %72, i32 0, i32 2
  br label %100

100:                                              ; preds = %432, %96
  %101 = phi i32 [ %91, %96 ], [ %102, %432 ]
  %102 = add i32 %101, -1
  %103 = getelementptr [0 x ptr], ptr %97, i32 0, i32 %102
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %432, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.key_vector, ptr %104, i32 0, i32 1
  %108 = load i8, ptr %107, align 4
  %109 = zext i8 %108 to i32
  %110 = getelementptr inbounds %struct.key_vector, ptr %104, i32 0, i32 2
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = add nuw nsw i32 %112, %109
  %114 = load i8, ptr %45, align 4
  %115 = zext i8 %114 to i32
  %116 = icmp ne i32 %113, %115
  %117 = icmp eq i8 %111, 0
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %119, label %192

119:                                              ; preds = %106
  %120 = load i8, ptr %82, align 4
  %121 = icmp eq i8 %120, 32
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr %104, align 4
  %124 = zext i8 %120 to i32
  %125 = load i32, ptr %77, align 4
  %126 = xor i32 %125, %123
  %127 = lshr i32 %126, %124
  br label %128

128:                                              ; preds = %122, %119
  %129 = phi i32 [ %127, %122 ], [ 0, %119 ]
  %130 = getelementptr [0 x ptr], ptr %98, i32 0, i32 %129
  %131 = load ptr, ptr %130, align 4
  %132 = load i8, ptr %83, align 1
  %133 = zext i8 %132 to i32
  %134 = shl nuw i32 1, %133
  %135 = and i32 %134, -2
  %136 = icmp ugt i32 %135, %129
  br i1 %136, label %138, label %137, !prof !13

137:                                              ; preds = %128
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

138:                                              ; preds = %128
  %139 = icmp eq ptr %131, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %138
  %141 = load i32, ptr %76, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, ptr %99, align 4
  %145 = add i32 %144, -1
  store i32 %145, ptr %99, align 4
  br label %146

146:                                              ; preds = %143, %140
  %147 = add i32 %141, -1
  store i32 %147, ptr %76, align 4
  %148 = load i8, ptr %107, align 4
  %149 = load i8, ptr %110, align 1
  %150 = zext i8 %148 to i32
  %151 = zext i8 %149 to i32
  %152 = add nuw nsw i32 %151, %150
  %153 = zext i8 %120 to i32
  br label %164

154:                                              ; preds = %138
  %155 = getelementptr inbounds %struct.key_vector, ptr %131, i32 0, i32 1
  %156 = load i8, ptr %155, align 4
  %157 = zext i8 %156 to i32
  %158 = getelementptr inbounds %struct.key_vector, ptr %131, i32 0, i32 2
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = add nuw nsw i32 %160, %157
  %162 = zext i8 %120 to i32
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %171, label %164

164:                                              ; preds = %154, %146
  %165 = phi i32 [ %153, %146 ], [ %162, %154 ]
  %166 = phi i32 [ %152, %146 ], [ %113, %154 ]
  %167 = phi i8 [ %149, %146 ], [ %111, %154 ]
  %168 = icmp eq i32 %166, %165
  %169 = icmp ne i8 %167, 0
  %170 = select i1 %168, i1 %169, i1 false
  br label %177

171:                                              ; preds = %154
  %172 = icmp eq i8 %159, 0
  %173 = icmp eq i32 %113, %162
  %174 = icmp ne i8 %111, 0
  %175 = select i1 %173, i1 %174, i1 false
  %176 = select i1 %172, i1 true, i1 %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %171, %164
  %178 = phi i1 [ true, %164 ], [ %172, %171 ]
  %179 = phi i1 [ %170, %164 ], [ %175, %171 ]
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %181, label %185

181:                                              ; preds = %177, %171
  %182 = phi i32 [ -1, %171 ], [ 1, %177 ]
  %183 = load i32, ptr %99, align 4
  %184 = add i32 %183, %182
  store i32 %184, ptr %99, align 4
  br label %185

185:                                              ; preds = %181, %177
  %186 = load i8, ptr %84, align 2
  %187 = getelementptr inbounds %struct.key_vector, ptr %104, i32 0, i32 3
  %188 = load i8, ptr %187, align 2
  %189 = icmp ult i8 %186, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  store i8 %188, ptr %84, align 2
  br label %191

191:                                              ; preds = %190, %185
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  store volatile ptr %104, ptr %130, align 4
  br label %432

192:                                              ; preds = %106
  %193 = load ptr, ptr %87, align 4
  %194 = getelementptr i8, ptr %104, i32 -20
  store ptr %193, ptr %194, align 4
  store ptr %194, ptr %87, align 4
  %195 = load i8, ptr %110, align 1
  %196 = icmp eq i8 %195, 1
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = shl i32 %102, 1
  %199 = or i32 %198, 1
  %200 = getelementptr inbounds %struct.key_vector, ptr %104, i32 0, i32 4
  %201 = getelementptr %struct.key_vector, ptr %104, i32 1
  %202 = load ptr, ptr %201, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %77, i32 noundef %199, ptr noundef %202) #17
  %203 = load ptr, ptr %200, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %77, i32 noundef %198, ptr noundef %203) #17
  br label %432

204:                                              ; preds = %192
  %205 = zext i8 %195 to i32
  %206 = load i32, ptr %104, align 4
  %207 = or i32 %206, %94
  %208 = load i8, ptr %107, align 4
  %209 = zext i8 %208 to i32
  %210 = add nsw i32 %205, -1
  %211 = add nsw i32 %210, %209
  %212 = icmp eq i32 %210, 0
  %213 = icmp ugt i32 %211, 32
  %214 = or i1 %212, %213
  br i1 %214, label %215, label %216, !prof !9

215:                                              ; preds = %204
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #17, !srcloc !28
  unreachable

216:                                              ; preds = %204
  %217 = icmp ugt i8 %195, 30
  br i1 %217, label %269, label %218

218:                                              ; preds = %216
  %219 = shl nuw i32 2, %205
  %220 = add nuw i32 %219, 28
  %221 = icmp ult i32 %219, 4069
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %220, i32 noundef 3520) #19
  br label %226

224:                                              ; preds = %218
  %225 = tail call noalias ptr @vzalloc(i32 noundef %220) #19
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi ptr [ %225, %224 ], [ %223, %222 ]
  %228 = icmp eq ptr %227, null
  br i1 %228, label %269, label %229

229:                                              ; preds = %226
  %230 = shl nuw nsw i32 1, %210
  %231 = getelementptr inbounds %struct.tnode, ptr %227, i32 0, i32 1
  store i32 %230, ptr %231, align 4
  %232 = getelementptr inbounds %struct.tnode, ptr %227, i32 0, i32 4
  %233 = icmp ult i32 %211, 32
  %234 = shl nsw i32 -1, %211
  %235 = and i32 %234, %207
  %236 = select i1 %233, i32 %235, i32 0
  store i32 %236, ptr %232, align 4
  %237 = getelementptr inbounds %struct.tnode, ptr %227, i32 0, i32 4, i32 0, i32 1
  store i8 %208, ptr %237, align 4
  %238 = trunc i32 %210 to i8
  %239 = getelementptr inbounds %struct.tnode, ptr %227, i32 0, i32 4, i32 0, i32 2
  store i8 %238, ptr %239, align 1
  %240 = getelementptr inbounds %struct.tnode, ptr %227, i32 0, i32 4, i32 0, i32 3
  store i8 %208, ptr %240, align 2
  %241 = icmp eq ptr %232, null
  br i1 %241, label %269, label %242

242:                                              ; preds = %229
  %243 = load i32, ptr %104, align 4
  %244 = load i8, ptr %107, align 4
  %245 = zext i8 %244 to i32
  %246 = load i8, ptr %110, align 1
  %247 = zext i8 %246 to i32
  %248 = add nsw i32 %247, -1
  %249 = add nsw i32 %248, %245
  %250 = icmp eq i32 %248, 0
  %251 = icmp ugt i32 %249, 32
  %252 = or i1 %250, %251
  br i1 %252, label %253, label %254, !prof !9

253:                                              ; preds = %242
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #17, !srcloc !28
  unreachable

254:                                              ; preds = %242
  %255 = icmp ugt i8 %246, 30
  br i1 %255, label %267, label %256

256:                                              ; preds = %254
  %257 = shl nuw i32 2, %247
  %258 = add nuw i32 %257, 28
  %259 = icmp ult i32 %257, 4069
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %258, i32 noundef 3520) #19
  br label %264

262:                                              ; preds = %256
  %263 = tail call noalias ptr @vzalloc(i32 noundef %258) #19
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi ptr [ %263, %262 ], [ %261, %260 ]
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %264, %254
  %268 = load ptr, ptr %72, align 4
  store ptr %268, ptr %227, align 4
  store ptr %227, ptr %72, align 4
  br label %269

269:                                              ; preds = %270, %267, %229, %226, %216
  br label %434

270:                                              ; preds = %264
  %271 = shl nuw nsw i32 1, %248
  %272 = getelementptr inbounds %struct.tnode, ptr %265, i32 0, i32 1
  store i32 %271, ptr %272, align 4
  %273 = getelementptr inbounds %struct.tnode, ptr %265, i32 0, i32 4
  %274 = icmp ult i32 %249, 32
  %275 = shl nsw i32 -1, %249
  %276 = and i32 %275, %243
  %277 = select i1 %274, i32 %276, i32 0
  store i32 %277, ptr %273, align 4
  %278 = getelementptr inbounds %struct.tnode, ptr %265, i32 0, i32 4, i32 0, i32 1
  store i8 %244, ptr %278, align 4
  %279 = trunc i32 %248 to i8
  %280 = getelementptr inbounds %struct.tnode, ptr %265, i32 0, i32 4, i32 0, i32 2
  store i8 %279, ptr %280, align 1
  %281 = getelementptr inbounds %struct.tnode, ptr %265, i32 0, i32 4, i32 0, i32 3
  store i8 %244, ptr %281, align 2
  %282 = load ptr, ptr %72, align 4
  store ptr %282, ptr %227, align 4
  store ptr %227, ptr %72, align 4
  %283 = icmp eq ptr %273, null
  br i1 %283, label %269, label %284

284:                                              ; preds = %270
  store ptr %227, ptr %265, align 4
  store ptr %265, ptr %72, align 4
  %285 = load i8, ptr %110, align 1
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %309, label %287

287:                                              ; preds = %284
  %288 = zext i8 %285 to i32
  %289 = shl nuw i32 1, %288
  %290 = lshr i32 %289, 1
  %291 = and i32 %289, -2
  %292 = getelementptr inbounds %struct.key_vector, ptr %104, i32 0, i32 4
  br label %293

293:                                              ; preds = %293, %287
  %294 = phi i32 [ %291, %287 ], [ %303, %293 ]
  %295 = phi i32 [ %290, %287 ], [ %302, %293 ]
  %296 = add i32 %295, -1
  %297 = add i32 %294, -1
  %298 = getelementptr [0 x ptr], ptr %292, i32 0, i32 %297
  %299 = load ptr, ptr %298, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %232, i32 noundef %296, ptr noundef %299) #17
  %300 = getelementptr [0 x ptr], ptr %292, i32 0, i32 %296
  %301 = load ptr, ptr %300, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %273, i32 noundef %296, ptr noundef %301) #17
  %302 = add i32 %295, -2
  %303 = add i32 %294, -2
  %304 = getelementptr [0 x ptr], ptr %292, i32 0, i32 %303
  %305 = load ptr, ptr %304, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %232, i32 noundef %302, ptr noundef %305) #17
  %306 = getelementptr [0 x ptr], ptr %292, i32 0, i32 %302
  %307 = load ptr, ptr %306, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %273, i32 noundef %302, ptr noundef %307) #17
  %308 = icmp eq i32 %302, 0
  br i1 %308, label %309, label %293

309:                                              ; preds = %293, %284
  %310 = getelementptr inbounds %struct.tnode, ptr %227, i32 0, i32 3
  store volatile ptr %77, ptr %310, align 4
  %311 = getelementptr inbounds %struct.tnode, ptr %265, i32 0, i32 3
  store volatile ptr %77, ptr %311, align 4
  %312 = shl i32 %102, 1
  %313 = or i32 %312, 1
  %314 = getelementptr [0 x ptr], ptr %98, i32 0, i32 %313
  %315 = load ptr, ptr %314, align 4
  %316 = load i8, ptr %83, align 1
  %317 = zext i8 %316 to i32
  %318 = shl nuw i32 1, %317
  %319 = and i32 %318, -2
  %320 = icmp ugt i32 %319, %313
  br i1 %320, label %322, label %321, !prof !13

321:                                              ; preds = %309
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

322:                                              ; preds = %309
  %323 = icmp eq ptr %315, null
  br i1 %323, label %324, label %334

324:                                              ; preds = %322
  %325 = load i32, ptr %76, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i32, ptr %99, align 4
  %329 = add i32 %328, -1
  store i32 %329, ptr %99, align 4
  br label %330

330:                                              ; preds = %327, %324
  %331 = add i32 %325, -1
  store i32 %331, ptr %76, align 4
  %332 = load i8, ptr %82, align 4
  %333 = zext i8 %332 to i32
  br label %348

334:                                              ; preds = %322
  %335 = getelementptr inbounds %struct.key_vector, ptr %315, i32 0, i32 1
  %336 = load i8, ptr %335, align 4
  %337 = zext i8 %336 to i32
  %338 = getelementptr inbounds %struct.key_vector, ptr %315, i32 0, i32 2
  %339 = load i8, ptr %338, align 1
  %340 = zext i8 %339 to i32
  %341 = add nuw nsw i32 %340, %337
  %342 = load i8, ptr %82, align 4
  %343 = zext i8 %342 to i32
  %344 = icmp eq i32 %341, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %334
  %346 = icmp ne i8 %339, 0
  %347 = zext i1 %346 to i32
  br label %348

348:                                              ; preds = %345, %334, %330
  %349 = phi i32 [ %341, %345 ], [ %343, %334 ], [ %333, %330 ]
  %350 = phi i32 [ %347, %345 ], [ 0, %334 ], [ 0, %330 ]
  %351 = load i8, ptr %237, align 4
  %352 = zext i8 %351 to i32
  %353 = load i8, ptr %239, align 1
  %354 = zext i8 %353 to i32
  %355 = add nuw nsw i32 %354, %352
  %356 = icmp eq i32 %355, %349
  %357 = icmp ne i8 %353, 0
  %358 = select i1 %356, i1 %357, i1 false
  %359 = icmp eq i32 %350, 0
  %360 = select i1 %359, i1 true, i1 %358
  br i1 %360, label %361, label %363

361:                                              ; preds = %348
  %362 = select i1 %359, i1 %358, i1 false
  br i1 %362, label %363, label %367

363:                                              ; preds = %361, %348
  %364 = phi i32 [ -1, %348 ], [ 1, %361 ]
  %365 = load i32, ptr %99, align 4
  %366 = add i32 %365, %364
  store i32 %366, ptr %99, align 4
  br label %367

367:                                              ; preds = %363, %361
  %368 = load i8, ptr %84, align 2
  %369 = load i8, ptr %240, align 2
  %370 = icmp ult i8 %368, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %367
  store i8 %369, ptr %84, align 2
  br label %372

372:                                              ; preds = %371, %367
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  store volatile ptr %232, ptr %314, align 4
  %373 = getelementptr [0 x ptr], ptr %98, i32 0, i32 %312
  %374 = load ptr, ptr %373, align 4
  %375 = load i8, ptr %83, align 1
  %376 = zext i8 %375 to i32
  %377 = shl nuw i32 1, %376
  %378 = and i32 %377, -2
  %379 = icmp ugt i32 %378, %312
  br i1 %379, label %381, label %380, !prof !13

380:                                              ; preds = %372
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

381:                                              ; preds = %372
  %382 = icmp eq ptr %374, null
  br i1 %382, label %383, label %393

383:                                              ; preds = %381
  %384 = load i32, ptr %76, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %383
  %387 = load i32, ptr %99, align 4
  %388 = add i32 %387, -1
  store i32 %388, ptr %99, align 4
  br label %389

389:                                              ; preds = %386, %383
  %390 = add i32 %384, -1
  store i32 %390, ptr %76, align 4
  %391 = load i8, ptr %82, align 4
  %392 = zext i8 %391 to i32
  br label %407

393:                                              ; preds = %381
  %394 = getelementptr inbounds %struct.key_vector, ptr %374, i32 0, i32 1
  %395 = load i8, ptr %394, align 4
  %396 = zext i8 %395 to i32
  %397 = getelementptr inbounds %struct.key_vector, ptr %374, i32 0, i32 2
  %398 = load i8, ptr %397, align 1
  %399 = zext i8 %398 to i32
  %400 = add nuw nsw i32 %399, %396
  %401 = load i8, ptr %82, align 4
  %402 = zext i8 %401 to i32
  %403 = icmp eq i32 %400, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %393
  %405 = icmp ne i8 %398, 0
  %406 = zext i1 %405 to i32
  br label %407

407:                                              ; preds = %404, %393, %389
  %408 = phi i32 [ %400, %404 ], [ %402, %393 ], [ %392, %389 ]
  %409 = phi i32 [ %406, %404 ], [ 0, %393 ], [ 0, %389 ]
  %410 = load i8, ptr %278, align 4
  %411 = zext i8 %410 to i32
  %412 = load i8, ptr %280, align 1
  %413 = zext i8 %412 to i32
  %414 = add nuw nsw i32 %413, %411
  %415 = icmp eq i32 %414, %408
  %416 = icmp ne i8 %412, 0
  %417 = select i1 %415, i1 %416, i1 false
  %418 = icmp eq i32 %409, 0
  %419 = select i1 %418, i1 true, i1 %417
  br i1 %419, label %420, label %422

420:                                              ; preds = %407
  %421 = select i1 %418, i1 %417, i1 false
  br i1 %421, label %422, label %426

422:                                              ; preds = %420, %407
  %423 = phi i32 [ -1, %407 ], [ 1, %420 ]
  %424 = load i32, ptr %99, align 4
  %425 = add i32 %424, %423
  store i32 %425, ptr %99, align 4
  br label %426

426:                                              ; preds = %422, %420
  %427 = load i8, ptr %84, align 2
  %428 = load i8, ptr %281, align 2
  %429 = icmp ult i8 %427, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %426
  store i8 %428, ptr %84, align 2
  br label %431

431:                                              ; preds = %430, %426
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  store volatile ptr %273, ptr %373, align 4
  br label %432

432:                                              ; preds = %431, %197, %191, %100
  %433 = icmp eq i32 %102, 0
  br i1 %433, label %453, label %100

434:                                              ; preds = %434, %269
  %435 = phi ptr [ %446, %434 ], [ %77, %269 ]
  %436 = phi ptr [ %437, %434 ], [ %72, %269 ]
  %437 = load ptr, ptr %436, align 4
  %438 = getelementptr inbounds %struct.key_vector, ptr %435, i32 0, i32 2
  %439 = load i8, ptr %438, align 1
  %440 = zext i8 %439 to i32
  %441 = shl i32 4, %440
  %442 = load i32, ptr @tnode_free_size, align 4
  %443 = add i32 %442, 28
  %444 = add i32 %443, %441
  store i32 %444, ptr @tnode_free_size, align 4
  %445 = getelementptr i8, ptr %435, i32 -20
  tail call void @call_rcu(ptr noundef %445, ptr noundef nonnull @__node_free_rcu) #17
  %446 = getelementptr inbounds %struct.tnode, ptr %437, i32 0, i32 4
  %447 = icmp eq ptr %437, null
  br i1 %447, label %448, label %434

448:                                              ; preds = %434
  %449 = load i32, ptr @tnode_free_size, align 4
  %450 = load i32, ptr @sysctl_fib_sync_mem, align 4
  %451 = icmp ult i32 %449, %450
  br i1 %451, label %478, label %452

452:                                              ; preds = %448
  store i32 0, ptr @tnode_free_size, align 4
  tail call void @synchronize_rcu() #17
  br label %478

453:                                              ; preds = %432, %86
  %454 = tail call fastcc ptr @replace(ptr noundef %43, ptr noundef nonnull %77) #17
  %455 = icmp eq ptr %454, null
  br i1 %455, label %478, label %456

456:                                              ; preds = %453
  %457 = add nsw i32 %44, -1
  %458 = getelementptr inbounds %struct.key_vector, ptr %454, i32 0, i32 4
  %459 = getelementptr [0 x ptr], ptr %458, i32 0, i32 %14
  %460 = load ptr, ptr %459, align 4
  %461 = getelementptr inbounds %struct.key_vector, ptr %460, i32 0, i32 2
  %462 = load i8, ptr %461, align 1
  %463 = zext i8 %462 to i32
  %464 = shl nuw i32 1, %463
  %465 = and i32 %464, -2
  %466 = getelementptr inbounds %struct.key_vector, ptr %454, i32 0, i32 1
  %467 = load i8, ptr %466, align 4
  %468 = icmp ugt i8 %467, 31
  %469 = select i1 %468, i32 30, i32 50
  %470 = mul i32 %465, %469
  %471 = getelementptr i8, ptr %460, i32 -12
  %472 = load i32, ptr %471, align 4
  %473 = sub i32 %465, %472
  %474 = getelementptr i8, ptr %460, i32 -8
  %475 = load i32, ptr %474, align 4
  %476 = add i32 %473, %475
  %477 = icmp ugt i32 %476, 1
  br i1 %477, label %37, label %478

478:                                              ; preds = %456, %453, %452, %448, %74, %71, %61, %48, %37
  %479 = phi i32 [ %44, %452 ], [ %44, %448 ], [ %44, %61 ], [ %44, %71 ], [ %44, %74 ], [ %457, %456 ], [ %44, %37 ], [ %44, %48 ], [ %44, %453 ]
  %480 = phi ptr [ %43, %452 ], [ %43, %448 ], [ %43, %61 ], [ %43, %71 ], [ %43, %74 ], [ %460, %456 ], [ %43, %37 ], [ %43, %48 ], [ %43, %453 ]
  %481 = getelementptr i8, ptr %480, i32 -4
  %482 = load ptr, ptr %481, align 4
  %483 = icmp eq i32 %479, 10
  br i1 %483, label %484, label %872

484:                                              ; preds = %478
  %485 = getelementptr inbounds %struct.key_vector, ptr %480, i32 0, i32 2
  %486 = load i8, ptr %485, align 1
  %487 = getelementptr i8, ptr %480, i32 -12
  %488 = load i32, ptr %487, align 4
  %489 = zext i8 %486 to i32
  %490 = shl nuw i32 1, %489
  %491 = and i32 %490, -2
  %492 = sub i32 %491, %488
  br label %493

493:                                              ; preds = %484, %19
  %494 = phi i32 [ %492, %484 ], [ %27, %19 ]
  %495 = phi i32 [ %491, %484 ], [ %24, %19 ]
  %496 = phi i32 [ %489, %484 ], [ %22, %19 ]
  %497 = phi i8 [ %486, %484 ], [ %21, %19 ]
  %498 = phi ptr [ %482, %484 ], [ %3, %19 ]
  %499 = phi ptr [ %480, %484 ], [ %0, %19 ]
  %500 = getelementptr inbounds %struct.key_vector, ptr %499, i32 0, i32 2
  %501 = icmp ugt i32 %494, 1
  %502 = icmp ugt i8 %497, 1
  %503 = select i1 %501, i1 %502, i1 false
  br i1 %503, label %504, label %812

504:                                              ; preds = %796, %493
  %505 = phi i32 [ %808, %796 ], [ %494, %493 ]
  %506 = phi i32 [ %805, %796 ], [ %495, %493 ]
  %507 = phi i32 [ %803, %796 ], [ %496, %493 ]
  %508 = phi i8 [ %802, %796 ], [ %497, %493 ]
  %509 = phi ptr [ %801, %796 ], [ %500, %493 ]
  %510 = phi ptr [ %800, %796 ], [ %499, %493 ]
  %511 = phi ptr [ %794, %796 ], [ %498, %493 ]
  %512 = phi i32 [ %797, %796 ], [ 10, %493 ]
  %513 = getelementptr inbounds %struct.key_vector, ptr %511, i32 0, i32 1
  %514 = load i8, ptr %513, align 4
  %515 = icmp ugt i8 %514, 31
  %516 = select i1 %515, i32 15, i32 25
  %517 = mul i32 %516, %506
  %518 = mul i32 %505, 100
  %519 = icmp ult i32 %518, %517
  %520 = icmp ne i32 %512, 0
  %521 = select i1 %519, i1 %520, i1 false
  br i1 %521, label %522, label %812

522:                                              ; preds = %504
  %523 = load i32, ptr %510, align 4
  %524 = getelementptr inbounds %struct.key_vector, ptr %510, i32 0, i32 1
  %525 = load i8, ptr %524, align 4
  %526 = zext i8 %525 to i32
  %527 = add i8 %525, 1
  %528 = add nsw i32 %507, -1
  %529 = add nuw nsw i32 %507, %526
  %530 = icmp eq i32 %528, 0
  %531 = icmp ugt i32 %529, 32
  %532 = or i1 %530, %531
  br i1 %532, label %533, label %534, !prof !9

533:                                              ; preds = %522
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #17, !srcloc !28
  unreachable

534:                                              ; preds = %522
  %535 = icmp ugt i8 %508, 30
  br i1 %535, label %812, label %536

536:                                              ; preds = %534
  %537 = shl nuw i32 2, %507
  %538 = add nuw i32 %537, 28
  %539 = icmp ult i32 %537, 4069
  br i1 %539, label %540, label %542

540:                                              ; preds = %536
  %541 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %538, i32 noundef 3520) #19
  br label %544

542:                                              ; preds = %536
  %543 = tail call noalias ptr @vzalloc(i32 noundef %538) #19
  br label %544

544:                                              ; preds = %542, %540
  %545 = phi ptr [ %543, %542 ], [ %541, %540 ]
  %546 = icmp eq ptr %545, null
  br i1 %546, label %812, label %547

547:                                              ; preds = %544
  %548 = shl nuw nsw i32 1, %528
  %549 = getelementptr %struct.tnode, ptr %545, i32 0, i32 1
  store i32 %548, ptr %549, align 4
  %550 = getelementptr inbounds %struct.tnode, ptr %545, i32 0, i32 4
  %551 = icmp ult i32 %529, 32
  %552 = shl nsw i32 -1, %529
  %553 = and i32 %552, %523
  %554 = select i1 %551, i32 %553, i32 0
  store i32 %554, ptr %550, align 4
  %555 = getelementptr inbounds %struct.tnode, ptr %545, i32 0, i32 4, i32 0, i32 1
  store i8 %527, ptr %555, align 4
  %556 = trunc i32 %528 to i8
  %557 = getelementptr inbounds %struct.tnode, ptr %545, i32 0, i32 4, i32 0, i32 2
  store i8 %556, ptr %557, align 1
  %558 = getelementptr inbounds %struct.tnode, ptr %545, i32 0, i32 4, i32 0, i32 3
  store i8 %527, ptr %558, align 2
  %559 = icmp eq ptr %550, null
  br i1 %559, label %812, label %560

560:                                              ; preds = %547
  %561 = getelementptr i8, ptr %510, i32 -20
  store ptr null, ptr %561, align 4
  %562 = load i8, ptr %509, align 1
  %563 = zext i8 %562 to i32
  %564 = shl nuw i32 1, %563
  %565 = and i32 %564, -2
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %793, label %567

567:                                              ; preds = %560
  %568 = getelementptr inbounds %struct.key_vector, ptr %510, i32 0, i32 4
  %569 = getelementptr inbounds %struct.tnode, ptr %545, i32 0, i32 4, i32 0, i32 4
  %570 = getelementptr %struct.tnode, ptr %545, i32 0, i32 2
  br label %571

571:                                              ; preds = %771, %567
  %572 = phi i32 [ %565, %567 ], [ %576, %771 ]
  %573 = add i32 %572, -1
  %574 = getelementptr [0 x ptr], ptr %568, i32 0, i32 %573
  %575 = load ptr, ptr %574, align 4
  %576 = add i32 %572, -2
  %577 = getelementptr [0 x ptr], ptr %568, i32 0, i32 %576
  %578 = load ptr, ptr %577, align 4
  %579 = icmp ne ptr %575, null
  %580 = icmp ne ptr %578, null
  %581 = select i1 %579, i1 %580, i1 false
  br i1 %581, label %585, label %582

582:                                              ; preds = %571
  %583 = lshr exact i32 %576, 1
  %584 = select i1 %579, ptr %575, ptr %578
  tail call fastcc void @put_child(ptr noundef nonnull %550, i32 noundef %583, ptr noundef %584) #17
  br label %771

585:                                              ; preds = %571
  %586 = load i32, ptr %578, align 4
  %587 = load i8, ptr %524, align 4
  %588 = zext i8 %587 to i32
  %589 = icmp ugt i8 %587, 31
  br i1 %589, label %590, label %591, !prof !9

590:                                              ; preds = %585
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #17, !srcloc !28
  unreachable

591:                                              ; preds = %585
  %592 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %593 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %592, i32 noundef 3520, i32 noundef 36) #18
  %594 = icmp eq ptr %593, null
  br i1 %594, label %773, label %595

595:                                              ; preds = %591
  %596 = getelementptr %struct.tnode, ptr %593, i32 0, i32 1
  store i32 2, ptr %596, align 8
  %597 = getelementptr inbounds %struct.tnode, ptr %593, i32 0, i32 4
  %598 = icmp ult i8 %587, 31
  %599 = shl i32 -2, %588
  %600 = and i32 %599, %586
  %601 = select i1 %598, i32 %600, i32 0
  store i32 %601, ptr %597, align 4
  %602 = getelementptr inbounds %struct.tnode, ptr %593, i32 0, i32 4, i32 0, i32 1
  store i8 %587, ptr %602, align 8
  %603 = getelementptr inbounds %struct.tnode, ptr %593, i32 0, i32 4, i32 0, i32 2
  store i8 1, ptr %603, align 1
  %604 = getelementptr inbounds %struct.tnode, ptr %593, i32 0, i32 4, i32 0, i32 3
  store i8 %587, ptr %604, align 2
  %605 = load ptr, ptr %545, align 4
  store ptr %605, ptr %593, align 8
  store ptr %593, ptr %545, align 4
  %606 = getelementptr inbounds %struct.tnode, ptr %593, i32 0, i32 4, i32 0, i32 4
  %607 = getelementptr %struct.tnode, ptr %593, i32 1
  %608 = load ptr, ptr %607, align 8
  %609 = icmp eq ptr %608, null
  br i1 %609, label %610, label %611

610:                                              ; preds = %595
  store i32 1, ptr %596, align 8
  br label %623

611:                                              ; preds = %595
  %612 = getelementptr inbounds %struct.key_vector, ptr %608, i32 0, i32 1
  %613 = load i8, ptr %612, align 4
  %614 = zext i8 %613 to i32
  %615 = getelementptr inbounds %struct.key_vector, ptr %608, i32 0, i32 2
  %616 = load i8, ptr %615, align 1
  %617 = zext i8 %616 to i32
  %618 = add nuw nsw i32 %617, %614
  %619 = icmp eq i32 %618, %588
  br i1 %619, label %620, label %623

620:                                              ; preds = %611
  %621 = icmp ne i8 %616, 0
  %622 = zext i1 %621 to i32
  br label %623

623:                                              ; preds = %620, %611, %610
  %624 = phi i32 [ 0, %611 ], [ %622, %620 ], [ 0, %610 ]
  %625 = getelementptr inbounds %struct.key_vector, ptr %575, i32 0, i32 1
  %626 = load i8, ptr %625, align 4
  %627 = zext i8 %626 to i32
  %628 = getelementptr inbounds %struct.key_vector, ptr %575, i32 0, i32 2
  %629 = load i8, ptr %628, align 1
  %630 = zext i8 %629 to i32
  %631 = add nuw nsw i32 %630, %627
  %632 = icmp eq i32 %631, %588
  %633 = icmp ne i8 %629, 0
  %634 = select i1 %632, i1 %633, i1 false
  %635 = icmp eq i32 %624, 0
  %636 = select i1 %635, i1 true, i1 %634
  br i1 %636, label %637, label %639

637:                                              ; preds = %623
  %638 = select i1 %635, i1 %634, i1 false
  br i1 %638, label %639, label %644

639:                                              ; preds = %637, %623
  %640 = phi i32 [ -1, %623 ], [ 1, %637 ]
  %641 = getelementptr %struct.tnode, ptr %593, i32 0, i32 2
  %642 = load i32, ptr %641, align 4
  %643 = add i32 %642, %640
  store i32 %643, ptr %641, align 4
  br label %644

644:                                              ; preds = %639, %637
  %645 = getelementptr inbounds %struct.key_vector, ptr %575, i32 0, i32 3
  %646 = load i8, ptr %645, align 2
  %647 = icmp ult i8 %587, %646
  br i1 %647, label %648, label %649

648:                                              ; preds = %644
  store i8 %646, ptr %604, align 2
  br label %649

649:                                              ; preds = %648, %644
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  store volatile ptr %575, ptr %607, align 8
  %650 = load ptr, ptr %606, align 4
  %651 = load i8, ptr %603, align 1
  %652 = icmp eq i8 %651, 0
  br i1 %652, label %653, label %654, !prof !9

653:                                              ; preds = %649
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

654:                                              ; preds = %649
  %655 = icmp eq ptr %650, null
  br i1 %655, label %656, label %667

656:                                              ; preds = %654
  %657 = load i32, ptr %596, align 8
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %656
  %660 = getelementptr %struct.tnode, ptr %593, i32 0, i32 2
  %661 = load i32, ptr %660, align 4
  %662 = add i32 %661, -1
  store i32 %662, ptr %660, align 4
  br label %663

663:                                              ; preds = %659, %656
  %664 = add i32 %657, -1
  store i32 %664, ptr %596, align 8
  %665 = load i8, ptr %602, align 8
  %666 = zext i8 %665 to i32
  br label %681

667:                                              ; preds = %654
  %668 = getelementptr inbounds %struct.key_vector, ptr %650, i32 0, i32 1
  %669 = load i8, ptr %668, align 4
  %670 = zext i8 %669 to i32
  %671 = getelementptr inbounds %struct.key_vector, ptr %650, i32 0, i32 2
  %672 = load i8, ptr %671, align 1
  %673 = zext i8 %672 to i32
  %674 = add nuw nsw i32 %673, %670
  %675 = load i8, ptr %602, align 8
  %676 = zext i8 %675 to i32
  %677 = icmp eq i32 %674, %676
  br i1 %677, label %678, label %681

678:                                              ; preds = %667
  %679 = icmp ne i8 %672, 0
  %680 = zext i1 %679 to i32
  br label %681

681:                                              ; preds = %678, %667, %663
  %682 = phi i32 [ %674, %678 ], [ %676, %667 ], [ %666, %663 ]
  %683 = phi i32 [ %680, %678 ], [ 0, %667 ], [ 0, %663 ]
  %684 = getelementptr inbounds %struct.key_vector, ptr %578, i32 0, i32 1
  %685 = load i8, ptr %684, align 4
  %686 = zext i8 %685 to i32
  %687 = getelementptr inbounds %struct.key_vector, ptr %578, i32 0, i32 2
  %688 = load i8, ptr %687, align 1
  %689 = zext i8 %688 to i32
  %690 = add nuw nsw i32 %689, %686
  %691 = icmp eq i32 %690, %682
  %692 = icmp ne i8 %688, 0
  %693 = select i1 %691, i1 %692, i1 false
  %694 = icmp eq i32 %683, 0
  %695 = select i1 %694, i1 true, i1 %693
  br i1 %695, label %696, label %698

696:                                              ; preds = %681
  %697 = select i1 %694, i1 %693, i1 false
  br i1 %697, label %698, label %703

698:                                              ; preds = %696, %681
  %699 = phi i32 [ -1, %681 ], [ 1, %696 ]
  %700 = getelementptr %struct.tnode, ptr %593, i32 0, i32 2
  %701 = load i32, ptr %700, align 4
  %702 = add i32 %701, %699
  store i32 %702, ptr %700, align 4
  br label %703

703:                                              ; preds = %698, %696
  %704 = load i8, ptr %604, align 2
  %705 = getelementptr inbounds %struct.key_vector, ptr %578, i32 0, i32 3
  %706 = load i8, ptr %705, align 2
  %707 = icmp ult i8 %704, %706
  br i1 %707, label %708, label %709

708:                                              ; preds = %703
  store i8 %706, ptr %604, align 2
  br label %709

709:                                              ; preds = %708, %703
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  store volatile ptr %578, ptr %606, align 4
  %710 = getelementptr inbounds %struct.tnode, ptr %593, i32 0, i32 3
  store volatile ptr %550, ptr %710, align 8
  %711 = lshr exact i32 %576, 1
  %712 = getelementptr [0 x ptr], ptr %569, i32 0, i32 %711
  %713 = load ptr, ptr %712, align 4
  %714 = load i8, ptr %557, align 1
  %715 = zext i8 %714 to i32
  %716 = shl nuw i32 1, %715
  %717 = and i32 %716, -2
  %718 = icmp ugt i32 %717, %711
  br i1 %718, label %720, label %719, !prof !13

719:                                              ; preds = %709
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

720:                                              ; preds = %709
  %721 = icmp eq ptr %713, null
  br i1 %721, label %722, label %732

722:                                              ; preds = %720
  %723 = load i32, ptr %549, align 4
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %728

725:                                              ; preds = %722
  %726 = load i32, ptr %570, align 4
  %727 = add i32 %726, -1
  store i32 %727, ptr %570, align 4
  br label %728

728:                                              ; preds = %725, %722
  %729 = add i32 %723, -1
  store i32 %729, ptr %549, align 4
  %730 = load i8, ptr %555, align 4
  %731 = zext i8 %730 to i32
  br label %746

732:                                              ; preds = %720
  %733 = getelementptr inbounds %struct.key_vector, ptr %713, i32 0, i32 1
  %734 = load i8, ptr %733, align 4
  %735 = zext i8 %734 to i32
  %736 = getelementptr inbounds %struct.key_vector, ptr %713, i32 0, i32 2
  %737 = load i8, ptr %736, align 1
  %738 = zext i8 %737 to i32
  %739 = add nuw nsw i32 %738, %735
  %740 = load i8, ptr %555, align 4
  %741 = zext i8 %740 to i32
  %742 = icmp eq i32 %739, %741
  br i1 %742, label %743, label %746

743:                                              ; preds = %732
  %744 = icmp ne i8 %737, 0
  %745 = zext i1 %744 to i32
  br label %746

746:                                              ; preds = %743, %732, %728
  %747 = phi i32 [ %739, %743 ], [ %741, %732 ], [ %731, %728 ]
  %748 = phi i32 [ %745, %743 ], [ 0, %732 ], [ 0, %728 ]
  %749 = load i8, ptr %602, align 8
  %750 = zext i8 %749 to i32
  %751 = load i8, ptr %603, align 1
  %752 = zext i8 %751 to i32
  %753 = add nuw nsw i32 %752, %750
  %754 = icmp eq i32 %753, %747
  %755 = icmp ne i8 %751, 0
  %756 = select i1 %754, i1 %755, i1 false
  %757 = icmp eq i32 %748, 0
  %758 = select i1 %757, i1 true, i1 %756
  br i1 %758, label %759, label %761

759:                                              ; preds = %746
  %760 = select i1 %757, i1 %756, i1 false
  br i1 %760, label %761, label %765

761:                                              ; preds = %759, %746
  %762 = phi i32 [ -1, %746 ], [ 1, %759 ]
  %763 = load i32, ptr %570, align 4
  %764 = add i32 %763, %762
  store i32 %764, ptr %570, align 4
  br label %765

765:                                              ; preds = %761, %759
  %766 = load i8, ptr %558, align 2
  %767 = load i8, ptr %604, align 2
  %768 = icmp ult i8 %766, %767
  br i1 %768, label %769, label %770

769:                                              ; preds = %765
  store i8 %767, ptr %558, align 2
  br label %770

770:                                              ; preds = %769, %765
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  store volatile ptr %597, ptr %712, align 4
  br label %771

771:                                              ; preds = %770, %582
  %772 = icmp eq i32 %576, 0
  br i1 %772, label %793, label %571

773:                                              ; preds = %773, %591
  %774 = phi ptr [ %785, %773 ], [ %550, %591 ]
  %775 = phi ptr [ %776, %773 ], [ %545, %591 ]
  %776 = load ptr, ptr %775, align 4
  %777 = getelementptr inbounds %struct.key_vector, ptr %774, i32 0, i32 2
  %778 = load i8, ptr %777, align 1
  %779 = zext i8 %778 to i32
  %780 = shl i32 4, %779
  %781 = load i32, ptr @tnode_free_size, align 4
  %782 = add i32 %781, 28
  %783 = add i32 %782, %780
  store i32 %783, ptr @tnode_free_size, align 4
  %784 = getelementptr i8, ptr %774, i32 -20
  tail call void @call_rcu(ptr noundef %784, ptr noundef nonnull @__node_free_rcu) #17
  %785 = getelementptr inbounds %struct.tnode, ptr %776, i32 0, i32 4
  %786 = icmp eq ptr %776, null
  br i1 %786, label %787, label %773

787:                                              ; preds = %773
  %788 = getelementptr i8, ptr %510, i32 -12
  %789 = load i32, ptr @tnode_free_size, align 4
  %790 = load i32, ptr @sysctl_fib_sync_mem, align 4
  %791 = icmp ult i32 %789, %790
  br i1 %791, label %816, label %792

792:                                              ; preds = %787
  store i32 0, ptr @tnode_free_size, align 4
  tail call void @synchronize_rcu() #17
  br label %816

793:                                              ; preds = %771, %560
  %794 = tail call fastcc ptr @replace(ptr noundef %510, ptr noundef nonnull %550) #17
  %795 = icmp eq ptr %794, null
  br i1 %795, label %812, label %796

796:                                              ; preds = %793
  %797 = add nsw i32 %512, -1
  %798 = getelementptr inbounds %struct.key_vector, ptr %794, i32 0, i32 4
  %799 = getelementptr [0 x ptr], ptr %798, i32 0, i32 %14
  %800 = load ptr, ptr %799, align 4
  %801 = getelementptr inbounds %struct.key_vector, ptr %800, i32 0, i32 2
  %802 = load i8, ptr %801, align 1
  %803 = zext i8 %802 to i32
  %804 = shl nuw i32 1, %803
  %805 = and i32 %804, -2
  %806 = getelementptr i8, ptr %800, i32 -12
  %807 = load i32, ptr %806, align 4
  %808 = sub i32 %805, %807
  %809 = icmp ugt i32 %808, 1
  %810 = icmp ugt i8 %802, 1
  %811 = select i1 %809, i1 %810, i1 false
  br i1 %811, label %504, label %812

812:                                              ; preds = %796, %793, %547, %544, %534, %504, %493
  %813 = phi ptr [ %499, %493 ], [ %510, %534 ], [ %510, %544 ], [ %510, %547 ], [ %800, %796 ], [ %510, %793 ], [ %510, %504 ]
  %814 = phi ptr [ %500, %493 ], [ %509, %534 ], [ %509, %544 ], [ %509, %547 ], [ %801, %796 ], [ %509, %793 ], [ %509, %504 ]
  %815 = getelementptr i8, ptr %813, i32 -12
  br label %816

816:                                              ; preds = %812, %792, %787
  %817 = phi ptr [ %813, %812 ], [ %510, %792 ], [ %510, %787 ]
  %818 = phi ptr [ %814, %812 ], [ %509, %792 ], [ %509, %787 ]
  %819 = phi ptr [ %815, %812 ], [ %788, %792 ], [ %788, %787 ]
  %820 = load i8, ptr %818, align 1
  %821 = zext i8 %820 to i32
  %822 = shl nuw i32 1, %821
  %823 = and i32 %822, -2
  %824 = load i32, ptr %819, align 4
  %825 = sub i32 %823, %824
  %826 = icmp eq i8 %820, 32
  br i1 %826, label %827, label %833

827:                                              ; preds = %816
  %828 = getelementptr i8, ptr %817, i32 -8
  %829 = load i32, ptr %828, align 4
  %830 = icmp ne i32 %829, 0
  %831 = zext i1 %830 to i32
  %832 = add i32 %825, %831
  br label %833

833:                                              ; preds = %827, %816
  %834 = phi i32 [ %825, %816 ], [ %832, %827 ]
  %835 = icmp ult i32 %834, 2
  br i1 %835, label %836, label %869

836:                                              ; preds = %833
  %837 = icmp eq i32 %823, 0
  br i1 %837, label %848, label %838

838:                                              ; preds = %836
  %839 = getelementptr inbounds %struct.key_vector, ptr %817, i32 0, i32 4
  br label %840

840:                                              ; preds = %840, %838
  %841 = phi i32 [ %823, %838 ], [ %842, %840 ]
  %842 = add i32 %841, -1
  %843 = getelementptr [0 x ptr], ptr %839, i32 0, i32 %842
  %844 = load ptr, ptr %843, align 4
  %845 = icmp eq ptr %844, null
  %846 = icmp ne i32 %842, 0
  %847 = select i1 %845, i1 %846, i1 false
  br i1 %847, label %840, label %848

848:                                              ; preds = %840, %836
  %849 = phi ptr [ null, %836 ], [ %844, %840 ]
  %850 = phi i1 [ true, %836 ], [ %845, %840 ]
  %851 = getelementptr i8, ptr %817, i32 -4
  %852 = load ptr, ptr %851, align 4
  %853 = getelementptr inbounds %struct.key_vector, ptr %852, i32 0, i32 1
  %854 = load i8, ptr %853, align 4
  %855 = icmp ugt i8 %854, 31
  br i1 %855, label %856, label %858

856:                                              ; preds = %848
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %857 = getelementptr inbounds %struct.key_vector, ptr %852, i32 0, i32 4
  store volatile ptr %849, ptr %857, align 4
  br label %864

858:                                              ; preds = %848
  %859 = load i32, ptr %817, align 4
  %860 = zext i8 %854 to i32
  %861 = load i32, ptr %852, align 4
  %862 = xor i32 %861, %859
  %863 = lshr i32 %862, %860
  tail call fastcc void @put_child(ptr noundef %852, i32 noundef %863, ptr noundef %849) #17
  br label %864

864:                                              ; preds = %858, %856
  br i1 %850, label %867, label %865

865:                                              ; preds = %864
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %866 = getelementptr i8, ptr %849, i32 -4
  store volatile ptr %852, ptr %866, align 4
  br label %867

867:                                              ; preds = %865, %864
  %868 = getelementptr i8, ptr %817, i32 -20
  tail call void @call_rcu(ptr noundef %868, ptr noundef nonnull @__node_free_rcu) #17
  br label %872

869:                                              ; preds = %833
  %870 = getelementptr i8, ptr %817, i32 -4
  %871 = load ptr, ptr %870, align 4
  br label %872

872:                                              ; preds = %869, %867, %478
  %873 = phi ptr [ %852, %867 ], [ %871, %869 ], [ %482, %478 ]
  ret ptr %873
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__node_free_rcu(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tnode, ptr %0, i32 0, i32 4, i32 0, i32 2
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr @trie_leaf_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %0) #17
  br label %8

7:                                                ; preds = %1
  tail call void @kvfree(ptr noundef %0) #17
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_table_flush(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.fib_entry_notifier_info, align 4
  %5 = getelementptr inbounds %struct.fib_table, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fib_table, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 4
  %12 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 5
  %13 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 6
  br label %14

14:                                               ; preds = %267, %3
  %15 = phi i32 [ 0, %3 ], [ %213, %267 ]
  %16 = phi i32 [ 1, %3 ], [ %84, %267 ]
  %17 = phi ptr [ %6, %3 ], [ %20, %267 ]
  br label %18

18:                                               ; preds = %95, %14
  %19 = phi i32 [ %16, %14 ], [ %96, %95 ]
  %20 = phi ptr [ %17, %14 ], [ %97, %95 ]
  %21 = getelementptr inbounds %struct.key_vector, ptr %20, i32 0, i32 4
  br label %22

22:                                               ; preds = %83, %18
  %23 = phi i32 [ %84, %83 ], [ %19, %18 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  %26 = load i32, ptr %20, align 4
  %27 = getelementptr inbounds %struct.key_vector, ptr %20, i32 0, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = icmp ugt i8 %28, 31
  br i1 %29, label %268, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.key_vector, ptr %20, i32 0, i32 3
  %32 = load i8, ptr %31, align 2
  %33 = icmp ugt i8 %32, %28
  br i1 %33, label %34, label %73

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.key_vector, ptr %20, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = add nsw i8 %28, -1
  %38 = add i8 %37, %36
  %39 = call i8 @llvm.umin.i8(i8 %38, i8 %32) #17
  %40 = zext i8 %36 to i32
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, -2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.key_vector, ptr %20, i32 0, i32 4
  br label %46

46:                                               ; preds = %65, %44
  %47 = phi i8 [ %28, %44 ], [ %66, %65 ]
  %48 = phi i32 [ 2, %44 ], [ %67, %65 ]
  %49 = phi i32 [ 0, %44 ], [ %69, %65 ]
  %50 = getelementptr [0 x ptr], ptr %45, i32 0, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.key_vector, ptr %51, i32 0, i32 3
  %55 = load i8, ptr %54, align 2
  %56 = icmp ugt i8 %55, %47
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = zext i8 %47 to i32
  %59 = zext i8 %55 to i32
  %60 = sub nsw i32 %59, %58
  %61 = shl i32 %48, %60
  %62 = sub i32 0, %61
  %63 = and i32 %49, %62
  %64 = icmp ult i8 %55, %39
  br i1 %64, label %65, label %71

65:                                               ; preds = %57, %53, %46
  %66 = phi i8 [ %55, %57 ], [ %47, %53 ], [ %47, %46 ]
  %67 = phi i32 [ %61, %57 ], [ %48, %53 ], [ %48, %46 ]
  %68 = phi i32 [ %63, %57 ], [ %49, %53 ], [ %49, %46 ]
  %69 = add i32 %68, %67
  %70 = icmp ult i32 %69, %42
  br i1 %70, label %46, label %71

71:                                               ; preds = %65, %57, %34
  %72 = phi i8 [ %28, %34 ], [ %66, %65 ], [ %55, %57 ]
  store i8 %72, ptr %31, align 2
  br label %73

73:                                               ; preds = %71, %30
  %74 = call fastcc ptr @resize(ptr noundef %20)
  %75 = getelementptr inbounds %struct.key_vector, ptr %74, i32 0, i32 1
  %76 = load i8, ptr %75, align 4
  %77 = icmp eq i8 %76, 32
  br i1 %77, label %95, label %78

78:                                               ; preds = %73
  %79 = zext i8 %76 to i32
  %80 = load i32, ptr %74, align 4
  %81 = xor i32 %80, %26
  %82 = lshr i32 %81, %79
  br label %95

83:                                               ; preds = %22
  %84 = add i32 %23, -1
  %85 = getelementptr [0 x ptr], ptr %21, i32 0, i32 %84
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %22, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.key_vector, ptr %86, i32 0, i32 2
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = zext i8 %90 to i32
  %94 = shl nuw i32 1, %93
  br label %95

95:                                               ; preds = %92, %78, %73
  %96 = phi i32 [ %82, %78 ], [ 0, %73 ], [ %94, %92 ]
  %97 = phi ptr [ %74, %78 ], [ %74, %73 ], [ %86, %92 ]
  br label %18

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.key_vector, ptr %86, i32 0, i32 4
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %211, label %102

102:                                              ; preds = %98
  %103 = icmp eq ptr %99, null
  br label %104

104:                                              ; preds = %207, %102
  %105 = phi ptr [ %100, %102 ], [ %108, %207 ]
  %106 = phi i32 [ %15, %102 ], [ %209, %207 ]
  %107 = phi i8 [ 0, %102 ], [ %208, %207 ]
  %108 = load ptr, ptr %105, align 4
  %109 = getelementptr inbounds %struct.fib_alias, ptr %105, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %129, label %112

112:                                              ; preds = %104
  %113 = load i32, ptr %7, align 4
  %114 = getelementptr inbounds %struct.fib_alias, ptr %105, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.fib_info, ptr %110, i32 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.fib_alias, ptr %105, i32 0, i32 3
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %125
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122, %112, %104
  %130 = getelementptr inbounds %struct.fib_alias, ptr %105, i32 0, i32 5
  %131 = load i8, ptr %130, align 1
  br label %207

132:                                              ; preds = %122, %117
  br i1 %2, label %143, label %133

133:                                              ; preds = %132
  %134 = getelementptr inbounds %struct.fib_alias, ptr %105, i32 0, i32 3
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %136
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.fib_alias, ptr %105, i32 0, i32 5
  %142 = load i8, ptr %141, align 1
  br label %207

143:                                              ; preds = %133, %132
  %144 = load i32, ptr %86, align 4
  %145 = getelementptr inbounds %struct.fib_alias, ptr %105, i32 0, i32 5
  %146 = load i8, ptr %145, align 1
  br i1 %103, label %167, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr %99, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %167, label %150

150:                                              ; preds = %164, %147
  %151 = phi ptr [ %165, %164 ], [ %148, %147 ]
  %152 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 5
  %153 = load i8, ptr %152, align 1
  %154 = icmp ult i8 %153, %146
  br i1 %154, label %164, label %155

155:                                              ; preds = %150
  %156 = icmp eq i8 %153, %146
  br i1 %156, label %157, label %167

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = icmp ugt i32 %159, %113
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = icmp eq i32 %159, %113
  %163 = select i1 %162, ptr %151, ptr null
  br label %167

164:                                              ; preds = %157, %150
  %165 = load ptr, ptr %151, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %150

167:                                              ; preds = %164, %161, %155, %147, %143
  %168 = phi ptr [ null, %143 ], [ %163, %161 ], [ null, %147 ], [ null, %155 ], [ null, %164 ]
  %169 = icmp eq ptr %168, %105
  br i1 %169, label %170, label %196

170:                                              ; preds = %167
  %171 = icmp eq ptr %108, null
  br i1 %171, label %180, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.fib_alias, ptr %108, i32 0, i32 5
  %174 = load i8, ptr %173, align 1
  %175 = icmp eq i8 %174, %146
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.fib_alias, ptr %108, i32 0, i32 6
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, %113
  br i1 %179, label %181, label %180

180:                                              ; preds = %176, %172, %170
  br label %181

181:                                              ; preds = %180, %176
  %182 = phi i32 [ 3, %180 ], [ 0, %176 ]
  %183 = phi ptr [ %105, %180 ], [ %108, %176 ]
  %184 = zext i8 %146 to i32
  %185 = sub nsw i32 32, %184
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 %144, ptr %8, align 4
  store i32 %185, ptr %9, align 4
  %186 = getelementptr inbounds %struct.fib_alias, ptr %183, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  store ptr %187, ptr %10, align 4
  %188 = getelementptr inbounds %struct.fib_alias, ptr %183, i32 0, i32 2
  %189 = load i8, ptr %188, align 4
  store i8 %189, ptr %11, align 4
  %190 = getelementptr inbounds %struct.fib_alias, ptr %183, i32 0, i32 3
  %191 = load i8, ptr %190, align 1
  store i8 %191, ptr %12, align 1
  %192 = getelementptr inbounds %struct.fib_alias, ptr %183, i32 0, i32 6
  %193 = load i32, ptr %192, align 4
  store i32 %193, ptr %13, align 4
  %194 = call i32 @call_fib4_notifiers(ptr noundef %0, i32 noundef %182, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #17
  %195 = load ptr, ptr %105, align 4
  br label %196

196:                                              ; preds = %181, %167
  %197 = phi ptr [ %108, %167 ], [ %195, %181 ]
  %198 = getelementptr inbounds %struct.hlist_node, ptr %105, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  store volatile ptr %197, ptr %199, align 4
  %200 = icmp eq ptr %197, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.hlist_node, ptr %197, i32 0, i32 1
  store volatile ptr %199, ptr %202, align 4
  br label %203

203:                                              ; preds = %201, %196
  store volatile ptr inttoptr (i32 290 to ptr), ptr %198, align 4
  %204 = load ptr, ptr %109, align 4
  call void @fib_release_info(ptr noundef %204) #17
  %205 = getelementptr inbounds %struct.fib_alias, ptr %105, i32 0, i32 11
  call void @call_rcu(ptr noundef %205, ptr noundef nonnull @__alias_free_mem) #17
  %206 = add i32 %106, 1
  br label %207

207:                                              ; preds = %203, %140, %129
  %208 = phi i8 [ %131, %129 ], [ %107, %203 ], [ %142, %140 ]
  %209 = phi i32 [ %106, %129 ], [ %206, %203 ], [ %106, %140 ]
  %210 = icmp eq ptr %108, null
  br i1 %210, label %211, label %104

211:                                              ; preds = %207, %98
  %212 = phi i8 [ 0, %98 ], [ %208, %207 ]
  %213 = phi i32 [ %15, %98 ], [ %209, %207 ]
  %214 = getelementptr inbounds %struct.key_vector, ptr %86, i32 0, i32 3
  store i8 %212, ptr %214, align 2
  %215 = load volatile ptr, ptr %99, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %267

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.key_vector, ptr %20, i32 0, i32 1
  %219 = load i8, ptr %218, align 4
  %220 = icmp ugt i8 %219, 31
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  br label %264

222:                                              ; preds = %217
  %223 = load i32, ptr %86, align 4
  %224 = zext i8 %219 to i32
  %225 = load i32, ptr %20, align 4
  %226 = xor i32 %225, %223
  %227 = lshr i32 %226, %224
  %228 = getelementptr [0 x ptr], ptr %21, i32 0, i32 %227
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.key_vector, ptr %20, i32 0, i32 2
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  %233 = shl nuw i32 1, %232
  %234 = and i32 %233, -2
  %235 = icmp ugt i32 %234, %227
  br i1 %235, label %237, label %236, !prof !13

236:                                              ; preds = %222
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

237:                                              ; preds = %222
  %238 = icmp eq ptr %229, null
  br i1 %238, label %263, label %239

239:                                              ; preds = %237
  %240 = getelementptr i8, ptr %20, i32 -12
  %241 = load i32, ptr %240, align 4
  %242 = add i32 %241, 1
  store i32 %242, ptr %240, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %239
  %245 = getelementptr i8, ptr %20, i32 -8
  %246 = load i32, ptr %245, align 4
  %247 = add i32 %246, 1
  store i32 %247, ptr %245, align 4
  br label %248

248:                                              ; preds = %244, %239
  %249 = getelementptr inbounds %struct.key_vector, ptr %229, i32 0, i32 1
  %250 = load i8, ptr %249, align 4
  %251 = zext i8 %250 to i32
  %252 = getelementptr inbounds %struct.key_vector, ptr %229, i32 0, i32 2
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i32
  %255 = add nuw nsw i32 %254, %251
  %256 = icmp ne i32 %255, %224
  %257 = icmp eq i8 %253, 0
  %258 = select i1 %256, i1 true, i1 %257
  br i1 %258, label %263, label %259

259:                                              ; preds = %248
  %260 = getelementptr i8, ptr %20, i32 -8
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %261, -1
  store i32 %262, ptr %260, align 4
  br label %263

263:                                              ; preds = %259, %248, %237
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  br label %264

264:                                              ; preds = %263, %221
  %265 = phi ptr [ %21, %221 ], [ %228, %263 ]
  store volatile ptr null, ptr %265, align 4
  %266 = getelementptr i8, ptr %86, i32 -20
  call void @call_rcu(ptr noundef %266, ptr noundef nonnull @__node_free_rcu) #17
  br label %267

267:                                              ; preds = %264, %211
  br label %14

268:                                              ; preds = %25
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_info_notify_update(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %4 = load ptr, ptr %3, align 64
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %84, label %10

7:                                                ; preds = %23
  %8 = load volatile ptr, ptr %11, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %82, label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %8, %7 ], [ %5, %2 ]
  %12 = getelementptr inbounds %struct.fib_table, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fib_table, ptr %11, i32 0, i32 1
  br label %15

15:                                               ; preds = %50, %10
  %16 = phi i32 [ 1, %10 ], [ %51, %50 ]
  %17 = phi ptr [ %13, %10 ], [ %52, %50 ]
  %18 = getelementptr inbounds %struct.key_vector, ptr %17, i32 0, i32 4
  br label %19

19:                                               ; preds = %57, %15
  %20 = phi i32 [ %16, %15 ], [ %21, %57 ]
  %21 = add i32 %20, -1
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.key_vector, ptr %17, i32 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = icmp ugt i8 %25, 31
  br i1 %26, label %7, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %17, i32 -4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.key_vector, ptr %29, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 32
  br i1 %32, label %50, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %17, align 4
  %35 = zext i8 %31 to i32
  %36 = load i32, ptr %29, align 4
  %37 = xor i32 %36, %34
  %38 = lshr i32 %37, %35
  br label %50

39:                                               ; preds = %19
  %40 = getelementptr [0 x ptr], ptr %18, i32 0, i32 %21
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.key_vector, ptr %41, i32 0, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = zext i8 %45 to i32
  %49 = shl nuw i32 1, %48
  br label %50

50:                                               ; preds = %47, %33, %27
  %51 = phi i32 [ 0, %27 ], [ %38, %33 ], [ %49, %47 ]
  %52 = phi ptr [ %29, %27 ], [ %29, %33 ], [ %41, %47 ]
  br label %15

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.key_vector, ptr %41, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %79, %53, %39
  br label %19

58:                                               ; preds = %79, %53
  %59 = phi ptr [ %80, %79 ], [ %55, %53 ]
  %60 = getelementptr inbounds %struct.fib_alias, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.fib_info, ptr %61, i32 0, i32 17
  %65 = load i8, ptr %64, align 1, !range !24
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.fib_alias, ptr %59, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %14, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, ptr %41, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #17
  %75 = getelementptr inbounds %struct.fib_alias, ptr %59, i32 0, i32 5
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 32, %77
  tail call void @rtmsg_fib(i32 noundef 24, i32 noundef %74, ptr noundef nonnull %59, i32 noundef %78, i32 noundef %69, ptr noundef %1, i32 noundef 256) #17
  br label %79

79:                                               ; preds = %72, %67, %63, %58
  %80 = load ptr, ptr %59, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %57, label %58

82:                                               ; preds = %7
  %83 = load ptr, ptr %3, align 64
  br label %84

84:                                               ; preds = %82, %2
  %85 = phi ptr [ %83, %82 ], [ %4, %2 ]
  %86 = getelementptr %struct.hlist_head, ptr %85, i32 1
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %164, label %89

89:                                               ; preds = %161, %84
  %90 = phi ptr [ %162, %161 ], [ %87, %84 ]
  %91 = getelementptr inbounds %struct.fib_table, ptr %90, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.fib_table, ptr %90, i32 0, i32 1
  br label %94

94:                                               ; preds = %113, %89
  %95 = phi i32 [ 1, %89 ], [ %114, %113 ]
  %96 = phi ptr [ %92, %89 ], [ %115, %113 ]
  %97 = getelementptr inbounds %struct.key_vector, ptr %96, i32 0, i32 4
  br label %98

98:                                               ; preds = %120, %94
  %99 = phi i32 [ %95, %94 ], [ %100, %120 ]
  %100 = add i32 %99, -1
  %101 = icmp eq i32 %99, 0
  br i1 %101, label %145, label %102

102:                                              ; preds = %98
  %103 = getelementptr [0 x ptr], ptr %97, i32 0, i32 %100
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %120, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.key_vector, ptr %104, i32 0, i32 2
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = zext i8 %108 to i32
  %112 = shl nuw i32 1, %111
  br label %113

113:                                              ; preds = %155, %149, %110
  %114 = phi i32 [ 0, %149 ], [ %160, %155 ], [ %112, %110 ]
  %115 = phi ptr [ %151, %149 ], [ %151, %155 ], [ %104, %110 ]
  br label %94

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.key_vector, ptr %104, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %142, %116, %102
  br label %98

121:                                              ; preds = %142, %116
  %122 = phi ptr [ %143, %142 ], [ %118, %116 ]
  %123 = getelementptr inbounds %struct.fib_alias, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %142, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.fib_info, ptr %124, i32 0, i32 17
  %128 = load i8, ptr %127, align 1, !range !24
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %142, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.fib_alias, ptr %122, i32 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr %93, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, ptr %104, align 4
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #17
  %138 = getelementptr inbounds %struct.fib_alias, ptr %122, i32 0, i32 5
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = sub nsw i32 32, %140
  tail call void @rtmsg_fib(i32 noundef 24, i32 noundef %137, ptr noundef nonnull %122, i32 noundef %141, i32 noundef %132, ptr noundef %1, i32 noundef 256) #17
  br label %142

142:                                              ; preds = %135, %130, %126, %121
  %143 = load ptr, ptr %122, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %120, label %121

145:                                              ; preds = %98
  %146 = getelementptr inbounds %struct.key_vector, ptr %96, i32 0, i32 1
  %147 = load i8, ptr %146, align 4
  %148 = icmp ugt i8 %147, 31
  br i1 %148, label %161, label %149

149:                                              ; preds = %145
  %150 = getelementptr i8, ptr %96, i32 -4
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.key_vector, ptr %151, i32 0, i32 1
  %153 = load i8, ptr %152, align 4
  %154 = icmp eq i8 %153, 32
  br i1 %154, label %113, label %155

155:                                              ; preds = %149
  %156 = load i32, ptr %96, align 4
  %157 = zext i8 %153 to i32
  %158 = load i32, ptr %151, align 4
  %159 = xor i32 %158, %156
  %160 = lshr i32 %159, %157
  br label %113

161:                                              ; preds = %145
  %162 = load volatile ptr, ptr %90, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %89

164:                                              ; preds = %161, %84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_notify(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.fib_entry_notifier_info, align 4
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %6 = getelementptr inbounds %struct.fib_notifier_info, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 3
  %10 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 4
  %11 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 5
  %12 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %4, i32 0, i32 6
  br label %13

13:                                               ; preds = %155, %3
  %14 = phi i32 [ 0, %3 ], [ %156, %155 ]
  %15 = load ptr, ptr %5, align 64
  %16 = getelementptr %struct.hlist_head, ptr %15, i32 %14
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %155, label %19

19:                                               ; preds = %152, %13
  %20 = phi ptr [ %153, %152 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.fib_table, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fib_table, ptr %20, i32 0, i32 1
  br label %24

24:                                               ; preds = %148, %19
  %25 = phi ptr [ %22, %19 ], [ %112, %148 ]
  %26 = phi i32 [ 0, %19 ], [ %150, %148 ]
  br label %27

27:                                               ; preds = %51, %24
  %28 = phi ptr [ %25, %24 ], [ %49, %51 ]
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, %26
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.key_vector, ptr %28, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 32
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = zext i8 %33 to i32
  %37 = xor i32 %29, %26
  %38 = lshr i32 %37, %36
  br label %39

39:                                               ; preds = %35, %31, %27
  %40 = phi i32 [ 0, %27 ], [ %38, %35 ], [ 0, %31 ]
  %41 = getelementptr inbounds %struct.key_vector, ptr %28, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = lshr i32 %40, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.key_vector, ptr %28, i32 0, i32 4
  %48 = getelementptr [0 x ptr], ptr %47, i32 0, i32 %40
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.key_vector, ptr %49, i32 0, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %27

55:                                               ; preds = %51
  %56 = add i32 %40, 1
  %57 = load i32, ptr %49, align 4
  %58 = icmp ult i32 %57, %26
  br i1 %58, label %61, label %111

59:                                               ; preds = %46
  %60 = add i32 %40, 1
  br label %61

61:                                               ; preds = %59, %55, %39
  %62 = phi i32 [ %56, %55 ], [ %60, %59 ], [ %40, %39 ]
  %63 = getelementptr inbounds %struct.key_vector, ptr %28, i32 0, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = icmp ult i8 %64, 32
  br i1 %65, label %66, label %152

66:                                               ; preds = %96, %61
  %67 = phi i8 [ %98, %96 ], [ %42, %61 ]
  %68 = phi ptr [ %94, %96 ], [ %28, %61 ]
  %69 = phi i32 [ %93, %96 ], [ %62, %61 ]
  %70 = getelementptr inbounds %struct.key_vector, ptr %68, i32 0, i32 4
  %71 = zext i8 %67 to i32
  br label %72

72:                                               ; preds = %99, %66
  %73 = phi i32 [ %100, %99 ], [ %69, %66 ]
  %74 = lshr i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %68, align 4
  %78 = getelementptr i8, ptr %68, i32 -4
  %79 = load volatile ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.key_vector, ptr %79, i32 0, i32 1
  %81 = load i8, ptr %80, align 4
  %82 = icmp eq i8 %81, 32
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = zext i8 %81 to i32
  %85 = load i32, ptr %79, align 4
  %86 = xor i32 %85, %77
  %87 = lshr i32 %86, %84
  br label %88

88:                                               ; preds = %83, %76
  %89 = phi i32 [ %87, %83 ], [ 0, %76 ]
  %90 = add i32 %89, 1
  br label %91

91:                                               ; preds = %108, %88
  %92 = phi i8 [ %110, %108 ], [ %81, %88 ]
  %93 = phi i32 [ 0, %108 ], [ %90, %88 ]
  %94 = phi ptr [ %102, %108 ], [ %79, %88 ]
  %95 = icmp ult i8 %92, 32
  br i1 %95, label %96, label %152

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.key_vector, ptr %94, i32 0, i32 2
  %98 = load i8, ptr %97, align 1
  br label %66

99:                                               ; preds = %72
  %100 = add i32 %73, 1
  %101 = getelementptr [0 x ptr], ptr %70, i32 0, i32 %73
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %72, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.key_vector, ptr %102, i32 0, i32 2
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.key_vector, ptr %102, i32 0, i32 1
  %110 = load i8, ptr %109, align 4
  br label %91

111:                                              ; preds = %104, %55
  %112 = phi ptr [ %28, %55 ], [ %68, %104 ]
  %113 = phi ptr [ %49, %55 ], [ %102, %104 ]
  %114 = getelementptr inbounds %struct.key_vector, ptr %113, i32 0, i32 4
  %115 = load volatile ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %148, label %117

117:                                              ; preds = %144, %111
  %118 = phi ptr [ %146, %144 ], [ %115, %111 ]
  %119 = phi i32 [ %145, %144 ], [ -1, %111 ]
  %120 = getelementptr inbounds %struct.fib_alias, ptr %118, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %144, label %123

123:                                              ; preds = %117
  %124 = load i32, ptr %23, align 4
  %125 = getelementptr inbounds %struct.fib_alias, ptr %118, i32 0, i32 6
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.fib_alias, ptr %118, i32 0, i32 5
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %119, %131
  br i1 %132, label %144, label %133

133:                                              ; preds = %128
  %134 = load i32, ptr %113, align 4
  %135 = sub nsw i32 32, %131
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false) #17
  store ptr %2, ptr %6, align 4
  store i32 %134, ptr %7, align 4
  store i32 %135, ptr %8, align 4
  %136 = load ptr, ptr %120, align 4
  store ptr %136, ptr %9, align 4
  %137 = getelementptr inbounds %struct.fib_alias, ptr %118, i32 0, i32 2
  %138 = load i8, ptr %137, align 4
  store i8 %138, ptr %10, align 4
  %139 = getelementptr inbounds %struct.fib_alias, ptr %118, i32 0, i32 3
  %140 = load i8, ptr %139, align 1
  store i8 %140, ptr %11, align 1
  %141 = load i32, ptr %125, align 4
  store i32 %141, ptr %12, align 4
  %142 = call i32 @call_fib4_notifier(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #17
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %133, %128, %123, %117
  %145 = phi i32 [ %119, %128 ], [ %119, %123 ], [ %119, %117 ], [ %131, %133 ]
  %146 = load volatile ptr, ptr %118, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %117

148:                                              ; preds = %144, %111
  %149 = load i32, ptr %113, align 4
  %150 = add i32 %149, 1
  %151 = icmp eq i32 %149, -1
  br i1 %151, label %152, label %24

152:                                              ; preds = %148, %91, %61
  %153 = load volatile ptr, ptr %20, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %19

155:                                              ; preds = %152, %13
  %156 = add nuw nsw i32 %14, 1
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %158, label %13

158:                                              ; preds = %155, %133
  %159 = phi i32 [ %142, %133 ], [ 0, %155 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_free_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %2, ptr noundef nonnull @__trie_free_rcu) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__trie_free_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void @kfree(ptr noundef %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_table_dump(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib_rt_info, align 4
  %7 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, 0
  %12 = icmp ne i32 %10, 0
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fib_dump_filter, ptr %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.fib_dump_filter, ptr %3, i32 0, i32 3
  %19 = getelementptr inbounds %struct.fib_dump_filter, ptr %3, i32 0, i32 2
  %20 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 4
  %21 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 5
  %22 = getelementptr inbounds %struct.fib_table, ptr %0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.fib_dump_filter, ptr %3, i32 0, i32 5
  %24 = getelementptr inbounds %struct.fib_dump_filter, ptr %3, i32 0, i32 4
  %25 = getelementptr inbounds %struct.fib_dump_filter, ptr %3, i32 0, i32 7
  %26 = getelementptr inbounds %struct.fib_rt_info, ptr %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.fib_rt_info, ptr %6, i32 0, i32 2
  %28 = getelementptr inbounds %struct.fib_rt_info, ptr %6, i32 0, i32 3
  %29 = getelementptr inbounds %struct.fib_rt_info, ptr %6, i32 0, i32 4
  %30 = getelementptr inbounds %struct.fib_rt_info, ptr %6, i32 0, i32 5
  %31 = getelementptr inbounds %struct.fib_rt_info, ptr %6, i32 0, i32 6
  %32 = getelementptr inbounds %struct.netlink_callback, ptr %2, i32 0, i32 1
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  br label %37

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  br label %251

37:                                               ; preds = %241, %14
  %38 = phi ptr [ %129, %241 ], [ %16, %14 ]
  %39 = phi i32 [ %242, %241 ], [ %8, %14 ]
  %40 = phi i32 [ %244, %241 ], [ %10, %14 ]
  br label %41

41:                                               ; preds = %65, %37
  %42 = phi ptr [ %38, %37 ], [ %63, %65 ]
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %43, %40
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.key_vector, ptr %42, i32 0, i32 1
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 32
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = zext i8 %47 to i32
  %51 = xor i32 %43, %40
  %52 = lshr i32 %51, %50
  br label %53

53:                                               ; preds = %49, %45, %41
  %54 = phi i32 [ 0, %41 ], [ %52, %49 ], [ 0, %45 ]
  %55 = getelementptr inbounds %struct.key_vector, ptr %42, i32 0, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = lshr i32 %54, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.key_vector, ptr %42, i32 0, i32 4
  %62 = getelementptr [0 x ptr], ptr %61, i32 0, i32 %54
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.key_vector, ptr %63, i32 0, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %41

69:                                               ; preds = %65
  %70 = add i32 %54, 1
  %71 = load i32, ptr %63, align 4
  %72 = icmp ult i32 %71, %40
  br i1 %72, label %75, label %127

73:                                               ; preds = %60
  %74 = add i32 %54, 1
  br label %75

75:                                               ; preds = %73, %69, %53
  %76 = phi i32 [ %70, %69 ], [ %74, %73 ], [ %54, %53 ]
  %77 = getelementptr inbounds %struct.key_vector, ptr %42, i32 0, i32 1
  %78 = load i8, ptr %77, align 4
  %79 = icmp ult i8 %78, 32
  br i1 %79, label %80, label %247

80:                                               ; preds = %110, %75
  %81 = phi i8 [ %112, %110 ], [ %56, %75 ]
  %82 = phi ptr [ %108, %110 ], [ %42, %75 ]
  %83 = phi i32 [ %107, %110 ], [ %76, %75 ]
  %84 = getelementptr inbounds %struct.key_vector, ptr %82, i32 0, i32 4
  %85 = zext i8 %81 to i32
  br label %86

86:                                               ; preds = %113, %80
  %87 = phi i32 [ %114, %113 ], [ %83, %80 ]
  %88 = lshr i32 %87, %85
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %113, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %82, align 4
  %92 = getelementptr i8, ptr %82, i32 -4
  %93 = load volatile ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.key_vector, ptr %93, i32 0, i32 1
  %95 = load i8, ptr %94, align 4
  %96 = icmp eq i8 %95, 32
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = zext i8 %95 to i32
  %99 = load i32, ptr %93, align 4
  %100 = xor i32 %99, %91
  %101 = lshr i32 %100, %98
  br label %102

102:                                              ; preds = %97, %90
  %103 = phi i32 [ %101, %97 ], [ 0, %90 ]
  %104 = add i32 %103, 1
  br label %105

105:                                              ; preds = %122, %102
  %106 = phi i8 [ %124, %122 ], [ %95, %102 ]
  %107 = phi i32 [ 0, %122 ], [ %104, %102 ]
  %108 = phi ptr [ %116, %122 ], [ %93, %102 ]
  %109 = icmp ult i8 %106, 32
  br i1 %109, label %110, label %247

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.key_vector, ptr %108, i32 0, i32 2
  %112 = load i8, ptr %111, align 1
  br label %80

113:                                              ; preds = %86
  %114 = add i32 %87, 1
  %115 = getelementptr [0 x ptr], ptr %84, i32 0, i32 %87
  %116 = load volatile ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %86, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.key_vector, ptr %116, i32 0, i32 2
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.key_vector, ptr %116, i32 0, i32 1
  %124 = load i8, ptr %123, align 4
  br label %105

125:                                              ; preds = %118
  %126 = load i32, ptr %116, align 4
  br label %127

127:                                              ; preds = %125, %69
  %128 = phi i32 [ %71, %69 ], [ %126, %125 ]
  %129 = phi ptr [ %42, %69 ], [ %82, %125 ]
  %130 = phi ptr [ %63, %69 ], [ %116, %125 ]
  %131 = call i32 @llvm.bswap.i32(i32 %128) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !23
  %132 = load i8, ptr %17, align 4, !range !24
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load i8, ptr %18, align 2, !range !24
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i8, ptr %19, align 1, !range !24
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %134, %127
  br label %141

141:                                              ; preds = %140, %137
  %142 = phi i32 [ 34, %140 ], [ 2, %137 ]
  %143 = load i32, ptr %20, align 4
  %144 = load i32, ptr %21, align 4
  %145 = getelementptr inbounds %struct.key_vector, ptr %130, i32 0, i32 4
  %146 = load volatile ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %235, label %148

148:                                              ; preds = %141
  %149 = icmp eq i32 %144, 0
  br label %150

150:                                              ; preds = %228, %148
  %151 = phi ptr [ %146, %148 ], [ %230, %228 ]
  %152 = phi i32 [ 0, %148 ], [ %229, %228 ]
  %153 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = icmp slt i32 %152, %143
  br i1 %155, label %228, label %156

156:                                              ; preds = %150
  store i32 0, ptr %5, align 4
  %157 = load i32, ptr %22, align 4
  %158 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %228

161:                                              ; preds = %156
  %162 = load i8, ptr %17, align 4, !range !24
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %183, label %164

164:                                              ; preds = %161
  %165 = load i8, ptr %23, align 4
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 3
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, %165
  br i1 %170, label %171, label %228

171:                                              ; preds = %167, %164
  %172 = load i8, ptr %24, align 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.fib_info, ptr %154, i32 0, i32 8
  %176 = load i8, ptr %175, align 1
  %177 = icmp eq i8 %176, %172
  br i1 %177, label %178, label %228

178:                                              ; preds = %174, %171
  %179 = load ptr, ptr %25, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = call zeroext i1 @fib_info_nh_uses_dev(ptr noundef %154, ptr noundef nonnull %179) #17
  br i1 %182, label %183, label %228

183:                                              ; preds = %181, %178, %161
  %184 = load i8, ptr %19, align 1, !range !24
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %221, label %186

186:                                              ; preds = %183
  br i1 %149, label %187, label %218

187:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #17
  store i64 0, ptr %28, align 4, !annotation !23
  store ptr %154, ptr %6, align 4
  %188 = load i32, ptr %22, align 4
  store i32 %188, ptr %26, align 4
  store i32 %131, ptr %27, align 4
  %189 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 5
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = sub nsw i32 32, %191
  store i32 %192, ptr %28, align 4
  %193 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 2
  %194 = load i8, ptr %193, align 4
  store i8 %194, ptr %29, align 4
  %195 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 3
  %196 = load i8, ptr %195, align 1
  store i8 %196, ptr %30, align 1
  %197 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 8
  %198 = load volatile i8, ptr %197, align 2
  %199 = and i8 %198, 1
  %200 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 9
  %201 = load volatile i8, ptr %200, align 1
  %202 = shl i8 %201, 1
  %203 = and i8 %202, 2
  %204 = or i8 %203, %199
  %205 = getelementptr inbounds %struct.fib_alias, ptr %151, i32 0, i32 10
  %206 = load volatile i8, ptr %205, align 4
  %207 = shl i8 %206, 2
  %208 = and i8 %207, 4
  %209 = or i8 %204, %208
  store i8 %209, ptr %31, align 2
  %210 = load ptr, ptr %2, align 4
  %211 = getelementptr inbounds %struct.sk_buff, ptr %210, i32 0, i32 3, i32 12
  %212 = load i32, ptr %211, align 4
  %213 = load ptr, ptr %32, align 4
  %214 = getelementptr inbounds %struct.nlmsghdr, ptr %213, i32 0, i32 3
  %215 = load i32, ptr %214, align 4
  %216 = call i32 @fib_dump_info(ptr noundef %1, i32 noundef %212, i32 noundef %215, i32 noundef 24, ptr noundef nonnull %6, i32 noundef %142) #17
  %217 = icmp slt i32 %216, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #17
  br i1 %217, label %232, label %218

218:                                              ; preds = %187, %186
  %219 = load i32, ptr %5, align 4
  %220 = add i32 %219, 1
  store i32 %220, ptr %5, align 4
  br label %221

221:                                              ; preds = %218, %183
  %222 = load i8, ptr %18, align 2, !range !24
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = load i32, ptr %22, align 4
  %226 = call i32 @fib_dump_info_fnhe(ptr noundef %1, ptr noundef %2, i32 noundef %225, ptr noundef %154, ptr noundef nonnull %5, i32 noundef %144, i32 noundef %142) #17
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %224, %221, %181, %174, %167, %156, %150
  %229 = add i32 %152, 1
  %230 = load volatile ptr, ptr %151, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %235, label %150

232:                                              ; preds = %224, %187
  %233 = phi i32 [ %226, %224 ], [ %216, %187 ]
  store i32 %152, ptr %20, align 4
  %234 = load i32, ptr %5, align 4
  store i32 %234, ptr %21, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %239

235:                                              ; preds = %228, %141
  %236 = phi i32 [ 0, %141 ], [ %229, %228 ]
  store i32 %236, ptr %20, align 4
  %237 = load i32, ptr %33, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %235, %232
  %240 = phi i32 [ %233, %232 ], [ %237, %235 ]
  store i32 %40, ptr %9, align 4
  store i32 %39, ptr %7, align 4
  br label %251

241:                                              ; preds = %235
  %242 = add i32 %39, 1
  %243 = load i32, ptr %130, align 4
  %244 = add i32 %243, 1
  store i64 0, ptr %20, align 4
  %245 = load i32, ptr %130, align 4
  %246 = icmp ult i32 %244, %245
  br i1 %246, label %247, label %37

247:                                              ; preds = %241, %105, %75
  %248 = phi i32 [ %39, %105 ], [ %242, %241 ], [ %39, %75 ]
  %249 = phi i32 [ %40, %105 ], [ %244, %241 ], [ %40, %75 ]
  store i32 %249, ptr %9, align 4
  store i32 %248, ptr %7, align 4
  %250 = load i32, ptr %33, align 8
  br label %251

251:                                              ; preds = %247, %239, %34
  %252 = phi i32 [ %250, %247 ], [ %36, %34 ], [ %240, %239 ]
  ret i32 %252
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @fib_trie_init() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 36, i32 noundef 0, i32 noundef 262144, ptr noundef null) #17
  store ptr %1, ptr @fn_alias_kmem, align 4
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 0, i32 noundef 262144, ptr noundef null) #17
  store ptr %2, ptr @trie_leaf_kmem, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @fib_proc_init(ptr nocapture noundef readonly %0) local_unnamed_addr #9 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @fib_trie_seq_ops, i32 noundef 16, ptr noundef null) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %7, ptr noundef nonnull @fib_triestat_seq_show, ptr noundef null) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8
  %12 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %11, ptr noundef nonnull @fib_route_seq_ops, i32 noundef 24, ptr noundef null) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef %15) #17
  br label %16

16:                                               ; preds = %14, %6
  %17 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %17) #17
  br label %18

18:                                               ; preds = %16, %10, %1
  %19 = phi i32 [ 0, %10 ], [ -12, %1 ], [ -12, %16 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib_triestat_seq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.trie_stat, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef 32, i32 noundef 28) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !8
  %6 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 12
  %7 = getelementptr inbounds %struct.trie_stat, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.trie_stat, ptr %3, i32 0, i32 4
  %9 = getelementptr inbounds %struct.trie_stat, ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.trie_stat, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trie_stat, ptr %3, i32 0, i32 5
  br label %12

12:                                               ; preds = %186, %2
  %13 = phi i32 [ 0, %2 ], [ %188, %186 ]
  %14 = load ptr, ptr %6, align 64
  %15 = getelementptr %struct.hlist_head, ptr %14, i32 %13
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %186, label %18

18:                                               ; preds = %183, %12
  %19 = phi ptr [ %184, %183 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.fib_table, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %183, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.fib_table, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %28 [
    i32 255, label %26
    i32 254, label %27
  ]

26:                                               ; preds = %23
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #17
  br label %29

27:                                               ; preds = %23
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #17
  br label %29

28:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %25) #17
  br label %29

29:                                               ; preds = %28, %27, %26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(152) %3, i8 0, i32 152, i1 false) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !8
  %30 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 4
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %138

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.key_vector, ptr %31, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, ptr %21, ptr %31
  %39 = xor i1 %37, true
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %109, %34
  %42 = phi i32 [ 0, %34 ], [ %81, %109 ]
  %43 = phi i32 [ 0, %34 ], [ %82, %109 ]
  %44 = phi i32 [ 0, %34 ], [ %83, %109 ]
  %45 = phi i32 [ 0, %34 ], [ %84, %109 ]
  %46 = phi i32 [ 0, %34 ], [ %85, %109 ]
  %47 = phi i32 [ 0, %34 ], [ %86, %109 ]
  %48 = phi i8 [ %36, %34 ], [ %111, %109 ]
  %49 = phi ptr [ %31, %34 ], [ %107, %109 ]
  %50 = phi i32 [ %40, %34 ], [ %117, %109 ]
  %51 = phi i32 [ 0, %34 ], [ %114, %109 ]
  %52 = phi ptr [ %38, %34 ], [ %113, %109 ]
  %53 = icmp eq i8 %48, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %41
  %55 = add i32 %45, 1
  store i32 %55, ptr %9, align 4
  %56 = add i32 %44, %50
  store i32 %56, ptr %3, align 4
  %57 = tail call i32 @llvm.umax.i32(i32 %50, i32 %43)
  store i32 %57, ptr %10, align 4
  %58 = getelementptr inbounds %struct.key_vector, ptr %49, i32 0, i32 4
  %59 = load volatile ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %80, label %61

61:                                               ; preds = %61, %54
  %62 = phi i32 [ %64, %61 ], [ %42, %54 ]
  %63 = phi ptr [ %65, %61 ], [ %59, %54 ]
  %64 = add i32 %62, 1
  %65 = load volatile ptr, ptr %63, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %61

67:                                               ; preds = %41
  %68 = add i32 %47, 1
  store i32 %68, ptr %7, align 4
  %69 = icmp ult i8 %48, 32
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = zext i8 %48 to i32
  %72 = getelementptr %struct.trie_stat, ptr %3, i32 0, i32 6, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %70, %67
  %76 = getelementptr i8, ptr %49, i32 -12
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %46, %77
  store i32 %78, ptr %8, align 4
  br label %80

79:                                               ; preds = %61
  store i32 %64, ptr %11, align 4
  br label %80

80:                                               ; preds = %79, %75, %54
  %81 = phi i32 [ %64, %79 ], [ %42, %75 ], [ %42, %54 ]
  %82 = phi i32 [ %57, %79 ], [ %43, %75 ], [ %57, %54 ]
  %83 = phi i32 [ %56, %79 ], [ %44, %75 ], [ %56, %54 ]
  %84 = phi i32 [ %55, %79 ], [ %45, %75 ], [ %55, %54 ]
  %85 = phi i32 [ %46, %79 ], [ %78, %75 ], [ %46, %54 ]
  %86 = phi i32 [ %47, %79 ], [ %68, %75 ], [ %47, %54 ]
  %87 = getelementptr inbounds %struct.key_vector, ptr %52, i32 0, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = icmp ult i8 %88, 32
  br i1 %89, label %90, label %133

90:                                               ; preds = %125, %80
  %91 = phi i32 [ %131, %125 ], [ %50, %80 ]
  %92 = phi i32 [ %130, %125 ], [ %51, %80 ]
  %93 = phi ptr [ %121, %125 ], [ %52, %80 ]
  %94 = getelementptr inbounds %struct.key_vector, ptr %93, i32 0, i32 2
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, -2
  %99 = getelementptr inbounds %struct.key_vector, ptr %93, i32 0, i32 4
  %100 = tail call i32 @llvm.umax.i32(i32 %92, i32 %98) #17
  br label %101

101:                                              ; preds = %104, %90
  %102 = phi i32 [ %105, %104 ], [ %92, %90 ]
  %103 = icmp eq i32 %102, %100
  br i1 %103, label %118, label %104

104:                                              ; preds = %101
  %105 = add i32 %102, 1
  %106 = getelementptr [0 x ptr], ptr %99, i32 0, i32 %102
  %107 = load volatile ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %101, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.key_vector, ptr %107, i32 0, i32 2
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 0
  %113 = select i1 %112, ptr %93, ptr %107
  %114 = select i1 %112, i32 %105, i32 0
  %115 = xor i1 %112, true
  %116 = zext i1 %115 to i32
  %117 = add i32 %91, %116
  br label %41

118:                                              ; preds = %101
  %119 = load i32, ptr %93, align 4
  %120 = getelementptr i8, ptr %93, i32 -4
  %121 = load volatile ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.key_vector, ptr %121, i32 0, i32 1
  %123 = load i8, ptr %122, align 4
  %124 = icmp eq i8 %123, 32
  br i1 %124, label %133, label %125

125:                                              ; preds = %118
  %126 = zext i8 %123 to i32
  %127 = load i32, ptr %121, align 4
  %128 = xor i32 %127, %119
  %129 = lshr i32 %128, %126
  %130 = add i32 %129, 1
  %131 = add i32 %91, -1
  %132 = icmp ult i8 %123, 32
  br i1 %132, label %90, label %133

133:                                              ; preds = %125, %118, %80
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %134 = icmp eq i32 %84, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %133
  %136 = mul i32 %83, 100
  %137 = udiv i32 %136, %84
  br label %138

138:                                              ; preds = %135, %133, %33
  %139 = phi i32 [ %84, %135 ], [ 0, %133 ], [ 0, %33 ]
  %140 = phi i32 [ %82, %135 ], [ %82, %133 ], [ 0, %33 ]
  %141 = phi i32 [ %81, %135 ], [ %81, %133 ], [ 0, %33 ]
  %142 = phi i32 [ %86, %135 ], [ %86, %133 ], [ 0, %33 ]
  %143 = phi i32 [ %85, %135 ], [ %85, %133 ], [ 0, %33 ]
  %144 = phi i32 [ %137, %135 ], [ 0, %133 ], [ 0, %33 ]
  %145 = freeze i32 %144
  %146 = udiv i32 %145, 100
  %147 = mul i32 %146, 100
  %148 = sub i32 %145, %147
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %146, i32 noundef %148) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %140) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %139) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %141) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %142) #17
  br label %149

149:                                              ; preds = %152, %138
  %150 = phi i32 [ 32, %138 ], [ %153, %152 ]
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %172, label %152

152:                                              ; preds = %149
  %153 = add nsw i32 %150, -1
  %154 = getelementptr %struct.trie_stat, ptr %3, i32 0, i32 6, i32 %153
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %149, label %157

157:                                              ; preds = %152
  %158 = icmp ugt i32 %150, 1
  br i1 %158, label %159, label %172

159:                                              ; preds = %168, %157
  %160 = phi i32 [ %169, %168 ], [ 0, %157 ]
  %161 = phi i32 [ %170, %168 ], [ 1, %157 ]
  %162 = getelementptr %struct.trie_stat, ptr %3, i32 0, i32 6, i32 %161
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %159
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %161, i32 noundef %163) #17
  %166 = shl i32 %163, %161
  %167 = add i32 %166, %160
  br label %168

168:                                              ; preds = %165, %159
  %169 = phi i32 [ %167, %165 ], [ %160, %159 ]
  %170 = add nuw nsw i32 %161, 1
  %171 = icmp eq i32 %170, %150
  br i1 %171, label %172, label %159

172:                                              ; preds = %168, %157, %149
  %173 = phi i32 [ 0, %157 ], [ %169, %168 ], [ 0, %149 ]
  %174 = shl i32 %139, 5
  %175 = mul i32 %141, 36
  %176 = mul i32 %142, 28
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %173) #17
  %177 = shl i32 %173, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %143) #17
  %178 = add i32 %174, 1023
  %179 = add i32 %178, %175
  %180 = add i32 %179, %176
  %181 = add i32 %180, %177
  %182 = lshr i32 %181, 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %182) #17
  br label %183

183:                                              ; preds = %172, %18
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #17
  %184 = load volatile ptr, ptr %19, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %18

186:                                              ; preds = %183, %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %187 = tail call i32 @__cond_resched() #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !8
  %188 = add nuw nsw i32 %13, 1
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %12

190:                                              ; preds = %186
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_proc_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #10 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %3) #17
  %4 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef %4) #17
  %5 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib4_notifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__alias_free_mem(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = load ptr, ptr @fn_alias_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_child(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 4
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = and i32 %10, -2
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %14, label %13, !prof !13

13:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

14:                                               ; preds = %3
  %15 = icmp eq ptr %2, null
  %16 = icmp ne ptr %6, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 -12
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %0, i32 -8
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %18, %14
  %28 = select i1 %15, i1 true, i1 %16
  br i1 %28, label %39, label %29

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %0, i32 -12
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %0, i32 -8
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = add i32 %31, -1
  store i32 %38, ptr %30, align 4
  br label %56

39:                                               ; preds = %27
  %40 = icmp eq ptr %6, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.key_vector, ptr %6, i32 0, i32 1
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.key_vector, ptr %6, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = add nuw nsw i32 %47, %44
  %49 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 1
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = icmp ne i8 %46, 0
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %53, %41, %39, %37
  %57 = phi i32 [ 0, %41 ], [ 0, %39 ], [ %55, %53 ], [ 0, %37 ]
  br i1 %15, label %72, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.key_vector, ptr %2, i32 0, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds %struct.key_vector, ptr %2, i32 0, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %64, %61
  %66 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %65, %68
  %70 = icmp ne i8 %63, 0
  %71 = select i1 %69, i1 %70, i1 false
  br label %72

72:                                               ; preds = %58, %56
  %73 = phi i1 [ false, %56 ], [ %71, %58 ]
  %74 = icmp eq i32 %57, 0
  %75 = select i1 %74, i1 true, i1 %73
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = select i1 %74, i1 %73, i1 false
  br i1 %77, label %78, label %83

78:                                               ; preds = %76, %72
  %79 = phi i32 [ -1, %72 ], [ 1, %76 ]
  %80 = getelementptr i8, ptr %0, i32 -8
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %79
  store i32 %82, ptr %80, align 4
  br label %83

83:                                               ; preds = %78, %76
  br i1 %15, label %91, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 3
  %86 = load i8, ptr %85, align 2
  %87 = getelementptr inbounds %struct.key_vector, ptr %2, i32 0, i32 3
  %88 = load i8, ptr %87, align 2
  %89 = icmp ult i8 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i8 %88, ptr %85, align 2
  br label %91

91:                                               ; preds = %90, %84, %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  store volatile ptr %2, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_fib_table_lookup(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @replace(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 -4
  store volatile ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.key_vector, ptr %5, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp ugt i8 %8, 31
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %11 = getelementptr inbounds %struct.key_vector, ptr %5, i32 0, i32 4
  store volatile ptr %1, ptr %11, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load i32, ptr %1, align 4
  %14 = zext i8 %8 to i32
  %15 = load i32, ptr %5, align 4
  %16 = xor i32 %15, %13
  %17 = lshr i32 %16, %14
  tail call fastcc void @put_child(ptr noundef %5, i32 noundef %17, ptr noundef %1) #17
  br label %18

18:                                               ; preds = %12, %10
  tail call fastcc void @update_children(ptr noundef %1)
  %19 = icmp eq ptr %3, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %32, %20 ], [ %0, %18 ]
  %22 = phi ptr [ %23, %20 ], [ %3, %18 ]
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 4, %26
  %28 = load i32, ptr @tnode_free_size, align 4
  %29 = add i32 %28, 28
  %30 = add i32 %29, %27
  store i32 %30, ptr @tnode_free_size, align 4
  %31 = getelementptr i8, ptr %21, i32 -20
  tail call void @call_rcu(ptr noundef %31, ptr noundef nonnull @__node_free_rcu) #17
  %32 = getelementptr inbounds %struct.tnode, ptr %23, i32 0, i32 4
  %33 = icmp eq ptr %23, null
  br i1 %33, label %34, label %20

34:                                               ; preds = %20, %18
  %35 = load i32, ptr @tnode_free_size, align 4
  %36 = load i32, ptr @sysctl_fib_sync_mem, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, ptr @tnode_free_size, align 4
  tail call void @synchronize_rcu() #17
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, -2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %73, label %46

46:                                               ; preds = %70, %39
  %47 = phi ptr [ %71, %70 ], [ %1, %39 ]
  %48 = phi i32 [ %50, %70 ], [ %44, %39 ]
  %49 = getelementptr inbounds %struct.key_vector, ptr %47, i32 0, i32 4
  %50 = add i32 %48, -1
  %51 = getelementptr [0 x ptr], ptr %49, i32 0, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.key_vector, ptr %52, i32 0, i32 1
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.key_vector, ptr %52, i32 0, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %60, %57
  %62 = getelementptr inbounds %struct.key_vector, ptr %47, i32 0, i32 1
  %63 = load i8, ptr %62, align 4
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %61, %64
  %66 = icmp eq i8 %59, 0
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %54
  %69 = tail call fastcc ptr @resize(ptr noundef nonnull %52)
  br label %70

70:                                               ; preds = %68, %54, %46
  %71 = phi ptr [ %69, %68 ], [ %47, %54 ], [ %47, %46 ]
  %72 = icmp eq i32 %50, 0
  br i1 %72, label %73, label %46

73:                                               ; preds = %70, %39
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_children(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.key_vector, ptr %0, i32 0, i32 4
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi i32 [ %6, %8 ], [ %12, %22 ]
  %12 = add i32 %11, -1
  %13 = getelementptr [0 x ptr], ptr %9, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %14, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call fastcc void @update_children(ptr noundef nonnull %14)
  br label %22

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  store volatile ptr %0, ptr %17, align 4
  br label %22

22:                                               ; preds = %21, %20, %10
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %24, label %10

24:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib4_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_info_nh_uses_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_dump_info_fnhe(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fib_trie_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !8
  %3 = load i64, ptr %1, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fib_trie_iter, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fib_trie_iter, ptr %5, i32 0, i32 3
  %8 = getelementptr inbounds %struct.fib_trie_iter, ptr %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.fib_trie_iter, ptr %5, i32 0, i32 1
  br label %10

10:                                               ; preds = %101, %2
  %11 = phi i64 [ 0, %2 ], [ %102, %101 ]
  %12 = phi i32 [ 0, %2 ], [ %103, %101 ]
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %14 = getelementptr %struct.hlist_head, ptr %13, i32 %12
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %101, label %21

17:                                               ; preds = %92, %27, %21
  %18 = phi i64 [ %44, %92 ], [ %23, %21 ], [ %23, %27 ]
  %19 = load volatile ptr, ptr %22, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %101, label %21

21:                                               ; preds = %17, %10
  %22 = phi ptr [ %19, %17 ], [ %15, %10 ]
  %23 = phi i64 [ %18, %17 ], [ %11, %10 ]
  %24 = getelementptr inbounds %struct.fib_table, ptr %22, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %17, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.key_vector, ptr %25, i32 0, i32 4
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %17, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.key_vector, ptr %29, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, ptr %25, ptr %29
  %36 = xor i1 %34, true
  %37 = zext i1 %36 to i32
  store ptr %35, ptr %6, align 4
  store i32 0, ptr %7, align 4
  store i32 %37, ptr %8, align 4
  %38 = icmp eq i64 %23, %3
  br i1 %38, label %99, label %39

39:                                               ; preds = %94, %31
  %40 = phi i32 [ %95, %94 ], [ %37, %31 ]
  %41 = phi i32 [ %96, %94 ], [ 0, %31 ]
  %42 = phi ptr [ %97, %94 ], [ %35, %31 ]
  %43 = phi i64 [ %44, %94 ], [ %23, %31 ]
  %44 = add i64 %43, 1
  %45 = getelementptr inbounds %struct.key_vector, ptr %42, i32 0, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = icmp ult i8 %46, 32
  br i1 %47, label %48, label %92

48:                                               ; preds = %86, %39
  %49 = phi i32 [ %89, %86 ], [ %40, %39 ]
  %50 = phi i32 [ %88, %86 ], [ %41, %39 ]
  %51 = phi ptr [ %77, %86 ], [ %42, %39 ]
  %52 = getelementptr inbounds %struct.key_vector, ptr %51, i32 0, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, -2
  %57 = getelementptr inbounds %struct.key_vector, ptr %51, i32 0, i32 4
  %58 = tail call i32 @llvm.umax.i32(i32 %50, i32 %56) #17
  br label %59

59:                                               ; preds = %62, %48
  %60 = phi i32 [ %63, %62 ], [ %50, %48 ]
  %61 = icmp eq i32 %60, %58
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = add i32 %60, 1
  %64 = getelementptr [0 x ptr], ptr %57, i32 0, i32 %60
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %59, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.key_vector, ptr %65, i32 0, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store ptr %51, ptr %6, align 4
  store i32 %63, ptr %7, align 4
  br label %94

72:                                               ; preds = %67
  store ptr %65, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %73 = add i32 %49, 1
  store i32 %73, ptr %8, align 4
  br label %94

74:                                               ; preds = %59
  %75 = load i32, ptr %51, align 4
  %76 = getelementptr i8, ptr %51, i32 -4
  %77 = load volatile ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.key_vector, ptr %77, i32 0, i32 1
  %79 = load i8, ptr %78, align 4
  %80 = icmp eq i8 %79, 32
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = zext i8 %79 to i32
  %83 = load i32, ptr %77, align 4
  %84 = xor i32 %83, %75
  %85 = lshr i32 %84, %82
  br label %86

86:                                               ; preds = %81, %74
  %87 = phi i32 [ %85, %81 ], [ 0, %74 ]
  %88 = add i32 %87, 1
  %89 = add i32 %49, -1
  store i32 %89, ptr %8, align 4
  %90 = load i8, ptr %78, align 4
  %91 = icmp ult i8 %90, 32
  br i1 %91, label %48, label %92

92:                                               ; preds = %86, %39
  %93 = phi ptr [ %77, %86 ], [ %42, %39 ]
  store ptr %93, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %17

94:                                               ; preds = %72, %71
  %95 = phi i32 [ %73, %72 ], [ %49, %71 ]
  %96 = phi i32 [ 0, %72 ], [ %63, %71 ]
  %97 = phi ptr [ %65, %72 ], [ %51, %71 ]
  %98 = icmp eq i64 %44, %3
  br i1 %98, label %99, label %39

99:                                               ; preds = %94, %31
  %100 = phi ptr [ %65, %94 ], [ %29, %31 ]
  store ptr %22, ptr %9, align 4
  br label %105

101:                                              ; preds = %17, %10
  %102 = phi i64 [ %11, %10 ], [ %18, %17 ]
  %103 = add nuw nsw i32 %12, 1
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %10

105:                                              ; preds = %101, %99
  %106 = phi ptr [ %100, %99 ], [ null, %101 ]
  ret ptr %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fib_trie_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fib_trie_seq_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #14 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fib_trie_iter, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i64, ptr %2, align 8
  %9 = add i64 %8, 1
  store i64 %9, ptr %2, align 8
  %10 = getelementptr inbounds %struct.fib_trie_iter, ptr %5, i32 0, i32 3
  %11 = getelementptr inbounds %struct.fib_trie_iter, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.key_vector, ptr %12, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp ult i8 %14, 32
  br i1 %15, label %16, label %64

16:                                               ; preds = %3
  %17 = load i32, ptr %10, align 4
  %18 = getelementptr inbounds %struct.fib_trie_iter, ptr %5, i32 0, i32 4
  br label %19

19:                                               ; preds = %57, %16
  %20 = phi i32 [ %17, %16 ], [ %59, %57 ]
  %21 = phi ptr [ %12, %16 ], [ %48, %57 ]
  %22 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, -2
  %27 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 4
  %28 = tail call i32 @llvm.umax.i32(i32 %20, i32 %26) #17
  br label %29

29:                                               ; preds = %32, %19
  %30 = phi i32 [ %33, %32 ], [ %20, %19 ]
  %31 = icmp eq i32 %30, %28
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = add i32 %30, 1
  %34 = getelementptr [0 x ptr], ptr %27, i32 0, i32 %30
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %29, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.key_vector, ptr %35, i32 0, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store ptr %21, ptr %11, align 4
  store i32 %33, ptr %10, align 4
  br label %120

42:                                               ; preds = %37
  store ptr %35, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %43 = load i32, ptr %18, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %18, align 4
  br label %120

45:                                               ; preds = %29
  %46 = load i32, ptr %21, align 4
  %47 = getelementptr i8, ptr %21, i32 -4
  %48 = load volatile ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.key_vector, ptr %48, i32 0, i32 1
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 32
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = zext i8 %50 to i32
  %54 = load i32, ptr %48, align 4
  %55 = xor i32 %54, %46
  %56 = lshr i32 %55, %53
  br label %57

57:                                               ; preds = %52, %45
  %58 = phi i32 [ %56, %52 ], [ 0, %45 ]
  %59 = add i32 %58, 1
  %60 = load i32, ptr %18, align 4
  %61 = add i32 %60, -1
  store i32 %61, ptr %18, align 4
  %62 = load i8, ptr %49, align 4
  %63 = icmp ult i8 %62, 32
  br i1 %63, label %19, label %64

64:                                               ; preds = %57, %3
  %65 = phi ptr [ %12, %3 ], [ %48, %57 ]
  store ptr %65, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %66 = getelementptr inbounds %struct.fib_table, ptr %7, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = load volatile ptr, ptr %7, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %92, %64
  %72 = icmp eq i32 %68, 0
  br i1 %72, label %73, label %120

73:                                               ; preds = %71
  %74 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %75 = getelementptr %struct.hlist_head, ptr %74, i32 1
  %76 = load volatile ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %120, label %95

78:                                               ; preds = %92, %64
  %79 = phi ptr [ %93, %92 ], [ %69, %64 ]
  %80 = getelementptr inbounds %struct.fib_table, ptr %79, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.key_vector, ptr %81, i32 0, i32 4
  %85 = load volatile ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.key_vector, ptr %85, i32 0, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %89, 0
  %91 = select i1 %90, ptr %81, ptr %85
  br label %112

92:                                               ; preds = %83, %78
  %93 = load volatile ptr, ptr %79, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %71, label %78

95:                                               ; preds = %109, %73
  %96 = phi ptr [ %110, %109 ], [ %76, %73 ]
  %97 = getelementptr inbounds %struct.fib_table, ptr %96, i32 0, i32 4
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %109, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.key_vector, ptr %98, i32 0, i32 4
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.key_vector, ptr %102, i32 0, i32 2
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, ptr %98, ptr %102
  br label %112

109:                                              ; preds = %100, %95
  %110 = load volatile ptr, ptr %96, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %120, label %95

112:                                              ; preds = %104, %87
  %113 = phi i1 [ %107, %104 ], [ %90, %87 ]
  %114 = phi ptr [ %108, %104 ], [ %91, %87 ]
  %115 = phi ptr [ %102, %104 ], [ %85, %87 ]
  %116 = phi ptr [ %96, %104 ], [ %79, %87 ]
  %117 = xor i1 %113, true
  %118 = zext i1 %117 to i32
  store ptr %114, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %119 = getelementptr inbounds %struct.fib_trie_iter, ptr %5, i32 0, i32 4
  store i32 %118, ptr %119, align 4
  store ptr %116, ptr %6, align 4
  br label %120

120:                                              ; preds = %112, %109, %73, %71, %42, %41
  %121 = phi ptr [ %115, %112 ], [ %35, %41 ], [ %35, %42 ], [ null, %73 ], [ null, %71 ], [ null, %109 ]
  ret ptr %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib_trie_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 1
  %6 = alloca [32 x i8], align 1
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %1, i32 -4
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.key_vector, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp ugt i8 %12, 31
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.fib_trie_iter, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fib_table, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %21 [
    i32 255, label %19
    i32 254, label %20
  ]

19:                                               ; preds = %14
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #17
  br label %22

20:                                               ; preds = %14
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #17
  br label %22

21:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %18) #17
  br label %22

22:                                               ; preds = %21, %20, %19, %2
  %23 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %27 = load i32, ptr %1, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  store i32 %28, ptr %3, align 4
  %29 = getelementptr inbounds %struct.fib_trie_iter, ptr %8, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %33, %26
  %34 = phi i32 [ %35, %33 ], [ %31, %26 ]
  %35 = add nsw i32 %34, -1
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #17
  %36 = icmp ugt i32 %34, 1
  br i1 %36, label %33, label %37

37:                                               ; preds = %33
  %38 = load i8, ptr %23, align 1
  br label %39

39:                                               ; preds = %37, %26
  %40 = phi i8 [ %38, %37 ], [ %24, %26 ]
  %41 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = zext i8 %40 to i32
  %45 = add nuw nsw i32 %43, %44
  %46 = sub nsw i32 32, %45
  %47 = getelementptr i8, ptr %1, i32 -8
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %1, i32 -12
  %50 = load i32, ptr %49, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i32 noundef %46, i32 noundef %44, i32 noundef %48, i32 noundef %50) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %113

51:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %52 = load i32, ptr %1, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  store i32 %53, ptr %4, align 4
  %54 = getelementptr inbounds %struct.fib_trie_iter, ptr %8, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %57, %51
  %58 = phi i32 [ %59, %57 ], [ %55, %51 ]
  %59 = add nsw i32 %58, -1
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #17
  %60 = icmp ugt i32 %58, 1
  br i1 %60, label %57, label %61

61:                                               ; preds = %57, %51
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #17
  %62 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 4
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %112, label %65

65:                                               ; preds = %109, %61
  %66 = phi ptr [ %110, %109 ], [ %63, %61 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !23
  %67 = load i32, ptr %54, align 4
  %68 = icmp ult i32 %67, 2147483647
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = add nuw nsw i32 %67, 1
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi i32 [ %73, %71 ], [ %70, %69 ]
  %73 = add nsw i32 %72, -1
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #17
  %74 = icmp ugt i32 %72, 1
  br i1 %74, label %71, label %75

75:                                               ; preds = %71, %65
  %76 = getelementptr inbounds %struct.fib_alias, ptr %66, i32 0, i32 5
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = sub nsw i32 32, %78
  %80 = getelementptr inbounds %struct.fib_alias, ptr %66, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.fib_info, ptr %81, i32 0, i32 9
  %83 = load i8, ptr %82, align 2
  switch i8 %83, label %88 [
    i8 0, label %91
    i8 -56, label %84
    i8 -3, label %85
    i8 -2, label %86
    i8 -1, label %87
  ]

84:                                               ; preds = %75
  br label %91

85:                                               ; preds = %75
  br label %91

86:                                               ; preds = %75
  br label %91

87:                                               ; preds = %75
  br label %91

88:                                               ; preds = %75
  %89 = zext i8 %83 to i32
  %90 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %89) #17
  br label %91

91:                                               ; preds = %88, %87, %86, %85, %84, %75
  %92 = phi ptr [ %5, %88 ], [ @.str.20, %87 ], [ @.str.19, %86 ], [ @.str.18, %85 ], [ @.str.17, %84 ], [ @.str.16, %75 ]
  %93 = getelementptr inbounds %struct.fib_alias, ptr %66, i32 0, i32 3
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ult i8 %94, 12
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = getelementptr [12 x ptr], ptr @rtn_type_names, i32 0, i32 %95
  %99 = load ptr, ptr %98, align 4
  br label %102

100:                                              ; preds = %91
  %101 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %95) #17
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi ptr [ %99, %97 ], [ %6, %100 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %79, ptr noundef nonnull %92, ptr noundef %103) #17
  %104 = getelementptr inbounds %struct.fib_alias, ptr %66, i32 0, i32 2
  %105 = load i8, ptr %104, align 4
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = zext i8 %105 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %108) #17
  br label %109

109:                                              ; preds = %107, %102
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  %110 = load volatile ptr, ptr %66, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %65

112:                                              ; preds = %109, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %113

113:                                              ; preds = %112, %39
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fib_route_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !8
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %136, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fib_route_iter, ptr %4, i32 0, i32 1
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %struct.fib_table, ptr %6, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fib_route_iter, ptr %4, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = load i64, ptr %1, align 8
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %struct.fib_route_iter, ptr %4, i32 0, i32 3
  br i1 %14, label %134, label %16

16:                                               ; preds = %8
  %17 = load i64, ptr %15, align 8
  %18 = icmp slt i64 %17, 1
  %19 = icmp sgt i64 %17, %13
  %20 = or i1 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.fib_route_iter, ptr %4, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  br label %25

24:                                               ; preds = %16
  store i64 1, ptr %15, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i64 [ %17, %21 ], [ 1, %24 ]
  %27 = phi i32 [ %23, %21 ], [ 0, %24 ]
  %28 = sub i64 %13, %26
  br label %29

29:                                               ; preds = %124, %25
  %30 = phi i64 [ %26, %25 ], [ %128, %124 ]
  %31 = phi ptr [ %11, %25 ], [ %121, %124 ]
  %32 = phi i64 [ %28, %25 ], [ %125, %124 ]
  %33 = phi i32 [ %27, %25 ], [ %127, %124 ]
  br label %34

34:                                               ; preds = %58, %29
  %35 = phi ptr [ %31, %29 ], [ %56, %58 ]
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %36, %33
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.key_vector, ptr %35, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = icmp eq i8 %40, 32
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = zext i8 %40 to i32
  %44 = xor i32 %36, %33
  %45 = lshr i32 %44, %43
  br label %46

46:                                               ; preds = %42, %38, %34
  %47 = phi i32 [ 0, %34 ], [ %45, %42 ], [ 0, %38 ]
  %48 = getelementptr inbounds %struct.key_vector, ptr %35, i32 0, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = lshr i32 %47, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.key_vector, ptr %35, i32 0, i32 4
  %55 = getelementptr [0 x ptr], ptr %54, i32 0, i32 %47
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.key_vector, ptr %56, i32 0, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %34

62:                                               ; preds = %58
  %63 = add i32 %47, 1
  %64 = load i32, ptr %56, align 4
  %65 = icmp ult i32 %64, %33
  br i1 %65, label %68, label %120

66:                                               ; preds = %53
  %67 = add i32 %47, 1
  br label %68

68:                                               ; preds = %66, %62, %46
  %69 = phi i32 [ %63, %62 ], [ %67, %66 ], [ %47, %46 ]
  %70 = getelementptr inbounds %struct.key_vector, ptr %35, i32 0, i32 1
  %71 = load i8, ptr %70, align 4
  %72 = icmp ult i8 %71, 32
  br i1 %72, label %73, label %118

73:                                               ; preds = %103, %68
  %74 = phi i8 [ %105, %103 ], [ %49, %68 ]
  %75 = phi ptr [ %101, %103 ], [ %35, %68 ]
  %76 = phi i32 [ %100, %103 ], [ %69, %68 ]
  %77 = getelementptr inbounds %struct.key_vector, ptr %75, i32 0, i32 4
  %78 = zext i8 %74 to i32
  br label %79

79:                                               ; preds = %106, %73
  %80 = phi i32 [ %107, %106 ], [ %76, %73 ]
  %81 = lshr i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %106, label %83

83:                                               ; preds = %79
  %84 = load i32, ptr %75, align 4
  %85 = getelementptr i8, ptr %75, i32 -4
  %86 = load volatile ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.key_vector, ptr %86, i32 0, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = icmp eq i8 %88, 32
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = zext i8 %88 to i32
  %92 = load i32, ptr %86, align 4
  %93 = xor i32 %92, %84
  %94 = lshr i32 %93, %91
  br label %95

95:                                               ; preds = %90, %83
  %96 = phi i32 [ %94, %90 ], [ 0, %83 ]
  %97 = add i32 %96, 1
  br label %98

98:                                               ; preds = %115, %95
  %99 = phi i8 [ %117, %115 ], [ %88, %95 ]
  %100 = phi i32 [ 0, %115 ], [ %97, %95 ]
  %101 = phi ptr [ %109, %115 ], [ %86, %95 ]
  %102 = icmp ult i8 %99, 32
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.key_vector, ptr %101, i32 0, i32 2
  %105 = load i8, ptr %104, align 1
  br label %73

106:                                              ; preds = %79
  %107 = add i32 %80, 1
  %108 = getelementptr [0 x ptr], ptr %77, i32 0, i32 %80
  %109 = load volatile ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %79, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.key_vector, ptr %109, i32 0, i32 2
  %113 = load i8, ptr %112, align 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.key_vector, ptr %109, i32 0, i32 1
  %117 = load i8, ptr %116, align 4
  br label %98

118:                                              ; preds = %98, %68
  %119 = phi ptr [ %101, %98 ], [ %35, %68 ]
  store ptr %119, ptr %12, align 4
  br label %133

120:                                              ; preds = %111, %62
  %121 = phi ptr [ %35, %62 ], [ %75, %111 ]
  %122 = phi ptr [ %56, %62 ], [ %109, %111 ]
  store ptr %121, ptr %12, align 4
  %123 = icmp sgt i64 %32, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = add nsw i64 %32, -1
  %126 = load i32, ptr %122, align 4
  %127 = add i32 %126, 1
  %128 = add i64 %30, 1
  store i64 %128, ptr %15, align 8
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %133, label %29

130:                                              ; preds = %120
  %131 = load i32, ptr %122, align 4
  %132 = getelementptr inbounds %struct.fib_route_iter, ptr %4, i32 0, i32 4
  store i32 %131, ptr %132, align 8
  br label %136

133:                                              ; preds = %124, %118
  store i64 0, ptr %15, align 8
  br label %136

134:                                              ; preds = %8
  store i64 0, ptr %15, align 8
  %135 = getelementptr inbounds %struct.fib_route_iter, ptr %4, i32 0, i32 4
  store i32 -1, ptr %135, align 8
  br label %136

136:                                              ; preds = %134, %133, %130, %2
  %137 = phi ptr [ inttoptr (i32 1 to ptr), %134 ], [ null, %2 ], [ null, %133 ], [ %122, %130 ]
  ret ptr %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fib_route_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fib_route_seq_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef %2) #16 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fib_route_iter, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, 1
  %9 = load i64, ptr %2, align 8
  %10 = add i64 %9, 1
  store i64 %10, ptr %2, align 8
  %11 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  %12 = icmp ne i32 %8, 0
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %110

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.fib_route_iter, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %41, %14
  %18 = phi ptr [ %16, %14 ], [ %39, %41 ]
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %8
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.key_vector, ptr %18, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 32
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = zext i8 %23 to i32
  %27 = xor i32 %19, %8
  %28 = lshr i32 %27, %26
  br label %29

29:                                               ; preds = %25, %21, %17
  %30 = phi i32 [ 0, %17 ], [ %28, %25 ], [ 0, %21 ]
  %31 = getelementptr inbounds %struct.key_vector, ptr %18, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = lshr i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.key_vector, ptr %18, i32 0, i32 4
  %38 = getelementptr [0 x ptr], ptr %37, i32 0, i32 %30
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.key_vector, ptr %39, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %17

45:                                               ; preds = %41
  %46 = add i32 %30, 1
  %47 = load i32, ptr %39, align 4
  %48 = icmp ult i32 %47, %8
  br i1 %48, label %51, label %103

49:                                               ; preds = %36
  %50 = add i32 %30, 1
  br label %51

51:                                               ; preds = %49, %45, %29
  %52 = phi i32 [ %46, %45 ], [ %50, %49 ], [ %30, %29 ]
  %53 = getelementptr inbounds %struct.key_vector, ptr %18, i32 0, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = icmp ult i8 %54, 32
  br i1 %55, label %56, label %101

56:                                               ; preds = %86, %51
  %57 = phi i8 [ %88, %86 ], [ %32, %51 ]
  %58 = phi ptr [ %84, %86 ], [ %18, %51 ]
  %59 = phi i32 [ %83, %86 ], [ %52, %51 ]
  %60 = getelementptr inbounds %struct.key_vector, ptr %58, i32 0, i32 4
  %61 = zext i8 %57 to i32
  br label %62

62:                                               ; preds = %89, %56
  %63 = phi i32 [ %90, %89 ], [ %59, %56 ]
  %64 = lshr i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %89, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr %58, align 4
  %68 = getelementptr i8, ptr %58, i32 -4
  %69 = load volatile ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.key_vector, ptr %69, i32 0, i32 1
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, 32
  br i1 %72, label %78, label %73

73:                                               ; preds = %66
  %74 = zext i8 %71 to i32
  %75 = load i32, ptr %69, align 4
  %76 = xor i32 %75, %67
  %77 = lshr i32 %76, %74
  br label %78

78:                                               ; preds = %73, %66
  %79 = phi i32 [ %77, %73 ], [ 0, %66 ]
  %80 = add i32 %79, 1
  br label %81

81:                                               ; preds = %98, %78
  %82 = phi i8 [ %100, %98 ], [ %71, %78 ]
  %83 = phi i32 [ 0, %98 ], [ %80, %78 ]
  %84 = phi ptr [ %92, %98 ], [ %69, %78 ]
  %85 = icmp ult i8 %82, 32
  br i1 %85, label %86, label %101

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.key_vector, ptr %84, i32 0, i32 2
  %88 = load i8, ptr %87, align 1
  br label %56

89:                                               ; preds = %62
  %90 = add i32 %63, 1
  %91 = getelementptr [0 x ptr], ptr %60, i32 0, i32 %63
  %92 = load volatile ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %62, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.key_vector, ptr %92, i32 0, i32 2
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.key_vector, ptr %92, i32 0, i32 1
  %100 = load i8, ptr %99, align 4
  br label %81

101:                                              ; preds = %81, %51
  %102 = phi ptr [ %18, %51 ], [ %84, %81 ]
  store ptr %102, ptr %15, align 4
  br label %110

103:                                              ; preds = %94, %45
  %104 = phi ptr [ %18, %45 ], [ %58, %94 ]
  %105 = phi ptr [ %39, %45 ], [ %92, %94 ]
  store ptr %104, ptr %15, align 4
  %106 = load i32, ptr %105, align 4
  store i32 %106, ptr %6, align 8
  %107 = getelementptr inbounds %struct.fib_route_iter, ptr %5, i32 0, i32 3
  %108 = load i64, ptr %107, align 8
  %109 = add i64 %108, 1
  store i64 %109, ptr %107, align 8
  br label %112

110:                                              ; preds = %101, %3
  %111 = getelementptr inbounds %struct.fib_route_iter, ptr %5, i32 0, i32 3
  store i64 0, ptr %111, align 8
  br label %112

112:                                              ; preds = %110, %103
  %113 = phi ptr [ null, %110 ], [ %105, %103 ]
  ret ptr %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib_route_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fib_route_iter, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #17
  br label %148

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 4
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %148, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.fib_table, ptr %6, i32 0, i32 1
  %17 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 4
  br label %19

19:                                               ; preds = %145, %15
  %20 = phi ptr [ %13, %15 ], [ %146, %145 ]
  %21 = getelementptr inbounds %struct.fib_alias, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fib_alias, ptr %20, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i8 %24, 32
  %27 = shl nsw i32 -1, %25
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #17
  %29 = select i1 %26, i32 0, i32 %28
  %30 = getelementptr inbounds %struct.fib_alias, ptr %20, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 2
  %35 = select i1 %34, i32 512, i32 0
  %36 = icmp eq ptr %22, null
  br i1 %36, label %73, label %37

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.fib_info, ptr %22, i32 0, i32 18
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41, !prof !13

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nexthop, ptr %39, i32 0, i32 9
  %43 = load i8, ptr %42, align 2, !range !24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.nexthop, ptr %39, i32 0, i32 12
  %47 = load volatile ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nh_group, ptr %47, i32 0, i32 2
  %49 = load i8, ptr %48, align 2, !range !24
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.nh_group, ptr %47, i32 0, i32 1
  %53 = load i16, ptr %52, align 4
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.nh_group, ptr %47, i32 0, i32 8, i32 0
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %55, %45, %41
  %60 = phi ptr [ %39, %41 ], [ %57, %55 ], [ %39, %45 ]
  %61 = getelementptr inbounds %struct.nexthop, ptr %60, i32 0, i32 12
  %62 = load volatile ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nh_info, ptr %62, i32 0, i32 5
  br label %66

64:                                               ; preds = %37
  %65 = getelementptr %struct.fib_info, ptr %22, i32 0, i32 20, i32 0
  br label %66

66:                                               ; preds = %64, %59, %55, %51
  %67 = phi ptr [ %65, %64 ], [ %63, %59 ], [ null, %55 ], [ null, %51 ]
  %68 = getelementptr inbounds %struct.fib_nh_common, ptr %67, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  %71 = or i32 %35, 2
  %72 = select i1 %70, i32 %35, i32 %71
  br label %73

73:                                               ; preds = %66, %19
  %74 = phi i32 [ %72, %66 ], [ %35, %19 ]
  %75 = icmp eq i32 %29, -1
  %76 = or i32 %74, 4
  %77 = select i1 %75, i32 %76, i32 %74
  %78 = or i32 %77, 1
  switch i8 %31, label %79 [
    i8 3, label %145
    i8 5, label %145
  ]

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.fib_alias, ptr %20, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %16, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %145

84:                                               ; preds = %79
  %85 = load i32, ptr %17, align 4
  %86 = add i32 %85, 127
  store i32 %86, ptr %18, align 8
  br i1 %36, label %143, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.fib_info, ptr %22, i32 0, i32 18
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %114, label %91, !prof !13

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.nexthop, ptr %89, i32 0, i32 9
  %93 = load i8, ptr %92, align 2, !range !24
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.nexthop, ptr %89, i32 0, i32 12
  %97 = load volatile ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nh_group, ptr %97, i32 0, i32 2
  %99 = load i8, ptr %98, align 2, !range !24
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
  %115 = getelementptr %struct.fib_info, ptr %22, i32 0, i32 20, i32 0
  br label %116

116:                                              ; preds = %114, %109, %105, %101
  %117 = phi ptr [ %115, %114 ], [ %113, %109 ], [ null, %105 ], [ null, %101 ]
  %118 = getelementptr inbounds %struct.fib_nh_common, ptr %117, i32 0, i32 5
  %119 = load i8, ptr %118, align 2
  %120 = icmp eq i8 %119, 2
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.fib_nh_common, ptr %117, i32 0, i32 8
  %123 = load i32, ptr %122, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = phi i32 [ %123, %121 ], [ 0, %116 ]
  %126 = load ptr, ptr %117, align 4
  %127 = icmp eq ptr %126, null
  %128 = select i1 %127, ptr @.str.49, ptr %126
  %129 = getelementptr inbounds %struct.fib_info, ptr %22, i32 0, i32 13
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.fib_info, ptr %22, i32 0, i32 14
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr [17 x i32], ptr %132, i32 0, i32 7
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  %136 = add i32 %134, 40
  %137 = select i1 %135, i32 0, i32 %136
  %138 = getelementptr [17 x i32], ptr %132, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr [17 x i32], ptr %132, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = lshr i32 %141, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef nonnull %128, i32 noundef %11, i32 noundef %125, i32 noundef %78, i32 noundef 0, i32 noundef 0, i32 noundef %130, i32 noundef %29, i32 noundef %137, i32 noundef %139, i32 noundef %142) #17
  br label %144

143:                                              ; preds = %84
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %11, i32 noundef 0, i32 noundef %78, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #17
  br label %144

144:                                              ; preds = %143, %124
  tail call void @seq_pad(ptr noundef %0, i8 noundef zeroext 10) #17
  br label %145

145:                                              ; preds = %144, %79, %73, %73
  %146 = load volatile ptr, ptr %20, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %19

148:                                              ; preds = %145, %9, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

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
!8 = !{i64 2149025210}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149025427}
!11 = !{i64 2149090512}
!12 = !{i32 0, i32 33}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2157297526, i64 2157298010, i64 2157297563, i64 2157297619, i64 2157297653, i64 2157297677, i64 2157297718, i64 2157297739, i64 2157297767, i64 2157297801}
!15 = !{i64 2157303292}
!16 = !{i64 2157312050}
!17 = !{i64 2157287058}
!18 = !{i64 2149158370}
!19 = !{i64 2149173315}
!20 = !{i64 2149126514}
!21 = !{i64 2157106541}
!22 = !{i64 2157106725}
!23 = !{!"auto-init"}
!24 = !{i8 0, i8 2}
!25 = !{i64 617960, i64 2148119526, i64 2148119552, i64 2148119599, i64 2148119621, i64 2148119649, i64 2148119669}
!26 = !{i64 2148183449, i64 2148183481, i64 2148183510, i64 2148183544, i64 2148183575, i64 2148183598}
!27 = !{i64 2157340991, i64 2157341475, i64 2157341028, i64 2157341084, i64 2157341118, i64 2157341142, i64 2157341183, i64 2157341204, i64 2157341232, i64 2157341266}
!28 = !{i64 2157294852, i64 2157295336, i64 2157294889, i64 2157294945, i64 2157294979, i64 2157295003, i64 2157295044, i64 2157295065, i64 2157295093, i64 2157295127}
