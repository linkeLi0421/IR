; ModuleID = '/llk/IR/net/ipv6/xfrm6_output.c_pt.bc'
source_filename = "../net/ipv6/xfrm6_output.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.191, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.191 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.45 }
%struct.llist_node = type { ptr }
%union.anon.45 = type { i32 }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.55 }
%union.anon.55 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.167, %union.anon.168, [48 x i8], %union.anon.169, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.171, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.167 = type { ptr }
%union.anon.168 = type { i64 }
%union.anon.169 = type { %struct.anon.170 }
%struct.anon.170 = type { i32, ptr }
%union.anon.171 = type { %struct.anon.172 }
%struct.anon.172 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.173, i32, i32, i32, i16, i16, %union.anon.175, %union.anon.176, %union.anon.177, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.173 = type { i32 }
%union.anon.175 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.144, [0 x i32], %union.anon.145, i16, i16, %union.anon.146, %struct.refcount_struct, [0 x i32], %union.anon.147 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.atomic64_t = type { i64 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { %struct.hlist_node }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.56, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.57, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.56 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.57 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.148, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.149, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.150, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.148 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.149 = type { ptr }
%union.anon.150 = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.58 }
%union.anon.58 = type { %struct.flowi6 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.188, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.166, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%union.anon.166 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm6_local_rxpmtu(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.flowi6, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = getelementptr inbounds %struct.ipv6hdr, ptr %14, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %15, i32 16, i1 false)
  call void @ipv6_local_rxpmtu(ptr noundef %5, ptr noundef nonnull %3, i32 noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_local_rxpmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm6_local_error(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.flowi6, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 8192
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %14 = select i1 %9, ptr %12, ptr %13
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %11, i32 %16
  %18 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 2
  %19 = load i16, ptr %18, align 4
  %20 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 4
  store i16 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  %22 = getelementptr inbounds %struct.ipv6hdr, ptr %17, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %21, ptr noundef align 4 dereferenceable(16) %22, i32 16, i1 false)
  call void @ipv6_local_error(ptr noundef %5, i32 noundef 90, ptr noundef nonnull %3, i32 noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_local_error(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_output(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.flowi6, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -2
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %10, i32 0, i32 14, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %162

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  %16 = load i16, ptr %15, align 8
  %17 = icmp eq i16 %16, -8826
  br i1 %17, label %18, label %65

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #5, !srcloc !11
  %26 = add i32 %25, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10) to i32)
  %27 = inttoptr i32 %26 to ptr
  %28 = load volatile i16, ptr %27, align 2
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr inbounds %struct.sock_common, ptr %31, i32 0, i32 4
  %33 = load volatile i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, -4161
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30, %22, %18
  %39 = load i32, ptr %5, align 8
  %40 = and i32 %39, -2
  %41 = inttoptr i32 %40 to ptr
  br label %58

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.inet_sock, ptr %31, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %5, align 8
  %46 = and i32 %45, -2
  %47 = inttoptr i32 %46 to ptr
  %48 = icmp eq ptr %44, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.ipv6_pinfo, ptr %44, i32 0, i32 9
  %51 = load i16, ptr %50, align 2
  %52 = and i16 %51, 56
  %53 = icmp ugt i16 %52, 16
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load ptr, ptr %47, align 4
  %56 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 20
  %57 = load volatile i32, ptr %56, align 4
  br label %71

58:                                               ; preds = %49, %42, %38
  %59 = phi ptr [ %41, %38 ], [ %47, %49 ], [ %47, %42 ]
  %60 = getelementptr inbounds %struct.dst_entry, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dst_ops, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef %59) #6
  br label %71

65:                                               ; preds = %14
  %66 = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dst_ops, ptr %67, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %8) #6
  br label %71

71:                                               ; preds = %65, %58, %54
  %72 = phi i32 [ %70, %65 ], [ %57, %54 ], [ %64, %58 ]
  %73 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %74 = load i32, ptr %73, align 8
  %75 = icmp ugt i32 %74, %72
  br i1 %75, label %76, label %148

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 4
  %80 = load i16, ptr %79, align 4
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %148

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %120, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 3
  %88 = load i16, ptr %87, align 8
  %89 = icmp eq i16 %88, 10
  br i1 %89, label %90, label %120

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sock, ptr %84, i32 0, i32 46
  %92 = load i16, ptr %91, align 4
  switch i16 %92, label %120 [
    i16 255, label %93
    i16 17, label %93
  ]

93:                                               ; preds = %90, %90
  %94 = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 4
  %95 = load volatile i8, ptr %94, align 2
  %96 = zext i8 %95 to i32
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, -4161
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.inet_sock, ptr %84, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  br label %103

103:                                              ; preds = %100, %93
  %104 = phi ptr [ %102, %100 ], [ null, %93 ]
  %105 = getelementptr inbounds %struct.ipv6_pinfo, ptr %104, i32 0, i32 9
  %106 = load i16, ptr %105, align 2
  %107 = and i16 %106, 1024
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i32 88, i1 false) #6, !annotation !9
  %110 = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 6
  %111 = load i32, ptr %110, align 4
  store i32 %111, ptr %4, align 8
  %112 = getelementptr inbounds %struct.flowi6, ptr %4, i32 0, i32 1
  %113 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %116 = load i16, ptr %115, align 4
  %117 = zext i16 %116 to i32
  %118 = getelementptr i8, ptr %114, i32 %117
  %119 = getelementptr inbounds %struct.ipv6hdr, ptr %118, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %112, ptr noundef align 4 dereferenceable(16) %119, i32 16, i1 false) #6
  call void @ipv6_local_rxpmtu(ptr noundef nonnull %84, ptr noundef nonnull %4, i32 noundef %72) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #6
  call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #6
  br label %164

120:                                              ; preds = %103, %90, %86, %82
  %121 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %124 = load i16, ptr %123, align 4
  %125 = zext i16 %124 to i32
  %126 = getelementptr i8, ptr %122, i32 %125
  %127 = getelementptr inbounds %struct.ipv6hdr, ptr %126, i32 0, i32 3
  %128 = load i8, ptr %127, align 2
  %129 = icmp eq i8 %128, 44
  br i1 %129, label %130, label %141

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 40
  %134 = load i8, ptr %133, align 4
  %135 = and i8 %134, -2
  %136 = icmp eq i8 %135, 50
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %139 = load i16, ptr %138, align 8
  %140 = or i16 %139, 8
  store i16 %140, ptr %138, align 8
  br label %162

141:                                              ; preds = %130, %120
  %142 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %143 = load i16, ptr %142, align 8
  %144 = and i16 %143, 8
  %145 = icmp ne i16 %144, 0
  %146 = select i1 %145, i1 true, i1 %85
  br i1 %146, label %160, label %147

147:                                              ; preds = %141
  tail call void @xfrm_local_error(ptr noundef %2, i32 noundef %72) #6
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #6
  br label %164

148:                                              ; preds = %76, %71
  %149 = load i32, ptr %5, align 8
  %150 = and i32 %149, -2
  %151 = inttoptr i32 %150 to ptr
  %152 = getelementptr inbounds %struct.dst_entry, ptr %151, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = and i32 %153, -4
  %155 = inttoptr i32 %154 to ptr
  %156 = getelementptr i32, ptr %155, i32 11
  %157 = load i32, ptr %156, align 4
  %158 = and i32 %157, 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %148, %141
  %161 = tail call i32 @ip6_fragment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @__xfrm6_output_finish) #6
  br label %164

162:                                              ; preds = %148, %137, %3
  %163 = tail call i32 @xfrm_output(ptr noundef %1, ptr noundef %2) #6
  br label %164

164:                                              ; preds = %162, %160, %147, %109
  %165 = phi i32 [ %163, %162 ], [ -90, %109 ], [ %161, %160 ], [ -90, %147 ]
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_local_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_fragment(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__xfrm6_output_finish(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @xfrm_output(ptr noundef %1, ptr noundef %2) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_output(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2154477944}
!11 = !{i64 465301}
!12 = !{i64 2154495203}
