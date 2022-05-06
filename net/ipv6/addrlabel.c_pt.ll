; ModuleID = '/llk/IR/net/ipv6/addrlabel.c_pt.bc'
source_filename = "../net/ipv6/addrlabel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ip6addrlbl_init_table = type { ptr, i32, i32 }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.nla_policy = type { i8, i8, i16, %union.anon.84 }
%union.anon.84 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.130, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.130 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ip6addrlbl_entry = type { %struct.in6_addr, i32, i32, i32, i32, %struct.hlist_node, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.75, %union.anon.98, %union.anon.99, [48 x i8], %union.anon.100, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.102, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { i64 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, ptr }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.104, i32, i32, i32, i16, i16, %union.anon.106, %union.anon.107, %union.anon.108, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.104 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.86 }
%union.anon.86 = type { [6 x i32], [24 x i8] }

@ipv6_addr_label_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip6addrlbl_net_init, ptr null, ptr @ip6addrlbl_net_exit, ptr null, ptr null, i32 0 }, align 4
@ip6addrlbl_init_table = internal unnamed_addr constant [10 x %struct.ip6addrlbl_init_table] [%struct.ip6addrlbl_init_table { ptr @in6addr_any, i32 0, i32 1 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral, i32 7, i32 5 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.1, i32 10, i32 11 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.2, i32 16, i32 2 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.3, i32 16, i32 12 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.4, i32 32, i32 6 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.5, i32 28, i32 7 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.6, i32 96, i32 4 }, %struct.ip6addrlbl_init_table { ptr @in6addr_any, i32 96, i32 3 }, %struct.ip6addrlbl_init_table { ptr @in6addr_loopback, i32 128, i32 0 }], section ".init.rodata", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@.compoundliteral = internal global { { <{ i8, [15 x i8] }> } } { { <{ i8, [15 x i8] }> } { <{ i8, [15 x i8] }> <{ i8 -4, [15 x i8] zeroinitializer }> } }, align 4
@.compoundliteral.1 = internal global { { <{ i8, i8, [14 x i8] }> } } { { <{ i8, i8, [14 x i8] }> } { <{ i8, i8, [14 x i8] }> <{ i8 -2, i8 -64, [14 x i8] zeroinitializer }> } }, align 4
@.compoundliteral.2 = internal global { { <{ i8, i8, [14 x i8] }> } } { { <{ i8, i8, [14 x i8] }> } { <{ i8, i8, [14 x i8] }> <{ i8 32, i8 2, [14 x i8] zeroinitializer }> } }, align 4
@.compoundliteral.3 = internal global { { <{ i8, i8, [14 x i8] }> } } { { <{ i8, i8, [14 x i8] }> } { <{ i8, i8, [14 x i8] }> <{ i8 63, i8 -2, [14 x i8] zeroinitializer }> } }, align 4
@.compoundliteral.4 = internal global { { <{ i8, i8, [14 x i8] }> } } { { <{ i8, i8, [14 x i8] }> } { <{ i8, i8, [14 x i8] }> <{ i8 32, i8 1, [14 x i8] zeroinitializer }> } }, align 4
@.compoundliteral.5 = internal global { { <{ i8, i8, i8, i8, [12 x i8] }> } } { { <{ i8, i8, i8, i8, [12 x i8] }> } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 32, i8 1, i8 0, i8 16, [12 x i8] zeroinitializer }> } }, align 4
@.compoundliteral.6 = internal global { { [16 x i8] } } { { [16 x i8] } { [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\FF\FF\00\00\00\00" } }, align 4
@in6addr_loopback = external dso_local constant %struct.in6_addr, align 4
@ifal_policy = internal constant [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.84 zeroinitializer }], align 4
@init_net = external dso_local global %struct.net, align 64
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"net/ipv6/addrlabel.c\00", align 1
@ip6addrlbl_valid_get_req.__msg = internal constant [47 x i8] c"ipv6: Invalid header for addrlabel get request\00", align 1
@ip6addrlbl_valid_get_req.__msg.7 = internal constant [57 x i8] c"ipv6: Invalid values in header for addrlabel get request\00", align 1
@ip6addrlbl_valid_get_req.__msg.8 = internal constant [53 x i8] c"ipv6: Unsupported attribute in addrlabel get request\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@ip6addrlbl_valid_dump_req.__msg = internal constant [52 x i8] c"ipv6: Invalid header for address label dump request\00", align 1
@ip6addrlbl_valid_dump_req.__msg.10 = internal constant [62 x i8] c"ipv6: Invalid values in header for address label dump request\00", align 1
@ip6addrlbl_valid_dump_req.__msg.11 = internal constant [63 x i8] c"ipv6: Invalid data after header for address label dump request\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_addr_label(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %2, 4240
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 35
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -32
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %58, label %12

12:                                               ; preds = %48, %4
  %13 = phi ptr [ %52, %48 ], [ %9, %4 ]
  %14 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = icmp eq i32 %15, %3
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %13, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = icmp eq i32 %21, %5
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %13, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 5
  %29 = icmp ult i32 %27, 32
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = shl nuw nsw i32 %28, 2
  %32 = tail call i32 @bcmp(ptr %1, ptr nonnull %13, i32 %31) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30, %25
  %35 = and i32 %27, 31
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %34
  %38 = getelementptr i32, ptr %1, i32 %28
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i32, ptr %13, i32 %28
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, %39
  %43 = sub nuw nsw i32 32, %35
  %44 = shl nsw i32 -1, %43
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #11
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %37, %30, %19, %12
  %49 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %13, i32 0, i32 5
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  %52 = getelementptr i8, ptr %50, i32 -32
  %53 = icmp eq ptr %52, null
  %54 = or i1 %51, %53
  br i1 %54, label %58, label %12

55:                                               ; preds = %37, %34
  %56 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %13, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %48, %4
  %59 = phi i32 [ %57, %55 ], [ -1, %4 ], [ -1, %48 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ipv6_addr_label_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipv6_addr_label_ops) #11
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_addr_label_cleanup() local_unnamed_addr #0 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ipv6_addr_label_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ipv6_addr_label_rtnl_register() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 72, ptr noundef nonnull @ip6addrlbl_newdel, ptr noundef null, i32 noundef 1) #11
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 73, ptr noundef nonnull @ip6addrlbl_newdel, ptr noundef null, i32 noundef 1) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 74, ptr noundef nonnull @ip6addrlbl_get, ptr noundef nonnull @ip6addrlbl_dump, i32 noundef 1) #11
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i32 [ %7, %6 ], [ %1, %0 ], [ %4, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6addrlbl_newdel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !10
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 28
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #11
  %8 = icmp eq ptr %2, null
  br i1 %8, label %63, label %9

9:                                                ; preds = %7
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %63

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %1, i32 28
  %12 = add i32 %5, -28
  %13 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %11, i32 noundef %12, ptr noundef nonnull @ifal_policy, i32 noundef 0, ptr noundef %2) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %1, i32 16
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 10
  br i1 %18, label %19, label %63

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %1, i32 18
  %21 = load i8, ptr %20, align 2
  %22 = icmp ugt i8 %21, -128
  br i1 %22, label %63, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds [3 x ptr], ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %63, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %25, i32 4
  %29 = getelementptr inbounds [3 x ptr], ptr %4, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %63, label %32

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %30, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %63, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 1
  %38 = load i16, ptr %37, align 4
  switch i16 %38, label %63 [
    i16 72, label %39
    i16 73, label %58
  ]

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %1, i32 20
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %44 = call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %41) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %63, label %46

46:                                               ; preds = %43
  %47 = load i8, ptr %20, align 2
  %48 = load i32, ptr %40, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi i32 [ %48, %46 ], [ 0, %39 ]
  %51 = phi i8 [ %47, %46 ], [ %21, %39 ]
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %54 = load i16, ptr %53, align 2
  %55 = and i16 %54, 256
  %56 = zext i16 %55 to i32
  %57 = call fastcc i32 @ip6addrlbl_add(ptr noundef nonnull @init_net, ptr noundef %28, i32 noundef %52, i32 noundef %50, i32 noundef %34, i32 noundef %56)
  br label %63

58:                                               ; preds = %36
  %59 = zext i8 %21 to i32
  %60 = getelementptr i8, ptr %1, i32 20
  %61 = load i32, ptr %60, align 4
  %62 = call fastcc i32 @ip6addrlbl_del(ptr noundef %28, i32 noundef %59, i32 noundef %61)
  br label %63

63:                                               ; preds = %58, %49, %43, %36, %32, %27, %23, %19, %15, %10, %9, %7
  %64 = phi i32 [ %13, %10 ], [ -22, %19 ], [ -22, %15 ], [ -22, %23 ], [ -22, %27 ], [ -22, %32 ], [ -22, %43 ], [ %62, %58 ], [ %57, %49 ], [ -95, %36 ], [ -22, %9 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6addrlbl_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !10
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 28
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_get_req.__msg) #11
  %8 = icmp eq ptr %2, null
  br i1 %8, label %145, label %9

9:                                                ; preds = %7
  store ptr @ip6addrlbl_valid_get_req.__msg, ptr %2, align 4
  br label %145

10:                                               ; preds = %3
  %11 = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %0) #11
  br i1 %11, label %22, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %1, align 4
  %14 = icmp ult i32 %13, 28
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #11
  %16 = icmp eq ptr %2, null
  br i1 %16, label %145, label %17

17:                                               ; preds = %15
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %145

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %1, i32 28
  %20 = add i32 %13, -28
  %21 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %19, i32 noundef %20, ptr noundef nonnull @ifal_policy, i32 noundef 0, ptr noundef %2) #11
  br label %50

22:                                               ; preds = %10
  %23 = getelementptr i8, ptr %1, i32 17
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %1, i32 19
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %1, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30, %26, %22
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_get_req.__msg.7) #11
  %35 = icmp eq ptr %2, null
  br i1 %35, label %145, label %36

36:                                               ; preds = %34
  store ptr @ip6addrlbl_valid_get_req.__msg.7, ptr %2, align 4
  br label %145

37:                                               ; preds = %30
  %38 = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %2) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load ptr, ptr %4, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds ptr, ptr %4, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = select i1 %42, i1 %45, i1 false
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_get_req.__msg.8) #11
  %48 = icmp eq ptr %2, null
  br i1 %48, label %145, label %49

49:                                               ; preds = %47
  store ptr @ip6addrlbl_valid_get_req.__msg.8, ptr %2, align 4
  br label %145

50:                                               ; preds = %37, %18
  %51 = phi i32 [ %38, %37 ], [ %21, %18 ]
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %145, label %53

53:                                               ; preds = %50, %40
  %54 = getelementptr i8, ptr %1, i32 16
  %55 = load i8, ptr %54, align 4
  %56 = icmp eq i8 %55, 10
  br i1 %56, label %57, label %145

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %1, i32 18
  %59 = load i8, ptr %58, align 2
  %60 = icmp eq i8 %59, -128
  br i1 %60, label %61, label %145

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %1, i32 20
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %66 = call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %63) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %145, label %68

68:                                               ; preds = %65, %61
  %69 = getelementptr inbounds [3 x ptr], ptr %4, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %145, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %70, i32 4
  %74 = call ptr @__alloc_skb(i32 noundef 56, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %145, label %76

76:                                               ; preds = %72
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %77 = call i32 @__ipv6_addr_type(ptr noundef %73) #11
  %78 = and i32 %77, 65535
  %79 = load i32, ptr %62, align 4
  %80 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 35), align 4
  %81 = icmp eq ptr %80, null
  %82 = getelementptr i8, ptr %80, i32 -32
  %83 = icmp eq ptr %82, null
  %84 = or i1 %81, %83
  br i1 %84, label %128, label %85

85:                                               ; preds = %121, %76
  %86 = phi ptr [ %125, %121 ], [ %82, %76 ]
  %87 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  %90 = icmp eq i32 %88, %79
  %91 = or i1 %89, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %86, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  %96 = icmp eq i32 %94, %78
  %97 = or i1 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %86, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = lshr i32 %100, 5
  %102 = icmp ult i32 %100, 32
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = shl nuw nsw i32 %101, 2
  %105 = call i32 @bcmp(ptr %73, ptr nonnull %86, i32 %104) #11
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %103, %98
  %108 = and i32 %100, 31
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %129, label %110

110:                                              ; preds = %107
  %111 = getelementptr i32, ptr %73, i32 %101
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i32, ptr %86, i32 %101
  %114 = load i32, ptr %113, align 4
  %115 = xor i32 %114, %112
  %116 = sub nuw nsw i32 32, %108
  %117 = shl nsw i32 -1, %116
  %118 = call i32 @llvm.bswap.i32(i32 %117) #11
  %119 = and i32 %115, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %110, %103, %92, %85
  %122 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %86, i32 0, i32 5
  %123 = load volatile ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  %125 = getelementptr i8, ptr %123, i32 -32
  %126 = icmp eq ptr %125, null
  %127 = or i1 %124, %126
  br i1 %127, label %128, label %85

128:                                              ; preds = %121, %76
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %140

129:                                              ; preds = %110, %107
  %130 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 35, i32 2), align 4
  %131 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = call fastcc i32 @ip6addrlbl_fill(ptr noundef nonnull %74, ptr noundef nonnull %86, i32 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef 0)
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  %138 = icmp eq i32 %135, -90
  br i1 %138, label %139, label %140, !prof !11

139:                                              ; preds = %137
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 625, i32 noundef 9, ptr noundef null) #11
  br label %140

140:                                              ; preds = %139, %137, %128
  %141 = phi i32 [ -3, %128 ], [ -90, %139 ], [ %135, %137 ]
  call void @kfree_skb_reason(ptr noundef nonnull %74, i32 noundef 0) #11
  br label %145

142:                                              ; preds = %129
  %143 = load i32, ptr %131, align 4
  %144 = call i32 @rtnl_unicast(ptr noundef nonnull %74, ptr noundef nonnull @init_net, i32 noundef %143) #11
  br label %145

145:                                              ; preds = %142, %140, %72, %68, %65, %57, %53, %50, %49, %47, %36, %34, %17, %15, %9, %7
  %146 = phi i32 [ %51, %50 ], [ -22, %57 ], [ -22, %53 ], [ -22, %65 ], [ -22, %68 ], [ -105, %72 ], [ %141, %140 ], [ %144, %142 ], [ -22, %9 ], [ -22, %7 ], [ -22, %36 ], [ -22, %34 ], [ -22, %49 ], [ -22, %47 ], [ -22, %17 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6addrlbl_dump(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %8 = load i8, ptr %7, align 4, !range !12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %4, align 4
  %14 = icmp ult i32 %13, 28
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_dump_req.__msg) #11
  %16 = icmp eq ptr %12, null
  br i1 %16, label %77, label %43

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %4, i32 17
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %4, i32 18
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %4, i32 19
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %4, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %4, i32 24
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33, %29, %25, %21, %17
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_dump_req.__msg.10) #11
  %38 = icmp eq ptr %12, null
  br i1 %38, label %77, label %43

39:                                               ; preds = %33
  %40 = icmp eq i32 %13, 28
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_dump_req.__msg.11) #11
  %42 = icmp eq ptr %12, null
  br i1 %42, label %77, label %43

43:                                               ; preds = %41, %37, %15
  %44 = phi ptr [ @ip6addrlbl_valid_dump_req.__msg, %15 ], [ @ip6addrlbl_valid_dump_req.__msg.10, %37 ], [ @ip6addrlbl_valid_dump_req.__msg.11, %41 ]
  store ptr %44, ptr %12, align 4
  br label %77

45:                                               ; preds = %39, %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %46 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 35), align 4
  %47 = icmp eq ptr %46, null
  %48 = getelementptr i8, ptr %46, i32 -32
  %49 = icmp eq ptr %48, null
  %50 = or i1 %47, %49
  br i1 %50, label %73, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  br label %53

53:                                               ; preds = %65, %51
  %54 = phi ptr [ %48, %51 ], [ %70, %65 ]
  %55 = phi i32 [ 0, %51 ], [ %66, %65 ]
  %56 = icmp slt i32 %55, %6
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 35, i32 2), align 4
  %59 = load ptr, ptr %1, align 4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3, i32 12
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %52, align 4
  %63 = tail call fastcc i32 @ip6addrlbl_fill(ptr noundef %0, ptr noundef nonnull %54, i32 noundef %58, i32 noundef %61, i32 noundef %62, i32 noundef 2)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %57, %53
  %66 = add i32 %55, 1
  %67 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %54, i32 0, i32 5
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  %70 = getelementptr i8, ptr %68, i32 -32
  %71 = icmp eq ptr %70, null
  %72 = or i1 %69, %71
  br i1 %72, label %73, label %53

73:                                               ; preds = %65, %57, %45
  %74 = phi i32 [ 0, %45 ], [ %55, %57 ], [ %66, %65 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  store i32 %74, ptr %5, align 4
  %75 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %76 = load i32, ptr %75, align 8
  br label %77

77:                                               ; preds = %73, %43, %41, %37, %15
  %78 = phi i32 [ %76, %73 ], [ -22, %15 ], [ -22, %37 ], [ -22, %41 ], [ -22, %43 ]
  ret i32 %78
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ip6addrlbl_net_init(ptr noundef %0) #2 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 35
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 35, i32 1
  store i32 0, ptr %3, align 4
  store ptr null, ptr %2, align 4
  br label %7

4:                                                ; preds = %7
  %5 = add nuw nsw i32 %8, 1
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %37, label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 0, %1 ], [ %5, %4 ]
  %9 = getelementptr [10 x %struct.ip6addrlbl_init_table], ptr @ip6addrlbl_init_table, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr [10 x %struct.ip6addrlbl_init_table], ptr @ip6addrlbl_init_table, i32 0, i32 %8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr [10 x %struct.ip6addrlbl_init_table], ptr @ip6addrlbl_init_table, i32 0, i32 %8, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call fastcc i32 @ip6addrlbl_add(ptr noundef %0, ptr noundef %10, i32 noundef %12, i32 noundef 0, i32 noundef %14, i32 noundef 0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %4, label %17

17:                                               ; preds = %7
  %18 = load ptr, ptr %2, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr i8, ptr %18, i32 -32
  %21 = icmp eq ptr %20, null
  %22 = or i1 %19, %21
  br i1 %22, label %37, label %30

23:                                               ; preds = %30
  store volatile ptr inttoptr (i32 290 to ptr), ptr %34, align 4
  %24 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %31, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %24, ptr noundef nonnull inttoptr (i32 40 to ptr)) #11
  br label %37

25:                                               ; preds = %30
  %26 = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  store volatile ptr %35, ptr %26, align 4
  store volatile ptr inttoptr (i32 290 to ptr), ptr %34, align 4
  %27 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %31, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %27, ptr noundef nonnull inttoptr (i32 40 to ptr)) #11
  %28 = getelementptr i8, ptr %33, i32 -32
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25, %17
  %31 = phi ptr [ %28, %25 ], [ %20, %17 ]
  %32 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %31, i32 0, i32 5, i32 1
  %35 = load ptr, ptr %34, align 4
  store volatile ptr %33, ptr %35, align 4
  %36 = icmp eq ptr %33, null
  br i1 %36, label %23, label %25

37:                                               ; preds = %25, %23, %17, %4
  ret i32 %15
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip6addrlbl_net_exit(ptr noundef %0) #5 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 35
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 35, i32 1
  tail call void @_raw_spin_lock(ptr noundef %3) #11
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -32
  %7 = icmp eq ptr %6, null
  %8 = or i1 %5, %7
  br i1 %8, label %23, label %16

9:                                                ; preds = %16
  store volatile ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %10 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %17, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %10, ptr noundef nonnull inttoptr (i32 40 to ptr)) #11
  br label %23

11:                                               ; preds = %16
  %12 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  store volatile ptr %21, ptr %12, align 4
  store volatile ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %13 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %17, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %13, ptr noundef nonnull inttoptr (i32 40 to ptr)) #11
  %14 = getelementptr i8, ptr %19, i32 -32
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %11, %1
  %17 = phi ptr [ %14, %11 ], [ %6, %1 ]
  %18 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %17, i32 0, i32 5, i32 1
  %21 = load ptr, ptr %20, align 4
  store volatile ptr %19, ptr %21, align 4
  %22 = icmp eq ptr %19, null
  br i1 %22, label %9, label %11

23:                                               ; preds = %11, %9, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %24 = load i16, ptr %3, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6addrlbl_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @__ipv6_addr_type(ptr noundef %1) #11
  %8 = and i32 %7, 4240
  switch i32 %8, label %20 [
    i32 4096, label %9
    i32 128, label %14
    i32 16, label %17
  ]

9:                                                ; preds = %6
  %10 = icmp sgt i32 %2, 96
  br i1 %10, label %47, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %2, 96
  %13 = select i1 %12, i32 4096, i32 0
  br label %20

14:                                               ; preds = %6
  %15 = icmp eq i32 %2, 96
  %16 = select i1 %15, i32 128, i32 0
  br label %20

17:                                               ; preds = %6
  %18 = icmp eq i32 %2, 128
  %19 = select i1 %18, i32 16, i32 0
  br label %20

20:                                               ; preds = %17, %14, %11, %6
  %21 = phi i32 [ %8, %6 ], [ %13, %11 ], [ %16, %14 ], [ %19, %17 ]
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 48) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %20
  %26 = ashr i32 %2, 3
  %27 = and i32 %2, 7
  %28 = icmp ugt i32 %2, 127
  %29 = sub nsw i32 16, %26
  %30 = select i1 %28, i32 0, i32 %29
  %31 = getelementptr i8, ptr %23, i32 %26
  tail call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %30, i1 false) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %23, ptr align 4 %1, i32 %26, i1 false) #11
  %32 = icmp eq i32 %27, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = getelementptr [16 x i8], ptr %1, i32 0, i32 %26
  %35 = load i8, ptr %34, align 1
  %36 = lshr i32 65280, %27
  %37 = trunc i32 %36 to i8
  %38 = and i8 %35, %37
  store i8 %38, ptr %31, align 1
  br label %39

39:                                               ; preds = %33, %25
  %40 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %23, i32 0, i32 1
  store i32 %2, ptr %40, align 8
  %41 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %23, i32 0, i32 2
  store i32 %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %23, i32 0, i32 3
  store i32 %21, ptr %42, align 8
  %43 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %23, i32 0, i32 4
  store i32 %4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %23, i32 0, i32 5
  store ptr null, ptr %44, align 8
  %45 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %23, i32 0, i32 5, i32 1
  store ptr null, ptr %45, align 4
  %46 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %39, %20, %9
  %48 = phi ptr [ %23, %39 ], [ inttoptr (i32 -12 to ptr), %20 ], [ inttoptr (i32 -22 to ptr), %9 ]
  %49 = ptrtoint ptr %48 to i32
  br label %138

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 35, i32 1
  tail call void @_raw_spin_lock(ptr noundef %51) #11
  %52 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 35
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = getelementptr i8, ptr %53, i32 -32
  %56 = icmp eq ptr %55, null
  %57 = or i1 %54, %56
  br i1 %57, label %125, label %58

58:                                               ; preds = %50
  %59 = load i32, ptr %40, align 8
  %60 = getelementptr [4 x i32], ptr %23, i32 0, i32 1
  %61 = getelementptr [4 x i32], ptr %23, i32 0, i32 2
  %62 = getelementptr [4 x i32], ptr %23, i32 0, i32 3
  br label %63

63:                                               ; preds = %115, %58
  %64 = phi ptr [ %55, %58 ], [ %117, %115 ]
  %65 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %64, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, %59
  br i1 %69, label %70, label %109

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %64, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %41, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %70
  %76 = load i32, ptr %64, align 4
  %77 = load i32, ptr %23, align 8
  %78 = xor i32 %77, %76
  %79 = getelementptr [4 x i32], ptr %64, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %60, align 4
  %82 = xor i32 %81, %80
  %83 = or i32 %82, %78
  %84 = getelementptr [4 x i32], ptr %64, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = load i32, ptr %61, align 8
  %87 = xor i32 %86, %85
  %88 = or i32 %83, %87
  %89 = getelementptr [4 x i32], ptr %64, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = load i32, ptr %62, align 4
  %92 = xor i32 %91, %90
  %93 = or i32 %88, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %75
  %96 = icmp eq i32 %5, 0
  br i1 %96, label %132, label %97

97:                                               ; preds = %95
  store ptr %66, ptr %44, align 8
  %98 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %64, i32 0, i32 5, i32 1
  %99 = load ptr, ptr %98, align 4
  store volatile ptr %99, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %100 = load ptr, ptr %45, align 4
  store volatile ptr %44, ptr %100, align 4
  %101 = icmp eq ptr %66, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %44, align 8
  %104 = getelementptr inbounds %struct.hlist_node, ptr %103, i32 0, i32 1
  store volatile ptr %44, ptr %104, align 4
  br label %105

105:                                              ; preds = %102, %97
  store volatile ptr inttoptr (i32 290 to ptr), ptr %98, align 4
  %106 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %64, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %106, ptr noundef nonnull inttoptr (i32 40 to ptr)) #11
  br label %128

107:                                              ; preds = %75, %70
  %108 = icmp eq i32 %72, 0
  br i1 %108, label %111, label %115

109:                                              ; preds = %63
  %110 = icmp slt i32 %68, %59
  br i1 %110, label %111, label %115

111:                                              ; preds = %109, %107
  %112 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %64, i32 0, i32 5, i32 1
  %113 = load ptr, ptr %112, align 4
  store volatile ptr %113, ptr %45, align 4
  store ptr %65, ptr %44, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %114 = load ptr, ptr %45, align 4
  store volatile ptr %44, ptr %114, align 4
  store volatile ptr %44, ptr %112, align 4
  br label %128

115:                                              ; preds = %109, %107
  %116 = icmp eq ptr %66, null
  %117 = getelementptr i8, ptr %66, i32 -32
  %118 = icmp eq ptr %117, null
  %119 = or i1 %116, %118
  br i1 %119, label %120, label %63

120:                                              ; preds = %115
  store ptr %66, ptr %44, align 8
  store volatile ptr %65, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  store volatile ptr %44, ptr %65, align 4
  %121 = load ptr, ptr %44, align 8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.hlist_node, ptr %121, i32 0, i32 1
  store volatile ptr %44, ptr %124, align 4
  br label %128

125:                                              ; preds = %50
  store ptr %53, ptr %44, align 8
  store volatile ptr %52, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  store volatile ptr %44, ptr %52, align 4
  br i1 %54, label %128, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.hlist_node, ptr %53, i32 0, i32 1
  store volatile ptr %44, ptr %127, align 4
  br label %128

128:                                              ; preds = %126, %125, %123, %120, %111, %105
  %129 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 35, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 4
  br label %132

132:                                              ; preds = %128, %95
  %133 = phi i1 [ false, %95 ], [ true, %128 ]
  %134 = phi i32 [ -17, %95 ], [ 0, %128 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %135 = load i16, ptr %51, align 4
  %136 = add i16 %135, 1
  store i16 %136, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br i1 %133, label %138, label %137

137:                                              ; preds = %132
  tail call void @kfree(ptr noundef nonnull %23) #11
  br label %138

138:                                              ; preds = %137, %132, %47
  %139 = phi i32 [ %49, %47 ], [ %134, %137 ], [ 0, %132 ]
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6addrlbl_del(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.in6_addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %5 = ashr i32 %1, 3
  %6 = and i32 %1, 7
  %7 = zext i32 %5 to i64
  %8 = icmp ugt i32 %1, 127
  %9 = sub nsw i64 16, %7
  %10 = select i1 %8, i64 0, i64 %9
  %11 = getelementptr i8, ptr %4, i32 %5
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr align 4 %0, i32 %5, i1 false) #11
  %12 = icmp eq i32 %6, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = getelementptr [16 x i8], ptr %0, i32 0, i32 %5
  %15 = load i8, ptr %14, align 1
  %16 = lshr i32 65280, %6
  %17 = trunc i32 %16 to i8
  %18 = and i8 %15, %17
  %19 = getelementptr [16 x i8], ptr %4, i32 0, i32 %5
  store i8 %18, ptr %19, align 1
  br label %20

20:                                               ; preds = %13, %3
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 35, i32 1)) #11
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 35), align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 -32
  %24 = icmp eq ptr %23, null
  %25 = or i1 %22, %24
  br i1 %25, label %74, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %28 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %29 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %30 = load i32, ptr %4, align 4
  %31 = load i32, ptr %27, align 4
  %32 = load i32, ptr %28, align 4
  %33 = load i32, ptr %29, align 4
  br label %34

34:                                               ; preds = %69, %26
  %35 = phi ptr [ %23, %26 ], [ %71, %69 ]
  %36 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %35, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %35, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %2
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i32, ptr %35, align 4
  %47 = xor i32 %30, %46
  %48 = getelementptr [4 x i32], ptr %35, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %31, %49
  %51 = or i32 %50, %47
  %52 = getelementptr [4 x i32], ptr %35, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %32, %53
  %55 = or i32 %51, %54
  %56 = getelementptr [4 x i32], ptr %35, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = xor i32 %33, %57
  %59 = or i32 %55, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %35, i32 0, i32 5, i32 1
  %63 = load ptr, ptr %62, align 4
  store volatile ptr %37, ptr %63, align 4
  %64 = icmp eq ptr %37, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  store volatile ptr %63, ptr %66, align 4
  br label %67

67:                                               ; preds = %65, %61
  store volatile ptr inttoptr (i32 290 to ptr), ptr %62, align 4
  %68 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %35, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %68, ptr noundef nonnull inttoptr (i32 40 to ptr)) #11
  br label %74

69:                                               ; preds = %45, %41, %34
  %70 = icmp eq ptr %37, null
  %71 = getelementptr i8, ptr %37, i32 -32
  %72 = icmp eq ptr %71, null
  %73 = or i1 %70, %72
  br i1 %73, label %74, label %34

74:                                               ; preds = %69, %67, %20
  %75 = phi i32 [ 0, %67 ], [ -3, %20 ], [ -3, %69 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %76 = load i16, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 35, i32 1), align 8
  %77 = add i16 %76, 1
  store i16 %77, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 35, i32 1), align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6addrlbl_fill(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %13 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  %19 = icmp slt i32 %18, 28
  br i1 %19, label %57, label %20, !prof !11

20:                                               ; preds = %11
  %21 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef 72, i32 noundef 12, i32 noundef %5) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %21, i32 16
  store i8 10, ptr %28, align 4
  %29 = trunc i32 %25 to i8
  %30 = getelementptr i8, ptr %21, i32 18
  store i8 %29, ptr %30, align 2
  %31 = getelementptr i8, ptr %21, i32 19
  store i8 0, ptr %31, align 1
  %32 = getelementptr i8, ptr %21, i32 20
  store i32 %27, ptr %32, align 4
  %33 = getelementptr i8, ptr %21, i32 24
  store i32 %2, ptr %33, align 4
  %34 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 16, ptr noundef %1) #11
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 %38, ptr %7, align 4
  %39 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36, %23
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ugt ptr %43, %21
  br i1 %44, label %45, label %47, !prof !11

45:                                               ; preds = %41
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  %46 = load ptr, ptr %42, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %46, %45 ], [ %43, %41 ]
  %49 = ptrtoint ptr %21 to i32
  %50 = ptrtoint ptr %48 to i32
  %51 = sub i32 %49, %50
  call void @skb_trim(ptr noundef %0, i32 noundef %51) #11
  br label %57

52:                                               ; preds = %36
  %53 = load ptr, ptr %14, align 8
  %54 = ptrtoint ptr %53 to i32
  %55 = ptrtoint ptr %21 to i32
  %56 = sub i32 %54, %55
  store i32 %56, ptr %21, align 4
  br label %57

57:                                               ; preds = %52, %47, %20, %11, %6
  %58 = phi i32 [ -90, %47 ], [ 0, %52 ], [ -90, %20 ], [ -90, %11 ], [ -90, %6 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_strict_get_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ult i32 %4, 28
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #11
  %7 = icmp eq ptr %2, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %13

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 28
  %11 = add i32 %4, -28
  %12 = tail call i32 @__nla_parse(ptr noundef %1, i32 noundef 2, ptr noundef %10, i32 noundef %11, ptr noundef nonnull @ifal_policy, i32 noundef 3, ptr noundef %2) #11
  br label %13

13:                                               ; preds = %9, %8, %6
  %14 = phi i32 [ %12, %9 ], [ -22, %8 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 2148843349}
!9 = !{i64 2148843566}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i8 0, i8 2}
!13 = !{i64 2149007200}
!14 = !{i64 2149003024}
!15 = !{i64 2149003099, i64 2149003126, i64 2149003173, i64 2149003195, i64 2149003223, i64 2149003243}
!16 = !{i64 2149030203}
!17 = !{i64 2150607778}
!18 = !{i64 2150675774}
!19 = !{i64 2150690749}
!20 = !{i64 2150647925}
