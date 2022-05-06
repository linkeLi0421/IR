; ModuleID = '/llk/IR/net/xfrm/xfrm_replay.c_pt.bc'
source_filename = "../net/xfrm/xfrm_replay.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_replay_seqhi:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_replay_seqhi\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_replay_seqhi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_init_replay:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_init_replay\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_init_replay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.28, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.93, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.93 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type {}
%union.anon = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.netdevice_tracker = type {}
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.xfrm_replay_state_esn = type { i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.km_event = type { %union.anon.141, i32, i32, i32, ptr }
%union.anon.141 = type { i32 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_xfrm_replay_seqhi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_replay_seqhi = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_replay_seqhi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_replay_seqhi to i32), ptr @__kstrtab_xfrm_replay_seqhi, ptr @__kstrtabns_xfrm_replay_seqhi }, section "___ksymtab+xfrm_replay_seqhi", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_xfrm_init_replay = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_init_replay = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_init_replay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_init_replay to i32), ptr @__kstrtab_xfrm_init_replay, ptr @__kstrtabns_xfrm_init_replay }, section "___ksymtab+xfrm_init_replay", align 4
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_xfrm_init_replay, ptr @__ksymtab_xfrm_replay_seqhi], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @xfrm_replay_seqhi(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %1)
  %10 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %8, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %8, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %8, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = add i32 %16, 1
  %18 = add i32 %15, -1
  %19 = icmp ult i32 %13, %18
  %20 = icmp ult i32 %9, %17
  br i1 %19, label %24, label %21, !prof !8

21:                                               ; preds = %6
  br i1 %20, label %22, label %27, !prof !8

22:                                               ; preds = %21
  %23 = add i32 %11, 1
  br label %27

24:                                               ; preds = %6
  br i1 %20, label %27, label %25, !prof !9

25:                                               ; preds = %24
  %26 = add i32 %11, -1
  br label %27

27:                                               ; preds = %25, %24, %22, %21, %2
  %28 = phi i32 [ 0, %2 ], [ %23, %22 ], [ %11, %21 ], [ %26, %25 ], [ %11, %24 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_replay_notify(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.km_event, align 4
  %4 = alloca %struct.km_event, align 4
  %5 = alloca %struct.km_event, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 16, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 33
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %127 [
    i32 2, label %68
    i32 1, label %9
  ]

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 16, i1 false) #10, !annotation !10
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 32
  %14 = load ptr, ptr %13, align 8
  switch i32 %1, label %48 [
    i32 16, label %15
    i32 32, label %38
  ]

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 36
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %12, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %14, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = icmp ult i32 %24, %17
  br i1 %25, label %26, label %48

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %12, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %14, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %28, %30
  %32 = icmp ult i32 %31, %17
  br i1 %32, label %33, label %48

33:                                               ; preds = %26, %15
  %34 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 34
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %67, label %48

38:                                               ; preds = %9
  %39 = load i32, ptr %12, align 4
  %40 = shl i32 %39, 2
  %41 = add i32 %40, 24
  %42 = tail call i32 @bcmp(ptr %12, ptr %14, i32 %41) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 34
  %46 = load i32, ptr %45, align 8
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 8
  br label %67

48:                                               ; preds = %38, %33, %26, %19, %9
  %49 = phi i32 [ %1, %9 ], [ 32, %38 ], [ 16, %26 ], [ 16, %19 ], [ 32, %33 ]
  %50 = load i32, ptr %12, align 4
  %51 = shl i32 %50, 2
  %52 = add i32 %51, 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %14, ptr align 4 %12, i32 %52, i1 false) #10
  %53 = getelementptr inbounds %struct.km_event, ptr %4, i32 0, i32 3
  store i32 30, ptr %53, align 4
  store i32 %49, ptr %4, align 4
  call void @km_state_notify(ptr noundef %0, ptr noundef nonnull %4) #10
  %54 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 35
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 37
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = add i32 %59, %55
  %61 = call i32 @mod_timer(ptr noundef %58, i32 noundef %60) #10
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 34
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, -2
  store i32 %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %63, %57, %48, %44, %33
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %178

68:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  %69 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %69, i8 0, i32 16, i1 false) #10, !annotation !10
  %70 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 32
  %73 = load ptr, ptr %72, align 8
  switch i32 %1, label %107 [
    i32 16, label %74
    i32 32, label %97
  ]

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 36
  %76 = load i32, ptr %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %71, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %73, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = sub i32 %80, %82
  %84 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %71, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %73, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = sub i32 %85, %87
  %89 = icmp ult i32 %83, %76
  %90 = icmp ult i32 %88, %76
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %107

92:                                               ; preds = %78, %74
  %93 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 34
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %126, label %107

97:                                               ; preds = %68
  %98 = load i32, ptr %71, align 4
  %99 = shl i32 %98, 2
  %100 = add i32 %99, 24
  %101 = tail call i32 @bcmp(ptr %71, ptr %73, i32 %100) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 34
  %105 = load i32, ptr %104, align 8
  %106 = or i32 %105, 1
  store i32 %106, ptr %104, align 8
  br label %126

107:                                              ; preds = %97, %92, %78, %68
  %108 = phi i32 [ %1, %68 ], [ 32, %97 ], [ 16, %78 ], [ 32, %92 ]
  %109 = load i32, ptr %71, align 4
  %110 = shl i32 %109, 2
  %111 = add i32 %110, 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %73, ptr align 4 %71, i32 %111, i1 false) #10
  %112 = getelementptr inbounds %struct.km_event, ptr %3, i32 0, i32 3
  store i32 30, ptr %112, align 4
  store i32 %108, ptr %3, align 4
  call void @km_state_notify(ptr noundef %0, ptr noundef nonnull %3) #10
  %113 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 35
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 37
  %118 = load volatile i32, ptr @jiffies, align 64
  %119 = add i32 %118, %114
  %120 = call i32 @mod_timer(ptr noundef %117, i32 noundef %119) #10
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 34
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, -2
  store i32 %125, ptr %123, align 8
  br label %126

126:                                              ; preds = %122, %116, %107, %103, %92
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  br label %178

127:                                              ; preds = %2
  switch i32 %1, label %160 [
    i32 16, label %128
    i32 32, label %151
  ]

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 36
  %130 = load i32, ptr %129, align 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 31, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = sub i32 %134, %136
  %138 = icmp ult i32 %137, %130
  br i1 %138, label %139, label %160

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 31
  %141 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29
  %142 = load i32, ptr %141, align 4
  %143 = load i32, ptr %140, align 4
  %144 = sub i32 %142, %143
  %145 = icmp ult i32 %144, %130
  br i1 %145, label %146, label %160

146:                                              ; preds = %139, %128
  %147 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 34
  %148 = load i32, ptr %147, align 8
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %178, label %160

151:                                              ; preds = %127
  %152 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29
  %153 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 31
  %154 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %152, ptr noundef dereferenceable(12) %153, i32 12)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 34
  %158 = load i32, ptr %157, align 8
  %159 = or i32 %158, 1
  store i32 %159, ptr %157, align 8
  br label %178

160:                                              ; preds = %151, %146, %139, %132, %127
  %161 = phi i32 [ %1, %127 ], [ 32, %151 ], [ 16, %139 ], [ 16, %132 ], [ 32, %146 ]
  %162 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 31
  %163 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %162, ptr noundef align 4 dereferenceable(12) %163, i32 12, i1 false)
  %164 = getelementptr inbounds %struct.km_event, ptr %5, i32 0, i32 3
  store i32 30, ptr %164, align 4
  store i32 %161, ptr %5, align 4
  call void @km_state_notify(ptr noundef %0, ptr noundef nonnull %5) #10
  %165 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 35
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %160
  %169 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 37
  %170 = load volatile i32, ptr @jiffies, align 64
  %171 = add i32 %170, %166
  %172 = call i32 @mod_timer(ptr noundef %169, i32 noundef %171) #10
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 34
  %176 = load i32, ptr %175, align 8
  %177 = and i32 %176, -2
  store i32 %177, ptr %175, align 8
  br label %178

178:                                              ; preds = %174, %168, %160, %156, %146, %126, %67
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @km_state_notify(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_replay_advance(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 33
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %158 [
    i32 2, label %69
    i32 1, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  %9 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %7, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %192, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = urem i32 %15, %10
  %17 = icmp ugt i32 %8, %14
  br i1 %17, label %18, label %45

18:                                               ; preds = %12
  %19 = sub i32 %8, %14
  %20 = icmp ult i32 %19, %10
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = icmp ugt i32 %19, 1
  br i1 %22, label %23, label %42

23:                                               ; preds = %23, %21
  %24 = phi i32 [ %34, %23 ], [ 1, %21 ]
  %25 = add i32 %24, %16
  %26 = urem i32 %25, %10
  %27 = lshr i32 %26, 5
  %28 = and i32 %26, 31
  %29 = shl nuw i32 1, %28
  %30 = xor i32 %29, -1
  %31 = getelementptr %struct.xfrm_replay_state_esn, ptr %7, i32 0, i32 6, i32 %27
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, %30
  store i32 %33, ptr %31, align 4
  %34 = add nuw i32 %24, 1
  %35 = icmp eq i32 %34, %19
  br i1 %35, label %42, label %23

36:                                               ; preds = %18
  %37 = add i32 %10, -1
  %38 = getelementptr i8, ptr %7, i32 24
  %39 = lshr i32 %37, 3
  %40 = and i32 %39, 536870908
  %41 = add nuw nsw i32 %40, 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 %38, i8 0, i32 %41, i1 false) #10
  br label %42

42:                                               ; preds = %36, %23, %21
  %43 = add i32 %16, %19
  %44 = urem i32 %43, %10
  store i32 %8, ptr %13, align 4
  br label %54

45:                                               ; preds = %12
  %46 = sub i32 %14, %8
  %47 = icmp ult i32 %16, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = sub i32 %16, %46
  %50 = urem i32 %49, %10
  br label %54

51:                                               ; preds = %45
  %52 = sub i32 %10, %46
  %53 = add i32 %52, %16
  br label %54

54:                                               ; preds = %51, %48, %42
  %55 = phi i32 [ %44, %42 ], [ %50, %48 ], [ %53, %51 ]
  %56 = lshr i32 %55, 5
  %57 = and i32 %55, 31
  %58 = shl nuw i32 1, %57
  %59 = getelementptr %struct.xfrm_replay_state_esn, ptr %7, i32 0, i32 6, i32 %56
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %58, %60
  store i32 %61, ptr %59, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 17), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %192

65:                                               ; preds = %54
  %66 = tail call i32 @netlink_has_listeners(ptr noundef nonnull %62, i32 noundef 5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %192, label %68

68:                                               ; preds = %65
  tail call void @xfrm_replay_notify(ptr noundef %0, i32 noundef 16) #10
  br label %192

69:                                               ; preds = %2
  %70 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %71, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %192, label %75

75:                                               ; preds = %69
  %76 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  %77 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %71, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, -1
  %80 = urem i32 %79, %73
  %81 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %82 = load i8, ptr %81, align 1
  %83 = icmp sgt i8 %82, -1
  %84 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %71, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  br i1 %83, label %94, label %86

86:                                               ; preds = %75
  %87 = sub i32 1, %73
  %88 = add i32 %87, %78
  %89 = add i32 %73, -1
  %90 = icmp ult i32 %78, %89
  %91 = icmp ult i32 %76, %88
  br i1 %90, label %93, label %92, !prof !8

92:                                               ; preds = %86
  br i1 %91, label %102, label %96, !prof !8

93:                                               ; preds = %86
  br i1 %91, label %96, label %134, !prof !9

94:                                               ; preds = %75
  %95 = icmp eq i32 %85, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %94, %93, %92
  %97 = phi i32 [ 0, %94 ], [ %85, %93 ], [ %85, %92 ]
  %98 = icmp ugt i32 %76, %78
  br i1 %98, label %102, label %134

99:                                               ; preds = %94
  %100 = sub i32 0, %85
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %99, %96, %92
  %103 = phi i32 [ 0, %96 ], [ %100, %99 ], [ 1, %92 ]
  %104 = phi i32 [ %97, %96 ], [ %85, %99 ], [ %85, %92 ]
  %105 = sub i32 %76, %78
  %106 = icmp ult i32 %105, %73
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = icmp ugt i32 %105, 1
  br i1 %108, label %109, label %128

109:                                              ; preds = %109, %107
  %110 = phi i32 [ %120, %109 ], [ 1, %107 ]
  %111 = add i32 %110, %80
  %112 = urem i32 %111, %73
  %113 = lshr i32 %112, 5
  %114 = and i32 %112, 31
  %115 = shl nuw i32 1, %114
  %116 = xor i32 %115, -1
  %117 = getelementptr %struct.xfrm_replay_state_esn, ptr %71, i32 0, i32 6, i32 %113
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, %116
  store i32 %119, ptr %117, align 4
  %120 = add nuw i32 %110, 1
  %121 = icmp eq i32 %120, %105
  br i1 %121, label %128, label %109

122:                                              ; preds = %102
  %123 = add i32 %73, -1
  %124 = getelementptr i8, ptr %71, i32 24
  %125 = lshr i32 %123, 3
  %126 = and i32 %125, 536870908
  %127 = add nuw nsw i32 %126, 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 %124, i8 0, i32 %127, i1 false) #10
  br label %128

128:                                              ; preds = %122, %109, %107
  %129 = add i32 %80, %105
  %130 = urem i32 %129, %73
  store i32 %76, ptr %77, align 4
  %131 = icmp sgt i32 %103, 0
  br i1 %131, label %132, label %143, !prof !8

132:                                              ; preds = %128
  %133 = add i32 %104, 1
  store i32 %133, ptr %84, align 4
  br label %143

134:                                              ; preds = %99, %96, %93
  %135 = sub i32 %78, %76
  %136 = icmp ult i32 %80, %135
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = sub i32 %80, %135
  %139 = urem i32 %138, %73
  br label %143

140:                                              ; preds = %134
  %141 = sub i32 %73, %135
  %142 = add i32 %141, %80
  br label %143

143:                                              ; preds = %140, %137, %132, %128
  %144 = phi i32 [ %130, %132 ], [ %130, %128 ], [ %139, %137 ], [ %142, %140 ]
  %145 = lshr i32 %144, 5
  %146 = and i32 %144, 31
  %147 = shl nuw i32 1, %146
  %148 = getelementptr %struct.xfrm_replay_state_esn, ptr %71, i32 0, i32 6, i32 %145
  %149 = load i32, ptr %148, align 4
  %150 = or i32 %147, %149
  store i32 %150, ptr %148, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %151 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 17), align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %192

154:                                              ; preds = %143
  %155 = tail call i32 @netlink_has_listeners(ptr noundef nonnull %151, i32 noundef 5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %192, label %157

157:                                              ; preds = %154
  tail call void @xfrm_replay_notify(ptr noundef %0, i32 noundef 16) #10
  br label %192

158:                                              ; preds = %2
  %159 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 2
  %160 = load i8, ptr %159, align 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %192, label %162

162:                                              ; preds = %158
  %163 = tail call i32 @llvm.bswap.i32(i32 %1)
  %164 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = icmp ugt i32 %163, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = sub i32 %163, %165
  %169 = zext i8 %160 to i32
  %170 = icmp ult i32 %168, %169
  %171 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29, i32 2
  br i1 %170, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32, ptr %171, align 4
  %174 = shl i32 %173, %168
  %175 = or i32 %174, 1
  br label %176

176:                                              ; preds = %172, %167
  %177 = phi i32 [ %175, %172 ], [ 1, %167 ]
  store i32 %177, ptr %171, align 4
  store i32 %163, ptr %164, align 4
  br label %184

178:                                              ; preds = %162
  %179 = sub i32 %165, %163
  %180 = shl nuw i32 1, %179
  %181 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29, i32 2
  %182 = load i32, ptr %181, align 4
  %183 = or i32 %182, %180
  store i32 %183, ptr %181, align 4
  br label %184

184:                                              ; preds = %178, %176
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %185 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 17), align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %192

188:                                              ; preds = %184
  %189 = tail call i32 @netlink_has_listeners(ptr noundef nonnull %185, i32 noundef 5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  tail call void @xfrm_replay_notify(ptr noundef %0, i32 noundef 16)
  br label %192

192:                                              ; preds = %191, %188, %187, %158, %157, %154, %153, %69, %68, %65, %64, %5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @xfrm_replay_check(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 33
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %111 [
    i32 2, label %49
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %10 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %8, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %11, %9
  %13 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %8, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %140, label %16

16:                                               ; preds = %6
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %140, label %18, !prof !8

18:                                               ; preds = %16
  %19 = icmp ult i32 %11, %9
  br i1 %19, label %140, label %20, !prof !9

20:                                               ; preds = %18
  %21 = icmp ugt i32 %14, %12
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8
  br label %140

26:                                               ; preds = %20
  %27 = add i32 %11, -1
  %28 = urem i32 %27, %14
  %29 = icmp ult i32 %28, %12
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = sub i32 %28, %12
  %32 = urem i32 %31, %14
  br label %36

33:                                               ; preds = %26
  %34 = sub i32 %14, %12
  %35 = add i32 %34, %28
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ %32, %30 ], [ %35, %33 ]
  %38 = lshr i32 %37, 5
  %39 = and i32 %37, 31
  %40 = getelementptr %struct.xfrm_replay_state_esn, ptr %8, i32 0, i32 6, i32 %38
  %41 = load i32, ptr %40, align 4
  %42 = shl nuw i32 1, %39
  %43 = and i32 %42, %41
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %140, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %140

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %51 = load ptr, ptr %50, align 8
  %52 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %53 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %51, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %51, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 %56, %54
  %58 = add i32 %57, 1
  %59 = icmp eq i32 %54, 0
  br i1 %59, label %140, label %60

60:                                               ; preds = %49
  %61 = icmp eq i32 %2, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = add i32 %54, -1
  br label %71

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %51, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  %68 = add i32 %54, -1
  %69 = icmp ult i32 %56, %68
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %140, label %71, !prof !13

71:                                               ; preds = %64, %62
  %72 = phi i32 [ %63, %62 ], [ %68, %64 ]
  %73 = icmp ult i32 %56, %72
  %74 = icmp ult i32 %56, %52
  br i1 %73, label %78, label %75, !prof !8

75:                                               ; preds = %71
  br i1 %74, label %140, label %76, !prof !9

76:                                               ; preds = %75
  %77 = icmp ult i32 %52, %58
  br i1 %77, label %140, label %81

78:                                               ; preds = %71
  %79 = icmp ult i32 %52, %58
  %80 = select i1 %74, i1 %79, i1 false, !prof !9
  br i1 %80, label %140, label %81, !prof !9

81:                                               ; preds = %78, %76
  %82 = sub i32 %56, %52
  %83 = icmp ugt i32 %54, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38
  %86 = load i32, ptr %85, align 8
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 8
  br label %140

88:                                               ; preds = %81
  %89 = add i32 %56, -1
  %90 = urem i32 %89, %54
  %91 = icmp ult i32 %90, %82
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = sub i32 %90, %82
  %94 = urem i32 %93, %54
  br label %98

95:                                               ; preds = %88
  %96 = sub i32 %54, %82
  %97 = add i32 %96, %90
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i32 [ %94, %92 ], [ %97, %95 ]
  %100 = lshr i32 %99, 5
  %101 = and i32 %99, 31
  %102 = getelementptr %struct.xfrm_replay_state_esn, ptr %51, i32 0, i32 6, i32 %100
  %103 = load i32, ptr %102, align 4
  %104 = shl nuw i32 1, %101
  %105 = and i32 %104, %103
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %140, label %107

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  br label %140

111:                                              ; preds = %3
  %112 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %113 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 2
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %140, label %116

116:                                              ; preds = %111
  %117 = icmp eq i32 %2, 0
  br i1 %117, label %140, label %118, !prof !8

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = icmp ult i32 %120, %112
  br i1 %121, label %140, label %122, !prof !9

122:                                              ; preds = %118
  %123 = sub i32 %120, %112
  %124 = zext i8 %114 to i32
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38
  %128 = load i32, ptr %127, align 8
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 8
  br label %140

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = shl nuw i32 1, %123
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, 1
  store i32 %139, ptr %137, align 4
  br label %140

140:                                              ; preds = %136, %130, %126, %118, %116, %111, %107, %98, %84, %78, %76, %75, %64, %49, %45, %36, %22, %18, %16, %6
  %141 = phi i32 [ 0, %6 ], [ 0, %18 ], [ 0, %36 ], [ -22, %16 ], [ -22, %45 ], [ -22, %22 ], [ 0, %49 ], [ 0, %76 ], [ 0, %75 ], [ 0, %78 ], [ 0, %98 ], [ -22, %64 ], [ -22, %107 ], [ -22, %84 ], [ 0, %111 ], [ 0, %118 ], [ 0, %130 ], [ -22, %116 ], [ -22, %136 ], [ -22, %126 ]
  ret i32 %141
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @xfrm_replay_recheck(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 33
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %146 [
    i32 2, label %49
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %10 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %8, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %11, %9
  %13 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %8, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %175, label %16

16:                                               ; preds = %6
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %175, label %18, !prof !8

18:                                               ; preds = %16
  %19 = icmp ult i32 %11, %9
  br i1 %19, label %175, label %20, !prof !9

20:                                               ; preds = %18
  %21 = icmp ugt i32 %14, %12
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8
  br label %175

26:                                               ; preds = %20
  %27 = add i32 %11, -1
  %28 = urem i32 %27, %14
  %29 = icmp ult i32 %28, %12
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = sub i32 %28, %12
  %32 = urem i32 %31, %14
  br label %36

33:                                               ; preds = %26
  %34 = sub i32 %14, %12
  %35 = add i32 %34, %28
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ %32, %30 ], [ %35, %33 ]
  %38 = lshr i32 %37, 5
  %39 = and i32 %37, 31
  %40 = getelementptr %struct.xfrm_replay_state_esn, ptr %8, i32 0, i32 6, i32 %38
  %41 = load i32, ptr %40, align 4
  %42 = shl nuw i32 1, %39
  %43 = and i32 %42, %41
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %175, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %175

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %53 = load i8, ptr %52, align 1
  %54 = icmp sgt i8 %53, -1
  br i1 %54, label %76, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %57 = load ptr, ptr %56, align 8
  %58 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %59 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %57, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %57, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %57, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %62, 1
  %66 = sub i32 %65, %64
  %67 = add i32 %64, -1
  %68 = icmp ult i32 %62, %67
  %69 = icmp ult i32 %58, %66
  br i1 %68, label %73, label %70, !prof !8

70:                                               ; preds = %55
  br i1 %69, label %71, label %76, !prof !8

71:                                               ; preds = %70
  %72 = add i32 %60, 1
  br label %76

73:                                               ; preds = %55
  br i1 %69, label %76, label %74, !prof !9

74:                                               ; preds = %73
  %75 = add i32 %60, -1
  br label %76

76:                                               ; preds = %74, %73, %71, %70, %49
  %77 = phi i32 [ 0, %49 ], [ %72, %71 ], [ %60, %70 ], [ %75, %74 ], [ %60, %73 ]
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #10
  %79 = icmp eq i32 %51, %78
  br i1 %79, label %84, label %80, !prof !9

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38
  %82 = load i32, ptr %81, align 8
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 8
  br label %175

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %86 = load ptr, ptr %85, align 8
  %87 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %88 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %86, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %86, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = sub i32 %91, %89
  %93 = add i32 %92, 1
  %94 = icmp eq i32 %89, 0
  br i1 %94, label %175, label %95

95:                                               ; preds = %84
  %96 = icmp eq i32 %2, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %95
  %98 = add i32 %89, -1
  br label %106

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %86, i32 0, i32 4
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  %103 = add i32 %89, -1
  %104 = icmp ult i32 %91, %103
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %175, label %106, !prof !13

106:                                              ; preds = %99, %97
  %107 = phi i32 [ %98, %97 ], [ %103, %99 ]
  %108 = icmp ult i32 %91, %107
  %109 = icmp ult i32 %91, %87
  br i1 %108, label %113, label %110, !prof !8

110:                                              ; preds = %106
  br i1 %109, label %175, label %111, !prof !9

111:                                              ; preds = %110
  %112 = icmp ult i32 %87, %93
  br i1 %112, label %175, label %116

113:                                              ; preds = %106
  %114 = icmp ult i32 %87, %93
  %115 = select i1 %109, i1 %114, i1 false, !prof !9
  br i1 %115, label %175, label %116, !prof !9

116:                                              ; preds = %113, %111
  %117 = sub i32 %91, %87
  %118 = icmp ugt i32 %89, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38
  %121 = load i32, ptr %120, align 8
  %122 = add i32 %121, 1
  store i32 %122, ptr %120, align 8
  br label %175

123:                                              ; preds = %116
  %124 = add i32 %91, -1
  %125 = urem i32 %124, %89
  %126 = icmp ult i32 %125, %117
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = sub i32 %125, %117
  %129 = urem i32 %128, %89
  br label %133

130:                                              ; preds = %123
  %131 = sub i32 %89, %117
  %132 = add i32 %131, %125
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i32 [ %129, %127 ], [ %132, %130 ]
  %135 = lshr i32 %134, 5
  %136 = and i32 %134, 31
  %137 = getelementptr %struct.xfrm_replay_state_esn, ptr %86, i32 0, i32 6, i32 %135
  %138 = load i32, ptr %137, align 4
  %139 = shl nuw i32 1, %136
  %140 = and i32 %139, %138
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %175, label %142

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 4
  br label %175

146:                                              ; preds = %3
  %147 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %148 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 2
  %149 = load i8, ptr %148, align 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %175, label %151

151:                                              ; preds = %146
  %152 = icmp eq i32 %2, 0
  br i1 %152, label %175, label %153, !prof !8

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = icmp ult i32 %155, %147
  br i1 %156, label %175, label %157, !prof !9

157:                                              ; preds = %153
  %158 = sub i32 %155, %147
  %159 = zext i8 %149 to i32
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38
  %163 = load i32, ptr %162, align 8
  %164 = add i32 %163, 1
  store i32 %164, ptr %162, align 8
  br label %175

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = shl nuw i32 1, %158
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 38, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 4
  br label %175

175:                                              ; preds = %171, %165, %161, %153, %151, %146, %142, %133, %119, %113, %111, %110, %99, %84, %80, %45, %36, %22, %18, %16, %6
  %176 = phi i32 [ 0, %6 ], [ 0, %18 ], [ 0, %36 ], [ -22, %16 ], [ -22, %45 ], [ -22, %22 ], [ -22, %80 ], [ 0, %84 ], [ 0, %111 ], [ 0, %110 ], [ 0, %113 ], [ 0, %133 ], [ -22, %99 ], [ -22, %142 ], [ -22, %119 ], [ 0, %146 ], [ 0, %153 ], [ 0, %165 ], [ -22, %151 ], [ -22, %171 ], [ -22, %161 ]
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_replay_overflow(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 33
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %71 [
    i32 2, label %36
    i32 1, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 45
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.xfrm_type, ptr %7, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %100, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  store i32 0, ptr %19, align 4
  %20 = load i32, ptr %15, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28, !prof !8

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, ptr %15, align 4
  br label %100

28:                                               ; preds = %22, %12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %29 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 17), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %100

32:                                               ; preds = %28
  %33 = tail call i32 @netlink_has_listeners(ptr noundef nonnull %29, i32 noundef 5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %100, label %35

35:                                               ; preds = %32
  tail call void @xfrm_replay_notify(ptr noundef %0, i32 noundef 16) #10
  br label %100

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 45
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.xfrm_type, ptr %38, i32 0, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %100, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %45, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  store i32 %51, ptr %52, align 4
  %53 = load i32, ptr %46, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63, !prof !8

55:                                               ; preds = %43
  %56 = load i32, ptr %50, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %50, align 4
  store i32 %57, ptr %52, align 4
  %58 = load i32, ptr %50, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, ptr %46, align 4
  %62 = add i32 %61, -1
  store i32 %62, ptr %46, align 4
  store i32 -1, ptr %50, align 4
  br label %100

63:                                               ; preds = %55, %43
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %64 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 17), align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %100

67:                                               ; preds = %63
  %68 = tail call i32 @netlink_has_listeners(ptr noundef nonnull %64, i32 noundef 5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %67
  tail call void @xfrm_replay_notify(ptr noundef %0, i32 noundef 16) #10
  br label %100

71:                                               ; preds = %2
  %72 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 45
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.xfrm_type, ptr %73, i32 0, i32 2
  %75 = load i8, ptr %74, align 1
  %76 = and i8 %75, 2
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 29
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  %82 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  store i32 0, ptr %83, align 4
  %84 = load i32, ptr %79, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92, !prof !8

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 11
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 -1, ptr %79, align 4
  br label %100

92:                                               ; preds = %86, %78
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %93 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 17), align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %100

96:                                               ; preds = %92
  %97 = tail call i32 @netlink_has_listeners(ptr noundef nonnull %93, i32 noundef 5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void @xfrm_replay_notify(ptr noundef %0, i32 noundef 16) #10
  br label %100

100:                                              ; preds = %99, %96, %95, %91, %71, %70, %67, %66, %60, %36, %35, %32, %31, %27, %5
  %101 = phi i32 [ -75, %27 ], [ 0, %32 ], [ 0, %35 ], [ 0, %5 ], [ 0, %31 ], [ -75, %60 ], [ 0, %67 ], [ 0, %70 ], [ 0, %36 ], [ 0, %66 ], [ -75, %91 ], [ 0, %96 ], [ 0, %99 ], [ 0, %71 ], [ 0, %95 ]
  ret i32 %101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @xfrm_init_replay(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %3, align 4
  %9 = shl i32 %8, 5
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %13 = load i8, ptr %12, align 1
  %14 = icmp sgt i8 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %15, %11, %1
  %18 = phi i32 [ 2, %15 ], [ 1, %11 ], [ 0, %1 ]
  %19 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 33
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %15, %5
  %21 = phi i32 [ -22, %5 ], [ -22, %15 ], [ 0, %17 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i64 2149432716}
!12 = !{i64 2149432933}
!13 = !{!"branch_weights", i32 1, i32 4001}
