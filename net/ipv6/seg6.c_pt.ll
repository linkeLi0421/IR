; ModuleID = '/llk/IR/net/ipv6/seg6.c_pt.bc'
source_filename = "../net/ipv6/seg6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.10 }
%union.anon.10 = type { i32 }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.lock_class_key = type {}
%struct.ipv6_sr_hdr = type { i8, i8, i8, i8, i8, i8, i16, [0 x %struct.in6_addr] }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sr6_tlv = type { i8, i8, [0 x i8] }
%struct.sk_buff = type { %union.anon.0, %union.anon.114, %union.anon.115, [48 x i8], %union.anon.116, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.118, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.114 = type { ptr }
%union.anon.115 = type { i64 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, ptr }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.120, i32, i32, i32, i16, i16, %union.anon.122, %union.anon.123, %union.anon.124, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.120 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i16 }
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type {}
%struct.seg6_pernet_data = type { %struct.mutex, ptr }

@seg6_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"SEG6\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 7, i32 0, i8 3, i8 4, i8 0, i8 0, ptr @seg6_genl_policy, ptr null, ptr null, ptr @seg6_genl_ops, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@ip6_segments_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @seg6_net_init, ptr null, ptr @seg6_net_exit, ptr null, ptr null, i32 0 }, align 4
@.str = private unnamed_addr constant [29 x i8] c"\016Segment Routing with IPv6\0A\00", align 1
@seg6_genl_policy = internal constant [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.10 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.10 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.10 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.10 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.10 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.10 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.10 zeroinitializer }], align 4
@seg6_genl_ops = internal constant [4 x %struct.genl_ops] [%struct.genl_ops { ptr @seg6_genl_sethmac, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr @seg6_genl_dumphmac_start, ptr @seg6_genl_dumphmac, ptr @seg6_genl_dumphmac_done, ptr null, i32 0, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @seg6_genl_set_tunsrc, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @seg6_genl_get_tunsrc, ptr null, ptr null, ptr null, ptr null, i32 0, i8 4, i8 0, i8 1, i8 3 }], align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@seg6_net_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"&sdata->lock\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @seg6_validate_srh(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 4
  br i1 %6, label %7, label %55

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = add nuw nsw i32 %11, 8
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %55

14:                                               ; preds = %7
  br i1 %2, label %15, label %18

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  br label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %0, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %0, i32 0, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = icmp ugt i8 %20, %22
  br i1 %23, label %55, label %24

24:                                               ; preds = %18, %15
  %25 = phi i8 [ %17, %15 ], [ %22, %18 ]
  %26 = lshr i8 %9, 1
  %27 = icmp ugt i8 %26, %25
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = zext i8 %25 to i32
  %30 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %0, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %29, 1
  %34 = icmp ult i32 %33, %32
  br i1 %34, label %55, label %35

35:                                               ; preds = %28
  %36 = shl nuw nsw i32 %33, 4
  %37 = or i32 %36, 8
  %38 = sub i32 %1, %37
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %43, %35
  %41 = phi i32 [ %52, %43 ], [ %37, %35 ]
  %42 = phi i32 [ %49, %43 ], [ %38, %35 ]
  switch i32 %42, label %43 [
    i32 0, label %53
    i32 1, label %55
  ]

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %0, i32 %41
  %45 = getelementptr inbounds %struct.sr6_tlv, ptr %44, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = add nuw nsw i32 %47, 2
  %49 = sub nsw i32 %42, %48
  %50 = icmp slt i32 %49, 0
  %51 = select i1 %50, i32 0, i32 %48
  %52 = add i32 %51, %41
  br i1 %50, label %53, label %40

53:                                               ; preds = %43, %40
  %54 = phi i1 [ true, %40 ], [ false, %43 ]
  br label %55

55:                                               ; preds = %53, %40, %35, %28, %24, %18, %7, %3
  %56 = phi i1 [ false, %3 ], [ false, %7 ], [ false, %18 ], [ false, %24 ], [ false, %28 ], [ false, %35 ], [ %54, %53 ], [ false, %40 ]
  ret i1 %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @seg6_get_srh(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %5 = call i32 @ipv6_find_hdr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 43, ptr noundef null, ptr noundef nonnull %3) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %95, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  %9 = add i32 %8, 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = icmp ugt i32 %9, %14
  br i1 %15, label %16, label %27, !prof !8

16:                                               ; preds = %7
  %17 = icmp ult i32 %11, %9
  br i1 %17, label %95, label %18, !prof !8

18:                                               ; preds = %16
  %19 = sub i32 %9, %14
  %20 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %19) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %95, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %4, align 4
  %24 = load i32, ptr %10, align 8
  %25 = load i32, ptr %12, align 4
  %26 = sub i32 %24, %25
  br label %27

27:                                               ; preds = %22, %7
  %28 = phi i32 [ %26, %22 ], [ %14, %7 ]
  %29 = phi i32 [ %24, %22 ], [ %11, %7 ]
  %30 = phi i32 [ %23, %22 ], [ %8, %7 ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %33, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 3
  %38 = add nuw nsw i32 %37, 8
  %39 = add i32 %38, %30
  %40 = icmp ugt i32 %39, %28
  br i1 %40, label %41, label %50, !prof !8

41:                                               ; preds = %27
  %42 = icmp ult i32 %29, %39
  br i1 %42, label %95, label %43, !prof !8

43:                                               ; preds = %41
  %44 = sub i32 %39, %28
  %45 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %44) #10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %95, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %31, align 4
  %49 = load i32, ptr %4, align 4
  br label %50

50:                                               ; preds = %47, %27
  %51 = phi i32 [ %49, %47 ], [ %30, %27 ]
  %52 = phi ptr [ %48, %47 ], [ %32, %27 ]
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %53, i32 0, i32 2
  %55 = load i8, ptr %54, align 2
  %56 = icmp eq i8 %55, 4
  br i1 %56, label %57, label %95

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %53, i32 0, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 3
  %62 = icmp eq i32 %61, %37
  br i1 %62, label %63, label %95

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %53, i32 0, i32 4
  %65 = load i8, ptr %64, align 4
  %66 = lshr i8 %59, 1
  %67 = icmp ugt i8 %66, %65
  br i1 %67, label %68, label %95

68:                                               ; preds = %63
  %69 = zext i8 %65 to i32
  %70 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %53, i32 0, i32 3
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = add nuw nsw i32 %69, 1
  %74 = icmp ult i32 %73, %72
  br i1 %74, label %95, label %75

75:                                               ; preds = %68
  %76 = shl nuw nsw i32 %73, 4
  %77 = or i32 %76, 8
  %78 = sub nsw i32 %38, %77
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %83, %75
  %81 = phi i32 [ %92, %83 ], [ %77, %75 ]
  %82 = phi i32 [ %89, %83 ], [ %78, %75 ]
  switch i32 %82, label %83 [
    i32 0, label %93
    i32 1, label %95
  ]

83:                                               ; preds = %80
  %84 = getelementptr i8, ptr %53, i32 %81
  %85 = getelementptr inbounds %struct.sr6_tlv, ptr %84, i32 0, i32 1
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = add nuw nsw i32 %87, 2
  %89 = sub nsw i32 %82, %88
  %90 = icmp slt i32 %89, 0
  %91 = select i1 %90, i32 0, i32 %88
  %92 = add i32 %91, %81
  br i1 %90, label %93, label %80

93:                                               ; preds = %83, %80
  %94 = phi ptr [ %53, %80 ], [ null, %83 ]
  br label %95

95:                                               ; preds = %93, %80, %75, %68, %63, %57, %50, %43, %41, %18, %16, %2
  %96 = phi ptr [ null, %2 ], [ null, %18 ], [ null, %43 ], [ null, %16 ], [ null, %41 ], [ null, %50 ], [ null, %57 ], [ null, %63 ], [ null, %68 ], [ null, %75 ], [ %94, %93 ], [ null, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret ptr %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seg6_icmp_srh(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %4 = load i16, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %6 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %3, align 4
  %13 = tail call ptr @seg6_get_srh(ptr noundef %0, i32 noundef 0)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %13, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 4
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.inet6_skb_parm, ptr %1, i32 0, i32 7
  %21 = load i16, ptr %20, align 4
  %22 = or i16 %21, 256
  store i16 %22, ptr %20, align 4
  %23 = load ptr, ptr %5, align 4
  %24 = ptrtoint ptr %13 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.inet6_skb_parm, ptr %1, i32 0, i32 10
  store i16 %27, ptr %28, align 2
  br label %29

29:                                               ; preds = %19, %15, %2
  store i16 %4, ptr %3, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @seg6_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @genl_register_family(ptr noundef nonnull @seg6_genl_family) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6_segments_ops) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %8

8:                                                ; preds = %10, %6, %0
  %9 = phi i32 [ %1, %0 ], [ %4, %10 ], [ 0, %6 ]
  ret i32 %9

10:                                               ; preds = %3
  %11 = tail call i32 @genl_unregister_family(ptr noundef nonnull @seg6_genl_family) #10
  br label %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seg6_exit() local_unnamed_addr #2 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6_segments_ops) #10
  %1 = tail call i32 @genl_unregister_family(ptr noundef nonnull @seg6_genl_family) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @seg6_genl_sethmac(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 -524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @seg6_genl_dumphmac_start(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @seg6_genl_dumphmac(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 -524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @seg6_genl_dumphmac_done(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seg6_genl_set_tunsrc(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 31), align 4
  %4 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %7, i32 4
  %11 = tail call ptr @kmemdup(ptr noundef %10, i32 noundef 16, i32 noundef 3264) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef %3) #10
  %14 = getelementptr inbounds %struct.seg6_pernet_data, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  store volatile ptr %11, ptr %14, align 4
  tail call void @mutex_unlock(ptr noundef %3) #10
  tail call void @synchronize_net() #10
  tail call void @kfree(ptr noundef %15) #10
  br label %16

16:                                               ; preds = %13, %9, %2
  %17 = phi i32 [ 0, %13 ], [ -22, %2 ], [ -12, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seg6_genl_get_tunsrc(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @__alloc_skb(i32 noundef 3844, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %1, align 4
  %9 = tail call ptr @genlmsg_put(ptr noundef nonnull %3, i32 noundef %7, i32 noundef %8, ptr noundef nonnull @seg6_genl_family, i32 noundef 0, i8 noundef zeroext 4) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %12 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 31), align 4
  %13 = getelementptr inbounds %struct.seg6_pernet_data, ptr %12, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = tail call i32 @nla_put(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 16, ptr noundef %14) #10
  %16 = icmp eq i32 %15, 0
  tail call void asm sideeffect "", "~{memory}"() #10
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %9, i32 -20
  %19 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %20 to i32
  %22 = ptrtoint ptr %18 to i32
  %23 = sub i32 %21, %22
  store i32 %23, ptr %18, align 4
  %24 = load i32, ptr %6, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %26 = tail call i32 @netlink_unicast(ptr noundef %25, ptr noundef nonnull %3, i32 noundef %24, i32 noundef 64) #10
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 0) #10
  br label %29

28:                                               ; preds = %11, %5
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %29

29:                                               ; preds = %28, %17, %2
  %30 = phi i32 [ -12, %28 ], [ %27, %17 ], [ -12, %2 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @seg6_net_init(ptr nocapture noundef writeonly %0) #4 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  tail call void @__mutex_init(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @seg6_net_init.__key) #10
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #12
  %8 = getelementptr inbounds %struct.seg6_pernet_data, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 31
  store ptr %3, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %10, %1
  %14 = phi i32 [ 0, %11 ], [ -12, %10 ], [ -12, %1 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @seg6_net_exit(ptr nocapture noundef readonly %0) #7 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.seg6_pernet_data, ptr %3, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155813874}
!10 = !{i64 2149020365}
