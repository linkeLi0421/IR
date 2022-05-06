; ModuleID = '/llk/IR/net/ipv6/mip6.c_pt.bc'
source_filename = "../net/ipv6/mip6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.94, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.94 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.mip6_report_rate_limiter = type { %struct.spinlock, i64, i32, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.ip6_mh = type { i8, i8, i8, i8, i16, [0 x i8] }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.78, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.79, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type {}
%union.anon.78 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.79 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.netdevice_tracker = type {}
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ipv6_destopt_hao = type <{ i8, i8, %struct.in6_addr }>
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%union.flowi_uli = type { i32 }
%struct.anon.91 = type { i8, i8 }
%struct.anon.90 = type { i16, i16 }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.rt2_hdr = type { %struct.ipv6_rt_hdr, i32, %struct.in6_addr }

@__UNIQUE_ID_license465 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias466 = internal constant [22 x i8] c"alias=xfrm-type-10-60\00", section ".modinfo", align 1
@__UNIQUE_ID_alias467 = internal constant [22 x i8] c"alias=xfrm-type-10-43\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [21 x i8] c"\016mip6: Mobile IPv6\0A\00", align 1
@mip6_destopt_type = internal constant %struct.xfrm_type { ptr @__this_module, i8 60, i8 5, ptr @mip6_destopt_init_state, ptr @mip6_destopt_destroy, ptr @mip6_destopt_input, ptr @mip6_destopt_output, ptr @mip6_destopt_reject }, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\016mip6: %s: can't add xfrm type(destopt)\0A\00", align 1
@__func__.mip6_init = private unnamed_addr constant [10 x i8] c"mip6_init\00", align 1
@mip6_rthdr_type = internal constant %struct.xfrm_type { ptr @__this_module, i8 43, i8 9, ptr @mip6_rthdr_init_state, ptr @mip6_rthdr_destroy, ptr @mip6_rthdr_input, ptr @mip6_rthdr_output, ptr null }, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"\016mip6: %s: can't add xfrm type(rthdr)\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\016mip6: %s: can't add rawv6 mh filter\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [30 x i8] c"\016mip6: %s: spi is not 0: %u\0A\00", align 1
@__func__.mip6_destopt_init_state = private unnamed_addr constant [24 x i8] c"mip6_destopt_init_state\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\016mip6: %s: state's mode is not %u: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"net/ipv6/mip6.c\00", align 1
@init_net = external dso_local global %struct.net, align 64
@mip6_report_rl = internal global %struct.mip6_report_rate_limiter zeroinitializer, align 8
@__func__.mip6_rthdr_init_state = private unnamed_addr constant [22 x i8] c"mip6_rthdr_init_state\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"\016mip6: %s: can't remove rawv6 mh filter\0A\00", align 1
@__func__.mip6_fini = private unnamed_addr constant [10 x i8] c"mip6_fini\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias466, ptr @__UNIQUE_ID_alias467, ptr @__UNIQUE_ID_license465], section "llvm.metadata"
@switch.table.mip6_mh_filter = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 2], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %2 = tail call i32 @xfrm_register_type(ptr noundef nonnull @mip6_destopt_type, i16 noundef zeroext 10) #10
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mip6_init) #9
  br label %17

6:                                                ; preds = %0
  %7 = tail call i32 @xfrm_register_type(ptr noundef nonnull @mip6_rthdr_type, i16 noundef zeroext 10) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.mip6_init) #9
  br label %16

11:                                               ; preds = %6
  %12 = tail call i32 @rawv6_mh_filter_register(ptr noundef nonnull @mip6_mh_filter) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mip6_init) #9
  tail call void @xfrm_unregister_type(ptr noundef nonnull @mip6_rthdr_type, i16 noundef zeroext 10) #10
  br label %16

16:                                               ; preds = %14, %9
  tail call void @xfrm_unregister_type(ptr noundef nonnull @mip6_destopt_type, i16 noundef zeroext 10) #10
  br label %17

17:                                               ; preds = %16, %11, %4
  %18 = phi i32 [ 0, %11 ], [ -11, %16 ], [ -11, %4 ]
  ret i32 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  %1 = tail call i32 @rawv6_mh_filter_unregister(ptr noundef nonnull @mip6_mh_filter) #10
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.mip6_fini) #9
  br label %5

5:                                                ; preds = %3, %0
  tail call void @xfrm_unregister_type(ptr noundef nonnull @mip6_rthdr_type, i16 noundef zeroext 10) #10
  tail call void @xfrm_unregister_type(ptr noundef nonnull @mip6_destopt_type, i16 noundef zeroext 10) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawv6_mh_filter_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mip6_mh_filter(ptr nocapture noundef readnone %0, ptr noundef %1) #3 {
  %3 = alloca %struct.ip6_mh, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %14
  %20 = sub i32 %16, %19
  %21 = icmp sgt i32 %20, 5
  br i1 %21, label %29, label %22, !prof !9

22:                                               ; preds = %2
  %23 = icmp eq ptr %1, null
  br i1 %23, label %72, label %24

24:                                               ; preds = %22
  %25 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %14, ptr noundef nonnull %3, i32 noundef 6) #10
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %72, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %15, align 8
  br label %32

29:                                               ; preds = %2
  %30 = getelementptr i8, ptr %11, i32 %14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %72, label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %16, %29 ], [ %28, %27 ]
  %34 = phi ptr [ %30, %29 ], [ %3, %27 ]
  %35 = getelementptr inbounds %struct.ip6_mh, ptr %34, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 3
  %39 = add nuw nsw i32 %38, 8
  %40 = icmp ugt i32 %39, %33
  br i1 %40, label %72, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.ip6_mh, ptr %34, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = add i8 %43, -1
  %45 = icmp ult i8 %44, 7
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = sext i8 %44 to i32
  %48 = getelementptr inbounds [7 x i32], ptr @switch.table.mip6_mh_filter, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, %37
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i16, ptr %6, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = add nuw nsw i32 %53, 1
  %58 = sub nsw i32 %57, %56
  br label %69

59:                                               ; preds = %46, %41
  %60 = load i8, ptr %34, align 1
  %61 = icmp eq i8 %60, 59
  br i1 %61, label %72, label %62

62:                                               ; preds = %59
  %63 = load i16, ptr %6, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = sub nsw i32 %64, %67
  br label %69

69:                                               ; preds = %62, %51
  %70 = phi i32 [ %68, %62 ], [ %58, %51 ]
  %71 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  call void @icmp6_send(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %70, ptr noundef null, ptr noundef %71) #10
  br label %72

72:                                               ; preds = %69, %59, %32, %29, %24, %22
  %73 = phi i32 [ -1, %29 ], [ -1, %32 ], [ 0, %59 ], [ -1, %22 ], [ -1, %24 ], [ -1, %69 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mip6_destopt_init_state(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mip6_destopt_init_state, i32 noundef %3) #9
  br label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = zext i8 %9 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.mip6_destopt_init_state, i32 noundef 2, i32 noundef %12) #9
  br label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 9
  store i32 24, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %11, %5
  %17 = phi i32 [ -22, %5 ], [ -22, %11 ], [ 0, %14 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mip6_destopt_destroy(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mip6_destopt_input(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 5
  %15 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 26
  %16 = load ptr, ptr %15, align 8
  %17 = load i32, ptr %14, align 4
  %18 = load i32, ptr %16, align 4
  %19 = xor i32 %18, %17
  %20 = getelementptr [4 x i32], ptr %14, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr [4 x i32], ptr %16, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, %21
  %25 = or i32 %24, %19
  %26 = getelementptr [4 x i32], ptr %14, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr [4 x i32], ptr %16, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %29, %27
  %31 = or i32 %25, %30
  %32 = getelementptr [4 x i32], ptr %14, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [4 x i32], ptr %16, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, %33
  %37 = or i32 %31, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %2
  %40 = or i32 %23, %18
  %41 = or i32 %40, %29
  %42 = or i32 %41, %35
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %12, i32 -2
  br label %45

45:                                               ; preds = %39, %2
  %46 = phi i32 [ %12, %2 ], [ %44, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %47 = load i16, ptr %13, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mip6_destopt_output(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %8 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %12, %11
  %14 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %13) #10
  %15 = load ptr, ptr %3, align 8
  %16 = load i16, ptr %5, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %15, i32 %21
  %23 = load i8, ptr %22, align 1
  store i8 60, ptr %22, align 1
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  store i8 %23, ptr %28, align 1
  %29 = getelementptr %struct.ipv6_opt_hdr, ptr %28, i32 1
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  store i8 1, ptr %29, align 1
  %32 = getelementptr i8, ptr %29, i32 1
  store i8 2, ptr %32, align 1
  %33 = getelementptr i8, ptr %29, i32 2
  store i16 0, ptr %33, align 1
  %34 = getelementptr i8, ptr %29, i32 4
  br label %35

35:                                               ; preds = %31, %2
  %36 = phi ptr [ %34, %31 ], [ null, %2 ]
  store i8 -55, ptr %36, align 1
  %37 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %36, i32 0, i32 1
  store i8 16, ptr %37, align 1
  %38 = ptrtoint ptr %36 to i32
  %39 = ptrtoint ptr %28 to i32
  %40 = sub i32 18, %39
  %41 = add i32 %40, %38
  %42 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %36, i32 0, i32 2
  %43 = getelementptr inbounds %struct.ipv6hdr, ptr %18, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %42, ptr noundef align 4 dereferenceable(16) %43, i32 16, i1 false)
  %44 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %44) #10
  %45 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 26
  %46 = load ptr, ptr %45, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %43, ptr noundef align 4 dereferenceable(16) %46, i32 16, i1 false)
  tail call void @_raw_spin_unlock_bh(ptr noundef %44) #10
  %47 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %41, %48
  br i1 %49, label %52, label %50, !prof !9

50:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 169, i32 noundef 9, ptr noundef null) #10
  %51 = load i32, ptr %47, align 4
  br label %52

52:                                               ; preds = %50, %35
  %53 = phi i32 [ %51, %50 ], [ %41, %35 ]
  %54 = lshr i32 %53, 3
  %55 = trunc i32 %54 to i8
  %56 = add i8 %55, -1
  %57 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %28, i32 0, i32 1
  store i8 %56, ptr %57, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mip6_destopt_reject(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca %struct.xfrm_selector, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 5
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, -121
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = icmp ult i8 %11, 8
  br i1 %12, label %172, label %13, !prof !14

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %21, label %17, !prof !14

17:                                               ; preds = %13
  %18 = zext i16 %15 to i32
  %19 = tail call i32 @ipv6_find_tlv(ptr noundef %1, i32 noundef %18, i32 noundef 201) #10
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %31, label %21, !prof !9

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = getelementptr inbounds %struct.ipv6hdr, ptr %29, i32 0, i32 6
  br label %45

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %33, i32 %36
  %38 = getelementptr i8, ptr %37, i32 %19
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.ipv6hdr, ptr %37, i32 0, i32 6
  %42 = icmp eq ptr %38, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %38, i32 0, i32 2
  br label %52

45:                                               ; preds = %31, %21
  %46 = phi ptr [ %30, %21 ], [ %41, %31 ]
  %47 = phi ptr [ %29, %21 ], [ %37, %31 ]
  %48 = phi ptr [ %26, %21 ], [ %34, %31 ]
  %49 = phi ptr [ %24, %21 ], [ %32, %31 ]
  %50 = phi i64 [ %23, %21 ], [ %40, %31 ]
  %51 = getelementptr inbounds %struct.ipv6hdr, ptr %47, i32 0, i32 5
  br label %52

52:                                               ; preds = %45, %43
  %53 = phi i1 [ false, %43 ], [ true, %45 ]
  %54 = phi ptr [ %41, %43 ], [ %46, %45 ]
  %55 = phi ptr [ %34, %43 ], [ %48, %45 ]
  %56 = phi ptr [ %32, %43 ], [ %49, %45 ]
  %57 = phi i64 [ %40, %43 ], [ %50, %45 ]
  %58 = phi ptr [ %38, %43 ], [ null, %45 ]
  %59 = phi ptr [ %44, %43 ], [ %51, %45 ]
  %60 = load i32, ptr %5, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @mip6_report_rl) #10
  %61 = load i64, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 1), align 8
  %62 = icmp eq i64 %61, %57
  %63 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 2), align 8
  %64 = icmp eq i32 %63, %60
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %107

66:                                               ; preds = %52
  %67 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 3), align 4
  %68 = load i32, ptr %59, align 4
  %69 = xor i32 %68, %67
  %70 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 3, i32 0, i32 0, i32 1), align 8
  %71 = getelementptr [4 x i32], ptr %59, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = xor i32 %72, %70
  %74 = or i32 %73, %69
  %75 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 3, i32 0, i32 0, i32 2), align 4
  %76 = getelementptr [4 x i32], ptr %59, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = xor i32 %77, %75
  %79 = or i32 %74, %78
  %80 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 3, i32 0, i32 0, i32 3), align 8
  %81 = getelementptr [4 x i32], ptr %59, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = xor i32 %82, %80
  %84 = or i32 %79, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %66
  %87 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 4), align 4
  %88 = load i32, ptr %54, align 4
  %89 = xor i32 %88, %87
  %90 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 4, i32 0, i32 0, i32 1), align 8
  %91 = getelementptr [4 x i32], ptr %54, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = xor i32 %92, %90
  %94 = or i32 %93, %89
  %95 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 4, i32 0, i32 0, i32 2), align 4
  %96 = getelementptr [4 x i32], ptr %54, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = xor i32 %97, %95
  %99 = or i32 %94, %98
  %100 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 4, i32 0, i32 0, i32 3), align 8
  %101 = getelementptr [4 x i32], ptr %54, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = xor i32 %102, %100
  %104 = or i32 %99, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %86
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @mip6_report_rl) #10
  br label %172

107:                                              ; preds = %86, %66, %52
  store i64 %57, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 1), align 8
  store i32 %60, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 2), align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 3), ptr noundef align 4 dereferenceable(16) %59, i32 16, i1 false) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 4), ptr noundef align 4 dereferenceable(16) %54, i32 16, i1 false) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @mip6_report_rl) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false)
  %108 = load ptr, ptr %56, align 8
  %109 = load i16, ptr %55, align 4
  %110 = zext i16 %109 to i32
  %111 = getelementptr i8, ptr %108, i32 %110
  %112 = getelementptr inbounds %struct.ipv6hdr, ptr %111, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %112, i32 16, i1 false)
  %113 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 7
  store i8 -128, ptr %113, align 2
  %114 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 1
  %115 = getelementptr inbounds %struct.ipv6hdr, ptr %111, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %114, ptr noundef align 4 dereferenceable(16) %115, i32 16, i1 false)
  %116 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 8
  store i8 -128, ptr %116, align 1
  %117 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 6
  store i16 10, ptr %117, align 4
  %118 = load i8, ptr %6, align 2
  %119 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 9
  store i8 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 4
  switch i8 %118, label %121 [
    i8 6, label %123
    i8 17, label %123
    i8 -120, label %123
    i8 -124, label %123
    i8 1, label %125
    i8 58, label %125
    i8 47, label %130
  ]

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 2
  store i16 0, ptr %122, align 4
  br label %140

123:                                              ; preds = %107, %107, %107, %107
  %124 = load i16, ptr %120, align 4
  br label %134

125:                                              ; preds = %107, %107
  %126 = getelementptr inbounds %struct.anon.91, ptr %120, i32 0, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i16
  %129 = shl nuw i16 %128, 8
  br label %134

130:                                              ; preds = %107
  %131 = load i32, ptr %120, align 4
  %132 = lshr i32 %131, 16
  %133 = trunc i32 %132 to i16
  br label %134

134:                                              ; preds = %130, %125, %123
  %135 = phi i16 [ %133, %130 ], [ %129, %125 ], [ %124, %123 ]
  %136 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 2
  store i16 %135, ptr %136, align 4
  %137 = icmp eq i16 %135, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 3
  store i16 -1, ptr %139, align 2
  br label %140

140:                                              ; preds = %138, %134, %121
  switch i8 %118, label %141 [
    i8 6, label %143
    i8 17, label %143
    i8 -120, label %143
    i8 -124, label %143
    i8 1, label %146
    i8 58, label %146
    i8 -121, label %150
    i8 47, label %154
  ]

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 4
  store i16 0, ptr %142, align 4
  br label %166

143:                                              ; preds = %140, %140, %140, %140
  %144 = getelementptr inbounds %struct.anon.90, ptr %120, i32 0, i32 1
  %145 = load i16, ptr %144, align 2
  br label %160

146:                                              ; preds = %140, %140
  %147 = load i8, ptr %120, align 4
  %148 = zext i8 %147 to i16
  %149 = shl nuw i16 %148, 8
  br label %160

150:                                              ; preds = %140
  %151 = load i8, ptr %120, align 4
  %152 = zext i8 %151 to i16
  %153 = shl nuw i16 %152, 8
  br label %160

154:                                              ; preds = %140
  %155 = load i32, ptr %120, align 4
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #10
  %157 = lshr i32 %156, 16
  %158 = trunc i32 %157 to i16
  %159 = tail call i16 @llvm.bswap.i16(i16 %158) #10
  br label %160

160:                                              ; preds = %154, %150, %146, %143
  %161 = phi i16 [ %159, %154 ], [ %153, %150 ], [ %149, %146 ], [ %145, %143 ]
  %162 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 4
  store i16 %161, ptr %162, align 4
  %163 = icmp eq i16 %161, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 5
  store i16 -1, ptr %165, align 2
  br label %166

166:                                              ; preds = %164, %160, %141
  %167 = load i32, ptr %2, align 8
  %168 = getelementptr inbounds %struct.xfrm_selector, ptr %4, i32 0, i32 10
  store i32 %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %58, i32 0, i32 2
  %170 = select i1 %53, ptr null, ptr %169
  %171 = call i32 @km_report(ptr noundef nonnull @init_net, i8 noundef zeroext 60, ptr noundef nonnull %4, ptr noundef %170) #10
  br label %172

172:                                              ; preds = %166, %106, %9
  %173 = phi i32 [ 0, %9 ], [ %171, %166 ], [ 0, %106 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  ret i32 %173
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_tlv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @km_report(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mip6_rthdr_init_state(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mip6_rthdr_init_state, i32 noundef %3) #9
  br label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = zext i8 %9 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.mip6_rthdr_init_state, i32 noundef 2, i32 noundef %12) #9
  br label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 9
  store i32 24, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %11, %5
  %17 = phi i32 [ -22, %5 ], [ -22, %11 ], [ 0, %14 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mip6_rthdr_destroy(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mip6_rthdr_input(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 6
  %15 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 26
  %16 = load ptr, ptr %15, align 8
  %17 = load i32, ptr %14, align 4
  %18 = load i32, ptr %16, align 4
  %19 = xor i32 %18, %17
  %20 = getelementptr [4 x i32], ptr %14, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr [4 x i32], ptr %16, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, %21
  %25 = or i32 %24, %19
  %26 = getelementptr [4 x i32], ptr %14, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr [4 x i32], ptr %16, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %29, %27
  %31 = or i32 %25, %30
  %32 = getelementptr [4 x i32], ptr %14, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [4 x i32], ptr %16, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, %33
  %37 = or i32 %31, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %2
  %40 = or i32 %23, %18
  %41 = or i32 %40, %29
  %42 = or i32 %41, %35
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %12, i32 -2
  br label %45

45:                                               ; preds = %39, %2
  %46 = phi i32 [ %12, %2 ], [ %44, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %47 = load i16, ptr %13, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mip6_rthdr_output(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %8 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %12, %11
  %14 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %13) #10
  %15 = load ptr, ptr %3, align 8
  %16 = load i16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %15, i32 %19
  %21 = load i8, ptr %20, align 1
  store i8 43, ptr %20, align 1
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  store i8 %21, ptr %26, align 4
  %27 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 3
  %30 = trunc i32 %29 to i8
  %31 = add i8 %30, -1
  %32 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %26, i32 0, i32 1
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %26, i32 0, i32 2
  store i8 2, ptr %33, align 2
  %34 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %26, i32 0, i32 3
  store i8 1, ptr %34, align 1
  %35 = getelementptr inbounds %struct.rt2_hdr, ptr %26, i32 0, i32 1
  store i32 0, ptr %35, align 4
  %36 = icmp eq i8 %31, 2
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 326, i32 noundef 9, ptr noundef null) #10
  br label %38

38:                                               ; preds = %37, %2
  %39 = zext i16 %16 to i32
  %40 = getelementptr i8, ptr %15, i32 %39
  %41 = getelementptr inbounds %struct.rt2_hdr, ptr %26, i32 0, i32 2
  %42 = getelementptr inbounds %struct.ipv6hdr, ptr %40, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %41, ptr noundef align 4 dereferenceable(16) %42, i32 16, i1 false)
  %43 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %43) #10
  %44 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 26
  %45 = load ptr, ptr %44, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %42, ptr noundef align 4 dereferenceable(16) %45, i32 16, i1 false)
  tail call void @_raw_spin_unlock_bh(ptr noundef %43) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawv6_mh_filter_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold nounwind }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148934216}
!11 = !{i64 2148930040}
!12 = !{i64 2148930115, i64 2148930142, i64 2148930189, i64 2148930211, i64 2148930239, i64 2148930259}
!13 = !{i64 2148957219}
!14 = !{!"branch_weights", i32 1, i32 2000}
