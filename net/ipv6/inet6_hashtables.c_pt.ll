; ModuleID = '/llk/IR/net/ipv6/inet6_hashtables.c_pt.bc'
source_filename = "../net/ipv6/inet6_hashtables.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inet6_lookup_established:\09\09\09\09\09"
module asm "\09.asciz \09\22__inet6_lookup_established\22\09\09\09\09\09"
module asm "__kstrtabns___inet6_lookup_established:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_lookup_listener:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_lookup_listener\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_lookup_listener:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_hash_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_hash_connect\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_hash_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_hash\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.in6_addr = type { %union.anon.132 }
%union.anon.132 = type { [4 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.172, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.172 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [28 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.156 }
%union.anon.156 = type { %struct.hlist_head }
%struct.inet_ehash_bucket = type { %struct.hlist_nulls_head }
%struct.hlist_nulls_head = type { ptr }
%struct.bpf_sk_lookup_kern = type { i16, i16, i16, i16, %struct.anon.181, %struct.anon.182, ptr, i32, i8 }
%struct.anon.181 = type { i32, i32 }
%struct.anon.182 = type { ptr, ptr }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.callback_head = type { ptr, ptr }
%struct.bpf_prog_array_item = type { ptr, %union.anon.173 }
%union.anon.173 = type { i64 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.120 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { %struct.anon.122, [0 x %struct.sock_filter] }
%struct.anon.122 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.sock_common = type { %union.anon.12, %union.anon.14, %union.anon.15, i16, i8, i8, i32, %union.anon.17, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.157, [0 x i32], %union.anon.158, i16, i16, %union.anon.159, %struct.refcount_struct, [0 x i32], %union.anon.160 }
%union.anon.12 = type { i64 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i32 }
%union.anon.17 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { %struct.hlist_node }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%struct.anon.16 = type { i16, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.183, %struct.anon.184, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.161, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.162, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.163, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.161 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { ptr }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.167 }
%union.anon.167 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.183 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.184 = type { i32, i32, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.155, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.155 = type { ptr }
%struct.timewait_sock_ops = type { ptr, ptr, i32, ptr, ptr }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.prot_inuse = type { i32, [64 x i32] }

@inet6_ehashfn.inet6_ehash_secret = internal global i32 0, section ".data..read_mostly", align 4
@inet6_ehashfn.ipv6_hash_secret = internal global i32 0, section ".data..read_mostly", align 4
@inet6_ehashfn.___done = internal global i8 0, section ".data.once", align 1
@inet6_ehashfn.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@inet6_ehashfn.___done.1 = internal global i8 0, section ".data.once", align 1
@inet6_ehashfn.___once_key.2 = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@__kstrtab___inet6_lookup_established = external dso_local constant [0 x i8], align 1
@__kstrtabns___inet6_lookup_established = external dso_local constant [0 x i8], align 1
@__ksymtab___inet6_lookup_established = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inet6_lookup_established to i32), ptr @__kstrtab___inet6_lookup_established, ptr @__kstrtabns___inet6_lookup_established }, section "___ksymtab+__inet6_lookup_established", align 4
@bpf_sk_lookup_enabled = external dso_local global %struct.static_key_false, align 4
@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@__kstrtab_inet6_lookup_listener = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_lookup_listener = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_lookup_listener = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_lookup_listener to i32), ptr @__kstrtab_inet6_lookup_listener, ptr @__kstrtabns_inet6_lookup_listener }, section "___ksymtab_gpl+inet6_lookup_listener", align 4
@__kstrtab_inet6_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_lookup to i32), ptr @__kstrtab_inet6_lookup, ptr @__kstrtabns_inet6_lookup }, section "___ksymtab_gpl+inet6_lookup", align 4
@__kstrtab_inet6_hash_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_hash_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_hash_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_hash_connect to i32), ptr @__kstrtab_inet6_hash_connect, ptr @__kstrtabns_inet6_hash_connect }, section "___ksymtab_gpl+inet6_hash_connect", align 4
@__kstrtab_inet6_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_hash to i32), ptr @__kstrtab_inet6_hash, ptr @__kstrtabns_inet6_hash }, section "___ksymtab_gpl+inet6_hash", align 4
@init_net = external dso_local global %struct.net, align 64
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 64
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str = private unnamed_addr constant [28 x i8] c"net/ipv6/inet6_hashtables.c\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab___inet6_lookup_established, ptr @__ksymtab_inet6_hash, ptr @__ksymtab_inet6_hash_connect, ptr @__ksymtab_inet6_lookup, ptr @__ksymtab_inet6_lookup_listener], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_ehashfn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load volatile i32, ptr @inet6_ehashfn.___once_key, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14, !prof !9

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !10
  %11 = call zeroext i1 @__do_once_start(ptr noundef nonnull @inet6_ehashfn.___done, ptr noundef nonnull %6) #9
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %10
  call void @get_random_bytes(ptr noundef nonnull @inet6_ehashfn.inet6_ehash_secret, i32 noundef 4) #9
  call void @__do_once_done(ptr noundef nonnull @inet6_ehashfn.___done, ptr noundef nonnull @inet6_ehashfn.___once_key, ptr noundef nonnull %6, ptr noundef null) #9
  br label %13

13:                                               ; preds = %12, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %14

14:                                               ; preds = %13, %5
  %15 = load volatile i32, ptr @inet6_ehashfn.___once_key.2, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21, !prof !9

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !10
  %18 = call zeroext i1 @__do_once_start(ptr noundef nonnull @inet6_ehashfn.___done.1, ptr noundef nonnull %7) #9
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %17
  call void @get_random_bytes(ptr noundef nonnull @inet6_ehashfn.ipv6_hash_secret, i32 noundef 4) #9
  call void @__do_once_done(ptr noundef nonnull @inet6_ehashfn.___done.1, ptr noundef nonnull @inet6_ehashfn.___once_key.2, ptr noundef nonnull %7, ptr noundef null) #9
  br label %20

20:                                               ; preds = %19, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr @inet6_ehashfn.ipv6_hash_secret, align 4
  %25 = load i32, ptr %3, align 4
  %26 = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, %25
  %29 = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr [4 x i32], ptr %3, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %24, -559038725
  %34 = add i32 %28, %33
  %35 = add i32 %30, %33
  %36 = add i32 %32, %33
  %37 = xor i32 %36, %35
  %38 = call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 14) #9
  %39 = sub i32 %37, %38
  %40 = xor i32 %39, %34
  %41 = call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 11) #9
  %42 = sub i32 %40, %41
  %43 = xor i32 %42, %35
  %44 = call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 25) #9
  %45 = sub i32 %43, %44
  %46 = xor i32 %45, %39
  %47 = call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 16) #9
  %48 = sub i32 %46, %47
  %49 = xor i32 %48, %42
  %50 = call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 4) #9
  %51 = sub i32 %49, %50
  %52 = xor i32 %51, %45
  %53 = call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 14) #9
  %54 = sub i32 %52, %53
  %55 = xor i32 %54, %48
  %56 = call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 24) #9
  %57 = sub i32 %55, %56
  %58 = load i32, ptr @inet6_ehashfn.inet6_ehash_secret, align 4
  %59 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %60 = load i32, ptr %59, align 4
  %61 = zext i16 %2 to i32
  %62 = shl nuw i32 %61, 16
  %63 = zext i16 %4 to i32
  %64 = or i32 %62, %63
  %65 = add i32 %58, -559038725
  %66 = add i32 %65, %60
  %67 = add i32 %66, %23
  %68 = add i32 %57, %66
  %69 = add i32 %64, %66
  %70 = xor i32 %68, %69
  %71 = call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 14) #9
  %72 = sub i32 %70, %71
  %73 = xor i32 %72, %67
  %74 = call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 11) #9
  %75 = sub i32 %73, %74
  %76 = xor i32 %75, %68
  %77 = call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 25) #9
  %78 = sub i32 %76, %77
  %79 = xor i32 %78, %72
  %80 = call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 16) #9
  %81 = sub i32 %79, %80
  %82 = xor i32 %81, %75
  %83 = call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 4) #9
  %84 = sub i32 %82, %83
  %85 = xor i32 %84, %78
  %86 = call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 14) #9
  %87 = sub i32 %85, %86
  %88 = xor i32 %87, %81
  %89 = call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 24) #9
  %90 = sub i32 %88, %89
  ret i32 %90
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__inet6_lookup_established(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3, ptr nocapture noundef readonly %4, i16 noundef zeroext %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = zext i16 %5 to i32
  %10 = shl nuw i32 %9, 16
  %11 = zext i16 %3 to i32
  %12 = or i32 %10, %11
  %13 = tail call i32 @inet6_ehashfn(ptr noundef %0, ptr noundef %4, i16 noundef zeroext %5, ptr noundef %2, i16 noundef zeroext %3)
  %14 = getelementptr inbounds %struct.inet_hashinfo, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, %13
  %17 = load ptr, ptr %1, align 64
  %18 = getelementptr %struct.inet_ehash_bucket, ptr %17, i32 %16
  %19 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %20 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %21 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %22 = getelementptr [4 x i32], ptr %4, i32 0, i32 1
  %23 = getelementptr [4 x i32], ptr %4, i32 0, i32 2
  %24 = getelementptr [4 x i32], ptr %4, i32 0, i32 3
  br label %25

25:                                               ; preds = %173, %8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %26 = load volatile ptr, ptr %18, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %181

30:                                               ; preds = %174, %25
  %31 = phi ptr [ %175, %174 ], [ %26, %25 ]
  %32 = getelementptr i8, ptr %31, i32 -76
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, %13
  br i1 %34, label %35, label %174

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %31, i32 -72
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %12
  br i1 %38, label %39, label %174

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %31, i32 -68
  %41 = load i16, ptr %40, align 8
  %42 = icmp eq i16 %41, 10
  br i1 %42, label %43, label %174

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %31, i32 -48
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %2, align 4
  %47 = xor i32 %46, %45
  %48 = getelementptr i8, ptr %31, i32 -44
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %19, align 4
  %51 = xor i32 %50, %49
  %52 = or i32 %51, %47
  %53 = getelementptr i8, ptr %31, i32 -40
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %20, align 4
  %56 = xor i32 %55, %54
  %57 = or i32 %52, %56
  %58 = getelementptr i8, ptr %31, i32 -36
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %21, align 4
  %61 = xor i32 %60, %59
  %62 = or i32 %57, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %174

64:                                               ; preds = %43
  %65 = getelementptr i8, ptr %31, i32 -32
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %4, align 4
  %68 = xor i32 %67, %66
  %69 = getelementptr i8, ptr %31, i32 -28
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %22, align 4
  %72 = xor i32 %71, %70
  %73 = or i32 %72, %68
  %74 = getelementptr i8, ptr %31, i32 -24
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %23, align 4
  %77 = xor i32 %76, %75
  %78 = or i32 %73, %77
  %79 = getelementptr i8, ptr %31, i32 -20
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %24, align 4
  %82 = xor i32 %81, %80
  %83 = or i32 %78, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %174

85:                                               ; preds = %64
  %86 = getelementptr i8, ptr %31, i32 -64
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, %6
  %89 = icmp eq i32 %87, %7
  %90 = or i1 %88, %89
  br i1 %90, label %91, label %174

91:                                               ; preds = %85
  %92 = getelementptr i8, ptr %31, i32 -72
  %93 = getelementptr i8, ptr %31, i32 -68
  %94 = getelementptr i8, ptr %31, i32 -48
  %95 = getelementptr i8, ptr %31, i32 -44
  %96 = getelementptr i8, ptr %31, i32 -40
  %97 = getelementptr i8, ptr %31, i32 -36
  %98 = getelementptr i8, ptr %31, i32 -32
  %99 = getelementptr i8, ptr %31, i32 -28
  %100 = getelementptr i8, ptr %31, i32 -24
  %101 = getelementptr i8, ptr %31, i32 -20
  %102 = getelementptr i8, ptr %31, i32 -64
  %103 = getelementptr i8, ptr %31, i32 -84
  %104 = getelementptr i8, ptr %31, i32 16
  %105 = load volatile i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %117, %91
  %108 = phi i32 [ %115, %117 ], [ %105, %91 ]
  %109 = add i32 %108, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #9, !srcloc !12
  br label %110

110:                                              ; preds = %110, %107
  %111 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 %108, i32 %109, ptr elementtype(i32) %104) #9, !srcloc !13
  %112 = extractvalue { i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %110

114:                                              ; preds = %110
  %115 = extractvalue { i32, i32 } %111, 1
  %116 = icmp eq i32 %115, %108
  br i1 %116, label %119, label %117, !prof !14

117:                                              ; preds = %114
  %118 = icmp eq i32 %115, 0
  br i1 %118, label %119, label %107

119:                                              ; preds = %117, %114, %91
  %120 = phi i32 [ 0, %91 ], [ 0, %117 ], [ %108, %114 ]
  %121 = add i32 %120, 1
  %122 = or i32 %121, %120
  %123 = icmp sgt i32 %122, -1
  br i1 %123, label %125, label %124, !prof !14

124:                                              ; preds = %119
  tail call void @refcount_warn_saturate(ptr noundef %104, i32 noundef 0) #9
  br label %125

125:                                              ; preds = %124, %119
  %126 = icmp eq i32 %120, 0
  br i1 %126, label %185, label %127, !prof !9

127:                                              ; preds = %125
  %128 = load i32, ptr %92, align 4
  %129 = icmp eq i32 %128, %12
  br i1 %129, label %130, label %172, !prof !14

130:                                              ; preds = %127
  %131 = load i16, ptr %93, align 8
  %132 = icmp eq i16 %131, 10
  br i1 %132, label %133, label %172, !prof !14

133:                                              ; preds = %130
  %134 = load i32, ptr %94, align 4
  %135 = load i32, ptr %2, align 4
  %136 = xor i32 %135, %134
  %137 = load i32, ptr %95, align 4
  %138 = load i32, ptr %19, align 4
  %139 = xor i32 %138, %137
  %140 = or i32 %139, %136
  %141 = load i32, ptr %96, align 4
  %142 = load i32, ptr %20, align 4
  %143 = xor i32 %142, %141
  %144 = or i32 %140, %143
  %145 = load i32, ptr %97, align 4
  %146 = load i32, ptr %21, align 4
  %147 = xor i32 %146, %145
  %148 = or i32 %144, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %172, !prof !14

150:                                              ; preds = %133
  %151 = load i32, ptr %98, align 4
  %152 = load i32, ptr %4, align 4
  %153 = xor i32 %152, %151
  %154 = load i32, ptr %99, align 4
  %155 = load i32, ptr %22, align 4
  %156 = xor i32 %155, %154
  %157 = or i32 %156, %153
  %158 = load i32, ptr %100, align 4
  %159 = load i32, ptr %23, align 4
  %160 = xor i32 %159, %158
  %161 = or i32 %157, %160
  %162 = load i32, ptr %101, align 4
  %163 = load i32, ptr %24, align 4
  %164 = xor i32 %163, %162
  %165 = or i32 %161, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %172, !prof !14

167:                                              ; preds = %150
  %168 = load i32, ptr %102, align 4
  %169 = icmp eq i32 %168, %6
  %170 = icmp eq i32 %168, %7
  %171 = or i1 %169, %170
  br i1 %171, label %185, label %172, !prof !15

172:                                              ; preds = %167, %150, %133, %130, %127
  tail call void @sock_gen_put(ptr noundef %103) #9
  br label %173

173:                                              ; preds = %181, %172
  br label %25

174:                                              ; preds = %85, %64, %43, %39, %35, %30
  %175 = load volatile ptr, ptr %31, align 4
  %176 = ptrtoint ptr %175 to i32
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %30, label %179

179:                                              ; preds = %174
  %180 = ptrtoint ptr %175 to i32
  br label %181

181:                                              ; preds = %179, %25
  %182 = phi i32 [ %27, %25 ], [ %180, %179 ]
  %183 = lshr i32 %182, 1
  %184 = icmp eq i32 %183, %16
  br i1 %184, label %185, label %173

185:                                              ; preds = %181, %167, %125
  %186 = phi ptr [ null, %181 ], [ null, %125 ], [ %103, %167 ]
  ret ptr %186
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet6_lookup_listener(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = load volatile i32, ptr @bpf_sk_lookup_enabled, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %16, !prof !9

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @inet6_lookup_run_bpf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7, i32 noundef %8)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %13, %10
  %17 = zext i16 %7 to i32
  %18 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %0, ptr noundef %6, i32 noundef %17)
  %19 = getelementptr inbounds %struct.inet_hashinfo, ptr %1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 32
  %21 = getelementptr inbounds %struct.inet_hashinfo, ptr %1, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %18
  %24 = getelementptr %struct.inet_listen_hashbucket, ptr %20, i32 %23
  %25 = tail call fastcc ptr @inet6_lhash2_lookup(ptr noundef %0, ptr noundef %24, ptr noundef %2, i32 noundef %3, ptr noundef %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %0, ptr noundef nonnull @in6addr_any, i32 noundef %17)
  %29 = load ptr, ptr %19, align 32
  %30 = load i32, ptr %21, align 4
  %31 = and i32 %30, %28
  %32 = getelementptr %struct.inet_listen_hashbucket, ptr %29, i32 %31
  %33 = tail call fastcc ptr @inet6_lhash2_lookup(ptr noundef %0, ptr noundef %32, ptr noundef %2, i32 noundef %3, ptr noundef %4, i16 noundef zeroext %5, ptr noundef nonnull @in6addr_any, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9)
  br label %34

34:                                               ; preds = %27, %16, %13
  %35 = phi ptr [ %14, %13 ], [ %25, %16 ], [ %33, %27 ]
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %37 = select i1 %36, ptr null, ptr %35
  ret ptr %37
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @inet6_lookup_run_bpf(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7, i32 noundef %8) unnamed_addr #3 {
  %10 = alloca %struct.bpf_sk_lookup_kern, align 4
  %11 = icmp eq ptr %1, @tcp_hashinfo
  br i1 %11, label %12, label %119

12:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %13 = getelementptr %struct.net, ptr %0, i32 0, i32 38, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br label %119

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #9
  %18 = getelementptr inbounds i8, ptr %10, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %18, i8 0, i32 12, i1 false) #9, !annotation !10
  store i16 10, ptr %10, align 4
  %19 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 1
  store i16 6, ptr %19, align 2
  %20 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 2
  store i16 %5, ptr %20, align 4
  %21 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 3
  store i16 %7, ptr %21, align 2
  %22 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 4
  store i64 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 5
  store ptr %4, ptr %23, align 4
  %24 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 5, i32 1
  store ptr %6, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 7
  store i32 %8, ptr %25, align 4
  %26 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 8
  tail call void @migrate_disable() #9
  %27 = getelementptr inbounds %struct.bpf_prog_array, ptr %14, i32 0, i32 1
  %28 = load volatile ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %91, label %30

30:                                               ; preds = %84, %17
  %31 = phi ptr [ %89, %84 ], [ %28, %17 ]
  %32 = phi i8 [ %87, %84 ], [ 1, %17 ]
  %33 = phi i1 [ %86, %84 ], [ false, %17 ]
  %34 = phi ptr [ %85, %84 ], [ null, %17 ]
  %35 = phi ptr [ %88, %84 ], [ %27, %17 ]
  store ptr %34, ptr %18, align 4
  %36 = zext i1 %33 to i8
  store i8 %36, ptr %26, align 4
  %37 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %67, !prof !9

39:                                               ; preds = %30
  %40 = call i64 @sched_clock() #9
  %41 = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 1
  %42 = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef nonnull %10, ptr noundef %41) #9
  %45 = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = call i32 @llvm.read_register.i32(metadata !0) #9
  %49 = inttoptr i32 %48 to ptr
  %50 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #7, !srcloc !18
  %51 = add i32 %50, %47
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.bpf_prog_stats, ptr %52, i32 0, i32 3
  %54 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !19
  %55 = load i32, ptr %53, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %53, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !20
  %57 = load i64, ptr %52, align 8
  %58 = add i64 %57, 1
  store i64 %58, ptr %52, align 8
  %59 = getelementptr inbounds %struct.bpf_prog_stats, ptr %52, i32 0, i32 1
  %60 = call i64 @sched_clock() #9
  %61 = sub i64 %60, %40
  %62 = and i64 %61, 4294967295
  %63 = load i64, ptr %59, align 8
  %64 = add i64 %62, %63
  store i64 %64, ptr %59, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !21
  %65 = load i32, ptr %53, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %53, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #9, !srcloc !22
  br label %72

67:                                               ; preds = %30
  %68 = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 1
  %69 = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 0, i32 9
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef nonnull %10, ptr noundef %68) #9
  br label %72

72:                                               ; preds = %67, %39
  %73 = phi i32 [ %44, %39 ], [ %71, %67 ]
  switch i32 %73, label %84 [
    i32 1, label %74
    i32 0, label %80
  ]

74:                                               ; preds = %72
  %75 = load ptr, ptr %18, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load i8, ptr %26, align 4, !range !23
  %79 = icmp ne i8 %78, 0
  br label %84

80:                                               ; preds = %72
  %81 = and i8 %32, 1
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, i8 %32, i8 0
  br label %84

84:                                               ; preds = %80, %77, %74, %72
  %85 = phi ptr [ %75, %77 ], [ %34, %80 ], [ %34, %72 ], [ %34, %74 ]
  %86 = phi i1 [ %79, %77 ], [ %33, %80 ], [ %33, %72 ], [ %33, %74 ]
  %87 = phi i8 [ %32, %77 ], [ %83, %80 ], [ %32, %72 ], [ %32, %74 ]
  %88 = getelementptr %struct.bpf_prog_array_item, ptr %35, i32 1
  %89 = load volatile ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %30

91:                                               ; preds = %84, %17
  %92 = phi ptr [ null, %17 ], [ %85, %84 ]
  %93 = phi i1 [ false, %17 ], [ %86, %84 ]
  %94 = phi i8 [ 1, %17 ], [ %87, %84 ]
  store ptr %92, ptr %18, align 4
  %95 = zext i1 %93 to i8
  store i8 %95, ptr %26, align 4
  call void @migrate_enable() #9
  %96 = and i8 %94, 1
  %97 = icmp ne i8 %96, 0
  %98 = icmp ne ptr %92, null
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %91
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br label %119

101:                                              ; preds = %91
  %102 = load ptr, ptr %18, align 4
  %103 = load i8, ptr %26, align 4, !range !23
  %104 = icmp eq i8 %103, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = icmp eq ptr %102, null
  %107 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  %108 = or i1 %106, %107
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.sock_common, ptr %102, i32 0, i32 5
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 16
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = call i32 @inet6_ehashfn(ptr noundef %0, ptr noundef %6, i16 noundef zeroext %7, ptr noundef %4, i16 noundef zeroext %5) #9
  %116 = call ptr @reuseport_select_sock(ptr noundef nonnull %102, i32 noundef %115, ptr noundef %2, i32 noundef %3) #9
  %117 = icmp eq ptr %116, null
  %118 = select i1 %117, ptr %102, ptr %116
  br label %119

119:                                              ; preds = %114, %109, %105, %101, %100, %16, %9
  %120 = phi ptr [ null, %9 ], [ %102, %105 ], [ %102, %101 ], [ inttoptr (i32 -111 to ptr), %100 ], [ null, %16 ], [ %102, %109 ], [ %118, %114 ]
  ret ptr %120
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ipv6_portaddr_hash(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  %10 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %9, %11
  %13 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = add i32 %5, -559038733
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 14) #9
  %20 = sub i32 0, %19
  %21 = xor i32 %18, %20
  %22 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 11) #9
  %23 = sub i32 %21, %22
  %24 = xor i32 %23, %18
  %25 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 25) #9
  %26 = sub i32 %24, %25
  %27 = xor i32 %26, %20
  %28 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 16) #9
  %29 = sub i32 %27, %28
  %30 = xor i32 %29, %23
  %31 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 4) #9
  %32 = sub i32 %30, %31
  %33 = xor i32 %32, %26
  %34 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 14) #9
  %35 = sub i32 %33, %34
  %36 = xor i32 %35, %29
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 24) #9
  %38 = sub i32 %36, %37
  br label %117

39:                                               ; preds = %3
  %40 = xor i32 %11, -65536
  %41 = or i32 %40, %9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = add i32 %5, -559038733
  %45 = add i32 %14, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 14) #9
  %47 = sub i32 0, %46
  %48 = xor i32 %45, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 11) #9
  %50 = sub i32 %48, %49
  %51 = xor i32 %50, %44
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 25) #9
  %53 = sub i32 %51, %52
  %54 = xor i32 %53, %47
  %55 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 16) #9
  %56 = sub i32 %54, %55
  %57 = xor i32 %56, %50
  %58 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 4) #9
  %59 = sub i32 %57, %58
  %60 = xor i32 %59, %53
  %61 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 14) #9
  %62 = sub i32 %60, %61
  %63 = xor i32 %62, %56
  %64 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 24) #9
  %65 = sub i32 %63, %64
  br label %117

66:                                               ; preds = %39
  %67 = add i32 %5, -559038721
  %68 = add i32 %6, %67
  %69 = add i32 %8, %67
  %70 = add i32 %11, %67
  %71 = sub i32 %68, %70
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 4) #9
  %73 = xor i32 %71, %72
  %74 = add i32 %70, %69
  %75 = sub i32 %69, %73
  %76 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 6) #9
  %77 = xor i32 %75, %76
  %78 = add i32 %73, %74
  %79 = sub i32 %74, %77
  %80 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 8) #9
  %81 = xor i32 %79, %80
  %82 = add i32 %77, %78
  %83 = sub i32 %78, %81
  %84 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 16) #9
  %85 = xor i32 %83, %84
  %86 = add i32 %81, %82
  %87 = sub i32 %82, %85
  %88 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 19) #9
  %89 = xor i32 %87, %88
  %90 = add i32 %85, %86
  %91 = sub i32 %86, %89
  %92 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 4) #9
  %93 = xor i32 %91, %92
  %94 = add i32 %89, %90
  %95 = add i32 %90, %14
  %96 = xor i32 %93, %94
  %97 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 14) #9
  %98 = sub i32 %96, %97
  %99 = xor i32 %98, %95
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 11) #9
  %101 = sub i32 %99, %100
  %102 = xor i32 %101, %94
  %103 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 25) #9
  %104 = sub i32 %102, %103
  %105 = xor i32 %104, %98
  %106 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 16) #9
  %107 = sub i32 %105, %106
  %108 = xor i32 %107, %101
  %109 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 4) #9
  %110 = sub i32 %108, %109
  %111 = xor i32 %110, %104
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 14) #9
  %113 = sub i32 %111, %112
  %114 = xor i32 %113, %107
  %115 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 24) #9
  %116 = sub i32 %114, %115
  br label %117

117:                                              ; preds = %66, %43, %17
  %118 = phi i32 [ %38, %17 ], [ %65, %43 ], [ %116, %66 ]
  %119 = xor i32 %118, %2
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @inet6_lhash2_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i16 noundef zeroext %5, ptr nocapture noundef readonly %6, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.inet_listen_hashbucket, ptr %1, i32 0, i32 2
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr i8, ptr %12, i32 -840
  %15 = icmp eq ptr %14, null
  %16 = or i1 %13, %15
  br i1 %16, label %93, label %17

17:                                               ; preds = %10
  %18 = getelementptr [4 x i32], ptr %6, i32 0, i32 1
  %19 = getelementptr [4 x i32], ptr %6, i32 0, i32 2
  %20 = getelementptr [4 x i32], ptr %6, i32 0, i32 3
  br label %21

21:                                               ; preds = %84, %17
  %22 = phi ptr [ %14, %17 ], [ %90, %84 ]
  %23 = phi ptr [ null, %17 ], [ %86, %84 ]
  %24 = phi i32 [ 0, %17 ], [ %85, %84 ]
  %25 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 2
  %26 = getelementptr inbounds %struct.anon.16, ptr %25, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, %7
  br i1 %28, label %29, label %72

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 3
  %31 = load i16, ptr %30, align 8
  %32 = icmp eq i16 %31, 10
  br i1 %32, label %33, label %72

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %6, align 4
  %37 = xor i32 %36, %35
  %38 = getelementptr %struct.sock_common, ptr %22, i32 0, i32 11, i32 0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %18, align 4
  %41 = xor i32 %40, %39
  %42 = or i32 %41, %37
  %43 = getelementptr %struct.sock_common, ptr %22, i32 0, i32 11, i32 0, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %19, align 4
  %46 = xor i32 %45, %44
  %47 = or i32 %42, %46
  %48 = getelementptr %struct.sock_common, ptr %22, i32 0, i32 11, i32 0, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %20, align 4
  %51 = xor i32 %50, %49
  %52 = or i32 %47, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %33
  %55 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = icmp eq i32 %56, %8
  %60 = icmp eq i32 %56, %9
  %61 = or i1 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58, %54
  %63 = phi i32 [ 1, %54 ], [ 2, %58 ]
  %64 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 18
  %65 = load volatile i32, ptr %64, align 8
  %66 = tail call ptr @llvm.thread.pointer() #9
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %65, %68
  %70 = zext i1 %69 to i32
  %71 = add nuw nsw i32 %63, %70
  br label %72

72:                                               ; preds = %62, %58, %33, %29, %21
  %73 = phi i32 [ -1, %33 ], [ -1, %58 ], [ -1, %29 ], [ -1, %21 ], [ %71, %62 ]
  %74 = icmp sgt i32 %73, %24
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 5
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = tail call i32 @inet6_ehashfn(ptr noundef %0, ptr noundef %6, i16 noundef zeroext %7, ptr noundef %4, i16 noundef zeroext %5) #9
  %82 = tail call ptr @reuseport_select_sock(ptr noundef nonnull %22, i32 noundef %81, ptr noundef %2, i32 noundef %3) #9
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %80, %75, %72
  %85 = phi i32 [ %24, %72 ], [ %73, %80 ], [ %73, %75 ]
  %86 = phi ptr [ %23, %72 ], [ %22, %80 ], [ %22, %75 ]
  %87 = getelementptr inbounds %struct.inet_connection_sock, ptr %22, i32 0, i32 15
  %88 = load volatile ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  %90 = getelementptr i8, ptr %88, i32 -840
  %91 = icmp eq ptr %90, null
  %92 = or i1 %89, %91
  br i1 %92, label %93, label %21

93:                                               ; preds = %84, %80, %10
  %94 = phi ptr [ null, %10 ], [ %86, %84 ], [ %82, %80 ]
  ret ptr %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet6_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7, i32 noundef %8) #0 {
  %10 = tail call i16 @llvm.bswap.i16(i16 %7)
  %11 = tail call ptr @__inet6_lookup_established(ptr noundef %0, ptr noundef %1, ptr noundef %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %10, i32 noundef %8, i32 noundef 0) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = tail call ptr @inet6_lookup_listener(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %10, i32 noundef %8, i32 noundef 0) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 19
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %30, %16
  %21 = phi i32 [ %28, %30 ], [ %18, %16 ]
  %22 = add i32 %21, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #9, !srcloc !12
  br label %23

23:                                               ; preds = %23, %20
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 %21, i32 %22, ptr elementtype(i32) %17) #9, !srcloc !13
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  %28 = extractvalue { i32, i32 } %24, 1
  %29 = icmp eq i32 %28, %21
  br i1 %29, label %32, label %30, !prof !14

30:                                               ; preds = %27
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %20

32:                                               ; preds = %30, %27, %16
  %33 = phi i32 [ 0, %16 ], [ 0, %30 ], [ %21, %27 ]
  %34 = add i32 %33, 1
  %35 = or i32 %34, %33
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %38, label %37, !prof !14

37:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 0) #9
  br label %38

38:                                               ; preds = %37, %32
  %39 = icmp eq i32 %33, 0
  %40 = select i1 %39, ptr null, ptr %14
  br label %41

41:                                               ; preds = %38, %13, %9
  %42 = phi ptr [ null, %13 ], [ %40, %38 ], [ %11, %9 ]
  ret ptr %42
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_hash_connect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.16, ptr %3, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  %10 = load i16, ptr %3, align 4
  %11 = tail call i32 @secure_ipv6_port_ephemeral(ptr noundef %8, ptr noundef %9, i16 noundef zeroext %10) #9
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %7 ]
  %14 = tail call i32 @__inet_hash_connect(ptr noundef %0, ptr noundef %1, i32 noundef %13, ptr noundef nonnull @__inet6_check_established) #9
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__inet_hash_connect(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__inet6_check_established(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.inet_timewait_death_row, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = zext i16 %2 to i32
  %12 = shl nuw i32 %11, 16
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = or i32 %12, %15
  %17 = tail call i32 @inet6_ehashfn(ptr noundef nonnull @init_net, ptr noundef %7, i16 noundef zeroext %2, ptr noundef %8, i16 noundef zeroext %14)
  %18 = load ptr, ptr %6, align 64
  %19 = getelementptr inbounds %struct.inet_hashinfo, ptr %6, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, %17
  %22 = getelementptr %struct.inet_ehash_bucket, ptr %18, i32 %21
  %23 = getelementptr inbounds %struct.inet_hashinfo, ptr %6, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.inet_hashinfo, ptr %6, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %17
  %28 = getelementptr %struct.spinlock, ptr %24, i32 %27
  tail call void @_raw_spin_lock(ptr noundef %28) #9
  %29 = load ptr, ptr %22, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %122

33:                                               ; preds = %4
  %34 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %35 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %36 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 3
  %37 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %38 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 2
  %39 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 3
  br label %40

40:                                               ; preds = %117, %33
  %41 = phi ptr [ %29, %33 ], [ %118, %117 ]
  %42 = getelementptr i8, ptr %41, i32 -76
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, %17
  br i1 %44, label %45, label %117

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %41, i32 -72
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %16
  br i1 %48, label %49, label %117, !prof !14

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %41, i32 -68
  %51 = load i16, ptr %50, align 8
  %52 = icmp eq i16 %51, 10
  br i1 %52, label %53, label %117, !prof !14

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %41, i32 -48
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %8, align 4
  %57 = xor i32 %56, %55
  %58 = getelementptr i8, ptr %41, i32 -44
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %34, align 4
  %61 = xor i32 %60, %59
  %62 = or i32 %61, %57
  %63 = getelementptr i8, ptr %41, i32 -40
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %35, align 4
  %66 = xor i32 %65, %64
  %67 = or i32 %62, %66
  %68 = getelementptr i8, ptr %41, i32 -36
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %36, align 4
  %71 = xor i32 %70, %69
  %72 = or i32 %67, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %117, !prof !14

74:                                               ; preds = %53
  %75 = getelementptr i8, ptr %41, i32 -32
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %7, align 4
  %78 = xor i32 %77, %76
  %79 = getelementptr i8, ptr %41, i32 -28
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %37, align 4
  %82 = xor i32 %81, %80
  %83 = or i32 %82, %78
  %84 = getelementptr i8, ptr %41, i32 -24
  %85 = load i32, ptr %84, align 4
  %86 = load i32, ptr %38, align 4
  %87 = xor i32 %86, %85
  %88 = or i32 %83, %87
  %89 = getelementptr i8, ptr %41, i32 -20
  %90 = load i32, ptr %89, align 4
  %91 = load i32, ptr %39, align 4
  %92 = xor i32 %91, %90
  %93 = or i32 %88, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %117, !prof !14

95:                                               ; preds = %74
  %96 = getelementptr i8, ptr %41, i32 -64
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, %10
  %99 = icmp eq i32 %97, 0
  %100 = or i1 %98, %99
  br i1 %100, label %101, label %117, !prof !15

101:                                              ; preds = %95
  %102 = getelementptr i8, ptr %41, i32 -84
  %103 = getelementptr i8, ptr %41, i32 -66
  %104 = load volatile i8, ptr %103, align 2
  %105 = icmp eq i8 %104, 6
  br i1 %105, label %106, label %197

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.proto, ptr %108, i32 0, i32 47
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.timewait_sock_ops, ptr %110, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %197, label %114

114:                                              ; preds = %106
  %115 = tail call i32 %112(ptr noundef %1, ptr noundef %102, ptr noundef %3) #9
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %197, label %122

117:                                              ; preds = %95, %74, %53, %49, %45, %40
  %118 = load ptr, ptr %41, align 4
  %119 = ptrtoint ptr %118 to i32
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %40, label %122

122:                                              ; preds = %117, %114, %4
  %123 = phi ptr [ %102, %114 ], [ null, %4 ], [ null, %117 ]
  %124 = getelementptr inbounds %struct.anon.16, ptr %13, i32 0, i32 1
  store i16 %2, ptr %124, align 2
  %125 = tail call i16 @llvm.bswap.i16(i16 %2)
  %126 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  store i16 %125, ptr %126, align 8
  %127 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 1
  store i32 %17, ptr %127, align 8
  %128 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131, !prof !14

131:                                              ; preds = %122
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef null) #9
  br label %132

132:                                              ; preds = %131, %122
  %133 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %134 = load ptr, ptr %22, align 4
  store ptr %134, ptr %133, align 4
  store volatile ptr %22, ptr %128, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  store volatile ptr %133, ptr %22, align 4
  %135 = ptrtoint ptr %134 to i32
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.hlist_nulls_node, ptr %134, i32 0, i32 1
  store volatile ptr %133, ptr %139, align 4
  br label %140

140:                                              ; preds = %138, %132
  %141 = icmp eq ptr %123, null
  br i1 %141, label %175, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.sock_common, ptr %123, i32 0, i32 15, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %164, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.sock_common, ptr %123, i32 0, i32 15
  %148 = load ptr, ptr %147, align 4
  store volatile ptr %148, ptr %144, align 4
  %149 = ptrtoint ptr %148 to i32
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.hlist_nulls_node, ptr %148, i32 0, i32 1
  store volatile ptr %144, ptr %153, align 4
  br label %154

154:                                              ; preds = %152, %146
  store volatile ptr null, ptr %143, align 4
  %155 = getelementptr inbounds %struct.sock_common, ptr %123, i32 0, i32 19
  %156 = load volatile i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %159, !prof !9

158:                                              ; preds = %154
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 751, i32 noundef 9, ptr noundef null) #9
  br label %159

159:                                              ; preds = %158, %154
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %155) #9, !srcloc !12
  %160 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %155, ptr %155, i32 1, ptr elementtype(i32) %155) #9, !srcloc !26
  %161 = extractvalue { i32, i32, i32 } %160, 0
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %164, !prof !9

163:                                              ; preds = %159
  tail call void @refcount_warn_saturate(ptr noundef %155, i32 noundef 4) #9
  br label %164

164:                                              ; preds = %163, %159, %142
  %165 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %166 = getelementptr [126 x i32], ptr %165, i32 0, i32 12
  %167 = ptrtoint ptr %166 to i32
  %168 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %169 = inttoptr i32 %168 to ptr
  %170 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %169) #7, !srcloc !18
  %171 = add i32 %170, %167
  %172 = inttoptr i32 %171 to ptr
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 4
  br label %175

175:                                              ; preds = %164, %140
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !27
  %176 = load i16, ptr %28, align 4
  %177 = add i16 %176, 1
  store i16 %177, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %178 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %179 = load ptr, ptr %178, align 8
  %180 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !19
  %181 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %182 = getelementptr inbounds %struct.proto, ptr %179, i32 0, i32 25
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr %struct.prot_inuse, ptr %181, i32 0, i32 1, i32 %183
  %185 = ptrtoint ptr %184 to i32
  %186 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %187 = inttoptr i32 %186 to ptr
  %188 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %187) #7, !srcloc !18
  %189 = add i32 %188, %185
  %190 = inttoptr i32 %189 to ptr
  %191 = load i32, ptr %190, align 4
  %192 = add i32 %191, 1
  store i32 %192, ptr %190, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %180) #9, !srcloc !22
  %193 = icmp eq ptr %3, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %175
  store ptr %123, ptr %3, align 4
  br label %200

195:                                              ; preds = %175
  br i1 %141, label %200, label %196

196:                                              ; preds = %195
  tail call void @inet_twsk_deschedule_put(ptr noundef nonnull %123) #9
  br label %200

197:                                              ; preds = %114, %106, %101
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !27
  %198 = load i16, ptr %28, align 4
  %199 = add i16 %198, 1
  store i16 %199, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  br label %200

200:                                              ; preds = %197, %196, %195, %194
  %201 = phi i32 [ -99, %197 ], [ 0, %195 ], [ 0, %196 ], [ 0, %194 ]
  ret i32 %201
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_hash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 7
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #9
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = add i32 %8, 512
  store volatile i32 %9, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %10 = tail call i32 @__inet_hash(ptr noundef %0, ptr noundef null) #9
  tail call fastcc void @local_bh_enable()
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ %10, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__inet_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_select_sock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_ipv6_port_ephemeral(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_deschedule_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{i64 2156679750}
!12 = !{i64 549253, i64 2148039224, i64 2148039250, i64 2148039297, i64 2148039319, i64 2148039347, i64 2148039367}
!13 = !{i64 535316, i64 535340, i64 535361, i64 535378, i64 535395}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 4001, i32 1}
!16 = !{i64 2149052133}
!17 = !{i64 2149052350}
!18 = !{i64 473631}
!19 = !{i64 454931, i64 454992}
!20 = !{i64 2149389653}
!21 = !{i64 2149389954}
!22 = !{i64 457948}
!23 = !{i8 0, i8 2}
!24 = !{i64 2154848305}
!25 = !{i64 2148152319}
!26 = !{i64 2148054454, i64 2148054486, i64 2148054515, i64 2148054549, i64 2148054580, i64 2148054603}
!27 = !{i64 2148933778}
!28 = !{i64 2148929602}
!29 = !{i64 2148929677, i64 2148929704, i64 2148929751, i64 2148929773, i64 2148929801, i64 2148929821}
!30 = !{i64 2148956781}
!31 = !{i64 2148865903}
