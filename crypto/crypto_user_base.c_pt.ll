; ModuleID = '/llk/IR/crypto/crypto_user_base.c_pt.bc'
source_filename = "../crypto/crypto_user_base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.crypto_link = type { ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.106, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.106 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.67 }
%union.anon.67 = type { i32 }
%struct.crypto_user_alg = type { [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.135, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.135 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.crypto_dump_info = type { ptr, ptr, i32, i16 }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.89 }
%union.anon.89 = type { [6 x i32], [24 x i8] }
%struct.crypto_report_comp = type { [64 x i8] }
%struct.crypto_report_cipher = type { [64 x i8], i32, i32, i32 }
%struct.crypto_report_larval = type { [64 x i8] }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }

@crypto_alg_sem = external dso_local global %struct.rw_semaphore, align 4
@crypto_alg_list = external dso_local global %struct.list_head, align 4
@__UNIQUE_ID_license420 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author421 = internal constant [55 x i8] c"author=Steffen Klassert <steffen.klassert@secunet.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description422 = internal constant [47 x i8] c"description=Crypto userspace configuration API\00", section ".modinfo", align 1
@__UNIQUE_ID_alias423 = internal constant [25 x i8] c"alias=net-pf-16-proto-21\00", section ".modinfo", align 1
@crypto_netlink_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @crypto_netlink_init, ptr null, ptr @crypto_netlink_exit, ptr null, ptr null, i32 0 }, align 4
@__const.crypto_netlink_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 0, i32 0, ptr @crypto_netlink_rcv, ptr null, ptr null, ptr null, ptr null }, align 4
@crypto_cfg_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crypto_cfg_mutex, i64 12), ptr getelementptr (i8, ptr @crypto_cfg_mutex, i64 12) } }, align 4
@crypto_dispatch = internal unnamed_addr constant [6 x %struct.crypto_link] [%struct.crypto_link { ptr @crypto_add_alg, ptr null, ptr null }, %struct.crypto_link { ptr @crypto_del_alg, ptr null, ptr null }, %struct.crypto_link { ptr @crypto_update_alg, ptr null, ptr null }, %struct.crypto_link { ptr @crypto_report, ptr @crypto_dump_report, ptr @crypto_dump_report_done }, %struct.crypto_link { ptr @crypto_del_rng, ptr null, ptr null }, %struct.crypto_link { ptr @crypto_reportstat, ptr null, ptr null }], align 4
@crypto_msg_min = internal unnamed_addr constant [6 x i32] [i32 208, i32 208, i32 208, i32 208, i32 0, i32 208], align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"larval\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@crypto_policy = internal constant <{ %struct.nla_policy, %struct.nla_policy, [20 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.67 zeroinitializer }, [20 x %struct.nla_policy] zeroinitializer }>, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias423, ptr @__UNIQUE_ID_author421, ptr @__UNIQUE_ID_description422, ptr @__UNIQUE_ID_license420], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alg_match(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #11
  %3 = getelementptr inbounds %struct.crypto_user_alg, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.crypto_user_alg, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.crypto_user_alg, ptr %0, i32 0, i32 1
  %6 = icmp eq i32 %1, 0
  %7 = load ptr, ptr @crypto_alg_list, align 4
  %8 = icmp eq ptr %7, @crypto_alg_list
  br i1 %8, label %39, label %9

9:                                                ; preds = %36, %2
  %10 = phi ptr [ %37, %36 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 16
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = load i32, ptr %3, align 4
  %17 = xor i32 %16, %12
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load i8, ptr %5, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 9
  %26 = tail call i32 @strcmp(ptr noundef %25, ptr noundef %5)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %36

28:                                               ; preds = %21
  br i1 %6, label %29, label %36

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 8
  %31 = tail call i32 @strcmp(ptr noundef %30, ptr noundef %0)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %24
  %34 = tail call ptr @crypto_mod_get(ptr noundef %10) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %29, %28, %24, %15, %9
  %37 = load ptr, ptr %10, align 4
  %38 = icmp eq ptr %37, @crypto_alg_list
  br i1 %38, label %39, label %9

39:                                               ; preds = %36, %33, %2
  %40 = phi ptr [ null, %2 ], [ null, %36 ], [ %10, %33 ]
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #11
  ret ptr %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_mod_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @crypto_netlink_net_ops) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @crypto_netlink_net_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @crypto_netlink_init(ptr noundef %0) #4 section ".init.text" {
  %2 = alloca %struct.netlink_kernel_cfg, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const.crypto_netlink_init.cfg, i32 28, i1 false)
  %3 = call ptr @__netlink_kernel_create(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @__this_module, ptr noundef nonnull %2) #11
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 43
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  %6 = select i1 %5, i32 -12, i32 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #11
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_netlink_exit(ptr nocapture noundef %0) #5 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 43
  %3 = load ptr, ptr %2, align 8
  tail call void @netlink_kernel_release(ptr noundef %3) #11
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_netlink_rcv(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @crypto_cfg_mutex) #11
  %2 = tail call i32 @netlink_rcv_skb(ptr noundef %0, ptr noundef nonnull @crypto_user_rcv_msg) #11
  tail call void @mutex_unlock(ptr noundef nonnull @crypto_cfg_mutex) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_user_rcv_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [22 x ptr], align 4
  %5 = alloca %struct.netlink_dump_control, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = icmp ugt i16 %7, 21
  br i1 %8, label %58, label %9

9:                                                ; preds = %3
  %10 = zext i16 %7 to i32
  %11 = add nsw i32 %10, -16
  %12 = getelementptr [6 x %struct.crypto_link], ptr @crypto_dispatch, i32 0, i32 %11
  %13 = icmp eq i32 %11, 3
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, 768
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #11
  br label %20

20:                                               ; preds = %20, %19
  %21 = phi i32 [ 0, %19 ], [ %25, %20 ]
  %22 = phi ptr [ @crypto_alg_list, %19 ], [ %23, %20 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @crypto_alg_list
  %25 = add i32 %21, 352
  br i1 %24, label %26, label %20

26:                                               ; preds = %20
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %27 = getelementptr inbounds %struct.netlink_dump_control, ptr %5, i32 0, i32 1
  store i32 0, ptr %5, align 4
  store ptr @crypto_dump_report, ptr %27, align 4
  %28 = getelementptr inbounds %struct.netlink_dump_control, ptr %5, i32 0, i32 2
  store ptr @crypto_dump_report_done, ptr %28, align 4
  %29 = getelementptr inbounds %struct.netlink_dump_control, ptr %5, i32 0, i32 3
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.netlink_dump_control, ptr %5, i32 0, i32 4
  %31 = getelementptr inbounds %struct.netlink_dump_control, ptr %5, i32 0, i32 5
  %32 = tail call i32 @llvm.umin.i32(i32 %21, i32 65535)
  store i32 %32, ptr %31, align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 43), align 8
  store ptr @__this_module, ptr %30, align 4
  %34 = call i32 @__netlink_dump_start(ptr noundef %33, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %58

35:                                               ; preds = %14, %9
  %36 = getelementptr [6 x i32], ptr @crypto_msg_min, i32 0, i32 %11
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %1, align 4
  %39 = add i32 %37, 16
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #11
  %42 = icmp eq ptr %2, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %41
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %58

44:                                               ; preds = %35
  %45 = getelementptr i8, ptr %1, i32 16
  %46 = add i32 %37, 3
  %47 = and i32 %46, -4
  %48 = getelementptr i8, ptr %45, i32 %47
  %49 = add i32 %38, -16
  %50 = sub i32 %49, %47
  %51 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 21, ptr noundef %48, i32 noundef %50, ptr noundef nonnull @crypto_policy, i32 noundef 0, ptr noundef %2) #11
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = load ptr, ptr %12, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 %54(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #11
  br label %58

58:                                               ; preds = %56, %53, %44, %43, %41, %26, %3
  %59 = phi i32 [ %57, %56 ], [ -22, %3 ], [ %34, %26 ], [ %51, %44 ], [ -22, %53 ], [ -22, %43 ], [ -22, %41 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #11
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_add_alg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 16
  %5 = getelementptr ptr, ptr %2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @netlink_capable(ptr noundef %0, i32 noundef 12) #11
  br i1 %7, label %8, label %43

8:                                                ; preds = %3
  %9 = tail call i32 @strnlen(ptr noundef %4, i32 noundef 64)
  %10 = icmp ult i32 %9, 64
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %1, i32 80
  %13 = tail call i32 @strnlen(ptr noundef %12, i32 noundef 64)
  %14 = icmp ult i32 %13, 64
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load i8, ptr %12, align 1
  %17 = icmp ne i8 %16, 0
  %18 = icmp eq ptr %6, null
  %19 = select i1 %18, i1 true, i1 %17
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = zext i1 %17 to i32
  %22 = tail call ptr @crypto_alg_match(ptr noundef %4, i32 noundef %21)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @crypto_mod_put(ptr noundef nonnull %22) #11
  br label %43

25:                                               ; preds = %20
  %26 = load i8, ptr %12, align 1
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, ptr %4, ptr %12
  %29 = getelementptr i8, ptr %1, i32 208
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %1, i32 212
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @crypto_alg_mod_lookup(ptr noundef %28, i32 noundef %30, i32 noundef %32) #11
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = ptrtoint ptr %33 to i32
  br label %43

37:                                               ; preds = %25
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #11
  br i1 %18, label %42, label %38

38:                                               ; preds = %37
  %39 = getelementptr i8, ptr %6, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.crypto_alg, ptr %33, i32 0, i32 6
  store i32 %40, ptr %41, align 32
  br label %42

42:                                               ; preds = %38, %37
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #11
  tail call void @crypto_mod_put(ptr noundef %33) #11
  br label %43

43:                                               ; preds = %42, %35, %24, %15, %11, %8, %3
  %44 = phi i32 [ -17, %24 ], [ %36, %35 ], [ 0, %42 ], [ -1, %3 ], [ -22, %11 ], [ -22, %8 ], [ -22, %15 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_del_alg(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call zeroext i1 @netlink_capable(ptr noundef %0, i32 noundef 12) #11
  br i1 %4, label %5, label %58

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %1, i32 16
  %7 = tail call i32 @strnlen(ptr noundef %6, i32 noundef 64)
  %8 = icmp ult i32 %7, 64
  br i1 %8, label %9, label %58

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %1, i32 80
  %11 = tail call i32 @strnlen(ptr noundef %10, i32 noundef 64)
  %12 = icmp ult i32 %11, 64
  br i1 %12, label %13, label %58

13:                                               ; preds = %9
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #11
  %14 = getelementptr i8, ptr %1, i32 208
  %15 = getelementptr i8, ptr %1, i32 212
  %16 = load ptr, ptr @crypto_alg_list, align 4
  %17 = icmp eq ptr %16, @crypto_alg_list
  br i1 %17, label %18, label %19

18:                                               ; preds = %41, %13
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #11
  br label %58

19:                                               ; preds = %41, %13
  %20 = phi ptr [ %42, %41 ], [ %16, %13 ]
  %21 = getelementptr inbounds %struct.crypto_alg, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 16
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load i32, ptr %14, align 4
  %27 = xor i32 %26, %22
  %28 = load i32, ptr %15, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i8, ptr %10, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.crypto_alg, ptr %20, i32 0, i32 9
  %36 = tail call i32 @strcmp(ptr noundef %35, ptr noundef %10) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call ptr @crypto_mod_get(ptr noundef %20) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %34, %31, %25, %19
  %42 = load ptr, ptr %20, align 4
  %43 = icmp eq ptr %42, @crypto_alg_list
  br i1 %43, label %18, label %19

44:                                               ; preds = %38
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #11
  %45 = icmp eq ptr %20, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.crypto_alg, ptr %20, i32 0, i32 2
  %48 = load i32, ptr %47, align 16
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.crypto_alg, ptr %20, i32 0, i32 7
  %53 = load volatile i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 2
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @crypto_unregister_instance(ptr noundef nonnull %20) #11
  br label %56

56:                                               ; preds = %55, %51, %46
  %57 = phi i32 [ -16, %51 ], [ 0, %55 ], [ -22, %46 ]
  tail call void @crypto_mod_put(ptr noundef nonnull %20) #11
  br label %58

58:                                               ; preds = %56, %44, %18, %9, %5, %3
  %59 = phi i32 [ %57, %56 ], [ -1, %3 ], [ -22, %9 ], [ -22, %5 ], [ -2, %44 ], [ -2, %18 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_update_alg(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = getelementptr ptr, ptr %2, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store ptr %4, ptr %4, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  %8 = call zeroext i1 @netlink_capable(ptr noundef %0, i32 noundef 12) #11
  br i1 %8, label %9, label %61

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 16
  %11 = call i32 @strnlen(ptr noundef %10, i32 noundef 64)
  %12 = icmp ult i32 %11, 64
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %1, i32 80
  %15 = call i32 @strnlen(ptr noundef %14, i32 noundef 64)
  %16 = icmp ult i32 %15, 64
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  %18 = icmp eq ptr %6, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = load i8, ptr %14, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %19, %17
  call void @down_read(ptr noundef nonnull @crypto_alg_sem) #11
  %23 = getelementptr i8, ptr %1, i32 208
  %24 = getelementptr i8, ptr %1, i32 212
  %25 = load ptr, ptr @crypto_alg_list, align 4
  %26 = icmp eq ptr %25, @crypto_alg_list
  br i1 %26, label %27, label %28

27:                                               ; preds = %50, %22
  call void @up_read(ptr noundef nonnull @crypto_alg_sem) #11
  br label %61

28:                                               ; preds = %50, %22
  %29 = phi ptr [ %51, %50 ], [ %25, %22 ]
  %30 = getelementptr inbounds %struct.crypto_alg, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 16
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load i32, ptr %23, align 4
  %36 = xor i32 %35, %31
  %37 = load i32, ptr %24, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i8, ptr %14, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.crypto_alg, ptr %29, i32 0, i32 9
  %45 = call i32 @strcmp(ptr noundef %44, ptr noundef %14) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call ptr @crypto_mod_get(ptr noundef %29) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %43, %40, %34, %28
  %51 = load ptr, ptr %29, align 4
  %52 = icmp eq ptr %51, @crypto_alg_list
  br i1 %52, label %27, label %28

53:                                               ; preds = %47
  call void @up_read(ptr noundef nonnull @crypto_alg_sem) #11
  %54 = icmp eq ptr %29, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  call void @down_write(ptr noundef nonnull @crypto_alg_sem) #11
  call void @crypto_remove_spawns(ptr noundef nonnull %29, ptr noundef nonnull %4, ptr noundef null) #11
  br i1 %18, label %60, label %56

56:                                               ; preds = %55
  %57 = getelementptr i8, ptr %6, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.crypto_alg, ptr %29, i32 0, i32 6
  store i32 %58, ptr %59, align 32
  br label %60

60:                                               ; preds = %56, %55
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #11
  call void @crypto_mod_put(ptr noundef nonnull %29) #11
  call void @crypto_remove_final(ptr noundef nonnull %4) #11
  br label %61

61:                                               ; preds = %60, %53, %27, %19, %13, %9, %3
  %62 = phi i32 [ 0, %60 ], [ -1, %3 ], [ -22, %13 ], [ -22, %9 ], [ -22, %19 ], [ -2, %53 ], [ -2, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_report(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.crypto_dump_info, align 4
  %5 = getelementptr i8, ptr %1, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %6 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = tail call i32 @strnlen(ptr noundef %5, i32 noundef 64)
  %8 = icmp ult i32 %7, 64
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 80
  %11 = tail call i32 @strnlen(ptr noundef %10, i32 noundef 64)
  %12 = icmp ult i32 %11, 64
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = tail call ptr @crypto_alg_match(ptr noundef %5, i32 noundef 0)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @crypto_mod_put(ptr noundef nonnull %14) #11
  br label %28

20:                                               ; preds = %16
  store ptr %0, ptr %4, align 4
  %21 = getelementptr inbounds %struct.crypto_dump_info, ptr %4, i32 0, i32 1
  store ptr %17, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.crypto_dump_info, ptr %4, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.crypto_dump_info, ptr %4, i32 0, i32 3
  store i16 0, ptr %25, align 4
  %26 = call fastcc i32 @crypto_report_alg(ptr noundef nonnull %14, ptr noundef nonnull %4)
  tail call void @crypto_mod_put(ptr noundef nonnull %14) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20, %19
  %29 = phi i32 [ -12, %19 ], [ %26, %20 ]
  tail call void @kfree_skb_reason(ptr noundef %17, i32 noundef 0) #11
  br label %36

30:                                               ; preds = %20
  %31 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 43), align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @netlink_unicast(ptr noundef %31, ptr noundef nonnull %17, i32 noundef %33, i32 noundef 64) #11
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 0) #11
  br label %36

36:                                               ; preds = %30, %28, %13, %9, %3
  %37 = phi i32 [ %29, %28 ], [ %35, %30 ], [ -22, %9 ], [ -22, %3 ], [ -2, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_dump_report(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.crypto_dump_info, align 4
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %6 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = load ptr, ptr %1, align 4
  store ptr %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.crypto_dump_info, ptr %3, i32 0, i32 1
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nlmsghdr, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_dump_info, ptr %3, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.crypto_dump_info, ptr %3, i32 0, i32 3
  store i16 2, ptr %14, align 4
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #11
  %15 = load ptr, ptr @crypto_alg_list, align 4
  %16 = icmp eq ptr %15, @crypto_alg_list
  br i1 %16, label %27, label %17

17:                                               ; preds = %23, %2
  %18 = phi ptr [ %25, %23 ], [ %15, %2 ]
  %19 = phi i32 [ %24, %23 ], [ 0, %2 ]
  %20 = icmp ult i32 %19, %5
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call fastcc i32 @crypto_report_alg(ptr noundef %18, ptr noundef nonnull %3)
  switch i32 %22, label %31 [
    i32 -90, label %27
    i32 0, label %23
  ]

23:                                               ; preds = %21, %17
  %24 = add i32 %19, 1
  %25 = load ptr, ptr %18, align 4
  %26 = icmp eq ptr %25, @crypto_alg_list
  br i1 %26, label %27, label %17

27:                                               ; preds = %23, %21, %2
  %28 = phi i32 [ 0, %2 ], [ %19, %21 ], [ %24, %23 ]
  store i32 %28, ptr %4, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi i32 [ %30, %27 ], [ %22, %21 ]
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @crypto_dump_report_done(ptr nocapture noundef readnone %0) #8 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_del_rng(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call zeroext i1 @netlink_capable(ptr noundef %0, i32 noundef 12) #11
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @crypto_del_default_rng() #11
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %6, %5 ], [ -1, %3 ]
  ret i32 %8
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @crypto_reportstat(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #9 {
  ret i32 -524
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_mod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alg_mod_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_remove_spawns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_remove_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crypto_report_alg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.crypto_report_comp, align 1
  %4 = alloca %struct.crypto_report_cipher, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_report_larval, align 1
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.crypto_dump_info, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_dump_info, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.crypto_dump_info, ptr %1, i32 0, i32 3
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %112

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = ptrtoint ptr %22 to i32
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %25, %26
  %28 = icmp slt i32 %27, 224
  br i1 %28, label %112, label %29, !prof !9

29:                                               ; preds = %20
  %30 = tail call ptr @__nlmsg_put(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 19, i32 noundef 208, i32 noundef %16) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %112, label %32

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %30, i32 16
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(208) %33, i8 0, i32 208, i1 false) #11
  %34 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 8
  %35 = tail call i32 @strscpy(ptr noundef %33, ptr noundef %34, i32 noundef 64) #11
  %36 = getelementptr i8, ptr %30, i32 80
  %37 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 9
  %38 = tail call i32 @strscpy(ptr noundef %36, ptr noundef %37, i32 noundef 64) #11
  %39 = getelementptr i8, ptr %30, i32 144
  %40 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.module, ptr %41, i32 0, i32 2
  %44 = select i1 %42, ptr @.str, ptr %43
  %45 = tail call i32 @strscpy(ptr noundef %39, ptr noundef %44, i32 noundef 64) #11
  %46 = getelementptr i8, ptr %30, i32 208
  store i32 0, ptr %46, align 4
  %47 = getelementptr i8, ptr %30, i32 212
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 16
  %50 = getelementptr i8, ptr %30, i32 220
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 7
  %52 = load volatile i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %30, i32 216
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 6
  %55 = load i32, ptr %54, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 %55, ptr %5, align 4
  %56 = call i32 @nla_put(ptr noundef %9, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %32
  %59 = load i32, ptr %48, align 16
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i64 64, i1 false) #11
  %63 = call i32 @strscpy(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, i32 noundef 64) #11
  %64 = call i32 @nla_put(ptr noundef %9, i32 noundef 2, i32 noundef 64, ptr noundef nonnull %6) #11
  %65 = icmp eq i32 %64, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br i1 %65, label %107, label %96

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 10
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.crypto_type, ptr %68, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = call i32 %72(ptr noundef %9, ptr noundef %0) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %107, label %96

77:                                               ; preds = %70, %66
  %78 = and i32 %59, 31
  switch i32 %78, label %107 [
    i32 1, label %79
    i32 2, label %92
  ]

79:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %4, i8 0, i64 76, i1 false) #11
  %80 = call i32 @strscpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, i32 noundef 64) #11
  %81 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.crypto_report_cipher, ptr %4, i32 0, i32 1
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 11
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.crypto_report_cipher, ptr %4, i32 0, i32 2
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 11, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.crypto_report_cipher, ptr %4, i32 0, i32 3
  store i32 %88, ptr %89, align 4
  %90 = call i32 @nla_put(ptr noundef %9, i32 noundef 8, i32 noundef 76, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %4) #11
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %107, label %96

92:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i64 64, i1 false) #11
  %93 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, i32 noundef 64) #11
  %94 = call i32 @nla_put(ptr noundef %9, i32 noundef 6, i32 noundef 64, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %92, %79, %74, %62, %32
  %97 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %98 = load ptr, ptr %97, align 4
  %99 = icmp ugt ptr %98, %30
  br i1 %99, label %100, label %102, !prof !9

100:                                              ; preds = %96
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  %101 = load ptr, ptr %97, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi ptr [ %101, %100 ], [ %98, %96 ]
  %104 = ptrtoint ptr %30 to i32
  %105 = ptrtoint ptr %103 to i32
  %106 = sub i32 %104, %105
  call void @skb_trim(ptr noundef %9, i32 noundef %106) #11
  br label %112

107:                                              ; preds = %92, %79, %77, %74, %62
  %108 = load ptr, ptr %23, align 8
  %109 = ptrtoint ptr %108 to i32
  %110 = ptrtoint ptr %30 to i32
  %111 = sub i32 %109, %110
  store i32 %111, ptr %30, align 4
  br label %112

112:                                              ; preds = %107, %102, %29, %20, %2
  %113 = phi i32 [ -90, %102 ], [ 0, %107 ], [ -90, %29 ], [ -90, %20 ], [ -90, %2 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_del_default_rng() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
