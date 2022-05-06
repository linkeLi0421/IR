; ModuleID = '/llk/IR/net/ipv6/ip6_fib.c_pt.bc'
source_filename = "../net/ipv6/ip6_fib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib6_info_destroy_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22fib6_info_destroy_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_fib6_info_destroy_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib6_new_table:\09\09\09\09\09"
module asm "\09.asciz \09\22fib6_new_table\22\09\09\09\09\09"
module asm "__kstrtabns_fib6_new_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib6_get_table:\09\09\09\09\09"
module asm "\09.asciz \09\22fib6_get_table\22\09\09\09\09\09"
module asm "__kstrtabns_fib6_get_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dst_metrics = type { [17 x i32], %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.170, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.170 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.128, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.128 = type { %struct.list_head }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.127 }
%union.anon.127 = type { [4 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.131, i32, %struct.atomic_t, ptr, ptr, ptr }
%struct.netdevice_tracker = type {}
%union.anon.131 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.129 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.129 = type { ptr }
%struct.fib6_table = type { %struct.hlist_node, i32, %struct.spinlock, %struct.fib6_node, %struct.inet_peer_base, i32, i32 }
%struct.inet_peer_base = type { %struct.rb_root, %struct.seqlock_t, i32 }
%struct.fib6_entry_notifier_info = type { %struct.fib_notifier_info, ptr, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.fib6_dump_arg = type { ptr, ptr, ptr }
%struct.fib6_walker = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.rt6_statistics = type { i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t }
%struct.fib6_cleaner = type { %struct.fib6_walker, ptr, ptr, i32, ptr, i8 }
%struct.fib6_gc_args = type { i32, i32 }
%struct.rt6_rtnl_dump_arg = type { ptr, ptr, ptr, %struct.fib_dump_filter }
%struct.fib_dump_filter = type { i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.86 }
%union.anon.86 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon.75, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6_route_iter = type { %struct.seq_net_private, %struct.fib6_walker, i64, ptr, i32 }
%struct.seq_net_private = type {}
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.133, %struct.list_head, ptr }
%union.anon.133 = type { %struct.anon.135 }
%struct.anon.135 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.130 }
%union.anon.130 = type { %struct.fib_nh }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32 }
%struct.fib6_nh_pcpu_arg = type { ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }

@.str = private unnamed_addr constant [19 x i8] c"net/ipv6/ip6_fib.c\00", align 1
@__kstrtab_fib6_info_destroy_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib6_info_destroy_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_fib6_info_destroy_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib6_info_destroy_rcu to i32), ptr @__kstrtab_fib6_info_destroy_rcu, ptr @__kstrtabns_fib6_info_destroy_rcu }, section "___ksymtab_gpl+fib6_info_destroy_rcu", align 4
@__kstrtab_fib6_new_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib6_new_table = external dso_local constant [0 x i8], align 1
@__ksymtab_fib6_new_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib6_new_table to i32), ptr @__kstrtab_fib6_new_table, ptr @__kstrtabns_fib6_new_table }, section "___ksymtab_gpl+fib6_new_table", align 4
@__kstrtab_fib6_get_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib6_get_table = external dso_local constant [0 x i8], align 1
@__ksymtab_fib6_get_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib6_get_table to i32), ptr @__kstrtab_fib6_get_table, ptr @__kstrtabns_fib6_get_table }, section "___ksymtab_gpl+fib6_get_table", align 4
@dst_default_metrics = external dso_local constant %struct.dst_metrics, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [60 x i8] c"\014IPv6: RTM_NEWROUTE with no NLM_F_CREATE or NLM_F_REPLACE\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fib6_nodes\00", align 1
@fib6_node_kmem = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@fib6_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @fib6_net_init, ptr null, ptr @fib6_net_exit, ptr null, ptr null, i32 0 }, align 4
@__fib6_flush_trees = external dso_local local_unnamed_addr global ptr, align 4
@ipv6_route_seq_ops = dso_local local_unnamed_addr constant %struct.seq_operations { ptr @ipv6_route_seq_start, ptr @ipv6_route_seq_stop, ptr @ipv6_route_seq_next, ptr @ipv6_route_seq_show }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@fib6_walk_continue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fib6_add_1.__msg = internal constant [39 x i8] c"Can not replace route - no match found\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\014IPv6: Can't replace route, no match found\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"\014IPv6: NLM_F_CREATE should be set when creating new route\0A\00", align 1
@fib6_add_1.__msg.5 = internal constant [39 x i8] c"Can not replace route - no match found\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"\014IPv6: NLM_F_REPLACE set, but no existing node found!\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@fib6_clean_node.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.inet6_dump_fib.arg = private unnamed_addr constant { ptr, ptr, ptr, { i32, i8, i8, i8, i8, i8, [3 x i8], i32, ptr } } { ptr null, ptr null, ptr null, { i32, i8, i8, i8, i8, i8, [3 x i8], i32, ptr } { i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null } }, align 4
@inet6_dump_fib.__msg = internal constant [31 x i8] c"ipv6: FIB table does not exist\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.7 = private unnamed_addr constant [11 x i8] c"%pi6 %02x \00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"00000000000000000000000000000000 00 \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%pi6\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"00000000000000000000000000000000\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c" %08x %08x %08x %08x %8s\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_fib6_get_table, ptr @__ksymtab_fib6_info_destroy_rcu, ptr @__ksymtab_fib6_new_table], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_update_sernum(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 30
  br label %8

8:                                                ; preds = %17, %6
  %9 = load volatile i32, ptr %7, align 4
  %10 = icmp eq i32 %9, 2147483647
  %11 = add i32 %9, 1
  %12 = select i1 %10, i32 1, i32 %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #16, !srcloc !9
  br label %13

13:                                               ; preds = %13, %8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %9, i32 %12, ptr elementtype(i32) %7) #16, !srcloc !10
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %20, label %8

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.fib6_node, ptr %4, i32 0, i32 6
  store volatile i32 %12, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib6_info_alloc(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = or i32 %0, 256
  %4 = select i1 %1, i32 188, i32 124
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef %3) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fib6_info, ptr %5, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fib6_info, ptr %5, i32 0, i32 3, i32 0, i32 1
  store ptr %8, ptr %9, align 16
  %10 = getelementptr inbounds %struct.fib6_info, ptr %5, i32 0, i32 5
  store volatile i32 1, ptr %10, align 8
  br label %11

11:                                               ; preds = %7, %2
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_info_destroy_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -104
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !12

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #16
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr i8, ptr %0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nexthop, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #16, !srcloc !9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #16, !srcloc !14
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %22, label %17, !prof !12

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #16
  br label %22

18:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  %19 = getelementptr inbounds %struct.nexthop, ptr %8, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %19, ptr noundef nonnull @nexthop_free_rcu) #16
  br label %22

20:                                               ; preds = %6
  %21 = getelementptr i8, ptr %0, i32 12
  tail call void @fib6_nh_release(ptr noundef %21) #16
  br label %22

22:                                               ; preds = %20, %18, %17, %15
  %23 = getelementptr i8, ptr %0, i32 -80
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @dst_default_metrics
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dst_metrics, ptr %24, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #16, !srcloc !9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #16, !srcloc !14
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %35, label %33, !prof !12

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 3) #16
  br label %35

34:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void @kfree(ptr noundef %24) #16
  br label %35

35:                                               ; preds = %34, %33, %31, %22
  %36 = getelementptr i8, ptr %0, i32 -112
  tail call void @kfree(ptr noundef %36) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_nh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib6_new_table(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i32 254, i32 %1
  %5 = and i32 %4, 255
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 10
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr %struct.hlist_head, ptr %7, i32 %5
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %8, %2 ], [ %11, %13 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fib6_table, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %39

18:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2848, i32 noundef 76) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.fib6_table, ptr %20, i32 0, i32 1
  store i32 %4, ptr %23, align 8
  %24 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 6
  %25 = load ptr, ptr %24, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  %26 = getelementptr inbounds %struct.fib6_table, ptr %20, i32 0, i32 3, i32 3
  store volatile ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.fib6_table, ptr %20, i32 0, i32 3, i32 5
  store i16 7, ptr %27, align 2
  %28 = getelementptr inbounds %struct.fib6_table, ptr %20, i32 0, i32 4
  tail call void @inet_peer_base_init(ptr noundef %28) #16
  %29 = getelementptr inbounds %struct.fib6_table, ptr %20, i32 0, i32 2
  store i32 0, ptr %29, align 4
  %30 = load i32, ptr %23, align 8
  %31 = and i32 %30, 255
  %32 = load ptr, ptr %6, align 16
  %33 = getelementptr %struct.hlist_head, ptr %32, i32 %31
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %20, align 8
  %35 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  store volatile ptr %33, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  store volatile ptr %20, ptr %33, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  store volatile ptr %20, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %22, %18, %17
  %40 = phi ptr [ %11, %17 ], [ %20, %22 ], [ %20, %37 ], [ null, %18 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib6_get_table(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i32 254, i32 %1
  %5 = and i32 %4, 255
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 10
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr %struct.hlist_head, ptr %7, i32 %5
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %8, %2 ], [ %11, %13 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fib6_table, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %19

18:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %19

19:                                               ; preds = %18, %17
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib6_tables_seq_read(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 10
  %3 = load ptr, ptr %2, align 16
  br label %4

4:                                                ; preds = %18, %1
  %5 = phi i32 [ 0, %1 ], [ %20, %18 ]
  %6 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %7 = getelementptr %struct.hlist_head, ptr %3, i32 %5
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %4
  %11 = phi ptr [ %16, %10 ], [ %8, %4 ]
  %12 = phi i32 [ %15, %10 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.fib6_table, ptr %11, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = load volatile ptr, ptr %11, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %4
  %19 = phi i32 [ %6, %4 ], [ %15, %10 ]
  %20 = add nuw nsw i32 %5, 1
  %21 = icmp eq i32 %20, 256
  br i1 %21, label %22, label %4

22:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_fib6_entry_notifiers(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.fib6_entry_notifier_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.fib_notifier_info, ptr %5, i32 0, i32 1
  store i32 0, ptr %5, align 4
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %5, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %5, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.fib6_table, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  %13 = call i32 @call_fib6_notifiers(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib6_notifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_fib6_multipath_entry_notifiers(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.fib6_entry_notifier_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.fib_notifier_info, ptr %6, i32 0, i32 1
  store i32 0, ptr %6, align 4
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %6, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %6, i32 0, i32 2
  store i32 %3, ptr %9, align 4
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.fib6_table, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = call i32 @call_fib6_notifiers(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_fib6_entry_notifiers_replace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.fib6_entry_notifier_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %3, i32 0, i32 1
  store i64 0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %3, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %5, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.fib6_table, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  %12 = call i32 @call_fib6_notifiers(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib6_tables_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.fib6_dump_arg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 44) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 8
  store ptr @fib6_node_dump, ptr %9, align 4
  store ptr %0, ptr %4, align 4
  %10 = getelementptr inbounds %struct.fib6_dump_arg, ptr %4, i32 0, i32 1
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fib6_dump_arg, ptr %4, i32 0, i32 2
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 9
  store ptr %4, ptr %12, align 8
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 10
  %14 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 1
  %15 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 4
  %16 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 13
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 12
  %19 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  br label %20

20:                                               ; preds = %41, %8
  %21 = phi i32 [ 0, %8 ], [ %42, %41 ]
  %22 = load ptr, ptr %13, align 16
  %23 = getelementptr %struct.hlist_head, ptr %22, i32 %21
  br label %24

24:                                               ; preds = %36, %20
  %25 = phi ptr [ %23, %20 ], [ %26, %36 ]
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fib6_table, ptr %26, i32 0, i32 3
  store ptr %29, ptr %14, align 8
  %30 = getelementptr inbounds %struct.fib6_table, ptr %26, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %30) #16
  store i32 0, ptr %15, align 4
  %31 = load ptr, ptr %14, align 8
  store ptr %31, ptr %16, align 4
  call void @_raw_write_lock_bh(ptr noundef %17) #16
  %32 = load ptr, ptr %18, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %6, ptr %33, align 4
  store ptr %32, ptr %6, align 8
  store ptr %18, ptr %19, align 4
  store volatile ptr %6, ptr %18, align 4
  call void @_raw_write_unlock_bh(ptr noundef %17) #16
  %34 = call fastcc i32 @fib6_walk_continue(ptr noundef nonnull %6) #16
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  call void @_raw_write_lock_bh(ptr noundef %17) #16
  %37 = load ptr, ptr %19, align 4
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  call void @_raw_write_unlock_bh(ptr noundef %17) #16
  call void @_raw_spin_unlock_bh(ptr noundef %30) #16
  %40 = icmp eq i32 %34, 0
  br i1 %40, label %24, label %45

41:                                               ; preds = %24
  %42 = add nuw nsw i32 %21, 1
  %43 = icmp eq i32 %42, 256
  br i1 %43, label %45, label %20

44:                                               ; preds = %28
  call void @_raw_spin_unlock_bh(ptr noundef %30) #16
  br label %45

45:                                               ; preds = %44, %41, %36
  %46 = phi i32 [ -22, %44 ], [ %34, %36 ], [ 0, %41 ]
  call void @kfree(ptr noundef nonnull %6) #16
  br label %47

47:                                               ; preds = %45, %3
  %48 = phi i32 [ -12, %3 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib6_node_dump(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.fib6_entry_notifier_info, align 4
  %3 = alloca %struct.fib6_entry_notifier_info, align 4
  %4 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 6
  %12 = load ptr, ptr %11, align 16
  %13 = icmp eq ptr %12, %5
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.fib6_info, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.fib6_dump_arg, ptr %7, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fib6_dump_arg, ptr %7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br i1 %17, label %27, label %22

22:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %23 = getelementptr inbounds %struct.fib_notifier_info, ptr %3, i32 0, i32 1
  store i32 0, ptr %3, align 4
  store ptr %21, ptr %23, align 4
  %24 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %3, i32 0, i32 1
  store ptr %5, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %3, i32 0, i32 2
  store i32 %16, ptr %25, align 4
  %26 = call i32 @call_fib6_notifier(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  br label %32

27:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %28 = getelementptr inbounds %struct.fib_notifier_info, ptr %2, i32 0, i32 1
  store i32 0, ptr %2, align 4
  store ptr %21, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %2, i32 0, i32 1
  store ptr %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %2, i32 0, i32 2
  store i32 0, ptr %30, align 4
  %31 = call i32 @call_fib6_notifier(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  br label %32

32:                                               ; preds = %27, %22, %9, %1
  %33 = phi i32 [ 0, %9 ], [ 0, %1 ], [ %26, %22 ], [ %31, %27 ]
  store ptr null, ptr %4, align 4
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_metric_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @dst_default_metrics
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 72) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dst_metrics, ptr %11, i32 0, i32 1
  store volatile i32 1, ptr %14, align 4
  store ptr %11, ptr %6, align 4
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi ptr [ %11, %13 ], [ %7, %5 ]
  %17 = add i32 %1, -1
  %18 = getelementptr [17 x i32], ptr %16, i32 0, i32 %17
  store i32 %2, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_force_start_gc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 9, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 9
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = tail call i32 @mod_timer(ptr noundef %6, i32 noundef %10) #16
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_update_sernum_upto_root(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 30
  br label %4

4:                                                ; preds = %13, %2
  %5 = load volatile i32, ptr %3, align 4
  %6 = icmp eq i32 %5, 2147483647
  %7 = add i32 %5, 1
  %8 = select i1 %6, i32 1, i32 %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #16, !srcloc !9
  br label %9

9:                                                ; preds = %9, %4
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %5, i32 %8, ptr elementtype(i32) %3) #16, !srcloc !10
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9
  %14 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  %15 = icmp eq i32 %14, %5
  br i1 %15, label %16, label %4

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %23, %20 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.fib6_node, ptr %21, i32 0, i32 6
  store volatile i32 %8, ptr %22, align 4
  %23 = load ptr, ptr %21, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_update_sernum_stub(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.fib6_table, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 30
  br label %6

6:                                                ; preds = %15, %2
  %7 = load volatile i32, ptr %5, align 4
  %8 = icmp eq i32 %7, 2147483647
  %9 = add i32 %7, 1
  %10 = select i1 %8, i32 1, i32 %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #16, !srcloc !9
  br label %11

11:                                               ; preds = %11, %6
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %7, i32 %10, ptr elementtype(i32) %5) #16, !srcloc !10
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  %17 = icmp eq i32 %16, %7
  br i1 %17, label %18, label %6

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %18
  %23 = phi ptr [ %25, %22 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.fib6_node, ptr %23, i32 0, i32 6
  store volatile i32 %10, ptr %24, align 4
  %25 = load ptr, ptr %23, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22

27:                                               ; preds = %22, %18
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr inbounds %struct.fib6_table, ptr %28, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %29) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib6_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.fib6_entry_notifier_info, align 4
  %6 = alloca %struct.fib6_entry_notifier_info, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nlmsghdr, ptr %7, i32 0, i32 2
  %11 = load i16, ptr %10, align 2
  %12 = lshr i16 %11, 10
  %13 = and i16 %12, 1
  %14 = zext i16 %13 to i32
  %15 = and i16 %11, 256
  %16 = icmp ne i16 %15, 0
  %17 = or i16 %13, %15
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #19
  br label %21

21:                                               ; preds = %19, %9, %4
  %22 = phi i1 [ %16, %19 ], [ %16, %9 ], [ false, %4 ]
  %23 = phi i32 [ 0, %19 ], [ %14, %9 ], [ 1, %4 ]
  %24 = getelementptr inbounds %struct.nl_info, ptr %2, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 8
  %27 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 8, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.fib6_node, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 36
  %32 = getelementptr inbounds %struct.fib6_node, ptr %0, i32 0, i32 4
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = icmp slt i32 %28, %34
  br i1 %35, label %71, label %44

36:                                               ; preds = %115
  %37 = getelementptr inbounds %struct.fib6_node, ptr %125, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 36
  %40 = getelementptr inbounds %struct.fib6_node, ptr %125, i32 0, i32 4
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = icmp slt i32 %28, %42
  br i1 %43, label %71, label %44

44:                                               ; preds = %36, %21
  %45 = phi i32 [ %42, %36 ], [ %34, %21 ]
  %46 = phi i16 [ %41, %36 ], [ %33, %21 ]
  %47 = phi ptr [ %39, %36 ], [ %31, %21 ]
  %48 = phi ptr [ %38, %36 ], [ %30, %21 ]
  %49 = phi ptr [ %125, %36 ], [ %0, %21 ]
  %50 = phi i32 [ %120, %36 ], [ 0, %21 ]
  %51 = lshr i32 %45, 5
  %52 = icmp ult i16 %46, 32
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = shl nuw nsw i32 %51, 2
  %55 = tail call i32 @bcmp(ptr %47, ptr %26, i32 %54) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53, %44
  %58 = and i32 %45, 31
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %57
  %61 = getelementptr i32, ptr %47, i32 %51
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i32, ptr %26, i32 %51
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, %62
  %66 = sub nuw nsw i32 32, %58
  %67 = shl nsw i32 -1, %66
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #16
  %69 = and i32 %65, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %60, %53, %36, %21
  %72 = phi i32 [ 0, %21 ], [ %120, %36 ], [ %50, %53 ], [ %50, %60 ]
  %73 = phi ptr [ %0, %21 ], [ %125, %36 ], [ %49, %53 ], [ %49, %60 ]
  %74 = phi ptr [ %30, %21 ], [ %38, %36 ], [ %48, %53 ], [ %48, %60 ]
  %75 = phi ptr [ %31, %21 ], [ %39, %36 ], [ %47, %53 ], [ %47, %60 ]
  %76 = icmp eq i32 %23, 0
  br i1 %76, label %77, label %150

77:                                               ; preds = %71
  br i1 %22, label %78, label %83

78:                                               ; preds = %77
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib6_add_1.__msg) #16
  %79 = icmp eq ptr %3, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  store ptr @fib6_add_1.__msg, ptr %3, align 4
  br label %81

81:                                               ; preds = %80, %78
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #19
  br label %855

83:                                               ; preds = %77
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #19
  br label %150

85:                                               ; preds = %60, %57
  %86 = icmp eq i32 %45, %28
  br i1 %86, label %87, label %115

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.fib6_node, ptr %49, i32 0, i32 3
  %89 = getelementptr inbounds %struct.fib6_node, ptr %49, i32 0, i32 5
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = and i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %87
  store volatile ptr null, ptr %88, align 4
  %95 = icmp eq ptr %48, null
  br i1 %95, label %282, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.fib6_info, ptr %48, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #16, !srcloc !9
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #16, !srcloc !14
  %99 = extractvalue { i32, i32, i32 } %98, 0
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = icmp sgt i32 %99, 0
  br i1 %102, label %282, label %103, !prof !12

103:                                              ; preds = %101
  tail call void @refcount_warn_saturate(ptr noundef %97, i32 noundef 3) #16
  br label %282

104:                                              ; preds = %96
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  %105 = getelementptr inbounds %struct.fib6_info, ptr %48, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %105, ptr noundef nonnull @fib6_info_destroy_rcu) #16
  br label %282

106:                                              ; preds = %87
  %107 = and i32 %91, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %282, label %109

109:                                              ; preds = %106
  %110 = load volatile ptr, ptr %88, align 4
  %111 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 36, i32 6
  %112 = load ptr, ptr %111, align 16
  %113 = icmp eq ptr %110, %112
  br i1 %113, label %114, label %282

114:                                              ; preds = %109
  store volatile ptr null, ptr %88, align 4
  br label %282

115:                                              ; preds = %85
  %116 = xor i32 %58, 7
  %117 = shl nuw i32 1, %116
  %118 = getelementptr i32, ptr %26, i32 %51
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, %117
  %121 = icmp eq i32 %120, 0
  %122 = getelementptr inbounds %struct.fib6_node, ptr %49, i32 0, i32 2
  %123 = getelementptr inbounds %struct.fib6_node, ptr %49, i32 0, i32 1
  %124 = select i1 %121, ptr %123, ptr %122
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %36

127:                                              ; preds = %115
  %128 = icmp eq i32 %23, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %127
  br i1 %22, label %130, label %135

130:                                              ; preds = %129
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib6_add_1.__msg.5) #16
  %131 = icmp eq ptr %3, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %130
  store ptr @fib6_add_1.__msg.5, ptr %3, align 4
  br label %133

133:                                              ; preds = %132, %130
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #19
  br label %855

135:                                              ; preds = %129
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #19
  br label %137

137:                                              ; preds = %135, %127
  %138 = load ptr, ptr @fib6_node_kmem, align 4
  %139 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %138, i32 noundef 2848) #16
  %140 = icmp eq ptr %139, null
  br i1 %140, label %855, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 36, i32 8
  %143 = load ptr, ptr %142, align 8
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 4
  %146 = trunc i32 %28 to i16
  %147 = getelementptr inbounds %struct.fib6_node, ptr %139, i32 0, i32 4
  store i16 %146, ptr %147, align 8
  store volatile ptr %49, ptr %139, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  br i1 %121, label %149, label %148

148:                                              ; preds = %141
  store volatile ptr %139, ptr %122, align 4
  br label %282

149:                                              ; preds = %141
  store volatile ptr %139, ptr %123, align 4
  br label %282

150:                                              ; preds = %83, %71
  %151 = load ptr, ptr %73, align 4
  %152 = load i32, ptr %26, align 4
  %153 = load i32, ptr %75, align 4
  %154 = xor i32 %153, %152
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %176, %169, %162, %150
  %157 = phi i32 [ 0, %150 ], [ 32, %162 ], [ 64, %169 ], [ 96, %176 ]
  %158 = phi i32 [ %154, %150 ], [ %167, %162 ], [ %174, %169 ], [ %181, %176 ]
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #16
  %160 = tail call i32 @llvm.ctlz.i32(i32 %159, i1 false) #16, !range !21
  %161 = add nuw nsw i32 %160, %157
  br label %183

162:                                              ; preds = %150
  %163 = getelementptr %struct.fib6_info, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr i8, ptr %74, i32 40
  %166 = load i32, ptr %165, align 4
  %167 = xor i32 %166, %164
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %156

169:                                              ; preds = %162
  %170 = getelementptr %struct.fib6_info, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 0, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr i8, ptr %74, i32 44
  %173 = load i32, ptr %172, align 4
  %174 = xor i32 %173, %171
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %156

176:                                              ; preds = %169
  %177 = getelementptr %struct.fib6_info, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 0, i32 3
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr i8, ptr %74, i32 48
  %180 = load i32, ptr %179, align 4
  %181 = xor i32 %180, %178
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %156

183:                                              ; preds = %176, %156
  %184 = phi i32 [ %161, %156 ], [ 128, %176 ]
  %185 = icmp slt i32 %184, %28
  %186 = load ptr, ptr @fib6_node_kmem, align 4
  %187 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %186, i32 noundef 2848) #16
  %188 = icmp eq ptr %187, null
  br i1 %185, label %189, label %256

189:                                              ; preds = %183
  br i1 %188, label %190, label %194

190:                                              ; preds = %189
  %191 = load ptr, ptr @fib6_node_kmem, align 4
  %192 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %191, i32 noundef 2848) #16
  %193 = icmp eq ptr %192, null
  br i1 %193, label %855, label %207

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 36, i32 8
  %196 = load ptr, ptr %195, align 8
  %197 = load i32, ptr %196, align 4
  %198 = add i32 %197, 1
  store i32 %198, ptr %196, align 4
  %199 = load ptr, ptr @fib6_node_kmem, align 4
  %200 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %199, i32 noundef 2848) #16
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %216

202:                                              ; preds = %194
  %203 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %203, ptr noundef nonnull %187) #16
  %204 = load ptr, ptr %195, align 8
  %205 = load i32, ptr %204, align 4
  %206 = add i32 %205, -1
  store i32 %206, ptr %204, align 4
  br label %855

207:                                              ; preds = %190
  %208 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 36, i32 8
  %209 = load ptr, ptr %208, align 8
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, 1
  store i32 %211, ptr %209, align 4
  %212 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %212, ptr noundef nonnull %192) #16
  %213 = load ptr, ptr %208, align 8
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, -1
  store i32 %215, ptr %213, align 4
  br label %855

216:                                              ; preds = %194
  %217 = load ptr, ptr %195, align 8
  %218 = load i32, ptr %217, align 4
  %219 = add i32 %218, 1
  store i32 %219, ptr %217, align 4
  %220 = trunc i32 %184 to i16
  %221 = getelementptr inbounds %struct.fib6_node, ptr %187, i32 0, i32 4
  store i16 %220, ptr %221, align 8
  store volatile ptr %151, ptr %187, align 8
  %222 = getelementptr inbounds %struct.fib6_node, ptr %73, i32 0, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.fib6_node, ptr %187, i32 0, i32 3
  store ptr %223, ptr %224, align 4
  %225 = getelementptr inbounds %struct.fib6_info, ptr %223, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %225) #16, !srcloc !9
  %226 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %225, ptr %225, i32 1, ptr elementtype(i32) %225) #16, !srcloc !22
  %227 = extractvalue { i32, i32, i32 } %226, 0
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %233, label %229, !prof !23

229:                                              ; preds = %216
  %230 = add i32 %227, 1
  %231 = or i32 %230, %227
  %232 = icmp sgt i32 %231, -1
  br i1 %232, label %235, label %233, !prof !12

233:                                              ; preds = %229, %216
  %234 = phi i32 [ 2, %216 ], [ 1, %229 ]
  tail call void @refcount_warn_saturate(ptr noundef %225, i32 noundef %234) #16
  br label %235

235:                                              ; preds = %233, %229
  %236 = icmp eq i32 %72, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  %237 = getelementptr inbounds %struct.fib6_node, ptr %151, i32 0, i32 1
  %238 = getelementptr inbounds %struct.fib6_node, ptr %151, i32 0, i32 2
  %239 = select i1 %236, ptr %237, ptr %238
  store volatile ptr %187, ptr %239, align 4
  %240 = trunc i32 %28 to i16
  %241 = getelementptr inbounds %struct.fib6_node, ptr %200, i32 0, i32 4
  store i16 %240, ptr %241, align 8
  store volatile ptr %187, ptr %200, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  store volatile ptr %187, ptr %73, align 4
  %242 = and i32 %184, 31
  %243 = xor i32 %242, 7
  %244 = shl nuw i32 1, %243
  %245 = lshr i32 %184, 5
  %246 = getelementptr i32, ptr %26, i32 %245
  %247 = load i32, ptr %246, align 4
  %248 = and i32 %247, %244
  %249 = icmp eq i32 %248, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  br i1 %249, label %253, label %250

250:                                              ; preds = %235
  %251 = getelementptr inbounds %struct.fib6_node, ptr %187, i32 0, i32 2
  store volatile ptr %200, ptr %251, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %252 = getelementptr inbounds %struct.fib6_node, ptr %187, i32 0, i32 1
  store volatile ptr %73, ptr %252, align 4
  br label %282

253:                                              ; preds = %235
  %254 = getelementptr inbounds %struct.fib6_node, ptr %187, i32 0, i32 1
  store volatile ptr %200, ptr %254, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  %255 = getelementptr inbounds %struct.fib6_node, ptr %187, i32 0, i32 2
  store volatile ptr %73, ptr %255, align 8
  br label %282

256:                                              ; preds = %183
  br i1 %188, label %855, label %257

257:                                              ; preds = %256
  %258 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 36, i32 8
  %259 = load ptr, ptr %258, align 8
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %260, 1
  store i32 %261, ptr %259, align 4
  %262 = trunc i32 %28 to i16
  %263 = getelementptr inbounds %struct.fib6_node, ptr %187, i32 0, i32 4
  store i16 %262, ptr %263, align 8
  store volatile ptr %151, ptr %187, align 8
  %264 = and i32 %28, 31
  %265 = xor i32 %264, 7
  %266 = shl nuw i32 1, %265
  %267 = ashr i32 %28, 5
  %268 = getelementptr i32, ptr %75, i32 %267
  %269 = load i32, ptr %268, align 4
  %270 = and i32 %269, %266
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %257
  %273 = getelementptr inbounds %struct.fib6_node, ptr %187, i32 0, i32 2
  store volatile ptr %73, ptr %273, align 8
  br label %276

274:                                              ; preds = %257
  %275 = getelementptr inbounds %struct.fib6_node, ptr %187, i32 0, i32 1
  store volatile ptr %73, ptr %275, align 4
  br label %276

276:                                              ; preds = %274, %272
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  store volatile ptr %187, ptr %73, align 4
  %277 = icmp eq i32 %72, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  br i1 %277, label %280, label %278

278:                                              ; preds = %276
  %279 = getelementptr inbounds %struct.fib6_node, ptr %151, i32 0, i32 2
  store volatile ptr %187, ptr %279, align 4
  br label %282

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.fib6_node, ptr %151, i32 0, i32 1
  store volatile ptr %187, ptr %281, align 4
  br label %282

282:                                              ; preds = %280, %278, %253, %250, %149, %148, %114, %109, %106, %104, %103, %101, %94
  %283 = phi ptr [ %139, %149 ], [ %139, %148 ], [ %200, %250 ], [ %200, %253 ], [ %187, %278 ], [ %187, %280 ], [ %49, %104 ], [ %49, %103 ], [ %49, %101 ], [ %49, %94 ], [ %49, %114 ], [ %49, %109 ], [ %49, %106 ]
  %284 = icmp ugt ptr %283, inttoptr (i32 -4096 to ptr)
  br i1 %284, label %858, label %285

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.fib6_node, ptr %283, i32 0, i32 3
  %287 = load ptr, ptr %286, align 4
  %288 = load ptr, ptr %2, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %297, label %290

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.nlmsghdr, ptr %288, i32 0, i32 2
  %292 = load i16, ptr %291, align 2
  %293 = and i16 %292, 256
  %294 = icmp ne i16 %293, 0
  %295 = and i16 %292, 1024
  %296 = icmp ne i16 %295, 0
  br label %297

297:                                              ; preds = %290, %285
  %298 = phi i1 [ %294, %290 ], [ false, %285 ]
  %299 = phi i1 [ %296, %290 ], [ true, %285 ]
  %300 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 9
  %301 = load i32, ptr %300, align 4
  %302 = and i32 %301, 262144
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %297
  %305 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 20
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %313

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 21
  %310 = getelementptr inbounds %struct.fib_nh_common, ptr %309, i32 0, i32 5
  %311 = load i8, ptr %310, align 2
  %312 = icmp ne i8 %311, 0
  br label %313

313:                                              ; preds = %308, %304, %297
  %314 = phi i1 [ false, %304 ], [ false, %297 ], [ %312, %308 ]
  br i1 %289, label %320, label %315

315:                                              ; preds = %313
  %316 = getelementptr inbounds %struct.nlmsghdr, ptr %288, i32 0, i32 2
  %317 = load i16, ptr %316, align 2
  %318 = and i16 %317, 2048
  %319 = or i16 %318, 512
  br label %320

320:                                              ; preds = %315, %313
  %321 = phi i16 [ 512, %313 ], [ %319, %315 ]
  %322 = icmp eq ptr %287, null
  br i1 %322, label %487, label %323

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 12
  %325 = load i32, ptr %324, align 4
  %326 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 20
  %327 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 21
  %328 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 1, i32 3, i32 0, i32 1
  %329 = getelementptr %struct.fib6_info, ptr %1, i32 1, i32 4
  %330 = getelementptr %struct.fib6_info, ptr %1, i32 1, i32 5
  %331 = getelementptr %struct.fib6_info, ptr %1, i32 1, i32 6
  %332 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 4
  br label %333

333:                                              ; preds = %466, %323
  %334 = phi ptr [ %287, %323 ], [ %470, %466 ]
  %335 = phi ptr [ %286, %323 ], [ %469, %466 ]
  %336 = phi ptr [ null, %323 ], [ %468, %466 ]
  %337 = phi i16 [ %321, %323 ], [ %467, %466 ]
  %338 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 12
  %339 = load i32, ptr %338, align 4
  %340 = icmp eq i32 %339, %325
  br i1 %340, label %341, label %462

341:                                              ; preds = %333
  %342 = load ptr, ptr %2, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %349, label %344

344:                                              ; preds = %341
  %345 = getelementptr inbounds %struct.nlmsghdr, ptr %342, i32 0, i32 2
  %346 = load i16, ptr %345, align 2
  %347 = and i16 %346, 512
  %348 = icmp eq i16 %347, 0
  br i1 %348, label %349, label %860

349:                                              ; preds = %344, %341
  %350 = and i16 %337, -513
  br i1 %298, label %351, label %370

351:                                              ; preds = %349
  %352 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 9
  %353 = load i32, ptr %352, align 4
  %354 = and i32 %353, 262144
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 20
  %358 = load ptr, ptr %357, align 4
  %359 = icmp eq ptr %358, null
  br i1 %359, label %361, label %360

360:                                              ; preds = %356, %351
  br i1 %314, label %367, label %480

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 21
  %363 = getelementptr inbounds %struct.fib_nh_common, ptr %362, i32 0, i32 5
  %364 = load i8, ptr %363, align 2
  %365 = icmp ne i8 %364, 0
  %366 = xor i1 %314, %365
  br i1 %366, label %367, label %480

367:                                              ; preds = %361, %360
  %368 = icmp eq ptr %336, null
  %369 = select i1 %368, ptr %335, ptr %336
  br label %466

370:                                              ; preds = %349
  %371 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 20
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, null
  %374 = load ptr, ptr %326, align 4
  %375 = icmp eq ptr %374, null
  %376 = select i1 %373, i1 %375, i1 false
  br i1 %376, label %379, label %377

377:                                              ; preds = %370
  %378 = icmp eq ptr %372, %374
  br i1 %378, label %405, label %445

379:                                              ; preds = %370
  %380 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 21
  %381 = load ptr, ptr %380, align 4
  %382 = load ptr, ptr %327, align 4
  %383 = icmp eq ptr %381, %382
  br i1 %383, label %384, label %445

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 1, i32 3, i32 0, i32 1
  %386 = load i32, ptr %385, align 4
  %387 = load i32, ptr %328, align 4
  %388 = xor i32 %387, %386
  %389 = getelementptr %struct.fib6_info, ptr %334, i32 1, i32 4
  %390 = load i32, ptr %389, align 4
  %391 = load i32, ptr %329, align 4
  %392 = xor i32 %391, %390
  %393 = or i32 %392, %388
  %394 = getelementptr %struct.fib6_info, ptr %334, i32 1, i32 5
  %395 = load i32, ptr %394, align 4
  %396 = load i32, ptr %330, align 4
  %397 = xor i32 %396, %395
  %398 = or i32 %393, %397
  %399 = getelementptr %struct.fib6_info, ptr %334, i32 1, i32 6
  %400 = load i32, ptr %399, align 4
  %401 = load i32, ptr %331, align 4
  %402 = xor i32 %401, %400
  %403 = or i32 %398, %402
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %445

405:                                              ; preds = %384, %377
  %406 = load i32, ptr %332, align 4
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %405
  store i32 0, ptr %332, align 4
  br label %409

409:                                              ; preds = %408, %405
  %410 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 9
  %411 = load i32, ptr %410, align 4
  %412 = and i32 %411, 4194304
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %860, label %414

414:                                              ; preds = %409
  %415 = and i32 %301, 4194304
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %414
  %418 = and i32 %411, -4194305
  br label %423

419:                                              ; preds = %414
  %420 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 6
  %421 = load i32, ptr %420, align 4
  %422 = or i32 %411, 4194304
  br label %423

423:                                              ; preds = %419, %417
  %424 = phi i32 [ %422, %419 ], [ %418, %417 ]
  %425 = phi i32 [ %421, %419 ], [ 0, %417 ]
  store i32 %424, ptr %410, align 4
  %426 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 6
  store i32 %425, ptr %426, align 4
  %427 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 7
  %428 = load ptr, ptr %427, align 4
  %429 = getelementptr [17 x i32], ptr %428, i32 0, i32 1
  %430 = load i32, ptr %429, align 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %860, label %432

432:                                              ; preds = %423
  %433 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 7
  %434 = load ptr, ptr %433, align 4
  %435 = icmp eq ptr %434, @dst_default_metrics
  br i1 %435, label %436, label %442

436:                                              ; preds = %432
  %437 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %438 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %437, i32 noundef 2848, i32 noundef 72) #18
  %439 = icmp eq ptr %438, null
  br i1 %439, label %860, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.dst_metrics, ptr %438, i32 0, i32 1
  store volatile i32 1, ptr %441, align 4
  store ptr %438, ptr %433, align 4
  br label %442

442:                                              ; preds = %440, %432
  %443 = phi ptr [ %438, %440 ], [ %434, %432 ]
  %444 = getelementptr [17 x i32], ptr %443, i32 0, i32 1
  store i32 %430, ptr %444, align 4
  br label %860

445:                                              ; preds = %384, %379, %377
  br i1 %314, label %446, label %466

446:                                              ; preds = %445
  %447 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 9
  %448 = load i32, ptr %447, align 4
  %449 = and i32 %448, 262144
  %450 = icmp ne i32 %449, 0
  %451 = xor i1 %373, true
  %452 = select i1 %450, i1 true, i1 %451
  br i1 %452, label %466, label %453

453:                                              ; preds = %446
  %454 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 21
  %455 = getelementptr inbounds %struct.fib_nh_common, ptr %454, i32 0, i32 5
  %456 = load i8, ptr %455, align 2
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %466, label %458

458:                                              ; preds = %453
  %459 = load i32, ptr %332, align 4
  %460 = add i32 %459, 1
  store i32 %460, ptr %332, align 4
  %461 = load i32, ptr %338, align 4
  br label %462

462:                                              ; preds = %458, %333
  %463 = phi i32 [ %461, %458 ], [ %339, %333 ]
  %464 = phi i16 [ %350, %458 ], [ %337, %333 ]
  %465 = icmp ugt i32 %463, %325
  br i1 %465, label %472, label %466

466:                                              ; preds = %462, %453, %446, %445, %367
  %467 = phi i16 [ %350, %367 ], [ %464, %462 ], [ %350, %453 ], [ %350, %445 ], [ %350, %446 ]
  %468 = phi ptr [ %369, %367 ], [ %336, %462 ], [ %336, %453 ], [ %336, %445 ], [ %336, %446 ]
  %469 = getelementptr inbounds %struct.fib6_info, ptr %334, i32 0, i32 1
  %470 = load ptr, ptr %469, align 4
  %471 = icmp eq ptr %470, null
  br i1 %471, label %472, label %333

472:                                              ; preds = %466, %462
  %473 = phi ptr [ %468, %466 ], [ %336, %462 ]
  %474 = phi ptr [ %469, %466 ], [ %335, %462 ]
  %475 = phi ptr [ null, %466 ], [ %334, %462 ]
  %476 = phi i16 [ %467, %466 ], [ %464, %462 ]
  %477 = icmp eq ptr %473, null
  br i1 %477, label %480, label %478

478:                                              ; preds = %472
  %479 = load ptr, ptr %473, align 4
  br label %480

480:                                              ; preds = %478, %472, %361, %360
  %481 = phi i16 [ %476, %472 ], [ %476, %478 ], [ %350, %360 ], [ %350, %361 ]
  %482 = phi i1 [ %298, %472 ], [ %298, %478 ], [ true, %360 ], [ true, %361 ]
  %483 = phi i1 [ true, %472 ], [ false, %478 ], [ false, %360 ], [ false, %361 ]
  %484 = phi ptr [ %474, %472 ], [ %473, %478 ], [ %335, %360 ], [ %335, %361 ]
  %485 = phi ptr [ %475, %472 ], [ %479, %478 ], [ %334, %360 ], [ %334, %361 ]
  %486 = icmp eq ptr %484, %286
  br i1 %486, label %487, label %493

487:                                              ; preds = %480, %320
  %488 = phi ptr [ %485, %480 ], [ null, %320 ]
  %489 = phi i1 [ %483, %480 ], [ true, %320 ]
  %490 = phi i1 [ %482, %480 ], [ %298, %320 ]
  %491 = phi i16 [ %481, %480 ], [ %321, %320 ]
  %492 = getelementptr inbounds %struct.fib6_node, ptr %283, i32 0, i32 7
  store ptr null, ptr %492, align 4
  br label %493

493:                                              ; preds = %487, %480
  %494 = phi i1 [ true, %487 ], [ false, %480 ]
  %495 = phi ptr [ %488, %487 ], [ %485, %480 ]
  %496 = phi ptr [ %286, %487 ], [ %484, %480 ]
  %497 = phi i1 [ %489, %487 ], [ %483, %480 ]
  %498 = phi i1 [ %490, %487 ], [ %482, %480 ]
  %499 = phi i16 [ %491, %487 ], [ %481, %480 ]
  %500 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 4
  %501 = load i32, ptr %500, align 4
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %570, label %503

503:                                              ; preds = %493
  br i1 %322, label %537, label %504

504:                                              ; preds = %503
  %505 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 12
  %506 = load i32, ptr %505, align 4
  br label %507

507:                                              ; preds = %533, %504
  %508 = phi i1 [ true, %504 ], [ false, %533 ]
  %509 = phi ptr [ %287, %504 ], [ %535, %533 ]
  %510 = getelementptr inbounds %struct.fib6_info, ptr %509, i32 0, i32 12
  %511 = load i32, ptr %510, align 4
  %512 = icmp eq i32 %511, %506
  br i1 %512, label %513, label %533

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct.fib6_info, ptr %509, i32 0, i32 9
  %515 = load i32, ptr %514, align 4
  %516 = and i32 %515, 262144
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %533

518:                                              ; preds = %513
  %519 = getelementptr inbounds %struct.fib6_info, ptr %509, i32 0, i32 20
  %520 = load ptr, ptr %519, align 4
  %521 = icmp eq ptr %520, null
  br i1 %521, label %522, label %533

522:                                              ; preds = %518
  %523 = getelementptr inbounds %struct.fib6_info, ptr %509, i32 0, i32 21
  %524 = getelementptr inbounds %struct.fib_nh_common, ptr %523, i32 0, i32 5
  %525 = load i8, ptr %524, align 2
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %533, label %527

527:                                              ; preds = %522
  %528 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 3
  %529 = getelementptr inbounds %struct.fib6_info, ptr %509, i32 0, i32 3
  %530 = getelementptr inbounds %struct.fib6_info, ptr %509, i32 0, i32 3, i32 0, i32 1
  %531 = load ptr, ptr %530, align 4
  store ptr %528, ptr %530, align 4
  store ptr %529, ptr %528, align 4
  %532 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 3, i32 0, i32 1
  store ptr %531, ptr %532, align 4
  store volatile ptr %528, ptr %531, align 4
  br label %537

533:                                              ; preds = %522, %518, %513, %507
  %534 = getelementptr inbounds %struct.fib6_info, ptr %509, i32 0, i32 1
  %535 = load ptr, ptr %534, align 4
  %536 = icmp eq ptr %535, null
  br i1 %536, label %537, label %507

537:                                              ; preds = %533, %527, %503
  %538 = phi i1 [ %508, %527 ], [ true, %503 ], [ false, %533 ]
  %539 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 3
  %540 = load ptr, ptr %539, align 4
  %541 = getelementptr i8, ptr %540, i32 -12
  %542 = load ptr, ptr %540, align 4
  %543 = getelementptr i8, ptr %542, i32 -12
  %544 = icmp eq ptr %541, %1
  br i1 %544, label %545, label %547

545:                                              ; preds = %537
  %546 = load i32, ptr %500, align 4
  br label %563

547:                                              ; preds = %558, %537
  %548 = phi ptr [ %561, %558 ], [ %543, %537 ]
  %549 = phi ptr [ %560, %558 ], [ %542, %537 ]
  %550 = phi i32 [ %559, %558 ], [ 0, %537 ]
  %551 = phi ptr [ %548, %558 ], [ %541, %537 ]
  %552 = getelementptr inbounds %struct.fib6_info, ptr %551, i32 0, i32 4
  %553 = load i32, ptr %552, align 4
  %554 = add i32 %553, 1
  store i32 %554, ptr %552, align 4
  %555 = load i32, ptr %500, align 4
  %556 = icmp eq i32 %554, %555
  br i1 %556, label %558, label %557, !prof !12

557:                                              ; preds = %547
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/ip6_fib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1195, 0\0A.popsection", ""() #16, !srcloc !28
  unreachable

558:                                              ; preds = %547
  %559 = add i32 %550, 1
  %560 = load ptr, ptr %549, align 4
  %561 = getelementptr i8, ptr %560, i32 -12
  %562 = icmp eq ptr %548, %1
  br i1 %562, label %563, label %547

563:                                              ; preds = %558, %545
  %564 = phi i32 [ %546, %545 ], [ %554, %558 ]
  %565 = phi i32 [ 0, %545 ], [ %559, %558 ]
  %566 = phi ptr [ %543, %545 ], [ %561, %558 ]
  %567 = icmp eq i32 %565, %564
  br i1 %567, label %569, label %568, !prof !12

568:                                              ; preds = %563
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/ip6_fib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1198, 0\0A.popsection", ""() #16, !srcloc !29
  unreachable

569:                                              ; preds = %563
  tail call void @rt6_multipath_rebalance(ptr noundef %566) #16
  br label %570

570:                                              ; preds = %569, %493
  %571 = phi i1 [ %538, %569 ], [ false, %493 ]
  br i1 %498, label %654, label %572

572:                                              ; preds = %570
  br i1 %299, label %575, label %573

573:                                              ; preds = %572
  %574 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #19
  br label %575

575:                                              ; preds = %655, %573, %572
  %576 = or i16 %499, 1024
  %577 = getelementptr inbounds %struct.nl_info, ptr %2, i32 0, i32 3
  %578 = load i8, ptr %577, align 4
  %579 = and i8 %578, 2
  %580 = icmp eq i8 %579, 0
  %581 = or i1 %494, %571
  %582 = and i1 %581, %580
  br i1 %582, label %583, label %615

583:                                              ; preds = %575
  %584 = zext i1 %571 to i32
  %585 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %586 = getelementptr inbounds %struct.fib_notifier_info, ptr %6, i32 0, i32 1
  store i32 0, ptr %6, align 4
  store ptr %3, ptr %586, align 4
  %587 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %6, i32 0, i32 1
  store ptr %1, ptr %587, align 4
  %588 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %6, i32 0, i32 2
  store i32 0, ptr %588, align 4
  %589 = load ptr, ptr %1, align 4
  %590 = getelementptr inbounds %struct.fib6_table, ptr %589, i32 0, i32 6
  %591 = load i32, ptr %590, align 4
  %592 = add i32 %591, 1
  store i32 %592, ptr %590, align 4
  %593 = call i32 @call_fib6_notifiers(ptr noundef %585, i32 noundef %584, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %615, label %595

595:                                              ; preds = %583
  %596 = load i32, ptr %500, align 4
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %860, label %598

598:                                              ; preds = %595
  %599 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 3
  %600 = load ptr, ptr %599, align 4
  %601 = getelementptr i8, ptr %600, i32 -12
  %602 = load ptr, ptr %600, align 4
  %603 = getelementptr i8, ptr %602, i32 -12
  %604 = icmp eq ptr %601, %1
  br i1 %604, label %796, label %605

605:                                              ; preds = %605, %598
  %606 = phi ptr [ %613, %605 ], [ %603, %598 ]
  %607 = phi ptr [ %612, %605 ], [ %602, %598 ]
  %608 = phi ptr [ %606, %605 ], [ %601, %598 ]
  %609 = getelementptr inbounds %struct.fib6_info, ptr %608, i32 0, i32 4
  %610 = load i32, ptr %609, align 4
  %611 = add i32 %610, -1
  store i32 %611, ptr %609, align 4
  %612 = load ptr, ptr %607, align 4
  %613 = getelementptr i8, ptr %612, i32 -12
  %614 = icmp eq ptr %606, %1
  br i1 %614, label %800, label %605

615:                                              ; preds = %583, %575
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !30
  %616 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 1
  store volatile ptr %495, ptr %616, align 4
  %617 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %617) #16, !srcloc !9
  %618 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %617, ptr %617, i32 1, ptr elementtype(i32) %617) #16, !srcloc !22
  %619 = extractvalue { i32, i32, i32 } %618, 0
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %625, label %621, !prof !23

621:                                              ; preds = %615
  %622 = add i32 %619, 1
  %623 = or i32 %622, %619
  %624 = icmp sgt i32 %623, -1
  br i1 %624, label %627, label %625, !prof !12

625:                                              ; preds = %621, %615
  %626 = phi i32 [ 2, %615 ], [ 1, %621 ]
  call void @refcount_warn_saturate(ptr noundef %617, i32 noundef %626) #16
  br label %627

627:                                              ; preds = %625, %621
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !31
  %628 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 2
  store volatile ptr %283, ptr %628, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  store volatile ptr %1, ptr %496, align 4
  %629 = load i8, ptr %577, align 4
  %630 = and i8 %629, 1
  %631 = icmp eq i8 %630, 0
  br i1 %631, label %632, label %634

632:                                              ; preds = %627
  %633 = zext i16 %576 to i32
  call void @inet6_rt_notify(i32 noundef 24, ptr noundef %1, ptr noundef %2, i32 noundef %633) #16
  br label %634

634:                                              ; preds = %632, %627
  %635 = load ptr, ptr %24, align 4
  %636 = getelementptr inbounds %struct.net, ptr %635, i32 0, i32 36, i32 8
  %637 = load ptr, ptr %636, align 8
  %638 = getelementptr inbounds %struct.rt6_statistics, ptr %637, i32 0, i32 2
  %639 = load i32, ptr %638, align 4
  %640 = add i32 %639, 1
  store i32 %640, ptr %638, align 4
  %641 = getelementptr inbounds %struct.fib6_node, ptr %283, i32 0, i32 5
  %642 = load i16, ptr %641, align 2
  %643 = and i16 %642, 4
  %644 = icmp eq i16 %643, 0
  br i1 %644, label %645, label %805

645:                                              ; preds = %634
  %646 = load ptr, ptr %24, align 4
  %647 = getelementptr inbounds %struct.net, ptr %646, i32 0, i32 36, i32 8
  %648 = load ptr, ptr %647, align 8
  %649 = getelementptr inbounds %struct.rt6_statistics, ptr %648, i32 0, i32 1
  %650 = load i32, ptr %649, align 4
  %651 = add i32 %650, 1
  store i32 %651, ptr %649, align 4
  %652 = load i16, ptr %641, align 2
  %653 = or i16 %652, 4
  store i16 %653, ptr %641, align 2
  br label %805

654:                                              ; preds = %570
  br i1 %497, label %655, label %658

655:                                              ; preds = %654
  br i1 %299, label %575, label %656

656:                                              ; preds = %655
  %657 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #19
  br label %860

658:                                              ; preds = %654
  %659 = getelementptr inbounds %struct.nl_info, ptr %2, i32 0, i32 3
  %660 = load i8, ptr %659, align 4
  %661 = and i8 %660, 2
  %662 = icmp eq i8 %661, 0
  %663 = and i1 %494, %662
  br i1 %663, label %664, label %675

664:                                              ; preds = %658
  %665 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %666 = getelementptr inbounds %struct.fib_notifier_info, ptr %5, i32 0, i32 1
  store i32 0, ptr %5, align 4
  store ptr %3, ptr %666, align 4
  %667 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %5, i32 0, i32 1
  store ptr %1, ptr %667, align 4
  %668 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %5, i32 0, i32 2
  store i32 0, ptr %668, align 4
  %669 = load ptr, ptr %1, align 4
  %670 = getelementptr inbounds %struct.fib6_table, ptr %669, i32 0, i32 6
  %671 = load i32, ptr %670, align 4
  %672 = add i32 %671, 1
  store i32 %672, ptr %670, align 4
  %673 = call i32 @call_fib6_notifiers(ptr noundef %665, i32 noundef 0, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %860

675:                                              ; preds = %664, %658
  %676 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %676) #16, !srcloc !9
  %677 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %676, ptr %676, i32 1, ptr elementtype(i32) %676) #16, !srcloc !22
  %678 = extractvalue { i32, i32, i32 } %677, 0
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %684, label %680, !prof !23

680:                                              ; preds = %675
  %681 = add i32 %678, 1
  %682 = or i32 %681, %678
  %683 = icmp sgt i32 %682, -1
  br i1 %683, label %686, label %684, !prof !12

684:                                              ; preds = %680, %675
  %685 = phi i32 [ 2, %675 ], [ 1, %680 ]
  call void @refcount_warn_saturate(ptr noundef %676, i32 noundef %685) #16
  br label %686

686:                                              ; preds = %684, %680
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !33
  %687 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 2
  store volatile ptr %283, ptr %687, align 4
  %688 = getelementptr inbounds %struct.fib6_info, ptr %495, i32 0, i32 1
  %689 = load ptr, ptr %688, align 4
  %690 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 1
  store ptr %689, ptr %690, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !34
  store volatile ptr %1, ptr %496, align 4
  %691 = load i8, ptr %659, align 4
  %692 = and i8 %691, 1
  %693 = icmp eq i8 %692, 0
  br i1 %693, label %694, label %695

694:                                              ; preds = %686
  call void @inet6_rt_notify(i32 noundef 24, ptr noundef %1, ptr noundef %2, i32 noundef 256) #16
  br label %695

695:                                              ; preds = %694, %686
  %696 = getelementptr inbounds %struct.fib6_node, ptr %283, i32 0, i32 5
  %697 = load i16, ptr %696, align 2
  %698 = and i16 %697, 4
  %699 = icmp eq i16 %698, 0
  br i1 %699, label %700, label %709

700:                                              ; preds = %695
  %701 = load ptr, ptr %24, align 4
  %702 = getelementptr inbounds %struct.net, ptr %701, i32 0, i32 36, i32 8
  %703 = load ptr, ptr %702, align 8
  %704 = getelementptr inbounds %struct.rt6_statistics, ptr %703, i32 0, i32 1
  %705 = load i32, ptr %704, align 4
  %706 = add i32 %705, 1
  store i32 %706, ptr %704, align 4
  %707 = load i16, ptr %696, align 2
  %708 = or i16 %707, 4
  store i16 %708, ptr %696, align 2
  br label %709

709:                                              ; preds = %700, %695
  %710 = getelementptr inbounds %struct.fib6_info, ptr %495, i32 0, i32 4
  %711 = load i32, ptr %710, align 4
  %712 = getelementptr inbounds %struct.fib6_info, ptr %495, i32 0, i32 2
  store ptr null, ptr %712, align 4
  %713 = load ptr, ptr %24, align 4
  call fastcc void @fib6_purge_rt(ptr noundef %495, ptr noundef %283, ptr noundef %713) #16
  %714 = getelementptr inbounds %struct.fib6_node, ptr %283, i32 0, i32 7
  %715 = load volatile ptr, ptr %714, align 4
  %716 = icmp eq ptr %715, %495
  br i1 %716, label %717, label %718

717:                                              ; preds = %709
  store ptr null, ptr %714, align 4
  br label %718

718:                                              ; preds = %717, %709
  %719 = icmp eq ptr %495, null
  br i1 %719, label %730, label %720

720:                                              ; preds = %718
  %721 = getelementptr inbounds %struct.fib6_info, ptr %495, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %721) #16, !srcloc !9
  %722 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %721, ptr %721, i32 1, ptr elementtype(i32) %721) #16, !srcloc !14
  %723 = extractvalue { i32, i32, i32 } %722, 0
  %724 = icmp eq i32 %723, 1
  br i1 %724, label %728, label %725

725:                                              ; preds = %720
  %726 = icmp sgt i32 %723, 0
  br i1 %726, label %730, label %727, !prof !12

727:                                              ; preds = %725
  call void @refcount_warn_saturate(ptr noundef %721, i32 noundef 3) #16
  br label %730

728:                                              ; preds = %720
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  %729 = getelementptr inbounds %struct.fib6_info, ptr %495, i32 0, i32 19
  call void @call_rcu(ptr noundef %729, ptr noundef nonnull @fib6_info_destroy_rcu) #16
  br label %730

730:                                              ; preds = %728, %727, %725, %718
  %731 = icmp eq i32 %711, 0
  br i1 %731, label %805, label %732

732:                                              ; preds = %730
  %733 = load ptr, ptr %690, align 4
  %734 = icmp eq ptr %733, null
  br i1 %734, label %795, label %735

735:                                              ; preds = %732
  %736 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 12
  br label %737

737:                                              ; preds = %787, %735
  %738 = phi ptr [ %733, %735 ], [ %790, %787 ]
  %739 = phi ptr [ %690, %735 ], [ %789, %787 ]
  %740 = phi i32 [ %711, %735 ], [ %788, %787 ]
  %741 = getelementptr inbounds %struct.fib6_info, ptr %738, i32 0, i32 12
  %742 = load i32, ptr %741, align 4
  %743 = load i32, ptr %736, align 4
  %744 = icmp ugt i32 %742, %743
  br i1 %744, label %792, label %745

745:                                              ; preds = %737
  %746 = getelementptr inbounds %struct.fib6_info, ptr %738, i32 0, i32 9
  %747 = load i32, ptr %746, align 4
  %748 = and i32 %747, 262144
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %785

750:                                              ; preds = %745
  %751 = getelementptr inbounds %struct.fib6_info, ptr %738, i32 0, i32 20
  %752 = load ptr, ptr %751, align 4
  %753 = icmp eq ptr %752, null
  br i1 %753, label %754, label %785

754:                                              ; preds = %750
  %755 = getelementptr inbounds %struct.fib6_info, ptr %738, i32 0, i32 21
  %756 = getelementptr inbounds %struct.fib_nh_common, ptr %755, i32 0, i32 5
  %757 = load i8, ptr %756, align 2
  %758 = icmp eq i8 %757, 0
  br i1 %758, label %785, label %759

759:                                              ; preds = %754
  %760 = getelementptr inbounds %struct.fib6_info, ptr %738, i32 0, i32 1
  %761 = load ptr, ptr %760, align 4
  store ptr %761, ptr %739, align 4
  %762 = getelementptr inbounds %struct.fib6_info, ptr %738, i32 0, i32 2
  store ptr null, ptr %762, align 4
  %763 = load ptr, ptr %24, align 4
  call fastcc void @fib6_purge_rt(ptr noundef nonnull %738, ptr noundef %283, ptr noundef %763) #16
  %764 = load volatile ptr, ptr %714, align 4
  %765 = icmp eq ptr %764, %738
  br i1 %765, label %766, label %767

766:                                              ; preds = %759
  store ptr null, ptr %714, align 4
  br label %767

767:                                              ; preds = %766, %759
  %768 = getelementptr inbounds %struct.fib6_info, ptr %738, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %768) #16, !srcloc !9
  %769 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %768, ptr %768, i32 1, ptr elementtype(i32) %768) #16, !srcloc !14
  %770 = extractvalue { i32, i32, i32 } %769, 0
  %771 = icmp eq i32 %770, 1
  br i1 %771, label %775, label %772

772:                                              ; preds = %767
  %773 = icmp sgt i32 %770, 0
  br i1 %773, label %777, label %774, !prof !12

774:                                              ; preds = %772
  call void @refcount_warn_saturate(ptr noundef %768, i32 noundef 3) #16
  br label %777

775:                                              ; preds = %767
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  %776 = getelementptr inbounds %struct.fib6_info, ptr %738, i32 0, i32 19
  call void @call_rcu(ptr noundef %776, ptr noundef nonnull @fib6_info_destroy_rcu) #16
  br label %777

777:                                              ; preds = %775, %774, %772
  %778 = add i32 %740, -1
  %779 = load ptr, ptr %24, align 4
  %780 = getelementptr inbounds %struct.net, ptr %779, i32 0, i32 36, i32 8
  %781 = load ptr, ptr %780, align 8
  %782 = getelementptr inbounds %struct.rt6_statistics, ptr %781, i32 0, i32 2
  %783 = load i32, ptr %782, align 4
  %784 = add i32 %783, -1
  store i32 %784, ptr %782, align 4
  br label %787

785:                                              ; preds = %754, %750, %745
  %786 = getelementptr inbounds %struct.fib6_info, ptr %738, i32 0, i32 1
  br label %787

787:                                              ; preds = %785, %777
  %788 = phi i32 [ %778, %777 ], [ %740, %785 ]
  %789 = phi ptr [ %739, %777 ], [ %786, %785 ]
  %790 = load ptr, ptr %789, align 4
  %791 = icmp eq ptr %790, null
  br i1 %791, label %792, label %737

792:                                              ; preds = %787, %737
  %793 = phi i32 [ %788, %787 ], [ %740, %737 ]
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %805, label %795, !prof !12

795:                                              ; preds = %792, %732
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1318, i32 noundef 9, ptr noundef null) #16
  br label %805

796:                                              ; preds = %598
  store i32 0, ptr %500, align 4
  %797 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 3, i32 0, i32 1
  %798 = load ptr, ptr %797, align 4
  %799 = getelementptr inbounds %struct.list_head, ptr %600, i32 0, i32 1
  store ptr %798, ptr %799, align 4
  store volatile ptr %600, ptr %798, align 4
  store volatile ptr %599, ptr %599, align 4
  store ptr %599, ptr %797, align 4
  call void @rt6_multipath_rebalance(ptr noundef %603) #16
  br label %860

800:                                              ; preds = %605
  store i32 0, ptr %500, align 4
  %801 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 3, i32 0, i32 1
  %802 = load ptr, ptr %801, align 4
  %803 = load ptr, ptr %599, align 4
  %804 = getelementptr inbounds %struct.list_head, ptr %803, i32 0, i32 1
  store ptr %802, ptr %804, align 4
  store volatile ptr %803, ptr %802, align 4
  store volatile ptr %599, ptr %599, align 4
  store ptr %599, ptr %801, align 4
  call void @rt6_multipath_rebalance(ptr noundef %613) #16
  br label %860

805:                                              ; preds = %795, %792, %730, %645, %634
  %806 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 20
  %807 = load ptr, ptr %806, align 4
  %808 = icmp eq ptr %807, null
  br i1 %808, label %815, label %809

809:                                              ; preds = %805
  %810 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 3
  %811 = getelementptr inbounds %struct.nexthop, ptr %807, i32 0, i32 2
  %812 = load ptr, ptr %811, align 4
  %813 = getelementptr inbounds %struct.list_head, ptr %812, i32 0, i32 1
  store ptr %810, ptr %813, align 4
  store ptr %812, ptr %810, align 4
  %814 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 3, i32 0, i32 1
  store ptr %811, ptr %814, align 4
  store volatile ptr %810, ptr %811, align 4
  br label %815

815:                                              ; preds = %809, %805
  %816 = load ptr, ptr %24, align 4
  %817 = getelementptr inbounds %struct.net, ptr %816, i32 0, i32 36, i32 30
  br label %818

818:                                              ; preds = %827, %815
  %819 = load volatile i32, ptr %817, align 4
  %820 = icmp eq i32 %819, 2147483647
  %821 = add i32 %819, 1
  %822 = select i1 %820, i32 1, i32 %821
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %817) #16, !srcloc !9
  br label %823

823:                                              ; preds = %823, %818
  %824 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %817, ptr %817, i32 %819, i32 %822, ptr elementtype(i32) %817) #16, !srcloc !10
  %825 = extractvalue { i32, i32 } %824, 0
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %823

827:                                              ; preds = %823
  %828 = extractvalue { i32, i32 } %824, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  %829 = icmp eq i32 %828, %819
  br i1 %829, label %830, label %818

830:                                              ; preds = %827
  %831 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 2
  %832 = load ptr, ptr %831, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !20
  %833 = icmp eq ptr %832, null
  br i1 %833, label %839, label %834

834:                                              ; preds = %834, %830
  %835 = phi ptr [ %837, %834 ], [ %832, %830 ]
  %836 = getelementptr inbounds %struct.fib6_node, ptr %835, i32 0, i32 6
  store volatile i32 %822, ptr %836, align 4
  %837 = load ptr, ptr %835, align 4
  %838 = icmp eq ptr %837, null
  br i1 %838, label %839, label %834

839:                                              ; preds = %834, %830
  %840 = load ptr, ptr %24, align 4
  %841 = getelementptr inbounds %struct.net, ptr %840, i32 0, i32 36, i32 9
  %842 = getelementptr inbounds %struct.net, ptr %840, i32 0, i32 36, i32 9, i32 0, i32 1
  %843 = load volatile ptr, ptr %842, align 4
  %844 = icmp eq ptr %843, null
  br i1 %844, label %845, label %878

845:                                              ; preds = %839
  %846 = load i32, ptr %300, align 4
  %847 = and i32 %846, 4194304
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %878, label %849

849:                                              ; preds = %845
  %850 = load volatile i32, ptr @jiffies, align 64
  %851 = getelementptr inbounds %struct.net, ptr %840, i32 0, i32 36, i32 1, i32 9
  %852 = load i32, ptr %851, align 4
  %853 = add i32 %852, %850
  %854 = call i32 @mod_timer(ptr noundef %841, i32 noundef %853) #16
  br label %878

855:                                              ; preds = %256, %207, %202, %190, %137, %133, %81
  %856 = phi ptr [ inttoptr (i32 -2 to ptr), %133 ], [ inttoptr (i32 -12 to ptr), %137 ], [ inttoptr (i32 -12 to ptr), %202 ], [ inttoptr (i32 -12 to ptr), %207 ], [ inttoptr (i32 -12 to ptr), %256 ], [ inttoptr (i32 -2 to ptr), %81 ], [ inttoptr (i32 -12 to ptr), %190 ]
  %857 = ptrtoint ptr %856 to i32
  br label %878

858:                                              ; preds = %282
  %859 = ptrtoint ptr %283 to i32
  br label %878

860:                                              ; preds = %800, %796, %664, %656, %595, %442, %436, %423, %409, %344
  %861 = phi i32 [ %593, %800 ], [ %593, %796 ], [ -2, %656 ], [ %673, %664 ], [ %593, %595 ], [ -17, %442 ], [ -17, %436 ], [ -17, %423 ], [ -17, %409 ], [ -17, %344 ]
  %862 = icmp eq ptr %283, null
  br i1 %862, label %878, label %863

863:                                              ; preds = %860
  %864 = getelementptr inbounds %struct.fib6_node, ptr %283, i32 0, i32 5
  %865 = load i16, ptr %864, align 2
  %866 = zext i16 %865 to i32
  %867 = and i32 %866, 6
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %875, label %869

869:                                              ; preds = %863
  %870 = and i32 %866, 1
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %878, label %872

872:                                              ; preds = %869
  %873 = load volatile ptr, ptr %286, align 4
  %874 = icmp eq ptr %873, null
  br i1 %874, label %875, label %878

875:                                              ; preds = %872, %863
  %876 = load ptr, ptr %24, align 4
  %877 = call fastcc ptr @fib6_repair_tree(ptr noundef %876, ptr noundef nonnull %283)
  br label %878

878:                                              ; preds = %875, %872, %869, %860, %858, %855, %849, %845, %839
  %879 = phi i32 [ %861, %860 ], [ %861, %869 ], [ %861, %872 ], [ %861, %875 ], [ %859, %858 ], [ %857, %855 ], [ 0, %849 ], [ 0, %845 ], [ 0, %839 ]
  ret i32 %879
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fib6_repair_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fib6_node, ptr %1, i32 0, i32 5
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 13
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 12
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 8
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 6
  %13 = load ptr, ptr %12, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %14 = getelementptr inbounds %struct.fib6_node, ptr %1, i32 0, i32 3
  store volatile ptr %13, ptr %14, align 4
  br label %159

15:                                               ; preds = %157, %7
  %16 = phi i16 [ %158, %157 ], [ %4, %7 ]
  %17 = phi ptr [ %22, %157 ], [ %1, %7 ]
  %18 = getelementptr inbounds %struct.fib6_node, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fib6_node, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr inbounds %struct.fib6_node, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fib6_node, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fib6_node, ptr %17, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.fib6_node, ptr %22, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fib6_node, ptr %17, i32 0, i32 5
  %32 = and i16 %16, 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34, !prof !12

34:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1814, i32 noundef 9, ptr noundef null) #16
  %35 = load i16, ptr %31, align 2
  br label %36

36:                                               ; preds = %34, %15
  %37 = phi i16 [ %35, %34 ], [ %16, %15 ]
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %41, label %40, !prof !12

40:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1815, i32 noundef 9, ptr noundef null) #16
  br label %41

41:                                               ; preds = %40, %36
  %42 = icmp eq ptr %28, null
  br i1 %42, label %44, label %43, !prof !12

43:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1816, i32 noundef 9, ptr noundef null) #16
  br label %44

44:                                               ; preds = %43, %41
  %45 = icmp ne ptr %19, null
  %46 = zext i1 %45 to i32
  %47 = icmp eq ptr %21, null
  %48 = or i32 %46, 2
  %49 = select i1 %47, ptr %19, ptr %21
  %50 = select i1 %47, i32 %46, i32 %48
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %94

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.fib6_node, ptr %17, i32 0, i32 3
  %54 = load i16, ptr %31, align 2
  %55 = and i16 %54, 2
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 6
  br label %74

59:                                               ; preds = %68, %52
  %60 = phi ptr [ null, %68 ], [ %17, %52 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.fib6_node, ptr %60, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.fib6_node, ptr %64, i32 0, i32 3
  br label %74

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.fib6_node, ptr %60, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %59, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.fib6_node, ptr %70, i32 0, i32 3
  br label %74

74:                                               ; preds = %72, %66, %57
  %75 = phi ptr [ %58, %57 ], [ %67, %66 ], [ %73, %72 ]
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %74, %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1838, i32 noundef 9, ptr noundef null) #16
  %79 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 6
  %80 = load ptr, ptr %79, align 16
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi ptr [ %76, %74 ], [ %80, %78 ]
  %83 = getelementptr inbounds %struct.fib6_info, ptr %82, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #16, !srcloc !9
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #16, !srcloc !22
  %85 = extractvalue { i32, i32, i32 } %84, 0
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87, !prof !23

87:                                               ; preds = %81
  %88 = add i32 %85, 1
  %89 = or i32 %88, %85
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %93, label %91, !prof !12

91:                                               ; preds = %87, %81
  %92 = phi i32 [ 2, %81 ], [ 1, %87 ]
  tail call void @refcount_warn_saturate(ptr noundef %83, i32 noundef %92) #16
  br label %93

93:                                               ; preds = %91, %87
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !36
  store volatile ptr %82, ptr %53, align 4
  br label %159

94:                                               ; preds = %44
  %95 = icmp eq ptr %24, %17
  br i1 %95, label %96, label %97

96:                                               ; preds = %94
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !37
  store volatile ptr %49, ptr %23, align 4
  br label %101

97:                                               ; preds = %94
  %98 = icmp eq ptr %26, %17
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !38
  store volatile ptr %49, ptr %25, align 4
  br label %101

100:                                              ; preds = %97
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1861, i32 noundef 9, ptr noundef null) #16
  br label %101

101:                                              ; preds = %100, %99, %96
  %102 = icmp eq ptr %49, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %101
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  store volatile ptr %22, ptr %49, align 4
  br label %104

104:                                              ; preds = %103, %101
  tail call void @_raw_read_lock(ptr noundef %8) #16
  %105 = load ptr, ptr %9, align 4
  %106 = icmp eq ptr %105, %9
  br i1 %106, label %131, label %107

107:                                              ; preds = %104
  %108 = and i32 %50, 2
  %109 = icmp eq i32 %108, 0
  br label %110

110:                                              ; preds = %128, %107
  %111 = phi ptr [ %105, %107 ], [ %129, %128 ]
  %112 = getelementptr inbounds %struct.fib6_walker, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %17
  br i1 %102, label %115, label %118

115:                                              ; preds = %110
  br i1 %114, label %116, label %128

116:                                              ; preds = %115
  store ptr %22, ptr %112, align 4
  %117 = getelementptr inbounds %struct.fib6_walker, ptr %111, i32 0, i32 4
  store i32 1, ptr %117, align 4
  br label %128

118:                                              ; preds = %110
  br i1 %114, label %119, label %128

119:                                              ; preds = %118
  store ptr %49, ptr %112, align 4
  %120 = getelementptr inbounds %struct.fib6_walker, ptr %111, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  br i1 %109, label %125, label %122

122:                                              ; preds = %119
  %123 = icmp eq i32 %121, 0
  %124 = select i1 %123, i32 0, i32 3
  store i32 %124, ptr %120, align 4
  br label %128

125:                                              ; preds = %119
  %126 = icmp ugt i32 %121, 1
  %127 = select i1 %126, i32 3, i32 0
  store i32 %127, ptr %120, align 4
  br label %128

128:                                              ; preds = %125, %122, %118, %116, %115
  %129 = load ptr, ptr %111, align 4
  %130 = icmp eq ptr %129, %9
  br i1 %130, label %131, label %110

131:                                              ; preds = %128, %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #16, !srcloc !9
  %132 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %8) #16, !srcloc !41
  %133 = extractvalue { i32, i32 } %132, 0
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !42
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !43
  br label %136

136:                                              ; preds = %135, %131
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  %137 = getelementptr inbounds %struct.fib6_node, ptr %17, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %137, ptr noundef nonnull @node_free_rcu) #16
  %138 = load ptr, ptr %10, align 8
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, -1
  store i32 %140, ptr %138, align 4
  %141 = getelementptr inbounds %struct.fib6_node, ptr %22, i32 0, i32 5
  %142 = load i16, ptr %141, align 2
  %143 = and i16 %142, 4
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %136
  store volatile ptr null, ptr %29, align 4
  %146 = icmp eq ptr %30, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.fib6_info, ptr %30, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #16, !srcloc !9
  %149 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 1, ptr elementtype(i32) %148) #16, !srcloc !14
  %150 = extractvalue { i32, i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = icmp sgt i32 %150, 0
  br i1 %153, label %157, label %154, !prof !12

154:                                              ; preds = %152
  tail call void @refcount_warn_saturate(ptr noundef %148, i32 noundef 3) #16
  br label %157

155:                                              ; preds = %147
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  %156 = getelementptr inbounds %struct.fib6_info, ptr %30, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %156, ptr noundef nonnull @fib6_info_destroy_rcu) #16
  br label %157

157:                                              ; preds = %155, %154, %152, %145
  %158 = load i16, ptr %141, align 2
  br label %15

159:                                              ; preds = %136, %93, %11
  %160 = phi ptr [ %1, %11 ], [ %22, %93 ], [ %22, %136 ]
  ret ptr %160
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib6_node_lookup(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %1, null
  %5 = select i1 %4, i32 0, i32 36
  br i1 %4, label %69, label %6, !prof !23

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %22, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 4
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 31
  %12 = xor i32 %11, 7
  %13 = shl nuw i32 1, %12
  %14 = lshr i32 %10, 5
  %15 = getelementptr i32, ptr %1, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %13, %16
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 2
  %20 = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 1
  %21 = select i1 %18, ptr %20, ptr %19
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6

24:                                               ; preds = %6
  %25 = icmp eq ptr %7, null
  br i1 %25, label %69, label %26

26:                                               ; preds = %63, %24
  %27 = phi ptr [ %64, %63 ], [ %7, %24 ]
  %28 = getelementptr inbounds %struct.fib6_node, ptr %27, i32 0, i32 5
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 4
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.fib6_node, ptr %27, i32 0, i32 3
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %60, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %34, i32 %5
  %38 = getelementptr inbounds %struct.rt6key, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 5
  %41 = icmp ult i32 %39, 32
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = shl nuw nsw i32 %40, 2
  %44 = tail call i32 @bcmp(ptr %37, ptr nonnull %1, i32 %43) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42, %36
  %47 = and i32 %39, 31
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = getelementptr i32, ptr %37, i32 %40
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i32, ptr %1, i32 %40
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %53, %51
  %55 = sub nuw nsw i32 32, %47
  %56 = shl nsw i32 -1, %55
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #16
  %58 = and i32 %54, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %49, %42, %32, %26
  %61 = and i16 %29, 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load volatile ptr, ptr %27, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %26

66:                                               ; preds = %49, %46
  %67 = and i16 %29, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66, %63, %60, %24, %3
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi ptr [ %0, %69 ], [ %27, %66 ]
  ret ptr %71
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib6_locate(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #5 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %79, label %8

8:                                                ; preds = %54, %6
  %9 = phi ptr [ %67, %54 ], [ %0, %6 ]
  %10 = phi ptr [ %57, %54 ], [ null, %6 ]
  %11 = getelementptr inbounds %struct.fib6_node, ptr %9, i32 0, i32 3
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.fib6_node, ptr %9, i32 0, i32 4
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  br i1 %13, label %17, label %22

17:                                               ; preds = %8
  %18 = icmp slt i32 %16, %2
  br i1 %18, label %19, label %69

19:                                               ; preds = %17
  %20 = and i32 %16, 31
  %21 = lshr i32 %16, 5
  br label %54

22:                                               ; preds = %8
  %23 = icmp sgt i32 %16, %2
  br i1 %23, label %69, label %24

24:                                               ; preds = %22
  %25 = getelementptr i8, ptr %12, i32 36
  %26 = lshr i32 %16, 5
  %27 = icmp ult i16 %15, 32
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = shl nuw nsw i32 %26, 2
  %30 = tail call i32 @bcmp(ptr %25, ptr %1, i32 %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %28, %24
  %33 = and i32 %16, 31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = getelementptr i32, ptr %25, i32 %26
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i32, ptr %1, i32 %26
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, %37
  %41 = sub nuw nsw i32 32, %33
  %42 = shl nsw i32 -1, %41
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #16
  %44 = and i32 %40, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %35, %32
  %47 = icmp eq i32 %16, %2
  br i1 %47, label %73, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.fib6_node, ptr %9, i32 0, i32 5
  %50 = load i16, ptr %49, align 2
  %51 = and i16 %50, 4
  %52 = icmp eq i16 %51, 0
  %53 = select i1 %52, ptr %10, ptr %9
  br label %54

54:                                               ; preds = %48, %19
  %55 = phi i32 [ %21, %19 ], [ %26, %48 ]
  %56 = phi i32 [ %20, %19 ], [ %33, %48 ]
  %57 = phi ptr [ %10, %19 ], [ %53, %48 ]
  %58 = xor i32 %56, 7
  %59 = shl nuw i32 1, %58
  %60 = getelementptr i32, ptr %1, i32 %55
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %59, %61
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.fib6_node, ptr %9, i32 0, i32 2
  %65 = getelementptr inbounds %struct.fib6_node, ptr %9, i32 0, i32 1
  %66 = select i1 %63, ptr %65, ptr %64
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %8

69:                                               ; preds = %54, %35, %28, %22, %17
  %70 = phi ptr [ %10, %35 ], [ %10, %28 ], [ %10, %22 ], [ %10, %17 ], [ %57, %54 ]
  %71 = icmp eq ptr %70, null
  %72 = select i1 %5, i1 true, i1 %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %69, %46
  %74 = phi ptr [ %70, %69 ], [ %9, %46 ]
  %75 = getelementptr inbounds %struct.fib6_node, ptr %74, i32 0, i32 5
  %76 = load i16, ptr %75, align 2
  %77 = and i16 %76, 4
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %69, %6
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi ptr [ null, %79 ], [ %74, %73 ]
  ret ptr %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib6_del(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.fib6_entry_notifier_info, align 8
  %4 = alloca %struct.fib6_entry_notifier_info, align 4
  %5 = getelementptr inbounds %struct.nl_info, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 36, i32 6
  %8 = load ptr, ptr %7, align 16
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %199, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %199, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fib6_node, ptr %12, i32 0, i32 5
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %20, !prof !23

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2017, i32 noundef 9, ptr noundef null) #16
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.fib6_node, ptr %12, i32 0, i32 3
  %22 = getelementptr inbounds %struct.fib6_node, ptr %12, i32 0, i32 7
  %23 = getelementptr inbounds %struct.nl_info, ptr %1, i32 0, i32 3
  %24 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %3, i32 0, i32 1
  %25 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %3, i32 0, i32 2
  %26 = getelementptr inbounds %struct.fib_notifier_info, ptr %4, i32 0, i32 1
  %27 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %4, i32 0, i32 1
  %28 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %4, i32 0, i32 2
  %29 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 4
  %30 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 1
  %31 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 4
  %33 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 12
  %34 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 3
  %35 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 3, i32 0, i32 1
  %36 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 5
  %37 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 19
  br label %38

38:                                               ; preds = %197, %20
  %39 = phi ptr [ null, %20 ], [ %198, %197 ]
  %40 = phi ptr [ %21, %20 ], [ %198, %197 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %199, label %43

43:                                               ; preds = %38
  %44 = icmp eq ptr %41, %0
  br i1 %44, label %45, label %195

45:                                               ; preds = %43
  %46 = load ptr, ptr %5, align 4
  %47 = load ptr, ptr %21, align 4
  %48 = icmp eq ptr %47, %0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, ptr %29, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load volatile ptr, ptr %30, align 4
  %54 = icmp eq ptr %53, null
  br label %55

55:                                               ; preds = %52, %49, %45
  %56 = phi i1 [ false, %49 ], [ false, %45 ], [ %54, %52 ]
  %57 = phi ptr [ null, %49 ], [ null, %45 ], [ %53, %52 ]
  %58 = load ptr, ptr %31, align 4
  store ptr %58, ptr %40, align 4
  store ptr null, ptr %11, align 4
  %59 = getelementptr inbounds %struct.net, ptr %46, i32 0, i32 36, i32 8
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.rt6_statistics, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %61, align 4
  %64 = load ptr, ptr %59, align 8
  %65 = getelementptr inbounds %struct.rt6_statistics, ptr %64, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  %68 = load volatile ptr, ptr %22, align 4
  %69 = icmp eq ptr %68, %0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  store ptr null, ptr %22, align 4
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, ptr %32, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %118, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %33, align 4
  %76 = getelementptr inbounds %struct.fib6_info, ptr %47, i32 0, i32 12
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.fib6_info, ptr %47, i32 0, i32 9
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 262144
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.fib6_info, ptr %47, i32 0, i32 20
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.fib6_info, ptr %47, i32 0, i32 21
  %90 = getelementptr inbounds %struct.fib_nh_common, ptr %89, i32 0, i32 5
  %91 = load i8, ptr %90, align 2
  %92 = icmp ne i8 %91, 0
  %93 = select i1 %92, i1 true, i1 %56
  br label %94

94:                                               ; preds = %88, %84, %79, %74
  %95 = phi i1 [ %56, %74 ], [ %56, %84 ], [ %56, %79 ], [ %93, %88 ]
  %96 = load ptr, ptr %34, align 4
  %97 = getelementptr i8, ptr %96, i32 -12
  %98 = load ptr, ptr %96, align 4
  %99 = getelementptr i8, ptr %98, i32 -12
  %100 = icmp eq ptr %97, %0
  br i1 %100, label %113, label %101

101:                                              ; preds = %101, %94
  %102 = phi ptr [ %109, %101 ], [ %99, %94 ]
  %103 = phi ptr [ %108, %101 ], [ %98, %94 ]
  %104 = phi ptr [ %102, %101 ], [ %97, %94 ]
  %105 = getelementptr inbounds %struct.fib6_info, ptr %104, i32 0, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, -1
  store i32 %107, ptr %105, align 4
  %108 = load ptr, ptr %103, align 4
  %109 = getelementptr i8, ptr %108, i32 -12
  %110 = icmp eq ptr %102, %0
  br i1 %110, label %111, label %101

111:                                              ; preds = %101
  %112 = load ptr, ptr %34, align 4
  br label %113

113:                                              ; preds = %111, %94
  %114 = phi ptr [ %96, %94 ], [ %112, %111 ]
  %115 = phi ptr [ %99, %94 ], [ %109, %111 ]
  store i32 0, ptr %32, align 4
  %116 = load ptr, ptr %35, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  store ptr %116, ptr %117, align 4
  store volatile ptr %114, ptr %116, align 4
  store volatile ptr %34, ptr %34, align 4
  store ptr %34, ptr %35, align 4
  call void @rt6_multipath_rebalance(ptr noundef %115) #16
  br label %118

118:                                              ; preds = %113, %71
  %119 = phi i1 [ %95, %113 ], [ %56, %71 ]
  %120 = getelementptr inbounds %struct.net, ptr %46, i32 0, i32 36, i32 13
  call void @_raw_read_lock(ptr noundef %120) #16
  %121 = getelementptr inbounds %struct.net, ptr %46, i32 0, i32 36, i32 12
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %121
  br i1 %123, label %140, label %124

124:                                              ; preds = %137, %118
  %125 = phi ptr [ %138, %137 ], [ %122, %118 ]
  %126 = getelementptr inbounds %struct.fib6_walker, ptr %125, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.fib6_walker, ptr %125, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, %0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load ptr, ptr %31, align 4
  store ptr %134, ptr %130, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 3, ptr %126, align 4
  br label %137

137:                                              ; preds = %136, %133, %129, %124
  %138 = load ptr, ptr %125, align 4
  %139 = icmp eq ptr %138, %121
  br i1 %139, label %140, label %124

140:                                              ; preds = %137, %118
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !40
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %120) #16, !srcloc !9
  %141 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %120) #16, !srcloc !41
  %142 = extractvalue { i32, i32 } %141, 0
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !42
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !43
  br label %145

145:                                              ; preds = %144, %140
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  %146 = load volatile ptr, ptr %21, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = load i16, ptr %15, align 2
  %150 = and i16 %149, 1
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = and i16 %149, -5
  store i16 %153, ptr %15, align 2
  %154 = load ptr, ptr %59, align 8
  %155 = getelementptr inbounds %struct.rt6_statistics, ptr %154, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, -1
  store i32 %157, ptr %155, align 4
  br label %158

158:                                              ; preds = %152, %148
  %159 = call fastcc ptr @fib6_repair_tree(ptr noundef %46, ptr noundef nonnull %12) #16
  br label %160

160:                                              ; preds = %158, %145
  %161 = phi ptr [ %12, %145 ], [ %159, %158 ]
  call fastcc void @fib6_purge_rt(ptr noundef %0, ptr noundef %161, ptr noundef %46) #16
  %162 = load i8, ptr %23, align 4
  %163 = and i8 %162, 2
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %160
  br i1 %119, label %166, label %172

166:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4
  store ptr null, ptr %26, align 4
  store ptr %0, ptr %27, align 4
  store i32 0, ptr %28, align 4
  %167 = load ptr, ptr %0, align 4
  %168 = getelementptr inbounds %struct.fib6_table, ptr %167, i32 0, i32 6
  %169 = load i32, ptr %168, align 4
  %170 = add i32 %169, 1
  store i32 %170, ptr %168, align 4
  %171 = call i32 @call_fib6_notifiers(ptr noundef %46, i32 noundef 3, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %182

172:                                              ; preds = %165
  %173 = icmp eq ptr %57, null
  br i1 %173, label %182, label %174

174:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  store ptr %57, ptr %24, align 8
  %175 = getelementptr inbounds %struct.fib6_info, ptr %57, i32 0, i32 4
  %176 = load i32, ptr %175, align 4
  store i32 %176, ptr %25, align 4
  %177 = load ptr, ptr %57, align 4
  %178 = getelementptr inbounds %struct.fib6_table, ptr %177, i32 0, i32 6
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 4
  %181 = call i32 @call_fib6_notifiers(ptr noundef %46, i32 noundef 0, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  br label %182

182:                                              ; preds = %174, %172, %166, %160
  %183 = load i8, ptr %23, align 4
  %184 = and i8 %183, 1
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  call void @inet6_rt_notify(i32 noundef 25, ptr noundef %0, ptr noundef %1, i32 noundef 0) #16
  br label %187

187:                                              ; preds = %186, %182
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #16, !srcloc !9
  %188 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #16, !srcloc !14
  %189 = extractvalue { i32, i32, i32 } %188, 0
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = icmp sgt i32 %189, 0
  br i1 %192, label %197, label %193, !prof !12

193:                                              ; preds = %191
  call void @refcount_warn_saturate(ptr noundef %36, i32 noundef 3) #16
  br label %197

194:                                              ; preds = %187
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  call void @call_rcu(ptr noundef %37, ptr noundef nonnull @fib6_info_destroy_rcu) #16
  br label %197

195:                                              ; preds = %43
  %196 = getelementptr inbounds %struct.fib6_info, ptr %41, i32 0, i32 1
  br label %197

197:                                              ; preds = %195, %194, %193, %191
  %198 = phi ptr [ %196, %195 ], [ %39, %191 ], [ %39, %193 ], [ %39, %194 ]
  br i1 %44, label %199, label %38

199:                                              ; preds = %197, %38, %10, %2
  %200 = phi i32 [ -2, %2 ], [ -2, %10 ], [ -2, %38 ], [ 0, %197 ]
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_clean_all(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @__fib6_clean_all(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__fib6_clean_all(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.fib6_cleaner, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 10
  %8 = zext i1 %4 to i8
  %9 = getelementptr inbounds i8, ptr %6, i32 16
  %10 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 1
  %11 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 8
  %12 = getelementptr inbounds %struct.fib6_cleaner, ptr %6, i32 0, i32 2
  %13 = getelementptr inbounds %struct.fib6_cleaner, ptr %6, i32 0, i32 3
  %14 = getelementptr inbounds %struct.fib6_cleaner, ptr %6, i32 0, i32 4
  %15 = getelementptr inbounds %struct.fib6_cleaner, ptr %6, i32 0, i32 1
  %16 = getelementptr inbounds %struct.fib6_cleaner, ptr %6, i32 0, i32 5
  %17 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 13
  %19 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 12
  %20 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  br label %21

21:                                               ; preds = %42, %5
  %22 = phi i32 [ 0, %5 ], [ %43, %42 ]
  %23 = load ptr, ptr %7, align 16
  %24 = getelementptr %struct.hlist_head, ptr %23, i32 %22
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %39, %21
  %28 = phi ptr [ %40, %39 ], [ %25, %21 ]
  %29 = getelementptr inbounds %struct.fib6_table, ptr %28, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %29) #16
  %30 = getelementptr inbounds %struct.fib6_table, ptr %28, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %9, i8 0, i32 48, i1 false) #16, !annotation !45
  store ptr %30, ptr %10, align 4
  store ptr @fib6_clean_node, ptr %11, align 4
  store ptr %1, ptr %12, align 4
  store i32 %2, ptr %13, align 4
  store ptr %3, ptr %14, align 4
  store ptr %0, ptr %15, align 4
  store i8 %8, ptr %16, align 4
  store ptr %30, ptr %17, align 4
  call void @_raw_write_lock_bh(ptr noundef %18) #16
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %6, ptr %32, align 4
  store ptr %31, ptr %6, align 4
  store ptr %19, ptr %20, align 4
  store volatile ptr %6, ptr %19, align 4
  call void @_raw_write_unlock_bh(ptr noundef %18) #16
  %33 = call fastcc i32 @fib6_walk_continue(ptr noundef nonnull %6) #16
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  call void @_raw_write_lock_bh(ptr noundef %18) #16
  %36 = load ptr, ptr %20, align 4
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  call void @_raw_write_unlock_bh(ptr noundef %18) #16
  br label %39

39:                                               ; preds = %35, %27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  call void @_raw_spin_unlock_bh(ptr noundef %29) #16
  %40 = load volatile ptr, ptr %28, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %27

42:                                               ; preds = %39, %21
  %43 = add nuw nsw i32 %22, 1
  %44 = icmp eq i32 %43, 256
  br i1 %44, label %45, label %21

45:                                               ; preds = %42
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_clean_all_skip_notify(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @__fib6_clean_all(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_run_gc(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.fib6_gc_args, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 14
  br i1 %2, label %6, label %7

6:                                                ; preds = %3
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #16
  br label %15

7:                                                ; preds = %3
  %8 = tail call i32 @_raw_spin_trylock_bh(ptr noundef %5) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 9
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = add i32 %12, 100
  %14 = tail call i32 @mod_timer(ptr noundef %11, i32 noundef %13) #16
  br label %38

15:                                               ; preds = %7, %6
  %16 = icmp eq i32 %0, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 1, i32 9
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %19, %17 ], [ %0, %15 ]
  store i32 %21, ptr %4, align 8
  %22 = getelementptr inbounds %struct.fib6_gc_args, ptr %4, i32 0, i32 1
  store i32 0, ptr %22, align 4
  call fastcc void @__fib6_clean_all(ptr noundef %1, ptr noundef nonnull @fib6_age, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext false) #16
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 16
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %22, align 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 9
  br i1 %26, label %34, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 1, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %23
  %32 = call i32 @round_jiffies(i32 noundef %31) #16
  %33 = call i32 @mod_timer(ptr noundef %27, i32 noundef %32) #16
  br label %36

34:                                               ; preds = %20
  %35 = call i32 @del_timer(ptr noundef %27) #16
  br label %36

36:                                               ; preds = %34, %28
  %37 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 14
  call void @_raw_spin_unlock_bh(ptr noundef %37) #16
  br label %38

38:                                               ; preds = %36, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib6_age(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4194304
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = sub i32 %10, %3
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.fib6_gc_args, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %8, %2
  tail call void @rt6_age_exceptions(ptr noundef %0, ptr noundef %1, i32 noundef %3) #16
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi i32 [ 0, %19 ], [ -1, %12 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @fib6_init() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 36, i32 noundef 0, i32 noundef 8192, ptr noundef null) #16
  store ptr %1, ptr @fib6_node_kmem, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @fib6_net_ops) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 26, ptr noundef null, ptr noundef nonnull @inet6_dump_fib, i32 noundef 0) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  store ptr @fib6_flush_trees, ptr @__fib6_flush_trees, align 4
  br label %10

10:                                               ; preds = %13, %9, %0
  %11 = phi i32 [ %14, %13 ], [ 0, %9 ], [ -12, %0 ]
  ret i32 %11

12:                                               ; preds = %6
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @fib6_net_ops) #16
  br label %13

13:                                               ; preds = %12, %3
  %14 = phi i32 [ %4, %3 ], [ %7, %12 ]
  %15 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_destroy(ptr noundef %15) #16
  br label %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_dump_fib(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rt6_rtnl_dump_arg, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.inet6_dump_fib.arg, i32 32, i1 false)
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %7 = load i8, ptr %6, align 4, !range !46
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, ptr %3, i32 0, i32 3
  %11 = call i32 @ip_valid_fib_dump_req(ptr noundef nonnull @init_net, ptr noundef %5, ptr noundef %10, ptr noundef %1) #16
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %140, label %24

13:                                               ; preds = %2
  %14 = load i32, ptr %5, align 4
  %15 = add i32 %14, -28
  %16 = icmp ult i32 %15, -12
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %5, i32 24
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, ptr %3, i32 0, i32 3, i32 6
  store i32 2048, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %17, %13, %9
  %25 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %26 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = inttoptr i32 %27 to ptr
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  store ptr @fib6_dump_done, ptr %31, align 4
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %36 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 2848, i32 noundef 44) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %140, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.fib6_walker, ptr %36, i32 0, i32 8
  store ptr @fib6_dump_node, ptr %39, align 4
  %40 = ptrtoint ptr %36 to i32
  store i32 %40, ptr %26, align 4
  br label %41

41:                                               ; preds = %38, %24
  %42 = phi ptr [ %28, %24 ], [ %36, %38 ]
  store ptr %0, ptr %3, align 4
  %43 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, ptr %3, i32 0, i32 1
  store ptr %1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, ptr %3, i32 0, i32 2
  store ptr @init_net, ptr %44, align 4
  %45 = getelementptr inbounds %struct.fib6_walker, ptr %42, i32 0, i32 9
  store ptr %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, ptr %3, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %81, label %49

49:                                               ; preds = %41
  %50 = and i32 %47, 255
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %51 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 10), align 16
  %52 = getelementptr %struct.hlist_head, ptr %51, i32 %50
  br label %53

53:                                               ; preds = %57, %49
  %54 = phi ptr [ %52, %49 ], [ %55, %57 ]
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.fib6_table, ptr %55, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %47
  br i1 %60, label %74, label %53

61:                                               ; preds = %53
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %62 = load ptr, ptr %4, align 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 16
  br i1 %64, label %115, label %65

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %62, i32 16
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 10
  br i1 %68, label %69, label %115

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %71 = load ptr, ptr %70, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_dump_fib.__msg) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %140, label %73

73:                                               ; preds = %69
  store ptr @inet6_dump_fib.__msg, ptr %71, align 4
  br label %140

74:                                               ; preds = %57
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %75 = load i32, ptr %25, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %115

77:                                               ; preds = %74
  %78 = call fastcc i32 @fib6_dump_table(ptr noundef nonnull %55, ptr noundef %0, ptr noundef %1)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %77
  store i32 1, ptr %25, align 4
  br label %115

81:                                               ; preds = %41
  %82 = load i32, ptr %25, align 4
  %83 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %85 = icmp ult i32 %82, 256
  br i1 %85, label %86, label %108

86:                                               ; preds = %104, %81
  %87 = phi i32 [ %106, %104 ], [ %82, %81 ]
  %88 = phi i32 [ 0, %104 ], [ %84, %81 ]
  %89 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 10), align 16
  %90 = getelementptr %struct.hlist_head, ptr %89, i32 %87
  %91 = load volatile ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %104, label %93

93:                                               ; preds = %100, %86
  %94 = phi ptr [ %102, %100 ], [ %91, %86 ]
  %95 = phi i32 [ %101, %100 ], [ 0, %86 ]
  %96 = icmp ult i32 %95, %88
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = call fastcc i32 @fib6_dump_table(ptr noundef nonnull %94, ptr noundef %0, ptr noundef %1)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97, %93
  %101 = add i32 %95, 1
  %102 = load volatile ptr, ptr %94, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %93

104:                                              ; preds = %100, %86
  %105 = phi i32 [ 0, %86 ], [ %101, %100 ]
  %106 = add nuw nsw i32 %87, 1
  %107 = icmp eq i32 %106, 256
  br i1 %107, label %108, label %86

108:                                              ; preds = %104, %97, %81
  %109 = phi i32 [ %82, %81 ], [ %87, %97 ], [ 256, %104 ]
  %110 = phi i32 [ 0, %81 ], [ %98, %97 ], [ 0, %104 ]
  %111 = phi i32 [ 0, %81 ], [ %95, %97 ], [ %105, %104 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  store i32 %111, ptr %83, align 4
  store i32 %109, ptr %25, align 4
  br label %112

112:                                              ; preds = %108, %77
  %113 = phi i32 [ %78, %77 ], [ %110, %108 ]
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112, %80, %74, %65, %61
  %116 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %117 = load i32, ptr %116, align 8
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %140

119:                                              ; preds = %115, %112
  %120 = phi i32 [ %117, %115 ], [ %113, %112 ]
  %121 = load i32, ptr %26, align 4
  %122 = inttoptr i32 %121 to ptr
  %123 = icmp eq i32 %121, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 4
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  store i32 0, ptr %125, align 4
  call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %129 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = load ptr, ptr %122, align 4
  %132 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  store ptr %130, ptr %132, align 4
  store volatile ptr %131, ptr %130, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %122, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %129, align 4
  call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  br label %133

133:                                              ; preds = %128, %124
  store i32 0, ptr %26, align 4
  call void @kfree(ptr noundef nonnull %122) #16
  br label %134

134:                                              ; preds = %133, %119
  %135 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = inttoptr i32 %136 to ptr
  %138 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 3
  store ptr %137, ptr %138, align 4
  %139 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  store i32 3, ptr %139, align 4
  br label %140

140:                                              ; preds = %134, %115, %73, %69, %30, %9
  %141 = phi i32 [ %11, %9 ], [ -12, %30 ], [ -2, %73 ], [ -2, %69 ], [ %120, %134 ], [ %117, %115 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fib6_flush_trees(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 30
  br label %3

3:                                                ; preds = %12, %1
  %4 = load volatile i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 2147483647
  %6 = add i32 %4, 1
  %7 = select i1 %5, i32 1, i32 %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !9
  br label %8

8:                                                ; preds = %8, %3
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %4, i32 %7, ptr elementtype(i32) %2) #16, !srcloc !10
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %15, label %3

15:                                               ; preds = %12
  tail call fastcc void @__fib6_clean_all(ptr noundef %0, ptr noundef null, i32 noundef %7, ptr noundef null, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_gc_cleanup() local_unnamed_addr #0 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @fib6_net_ops) #16
  %1 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ipv6_route_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @llvm.thread.pointer() #16
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = add i32 %8, 512
  store volatile i32 %9, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !47
  %10 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 10), align 16
  br label %11

11:                                               ; preds = %11, %2
  %12 = phi i32 [ 0, %2 ], [ %13, %11 ]
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr %struct.hlist_head, ptr %10, i32 %12
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = icmp ult i32 %12, 255
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %11, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 3
  store ptr %15, ptr %20, align 8
  %21 = load i64, ptr %1, align 8
  %22 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 2
  store i64 %21, ptr %22, align 8
  br i1 %16, label %37, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %24 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(44) %24, i8 0, i32 40, i1 false) #16
  %25 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 8
  store ptr @ipv6_route_yield, ptr %25, align 4
  %26 = getelementptr inbounds %struct.fib6_table, ptr %15, i32 0, i32 3
  %27 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 1
  store ptr %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 2
  store ptr %26, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 9
  store ptr %5, ptr %29, align 8
  %30 = getelementptr inbounds %struct.fib6_table, ptr %15, i32 0, i32 3, i32 6
  %31 = load volatile i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 4
  store i32 %31, ptr %32, align 4
  store volatile ptr %24, ptr %24, align 4
  %33 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 0, i32 1
  store ptr %24, ptr %33, align 4
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %34 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 12), align 8
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %24, ptr %35, align 4
  store ptr %34, ptr %24, align 4
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 12), ptr %33, align 4
  store volatile ptr %24, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 12), align 8
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %36 = call ptr @ipv6_route_seq_next(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %37

37:                                               ; preds = %23, %19
  %38 = phi ptr [ %36, %23 ], [ null, %19 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv6_route_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ipv6_route_iter, ptr %4, i32 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ipv6_route_iter, ptr %4, i32 0, i32 1, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ipv6_route_iter, ptr %4, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %6, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.ipv6_route_iter, ptr %4, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %18 = getelementptr inbounds %struct.ipv6_route_iter, ptr %4, i32 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  br label %22

22:                                               ; preds = %16, %12, %2
  tail call fastcc void @local_bh_enable() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ipv6_route_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 1
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %86

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 1
  %15 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 4
  %16 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 4
  %17 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 2
  %18 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 5
  %19 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 6
  %20 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 3
  %21 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1
  %22 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 0, i32 1
  %23 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 8
  %24 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 9
  br label %25

25:                                               ; preds = %80, %13
  %26 = load ptr, ptr %14, align 8
  %27 = getelementptr inbounds %struct.fib6_node, ptr %26, i32 0, i32 6
  %28 = load volatile i32, ptr %27, align 4
  %29 = load i32, ptr %15, align 4
  %30 = icmp eq i32 %29, %28
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  store i32 %28, ptr %15, align 4
  store i32 0, ptr %16, align 4
  store ptr %26, ptr %17, align 4
  %32 = load i32, ptr %18, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !12

34:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2581, i32 noundef 9, ptr noundef null) #16
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, ptr %19, align 4
  store i32 %36, ptr %18, align 8
  br label %37

37:                                               ; preds = %35, %25
  %38 = load ptr, ptr %20, align 8
  %39 = getelementptr inbounds %struct.fib6_table, ptr %38, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %39) #16
  %40 = tail call fastcc i32 @fib6_walk_continue(ptr noundef %21)
  %41 = load ptr, ptr %20, align 8
  %42 = getelementptr inbounds %struct.fib6_table, ptr %41, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %42) #16
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.ipv6_route_iter, ptr %5, i32 0, i32 1, i32 3
  %46 = load ptr, ptr %45, align 8
  br label %86

47:                                               ; preds = %37
  %48 = icmp slt i32 %40, 0
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %49 = load ptr, ptr %22, align 4
  %50 = load ptr, ptr %21, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  br i1 %48, label %86, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %20, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.fib6_table, ptr %53, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 255
  %59 = add nuw nsw i32 %58, 1
  %60 = load volatile ptr, ptr %53, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi ptr [ %60, %55 ], [ null, %52 ]
  %63 = phi i32 [ %59, %55 ], [ 0, %52 ]
  %64 = icmp eq ptr %62, null
  %65 = icmp ult i32 %63, 256
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 10), align 16
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi i32 [ %63, %67 ], [ %71, %69 ]
  %71 = add nuw nsw i32 %70, 1
  %72 = getelementptr %struct.hlist_head, ptr %68, i32 %70
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  %75 = icmp ult i32 %70, 255
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %69, label %77

77:                                               ; preds = %69, %61
  %78 = phi ptr [ %62, %61 ], [ %73, %69 ]
  store ptr %78, ptr %20, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(44) %21, i8 0, i32 40, i1 false) #16
  store ptr @ipv6_route_yield, ptr %23, align 4
  %81 = getelementptr inbounds %struct.fib6_table, ptr %78, i32 0, i32 3
  store ptr %81, ptr %14, align 8
  store ptr %81, ptr %17, align 4
  store ptr %5, ptr %24, align 8
  %82 = getelementptr inbounds %struct.fib6_table, ptr %78, i32 0, i32 3, i32 6
  %83 = load volatile i32, ptr %82, align 4
  store i32 %83, ptr %15, align 4
  store volatile ptr %21, ptr %21, align 4
  store ptr %21, ptr %22, align 4
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %84 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 12), align 8
  %85 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %21, ptr %85, align 4
  store ptr %84, ptr %21, align 4
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 12), ptr %22, align 4
  store volatile ptr %21, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 12), align 8
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  br label %25

86:                                               ; preds = %77, %47, %44, %9
  %87 = phi ptr [ %46, %44 ], [ %11, %9 ], [ null, %47 ], [ null, %77 ]
  ret ptr %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv6_route_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 21
  %6 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nexthop, ptr %9, i32 0, i32 9
  %13 = load i8, ptr %12, align 2, !range !46
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nexthop, ptr %9, i32 0, i32 12
  %17 = load volatile ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nh_group, ptr %17, i32 0, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.nh_group, ptr %17, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21, %11
  %26 = phi ptr [ %23, %21 ], [ %9, %11 ]
  %27 = getelementptr inbounds %struct.nexthop, ptr %26, i32 0, i32 12
  %28 = load volatile ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nh_info, ptr %28, i32 0, i32 2
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 10
  %32 = getelementptr inbounds %struct.nh_info, ptr %28, i32 0, i32 5
  %33 = select i1 %31, ptr %32, ptr null
  br label %34

34:                                               ; preds = %25, %21, %15, %2
  %35 = phi ptr [ %5, %2 ], [ null, %21 ], [ %33, %25 ], [ null, %15 ]
  %36 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 8
  %37 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 8, i32 1
  %38 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %36, i32 noundef %38) #16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.8) #16
  %39 = getelementptr inbounds %struct.fib_nh_common, ptr %35, i32 0, i32 5
  %40 = load i8, ptr %39, align 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = or i32 %7, 2
  %44 = getelementptr inbounds %struct.fib_nh_common, ptr %35, i32 0, i32 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %44) #16
  br label %46

45:                                               ; preds = %34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.10) #16
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %43, %42 ], [ %7, %45 ]
  %48 = load ptr, ptr %35, align 4
  %49 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 12
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 5
  %52 = load volatile i32, ptr %51, align 4
  %53 = icmp eq ptr %48, null
  %54 = select i1 %53, ptr @.str.12, ptr %48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %50, i32 noundef %52, i32 noundef 0, i32 noundef %47, ptr noundef %54) #16
  %55 = getelementptr inbounds %struct.ipv6_route_iter, ptr %4, i32 0, i32 1, i32 3
  store ptr null, ptr %55, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nexthop_free_rcu(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_peer_base_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib6_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fib6_walk_continue(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fib6_node, ptr %3, i32 0, i32 5
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  %8 = load i1, ptr @fib6_walk_continue.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !23

11:                                               ; preds = %1
  store i1 true, ptr @fib6_walk_continue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2068, i32 noundef 9, ptr noundef null) #16
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 8
  %14 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %84, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 4
  %19 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 3
  %20 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 5
  %21 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 6
  br label %22

22:                                               ; preds = %34, %17
  %23 = phi ptr [ %15, %17 ], [ %35, %34 ]
  %24 = load i32, ptr %18, align 4
  switch i32 %24, label %32 [
    i32 0, label %27
    i32 1, label %38
    i32 2, label %25
    i32 3, label %67
  ]

25:                                               ; preds = %22
  %26 = load ptr, ptr %19, align 4
  br label %46

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.fib6_node, ptr %23, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  store ptr %29, ptr %14, align 4
  store i32 0, ptr %18, align 4
  br label %34

32:                                               ; preds = %83, %80, %63, %22
  %33 = load ptr, ptr %14, align 4
  br label %34

34:                                               ; preds = %77, %42, %32, %31
  %35 = phi ptr [ %33, %32 ], [ %29, %31 ], [ %40, %42 ], [ %71, %77 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %84, label %22

37:                                               ; preds = %27
  store i32 1, ptr %18, align 4
  br label %38

38:                                               ; preds = %37, %22
  %39 = getelementptr inbounds %struct.fib6_node, ptr %23, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store ptr %40, ptr %14, align 4
  store i32 0, ptr %18, align 4
  br label %34

43:                                               ; preds = %38
  store i32 2, ptr %18, align 4
  %44 = getelementptr inbounds %struct.fib6_node, ptr %23, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  store ptr %45, ptr %19, align 4
  br label %46

46:                                               ; preds = %43, %25
  %47 = phi ptr [ %26, %25 ], [ %45, %43 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.fib6_node, ptr %23, i32 0, i32 5
  %51 = load i16, ptr %50, align 2
  %52 = and i16 %51, 4
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %20, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = add i32 %55, -1
  store i32 %58, ptr %20, align 4
  br label %66

59:                                               ; preds = %54
  %60 = load ptr, ptr %13, align 4
  %61 = tail call i32 %60(ptr noundef %0) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load i32, ptr %21, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %21, align 4
  br label %32

66:                                               ; preds = %57, %49, %46
  store i32 3, ptr %18, align 4
  br label %67

67:                                               ; preds = %66, %22
  %68 = load ptr, ptr %2, align 4
  %69 = icmp eq ptr %23, %68
  br i1 %69, label %84, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %23, align 4
  %72 = getelementptr inbounds %struct.fib6_node, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.fib6_node, ptr %71, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  store ptr %71, ptr %14, align 4
  %76 = icmp eq ptr %73, %23
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 1, ptr %18, align 4
  br label %34

78:                                               ; preds = %70
  %79 = icmp eq ptr %75, %23
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  store i32 2, ptr %18, align 4
  %81 = getelementptr inbounds %struct.fib6_node, ptr %71, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  store ptr %82, ptr %19, align 4
  br label %32

83:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2147, i32 noundef 9, ptr noundef null) #16
  br label %32

84:                                               ; preds = %67, %59, %34, %12
  %85 = phi i32 [ 0, %12 ], [ %61, %59 ], [ 0, %67 ], [ 0, %34 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_multipath_rebalance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_rt_notify(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fib6_purge_rt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.fib6_nh_pcpu_arg, align 8
  %5 = load ptr, ptr %0, align 4
  tail call void @rt6_flush_exceptions(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 18
  %7 = load i8, ptr %6, align 1
  %8 = or i8 %7, 8
  store i8 %8, ptr %6, align 1
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !48
  tail call void @arm_heavy_mb() #16
  %9 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr %0, ptr %4, align 8
  %13 = getelementptr inbounds %struct.fib6_nh_pcpu_arg, ptr %4, i32 0, i32 1
  store ptr %5, ptr %13, align 4
  %14 = call i32 @nexthop_for_each_fib6_nh(ptr noundef nonnull %10, ptr noundef nonnull @fib6_nh_drop_pcpu_from, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %17

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 21
  tail call fastcc void @__fib6_drop_pcpu_from(ptr noundef %16, ptr noundef %0) #16
  br label %17

17:                                               ; preds = %15, %12
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 3
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %22, ptr %26, align 4
  store volatile ptr %21, ptr %21, align 4
  store ptr %21, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %20, %17
  %29 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 5
  %30 = load volatile i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 1
  %32 = icmp ne ptr %1, null
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %94

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 36, i32 6
  %36 = icmp eq ptr %0, null
  %37 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 19
  br label %38

38:                                               ; preds = %91, %34
  %39 = phi ptr [ %92, %91 ], [ %1, %34 ]
  %40 = getelementptr inbounds %struct.fib6_node, ptr %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.fib6_node, ptr %39, i32 0, i32 5
  %42 = load i16, ptr %41, align 2
  %43 = and i16 %42, 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %38
  %46 = load ptr, ptr %40, align 4
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %48, label %91

48:                                               ; preds = %45
  %49 = and i16 %42, 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %35, align 16
  br label %70

53:                                               ; preds = %63, %48
  %54 = phi ptr [ null, %63 ], [ %39, %48 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.fib6_node, ptr %54, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.fib6_node, ptr %58, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  br label %70

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.fib6_node, ptr %54, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %53, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.fib6_node, ptr %65, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %60, %53, %51
  %71 = phi ptr [ %52, %51 ], [ %62, %60 ], [ %69, %67 ], [ null, %53 ]
  %72 = getelementptr inbounds %struct.fib6_info, ptr %71, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #16, !srcloc !9
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 1, ptr elementtype(i32) %72) #16, !srcloc !22
  %74 = extractvalue { i32, i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76, !prof !23

76:                                               ; preds = %70
  %77 = add i32 %74, 1
  %78 = or i32 %77, %74
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %82, label %80, !prof !12

80:                                               ; preds = %76, %70
  %81 = phi i32 [ 2, %70 ], [ 1, %76 ]
  call void @refcount_warn_saturate(ptr noundef %72, i32 noundef %81) #16
  br label %82

82:                                               ; preds = %80, %76
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  store volatile ptr %71, ptr %40, align 4
  br i1 %36, label %91, label %83

83:                                               ; preds = %82
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #16, !srcloc !9
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #16, !srcloc !14
  %85 = extractvalue { i32, i32, i32 } %84, 0
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = icmp sgt i32 %85, 0
  br i1 %88, label %91, label %89, !prof !12

89:                                               ; preds = %87
  call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #16
  br label %91

90:                                               ; preds = %83
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  call void @call_rcu(ptr noundef %37, ptr noundef nonnull @fib6_info_destroy_rcu) #16
  br label %91

91:                                               ; preds = %90, %89, %87, %82, %45, %38
  %92 = load ptr, ptr %39, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %38

94:                                               ; preds = %91, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_flush_exceptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nexthop_for_each_fib6_nh(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib6_nh_drop_pcpu_from(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call fastcc void @__fib6_drop_pcpu_from(ptr noundef %0, ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__fib6_drop_pcpu_from(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fib6_nh, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %43, %6
  %11 = phi ptr [ %44, %43 ], [ %4, %6 ]
  %12 = phi i32 [ %40, %43 ], [ %7, %6 ]
  %13 = ptrtoint ptr %11 to i32
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = inttoptr i32 %16 to ptr
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.rt6_info, ptr %18, i32 0, i32 1
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #16, !srcloc !9
  %25 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %21) #16, !srcloc !51
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = inttoptr i32 %26 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !52
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #16, !srcloc !9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #16, !srcloc !14
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %39, label %36, !prof !12

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef 3) #16
  br label %39

37:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  %38 = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %38, ptr noundef nonnull @fib6_info_destroy_rcu) #16
  br label %39

39:                                               ; preds = %37, %36, %34, %24, %20, %10
  %40 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #20
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load ptr, ptr %3, align 4
  br label %10

45:                                               ; preds = %39, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @node_free_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib6_clean_node(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.nl_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.nl_info, ptr %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.fib6_cleaner, ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nl_info, ptr %2, i32 0, i32 3
  %7 = getelementptr inbounds %struct.fib6_cleaner, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 4, !range !46
  store i8 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.fib6_cleaner, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fib6_node, ptr %14, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %10
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store volatile i32 %10, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %12, %1
  %20 = getelementptr inbounds %struct.fib6_cleaner, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, ptr %9, align 4
  %25 = icmp eq i32 %24, 0
  %26 = load i1, ptr @fib6_clean_node.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !23

29:                                               ; preds = %23
  store i1 true, ptr @fib6_clean_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2182, i32 noundef 9, ptr noundef null) #16
  br label %30

30:                                               ; preds = %29, %23
  %31 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 3
  br label %63

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.fib6_cleaner, ptr %0, i32 0, i32 4
  br label %38

38:                                               ; preds = %61, %36
  %39 = phi ptr [ %21, %36 ], [ %62, %61 ]
  %40 = phi ptr [ %34, %36 ], [ %59, %61 ]
  %41 = load ptr, ptr %37, align 4
  %42 = call i32 %39(ptr noundef nonnull %40, ptr noundef %41) #16
  switch i32 %42, label %55 [
    i32 -1, label %43
    i32 -2, label %46
    i32 0, label %56
  ], !prof !53

43:                                               ; preds = %38
  store ptr %40, ptr %33, align 4
  %44 = call i32 @fib6_del(ptr noundef nonnull %40, ptr noundef nonnull %2)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %56

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.fib6_info, ptr %40, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51, !prof !23

50:                                               ; preds = %46
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2203, i32 noundef 9, ptr noundef null) #16
  br label %56

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.fib6_info, ptr %40, i32 0, i32 3, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 -12
  br label %56

55:                                               ; preds = %38
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2209, i32 noundef 9, ptr noundef null) #16
  br label %56

56:                                               ; preds = %55, %51, %50, %43, %38
  %57 = phi ptr [ %54, %51 ], [ %40, %43 ], [ %40, %50 ], [ %40, %38 ], [ %40, %55 ]
  %58 = getelementptr inbounds %struct.fib6_info, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %20, align 4
  br label %38

63:                                               ; preds = %56, %32, %30
  %64 = phi ptr [ %31, %30 ], [ %33, %32 ], [ %33, %56 ]
  store ptr null, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_age_exceptions(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fib6_net_init(ptr noundef %0) #6 section ".init.text" {
  %2 = tail call i32 @fib6_notifier_init(ptr noundef %0) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %55

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 13
  store i32 7, ptr %5, align 4
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 14
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 13
  store i32 0, ptr %7, align 32
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 12
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 12, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 9
  tail call void @init_timer_key(ptr noundef %10, ptr noundef nonnull @fib6_gc_timer_cb, i32 noundef 0, ptr noundef null, ptr noundef null) #16
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 28) #18
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 8
  store ptr %12, ptr %13, align 8
  %14 = icmp eq ptr %12, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 1024) #18
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 10
  store ptr %17, ptr %18, align 16
  %19 = icmp eq ptr %17, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 76) #18
  %23 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 11
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %50, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.fib6_table, ptr %22, i32 0, i32 1
  store i32 254, ptr %26, align 8
  %27 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 6
  %28 = load ptr, ptr %27, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !54
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr inbounds %struct.fib6_table, ptr %29, i32 0, i32 3, i32 3
  store volatile ptr %28, ptr %30, align 4
  %31 = load ptr, ptr %23, align 4
  %32 = getelementptr inbounds %struct.fib6_table, ptr %31, i32 0, i32 3, i32 5
  store i16 7, ptr %32, align 2
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr inbounds %struct.fib6_table, ptr %33, i32 0, i32 4
  tail call void @inet_peer_base_init(ptr noundef %34) #16
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 76) #18
  %37 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 22
  store ptr %36, ptr %37, align 64
  %38 = icmp eq ptr %36, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.fib6_table, ptr %36, i32 0, i32 1
  store i32 255, ptr %40, align 8
  %41 = load ptr, ptr %27, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !55
  %42 = load ptr, ptr %37, align 64
  %43 = getelementptr inbounds %struct.fib6_table, ptr %42, i32 0, i32 3, i32 3
  store volatile ptr %41, ptr %43, align 4
  %44 = load ptr, ptr %37, align 64
  %45 = getelementptr inbounds %struct.fib6_table, ptr %44, i32 0, i32 3, i32 5
  store i16 7, ptr %45, align 2
  %46 = load ptr, ptr %37, align 64
  %47 = getelementptr inbounds %struct.fib6_table, ptr %46, i32 0, i32 4
  tail call void @inet_peer_base_init(ptr noundef %47) #16
  tail call fastcc void @fib6_tables_init(ptr noundef %0) #21
  br label %55

48:                                               ; preds = %25
  %49 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %49) #16
  br label %50

50:                                               ; preds = %48, %20
  %51 = load ptr, ptr %18, align 16
  tail call void @kfree(ptr noundef %51) #16
  br label %52

52:                                               ; preds = %50, %15
  %53 = load ptr, ptr %13, align 8
  tail call void @kfree(ptr noundef %53) #16
  br label %54

54:                                               ; preds = %52, %4
  tail call void @fib6_notifier_exit(ptr noundef %0) #16
  br label %55

55:                                               ; preds = %54, %39, %1
  %56 = phi i32 [ 0, %39 ], [ -12, %54 ], [ %2, %1 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fib6_net_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 9
  %3 = tail call i32 @del_timer_sync(ptr noundef %2) #16
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 10
  br label %5

5:                                                ; preds = %31, %1
  %6 = phi i32 [ 0, %1 ], [ %32, %31 ]
  %7 = load ptr, ptr %4, align 16
  %8 = getelementptr %struct.hlist_head, ptr %7, i32 %6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  store volatile ptr %12, ptr %14, align 4
  %15 = icmp eq ptr %12, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %16, %11
  %17 = phi ptr [ %25, %16 ], [ %14, %11 ]
  %18 = phi ptr [ %24, %16 ], [ %13, %11 ]
  %19 = phi ptr [ %23, %16 ], [ %12, %11 ]
  %20 = phi ptr [ %19, %16 ], [ %9, %11 ]
  %21 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  store volatile ptr %17, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  %22 = getelementptr inbounds %struct.fib6_table, ptr %20, i32 0, i32 4
  tail call void @inetpeer_invalidate_tree(ptr noundef %22) #16
  tail call void @kfree(ptr noundef nonnull %20) #16
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  store volatile ptr %23, ptr %25, align 4
  %26 = icmp eq ptr %23, null
  br i1 %26, label %27, label %16

27:                                               ; preds = %16, %11
  %28 = phi ptr [ %9, %11 ], [ %19, %16 ]
  %29 = phi ptr [ %13, %11 ], [ %24, %16 ]
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  %30 = getelementptr inbounds %struct.fib6_table, ptr %28, i32 0, i32 4
  tail call void @inetpeer_invalidate_tree(ptr noundef %30) #16
  tail call void @kfree(ptr noundef nonnull %28) #16
  br label %31

31:                                               ; preds = %27, %5
  %32 = add nuw nsw i32 %6, 1
  %33 = icmp eq i32 %32, 256
  br i1 %33, label %34, label %5

34:                                               ; preds = %31
  %35 = load ptr, ptr %4, align 16
  tail call void @kfree(ptr noundef %35) #16
  %36 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 8
  %37 = load ptr, ptr %36, align 8
  tail call void @kfree(ptr noundef %37) #16
  tail call void @fib6_notifier_exit(ptr noundef %0) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @fib6_notifier_init(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fib6_gc_timer_cb(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1276
  tail call void @fib6_run_gc(i32 noundef 0, ptr noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @fib6_tables_init(ptr nocapture noundef readonly %0) unnamed_addr #6 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fib6_table, ptr %3, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.fib6_table, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 10
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr %struct.hlist_head, ptr %9, i32 %7
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  store volatile ptr %10, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  store volatile ptr %3, ptr %10, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  store volatile ptr %3, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 22
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.fib6_table, ptr %18, i32 0, i32 2
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fib6_table, ptr %18, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 255
  %23 = load ptr, ptr %8, align 16
  %24 = getelementptr %struct.hlist_head, ptr %23, i32 %22
  %25 = load ptr, ptr %24, align 4
  store ptr %25, ptr %18, align 4
  %26 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  store volatile ptr %24, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  store volatile ptr %18, ptr %24, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  store volatile ptr %18, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_notifier_exit(ptr noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inetpeer_invalidate_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_valid_fib_dump_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib6_dump_done(ptr noundef %0) #0 {
  %2 = getelementptr %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  store i32 0, ptr %7, align 4
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %11 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  br label %15

15:                                               ; preds = %10, %6
  store i32 0, ptr %2, align 4
  tail call void @kfree(ptr noundef nonnull %4) #16
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = getelementptr %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 1
  store i32 3, ptr %21, align 4
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = tail call i32 %19(ptr noundef %0) #16
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ 0, %16 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib6_dump_node(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %26, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %26 ]
  %11 = phi ptr [ %3, %5 ], [ %29, %26 ]
  %12 = load ptr, ptr %6, align 4
  %13 = tail call i32 @rt6_dump_route(ptr noundef nonnull %11, ptr noundef %12, i32 noundef %10) #16
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  store ptr %11, ptr %2, align 4
  %16 = load i32, ptr %7, align 4
  %17 = add i32 %16, %13
  store i32 %17, ptr %7, align 4
  br label %32

18:                                               ; preds = %9
  store i32 0, ptr %7, align 4
  %19 = getelementptr inbounds %struct.fib6_info, ptr %11, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.fib6_info, ptr %11, i32 0, i32 3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 -12
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi ptr [ %25, %22 ], [ %11, %18 ]
  %28 = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %9

31:                                               ; preds = %26, %1
  store ptr null, ptr %2, align 4
  br label %32

32:                                               ; preds = %31, %15
  %33 = phi i32 [ 1, %15 ], [ 0, %31 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fib6_dump_table(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.fib6_table, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 6
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 5
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 7
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fib6_table, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 4
  store i32 0, ptr %17, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %20 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 12), align 8
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %6, ptr %21, align 4
  store ptr %20, ptr %6, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 12), ptr %22, align 4
  store volatile ptr %6, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 12), align 8
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %23 = tail call fastcc i32 @fib6_walk_continue(ptr noundef %6) #16
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %26 = load ptr, ptr %22, align 4
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %16) #16
  br label %58

29:                                               ; preds = %12
  tail call void @_raw_spin_unlock_bh(ptr noundef %16) #16
  store i32 1, ptr %9, align 4
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr inbounds %struct.fib6_node, ptr %30, i32 0, i32 6
  %32 = load volatile i32, ptr %31, align 4
  %33 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 5
  store i32 %32, ptr %33, align 4
  br label %58

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.fib6_table, ptr %0, i32 0, i32 3, i32 6
  %36 = load volatile i32, ptr %35, align 4
  %37 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %36
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  store i32 %36, ptr %37, align 4
  %41 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 4
  store i32 0, ptr %41, align 4
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 2
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 7
  store i32 0, ptr %46, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = phi i32 [ %45, %40 ], [ 0, %34 ]
  %49 = getelementptr inbounds %struct.fib6_walker, ptr %6, i32 0, i32 5
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fib6_table, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %50) #16
  %51 = tail call fastcc i32 @fib6_walk_continue(ptr noundef %6)
  tail call void @_raw_spin_unlock_bh(ptr noundef %50) #16
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  %54 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 13)) #16
  store i32 0, ptr %9, align 4
  br label %58

58:                                               ; preds = %53, %47, %29, %25
  %59 = phi i32 [ %23, %29 ], [ %23, %25 ], [ %51, %53 ], [ %51, %47 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt6_dump_route(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv6_route_yield(ptr nocapture noundef readonly %0) #13 {
  %2 = getelementptr inbounds %struct.fib6_walker, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipv6_route_iter, ptr %3, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ipv6_route_iter, ptr %3, i32 0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %20, %7
  %11 = phi i64 [ %5, %7 ], [ %15, %20 ]
  %12 = phi ptr [ %9, %7 ], [ %14, %20 ]
  %13 = getelementptr inbounds %struct.fib6_info, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %8, align 8
  %15 = add i64 %11, -1
  store i64 %15, ptr %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = icmp ne ptr %14, null
  %19 = zext i1 %18 to i32
  br label %22

20:                                               ; preds = %10
  %21 = icmp eq ptr %14, null
  br i1 %21, label %22, label %10

22:                                               ; preds = %20, %17, %1
  %23 = phi i32 [ 1, %1 ], [ %19, %17 ], [ 0, %20 ]
  ret i32 %23
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #14 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { cold }

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
!8 = !{i64 2148567069}
!9 = !{i64 948196, i64 2148438167, i64 2148438193, i64 2148438240, i64 2148438262, i64 2148438290, i64 2148438310}
!10 = !{i64 934259, i64 934283, i64 934304, i64 934321, i64 934338}
!11 = !{i64 2148567269}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148555323}
!14 = !{i64 2148453397, i64 2148453429, i64 2148453458, i64 2148453492, i64 2148453523, i64 2148453546}
!15 = !{i64 2149707021}
!16 = !{i64 2149426669}
!17 = !{i64 2149426886}
!18 = !{i64 2156441979}
!19 = !{i64 2151207468}
!20 = !{i64 2156729174}
!21 = !{i32 0, i32 33}
!22 = !{i64 2148451040, i64 2148451072, i64 2148451101, i64 2148451135, i64 2148451166, i64 2148451189}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2156590251}
!25 = !{i64 2156604600}
!26 = !{i64 2156618862}
!27 = !{i64 2156632841}
!28 = !{i64 2156671443, i64 2156671927, i64 2156671480, i64 2156671536, i64 2156671570, i64 2156671594, i64 2156671635, i64 2156671656, i64 2156671684, i64 2156671718}
!29 = !{i64 2156672507, i64 2156672991, i64 2156672544, i64 2156672600, i64 2156672634, i64 2156672658, i64 2156672699, i64 2156672720, i64 2156672748, i64 2156672782}
!30 = !{i64 2156684707}
!31 = !{i64 2156696305}
!32 = !{i64 2156703320}
!33 = !{i64 2156711190}
!34 = !{i64 2156718205}
!35 = !{i64 2156768258}
!36 = !{i64 2156780300}
!37 = !{i64 2156787466}
!38 = !{i64 2156794603}
!39 = !{i64 2156802481}
!40 = !{i64 2149341299}
!41 = !{i64 1844723, i64 1844746, i64 1844766, i64 1844790, i64 1844806}
!42 = !{i64 2149329241}
!43 = !{i64 2149329316, i64 2149329343, i64 2149329390, i64 2149329412, i64 2149329440, i64 2149329460}
!44 = !{i64 2149378902}
!45 = !{!"auto-init"}
!46 = !{i8 0, i8 2}
!47 = !{i64 2149131756}
!48 = !{i64 2156655356}
!49 = !{i64 2156660609}
!50 = !{i64 2156654912}
!51 = !{i64 956846, i64 956863, i64 956887, i64 956913, i64 956931}
!52 = !{i64 2156655239}
!53 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!54 = !{i64 2156887745}
!55 = !{i64 2156897778}
