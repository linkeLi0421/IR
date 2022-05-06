; ModuleID = '/llk/IR/net/ipv4/tcp_recovery.c_pt.bc'
source_filename = "../net/ipv4/tcp_recovery.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.129, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.129 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.179, %struct.anon.180, %struct.anon.181, i32, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.177, %struct.anon.178, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.170, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.171, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.172, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.166, [0 x i32], %union.anon.167, i16, i16, %union.anon.168, %struct.refcount_struct, [0 x i32], %union.anon.169 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { %struct.hlist_node }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.170 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.124 }
%union.anon.124 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.177 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.178 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.179 = type { i32, i32, i64 }
%struct.anon.180 = type { i32, i32, i64 }
%struct.anon.181 = type { i32, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.rate_sample = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @tcp_rack_skb_timeout(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %10, i32 0) #7, !srcloc !8
  %12 = extractvalue { i64, i32 } %11, 0
  %13 = extractvalue { i64, i32 } %11, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %10, i64 %12, i32 %13) #7, !srcloc !9
  %15 = extractvalue { i64, i32 } %14, 0
  %16 = lshr i64 %15, 9
  %17 = sub i64 %8, %16
  %18 = tail call i64 @llvm.smax.i64(i64 %17, i64 0) #8
  %19 = trunc i64 %18 to i32
  %20 = sub i32 %6, %19
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_rack_mark_lost(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 64
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = and i8 %4, -65
  store i8 %8, ptr %3, align 1
  call fastcc void @tcp_rack_detect_loss(ptr noundef %0, ptr noundef nonnull %2)
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @__usecs_to_jiffies(i32 noundef %9) #8
  %13 = add i32 %12, 2
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15) #8
  %17 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 6, ptr %17, align 2
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = add i32 %18, %16
  %20 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %21, i32 noundef %19) #8
  %22 = icmp ne i32 %13, 0
  br label %23

23:                                               ; preds = %11, %7, %1
  %24 = phi i1 [ false, %1 ], [ %22, %11 ], [ false, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i1 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_rack_detect_loss(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  store i32 0, ptr %1, align 4
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 59
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 31
  %10 = icmp ugt i8 %9, 2
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %15 = load i32, ptr %14, align 8
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 68), align 16
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %17, %11, %2
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 50, i32 0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 2
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 4
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = mul i32 %24, %27
  %29 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 3
  %32 = tail call i32 @llvm.umin.i32(i32 %28, i32 %31) #8
  br label %33

33:                                               ; preds = %21, %17, %6
  %34 = phi i32 [ %32, %21 ], [ 0, %6 ], [ 0, %17 ]
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %89, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31
  %40 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 2
  %41 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 1
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  br label %43

43:                                               ; preds = %87, %38
  %44 = phi ptr [ %36, %38 ], [ %46, %87 ]
  %45 = getelementptr i8, ptr %44, i32 -72
  %46 = load ptr, ptr %44, align 8
  %47 = getelementptr i8, ptr %44, i32 -35
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 6
  %50 = icmp eq i8 %49, 4
  br i1 %50, label %87, label %51

51:                                               ; preds = %43
  %52 = load i64, ptr %39, align 8
  %53 = getelementptr i8, ptr %44, i32 -56
  %54 = load i64, ptr %53, align 8
  %55 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %54, i32 0) #7, !srcloc !8
  %56 = extractvalue { i64, i32 } %55, 0
  %57 = extractvalue { i64, i32 } %55, 1
  %58 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %54, i64 %56, i32 %57) #7, !srcloc !9
  %59 = extractvalue { i64, i32 } %58, 0
  %60 = lshr i64 %59, 9
  %61 = icmp ugt i64 %52, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %51
  %63 = getelementptr i8, ptr %44, i32 -44
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %40, align 4
  %66 = icmp eq i64 %52, %60
  %67 = sub i32 %64, %65
  %68 = icmp slt i32 %67, 0
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %89

70:                                               ; preds = %62, %51
  %71 = load i32, ptr %41, align 8
  %72 = add i32 %71, %34
  %73 = load i64, ptr %42, align 8
  %74 = sub i64 %73, %60
  %75 = tail call i64 @llvm.smax.i64(i64 %74, i64 0) #8
  %76 = trunc i64 %75 to i32
  %77 = sub i32 %72, %76
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  tail call void @tcp_mark_skb_lost(ptr noundef %0, ptr noundef %45) #8
  %80 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %44, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %81, ptr %83, align 4
  store volatile ptr %82, ptr %81, align 4
  store volatile ptr %44, ptr %44, align 4
  store ptr %44, ptr %80, align 4
  br label %87

84:                                               ; preds = %70
  %85 = load i32, ptr %1, align 4
  %86 = tail call i32 @llvm.umax.i32(i32 %85, i32 %77)
  store i32 %86, ptr %1, align 4
  br label %87

87:                                               ; preds = %84, %79, %43
  %88 = icmp eq ptr %46, %35
  br i1 %88, label %89, label %43

89:                                               ; preds = %87, %62, %33
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_rack_advance(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %6 = load i64, ptr %5, align 8
  %7 = sub i64 %6, %3
  %8 = tail call i64 @llvm.smax.i64(i64 %7, i64 0) #8
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 50, i32 0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ule i32 %11, %9
  %13 = and i8 %1, -110
  %14 = icmp eq i8 %13, 0
  %15 = or i1 %14, %12
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = or i8 %19, 64
  store i8 %20, ptr %18, align 1
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 1
  store i32 %9, ptr %21, align 8
  %22 = load i64, ptr %17, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 2
  %24 = icmp ult i64 %22, %3
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load i32, ptr %23, align 4
  %27 = icmp eq i64 %22, %3
  %28 = sub i32 %26, %2
  %29 = icmp slt i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %16
  store i64 %3, ptr %17, align 8
  store i32 %2, ptr %23, align 4
  br label %32

32:                                               ; preds = %31, %25, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_rack_reo_timeout(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 73
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %8, %10
  %14 = sub i32 %6, %13
  %15 = add i32 %14, %12
  call fastcc void @tcp_rack_detect_loss(ptr noundef %0, ptr noundef nonnull %2)
  %16 = load i32, ptr %5, align 4
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr %9, align 8
  %19 = load i32, ptr %11, align 8
  %20 = add i32 %17, %18
  %21 = sub i32 %16, %20
  %22 = add i32 %21, %19
  %23 = icmp eq i32 %15, %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 31
  %28 = icmp eq i8 %27, 3
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  tail call void @tcp_enter_recovery(ptr noundef %0, i1 noundef zeroext false) #8
  %30 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, ptr %3, align 8
  %37 = sub i32 %36, %4
  tail call void @tcp_cwnd_reduction(ptr noundef %0, i32 noundef 1, i32 noundef %37, i32 noundef 0) #8
  br label %38

38:                                               ; preds = %35, %29, %24
  tail call void @tcp_xmit_retransmit_queue(ptr noundef %0) #8
  br label %39

39:                                               ; preds = %38, %1
  %40 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @tcp_rearm_rto(ptr noundef %0) #8
  br label %44

44:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_enter_recovery(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cwnd_reduction(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_xmit_retransmit_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rearm_rto(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_rack_update_reo_wnd(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 68), align 16
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rate_sample, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = sub i32 %8, %12
  %14 = icmp slt i32 %13, 0
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %16 = load i8, ptr %15, align 1
  br i1 %14, label %17, label %19

17:                                               ; preds = %10
  %18 = and i8 %16, -33
  store i8 %18, ptr %15, align 1
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i8 [ %18, %17 ], [ %16, %10 ]
  %21 = and i8 %20, 32
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 4
  %26 = load i8, ptr %25, align 4
  %27 = tail call i8 @llvm.uadd.sat.i8(i8 %26, i8 1)
  store i8 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %29 = load i32, ptr %28, align 8
  store i32 %29, ptr %11, align 8
  %30 = and i8 %20, -64
  %31 = or i8 %30, 16
  store i8 %31, ptr %24, align 1
  br label %37

32:                                               ; preds = %19
  %33 = and i8 %20, 31
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 4
  store i8 1, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %32, %23, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_newreno_mark_lost(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 31
  %6 = icmp ult i8 %5, 3
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %11 = load i32, ptr %10, align 8
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %37, label %16

13:                                               ; preds = %2
  %14 = icmp eq i8 %5, 3
  %15 = and i1 %14, %1
  br i1 %15, label %16, label %37

16:                                               ; preds = %13, %7
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %18 = tail call ptr @rb_first(ptr noundef %17) #8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 13
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 10
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 8
  %28 = load i16, ptr %27, align 8
  %29 = icmp ugt i16 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = icmp ugt i32 %32, %26
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call i32 @tcp_fragment(ptr noundef %0, i32 noundef 1, ptr noundef %18, i32 noundef %26, i32 noundef %26, i32 noundef 2592) #8
  br label %36

36:                                               ; preds = %34, %30, %23
  tail call void @tcp_mark_skb_lost(ptr noundef %0, ptr noundef %18) #8
  br label %37

37:                                               ; preds = %36, %16, %13, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_fragment(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_mark_skb_lost(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.uadd.sat.i8(i8, i8) #6

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }

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
!8 = !{i64 1002669, i64 1002696, i64 1002718, i64 1002746}
!9 = !{i64 1003077, i64 1003104, i64 1003137, i64 1003158, i64 1003185, i64 1003211}
!10 = !{!"auto-init"}
