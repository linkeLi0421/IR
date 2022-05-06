; ModuleID = '/llk/IR/net/ipv6/udp_offload.c_pt.bc'
source_filename = "../net/ipv6/udp_offload.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.60, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.60 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.udp_table = type { ptr, ptr, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.115, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.115 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.frag_hdr = type { i8, i8, i16, i32 }

@udpv6_offload = internal constant %struct.net_offload { %struct.offload_callbacks { ptr @udp6_ufo_fragment, ptr @udp6_gro_receive, ptr @udp6_gro_complete }, i32 0 }, align 4
@init_net = external dso_local global %struct.net, align 64
@udpv6_encap_needed_key = external dso_local global %struct.static_key_false, align 4
@udp_table = external dso_local global %struct.udp_table, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udpv6_offload_init() local_unnamed_addr #0 {
  %1 = tail call i32 @inet6_add_offload(ptr noundef nonnull @udpv6_offload, i8 noundef zeroext 17) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udpv6_offload_exit() local_unnamed_addr #0 {
  %1 = tail call i32 @inet6_del_offload(ptr noundef nonnull @udpv6_offload, i8 noundef zeroext 17) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @udp6_ufo_fragment(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 8192
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 3072
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %7, i1 true, i1 %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = tail call ptr @skb_udp_tunnel_segment(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #5
  br label %145

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %19 = and i32 %11, 196608
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %145, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %23, %25
  %27 = icmp ult i32 %26, 8
  br i1 %27, label %28, label %38, !prof !9

28:                                               ; preds = %21
  %29 = icmp ult i32 %23, 8
  br i1 %29, label %145, label %30, !prof !9

30:                                               ; preds = %28
  %31 = sub nuw nsw i32 8, %26
  %32 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %31) #5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %145, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %18, align 4
  %36 = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 8
  %37 = load i32, ptr %36, align 8
  br label %38

38:                                               ; preds = %34, %21
  %39 = phi i32 [ %37, %34 ], [ %11, %21 ]
  %40 = phi ptr [ %35, %34 ], [ %9, %21 ]
  %41 = and i32 %39, 131072
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call ptr @__udp_gso_segment(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #5
  br label %145

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 4
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = load i32, ptr %22, align 8
  %50 = icmp ugt i32 %49, %48
  br i1 %50, label %51, label %145, !prof !10

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = getelementptr i8, ptr %53, i32 %60
  %62 = getelementptr inbounds %struct.udphdr, ptr %57, i32 0, i32 3
  store i16 0, ptr %62, align 2
  %63 = load i32, ptr %22, align 8
  %64 = tail call i32 @skb_checksum(ptr noundef %0, i32 noundef 0, i32 noundef %63, i32 noundef 0) #5
  %65 = load i32, ptr %22, align 8
  %66 = getelementptr inbounds %struct.ipv6hdr, ptr %61, i32 0, i32 5
  %67 = getelementptr inbounds %struct.ipv6hdr, ptr %61, i32 0, i32 6
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  %69 = tail call i32 @__csum_ipv6_magic(ptr noundef %66, ptr noundef %67, i32 noundef %68, i32 noundef 285212672, i32 noundef %64) #5
  %70 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %69) #6, !srcloc !11
  %71 = xor i32 %70, -1
  %72 = lshr i32 %71, 16
  %73 = trunc i32 %72 to i16
  %74 = icmp eq i16 %73, 0
  %75 = select i1 %74, i16 -1, i16 %73
  store i16 %75, ptr %62, align 2
  %76 = load i16, ptr %4, align 8
  %77 = and i16 %76, -97
  %78 = or i16 %77, 32
  store i16 %78, ptr %4, align 8
  %79 = and i16 %76, 16384
  %80 = icmp eq i16 %79, 0
  %81 = or i64 %1, 8
  %82 = select i1 %80, i64 %81, i64 %1
  %83 = load ptr, ptr %52, align 8
  %84 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr i8, ptr %83, i32 %86
  %88 = ptrtoint ptr %87 to i32
  %89 = ptrtoint ptr %83 to i32
  %90 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, %89
  %93 = sub i32 %88, %92
  %94 = add i32 %93, 8
  %95 = icmp sgt i32 %94, %86
  br i1 %95, label %96, label %112

96:                                               ; preds = %51
  %97 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %98 = load ptr, ptr %97, align 4
  %99 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %94, i32 noundef 0, i32 noundef 2592) #5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %145

101:                                              ; preds = %96
  %102 = ptrtoint ptr %98 to i32
  %103 = load ptr, ptr %97, align 4
  %104 = load ptr, ptr %52, align 8
  %105 = ptrtoint ptr %103 to i32
  %106 = ptrtoint ptr %104 to i32
  %107 = load i32, ptr %90, align 4
  %108 = add i32 %89, %105
  %109 = add i32 %102, %106
  %110 = sub i32 %108, %109
  %111 = add i32 %110, %107
  store i32 %111, ptr %90, align 4
  br label %112

112:                                              ; preds = %101, %51
  %113 = call i32 @ip6_find_1stfragopt(ptr noundef %0, ptr noundef nonnull %3) #5
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = inttoptr i32 %113 to ptr
  br label %145

117:                                              ; preds = %112
  %118 = load ptr, ptr %3, align 4
  %119 = load i8, ptr %118, align 1
  store i8 44, ptr %118, align 1
  %120 = load ptr, ptr %52, align 8
  %121 = load i16, ptr %58, align 4
  %122 = zext i16 %121 to i32
  %123 = load i16, ptr %84, align 2
  %124 = zext i16 %123 to i32
  %125 = add i32 %113, %93
  %126 = add i32 %125, %122
  %127 = sub i32 %126, %124
  %128 = load i32, ptr %90, align 4
  %129 = getelementptr i8, ptr %120, i32 %128
  %130 = getelementptr i8, ptr %129, i32 -8
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %130, ptr align 1 %129, i32 %127, i1 false)
  %131 = load i32, ptr %90, align 4
  %132 = add i32 %131, -8
  store i32 %132, ptr %90, align 4
  %133 = load i16, ptr %84, align 2
  %134 = add i16 %133, -8
  store i16 %134, ptr %84, align 2
  %135 = load i16, ptr %58, align 4
  %136 = add i16 %135, -8
  store i16 %136, ptr %58, align 4
  %137 = load ptr, ptr %52, align 8
  %138 = zext i16 %136 to i32
  %139 = getelementptr i8, ptr %137, i32 %138
  %140 = getelementptr i8, ptr %139, i32 %113
  store i8 %119, ptr %140, align 4
  %141 = getelementptr inbounds %struct.frag_hdr, ptr %140, i32 0, i32 1
  store i8 0, ptr %141, align 1
  %142 = call i32 @ipv6_proxy_select_ident(ptr noundef nonnull @init_net, ptr noundef %0) #5
  %143 = getelementptr inbounds %struct.frag_hdr, ptr %140, i32 0, i32 3
  store i32 %142, ptr %143, align 4
  %144 = call ptr @skb_segment(ptr noundef %0, i64 noundef %82) #5
  br label %145

145:                                              ; preds = %117, %115, %96, %45, %43, %30, %28, %17, %15
  %146 = phi ptr [ %44, %43 ], [ %116, %115 ], [ %16, %15 ], [ inttoptr (i32 -22 to ptr), %96 ], [ inttoptr (i32 -22 to ptr), %45 ], [ inttoptr (i32 -22 to ptr), %30 ], [ inttoptr (i32 -22 to ptr), %17 ], [ %144, %117 ], [ inttoptr (i32 -22 to ptr), %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret ptr %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @udp6_gro_receive(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %5
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = icmp ugt i32 %5, %15
  br i1 %16, label %17, label %23, !prof !9

17:                                               ; preds = %10
  %18 = icmp ult i32 %12, %5
  br i1 %18, label %200, label %19, !prof !9

19:                                               ; preds = %17
  %20 = sub i32 %5, %15
  %21 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %20) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %200, label %23

23:                                               ; preds = %19, %10
  store ptr null, ptr %6, align 8
  store i32 0, ptr %7, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi ptr [ %6, %2 ], [ %24, %23 ]
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %200, label %30, !prof !9

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %32 = load i16, ptr %31, align 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %36 = load i16, ptr %35, align 2
  br label %186

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.udphdr, ptr %28, i32 0, i32 3
  %39 = load i16, ptr %38, align 2
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %41 = load i16, ptr %40, align 8
  %42 = and i16 %41, 96
  %43 = icmp eq i16 %42, 96
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i32, ptr %3, align 8
  br label %60

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %53 = load ptr, ptr %52, align 8
  %54 = ptrtoint ptr %51 to i32
  %55 = ptrtoint ptr %53 to i32
  %56 = sub i32 %49, %54
  %57 = add i32 %56, %55
  %58 = load i32, ptr %3, align 8
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %115

60:                                               ; preds = %46, %44
  %61 = phi i32 [ %45, %44 ], [ %58, %46 ]
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %115, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %68 = load i16, ptr %67, align 2
  %69 = and i16 %68, 56
  %70 = icmp eq i16 %69, 0
  %71 = icmp ne i16 %39, 0
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %115

73:                                               ; preds = %66
  %74 = load ptr, ptr %6, align 8
  %75 = icmp eq ptr %74, null
  %76 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %77 = load ptr, ptr %76, align 4
  %78 = select i1 %75, ptr %77, ptr %74
  %79 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %82 = load i16, ptr %81, align 4
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %80, i32 %83
  %85 = ptrtoint ptr %84 to i32
  %86 = ptrtoint ptr %77 to i32
  %87 = sub i32 %85, %86
  %88 = getelementptr i8, ptr %78, i32 %87
  %89 = getelementptr inbounds %struct.ipv6hdr, ptr %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.ipv6hdr, ptr %88, i32 0, i32 6
  %91 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %92 = load i32, ptr %91, align 8
  %93 = sub i32 %92, %61
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #5
  %95 = tail call i32 @__csum_ipv6_magic(ptr noundef %89, ptr noundef %90, i32 noundef %94, i32 noundef 285212672, i32 noundef 0) #5
  %96 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %95) #6, !srcloc !11
  %97 = lshr i32 %96, 16
  %98 = or i32 %97, -65536
  %99 = load i16, ptr %67, align 2
  %100 = and i16 %99, 4
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %73
  %103 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, %98
  %106 = icmp ult i32 %105, %104
  %107 = zext i1 %106 to i32
  %108 = add i32 %105, %107
  %109 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %108) #6, !srcloc !11
  %110 = icmp ugt i32 %109, -65537
  br i1 %110, label %115, label %111

111:                                              ; preds = %102, %73
  %112 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %98, ptr %112, align 4
  %113 = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %1) #5
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %200

115:                                              ; preds = %111, %102, %66, %60, %46
  %116 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %117 = load i16, ptr %116, align 2
  %118 = trunc i16 %117 to i8
  %119 = and i8 %118, 56
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = add i8 %118, 56
  %123 = and i8 %122, 56
  %124 = zext i8 %123 to i16
  %125 = and i16 %117, -57
  %126 = or i16 %125, %124
  store i16 %126, ptr %116, align 2
  br label %149

127:                                              ; preds = %115
  %128 = load i16, ptr %40, align 8
  %129 = lshr i16 %128, 5
  %130 = trunc i16 %129 to i2
  switch i2 %130, label %149 [
    i2 1, label %131
    i2 0, label %143
  ]

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %133 = load i16, ptr %132, align 2
  %134 = trunc i16 %133 to i8
  %135 = and i8 %134, 12
  %136 = icmp eq i8 %135, 12
  br i1 %136, label %149, label %137

137:                                              ; preds = %131
  %138 = add i8 %134, 4
  %139 = and i8 %138, 12
  %140 = zext i8 %139 to i16
  %141 = and i16 %133, -13
  %142 = or i16 %141, %140
  store i16 %142, ptr %132, align 2
  br label %149

143:                                              ; preds = %127
  %144 = and i16 %128, -97
  %145 = or i16 %144, 32
  store i16 %145, ptr %40, align 8
  %146 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %147 = load i16, ptr %146, align 2
  %148 = and i16 %147, -13
  store i16 %148, ptr %146, align 2
  br label %149

149:                                              ; preds = %143, %137, %131, %127, %121
  %150 = phi i16 [ %126, %121 ], [ %117, %127 ], [ %117, %131 ], [ %117, %137 ], [ %117, %143 ]
  %151 = load i16, ptr %38, align 2
  %152 = icmp ne i16 %151, 0
  %153 = and i16 %150, 60
  %154 = icmp eq i16 %153, 0
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %186

156:                                              ; preds = %149
  %157 = load ptr, ptr %6, align 8
  %158 = icmp eq ptr %157, null
  %159 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %160 = load ptr, ptr %159, align 4
  %161 = select i1 %158, ptr %160, ptr %157
  %162 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %165 = load i16, ptr %164, align 4
  %166 = zext i16 %165 to i32
  %167 = getelementptr i8, ptr %163, i32 %166
  %168 = ptrtoint ptr %167 to i32
  %169 = ptrtoint ptr %160 to i32
  %170 = sub i32 %168, %169
  %171 = getelementptr i8, ptr %161, i32 %170
  %172 = getelementptr inbounds %struct.ipv6hdr, ptr %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.ipv6hdr, ptr %171, i32 0, i32 6
  %174 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %175 = load i32, ptr %174, align 8
  %176 = load i32, ptr %3, align 8
  %177 = sub i32 %175, %176
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #5
  %179 = tail call i32 @__csum_ipv6_magic(ptr noundef %172, ptr noundef %173, i32 noundef %178, i32 noundef 285212672, i32 noundef 0) #5
  %180 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %179) #6, !srcloc !11
  %181 = xor i32 %180, -1
  %182 = lshr i32 %181, 16
  %183 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %182, ptr %183, align 4
  %184 = load i16, ptr %116, align 2
  %185 = or i16 %184, 4
  br label %186

186:                                              ; preds = %156, %149, %34
  %187 = phi i16 [ %36, %34 ], [ %185, %156 ], [ %150, %149 ]
  %188 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %189 = or i16 %187, 256
  store i16 %189, ptr %188, align 2
  %190 = load volatile i32, ptr @udpv6_encap_needed_key, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %197, !prof !9

192:                                              ; preds = %186
  %193 = load i16, ptr %28, align 2
  %194 = getelementptr inbounds %struct.udphdr, ptr %28, i32 0, i32 1
  %195 = load i16, ptr %194, align 2
  %196 = tail call fastcc ptr @udp6_gro_lookup_skb(ptr noundef %1, i16 noundef zeroext %193, i16 noundef zeroext %195)
  br label %197

197:                                              ; preds = %192, %186
  %198 = phi ptr [ %196, %192 ], [ null, %186 ]
  %199 = tail call ptr @udp_gro_receive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %28, ptr noundef %198) #5
  br label %202

200:                                              ; preds = %111, %25, %19, %17
  %201 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 1, ptr %201, align 4
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi ptr [ null, %200 ], [ %199, %197 ]
  ret ptr %203
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udp6_gro_complete(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %1
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, -32766
  %15 = icmp eq i16 %14, -32768
  br i1 %15, label %16, label %54

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = sub i32 %18, %1
  %20 = trunc i32 %19 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 2
  store i16 %21, ptr %22, align 2
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = or i32 %26, 393216
  store i32 %27, ptr %25, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %29 = load i16, ptr %28, align 8
  %30 = load ptr, ptr %23, align 4
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 5
  store i16 %29, ptr %31, align 2
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %33 = load i16, ptr %32, align 8
  %34 = and i16 %33, 96
  %35 = icmp eq i16 %34, 32
  br i1 %35, label %36, label %48

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %38 = load i16, ptr %37, align 2
  %39 = trunc i16 %38 to i8
  %40 = and i8 %39, 12
  %41 = icmp eq i8 %40, 12
  br i1 %41, label %73, label %42

42:                                               ; preds = %36
  %43 = add i8 %39, 4
  %44 = and i8 %43, 12
  %45 = zext i8 %44 to i16
  %46 = and i16 %38, -13
  %47 = or i16 %46, %45
  store i16 %47, ptr %37, align 2
  br label %73

48:                                               ; preds = %16
  %49 = and i16 %33, -97
  %50 = or i16 %49, 32
  store i16 %50, ptr %32, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %52 = load i16, ptr %51, align 2
  %53 = and i16 %52, -13
  store i16 %53, ptr %51, align 2
  br label %73

54:                                               ; preds = %2
  %55 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  %56 = load i16, ptr %55, align 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = sub i32 %60, %1
  %62 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 5
  %63 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 6
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  %65 = tail call i32 @__csum_ipv6_magic(ptr noundef %62, ptr noundef %63, i32 noundef %64, i32 noundef 285212672, i32 noundef 0) #5
  %66 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %65) #6, !srcloc !11
  %67 = xor i32 %66, -1
  %68 = lshr i32 %67, 16
  %69 = trunc i32 %68 to i16
  %70 = xor i16 %69, -1
  store i16 %70, ptr %55, align 2
  br label %71

71:                                               ; preds = %58, %54
  %72 = tail call i32 @udp_gro_complete(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @udp6_lib_lookup_skb) #5
  br label %73

73:                                               ; preds = %71, %48, %42, %36
  %74 = phi i32 [ %72, %71 ], [ 0, %36 ], [ 0, %42 ], [ 0, %48 ]
  ret i32 %74
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_udp_tunnel_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udp_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_find_1stfragopt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_proxy_select_ident(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udp6_gro_lookup_skb(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = select i1 %6, ptr %8, ptr %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %8 to i32
  %18 = sub i32 %16, %17
  %19 = getelementptr i8, ptr %9, i32 %18
  %20 = getelementptr inbounds %struct.ipv6hdr, ptr %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.ipv6hdr, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %5 to i32
  %23 = tail call ptr @__udp6_lib_lookup(ptr noundef nonnull @init_net, ptr noundef %20, i16 noundef zeroext %1, ptr noundef %21, i16 noundef zeroext %2, i32 noundef %22, i32 noundef 0, ptr noundef nonnull @udp_table, ptr noundef null) #5
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp_gro_receive(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udp6_lib_lookup(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_gro_complete(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp6_lib_lookup_skb(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 5176553}
