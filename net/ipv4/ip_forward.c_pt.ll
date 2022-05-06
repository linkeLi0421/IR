; ModuleID = '/llk/IR/net/ipv4/ip_forward.c_pt.bc'
source_filename = "../net/ipv4/ip_forward.c"
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.66, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.66 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sk_buff = type { %union.anon, %union.anon.162, %union.anon.163, [48 x i8], %union.anon.164, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.166, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { i64 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { i32, ptr }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.168, i32, i32, i32, i16, i16, %union.anon.170, %union.anon.171, %union.anon.172, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.168 = type { i32 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.65, i32, %struct.list_head, ptr }
%union.anon.65 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.55 }
%union.anon.55 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.161, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.161 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }

@init_net = external dso_local global %struct.net, align 64
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@ip_tos2prio = external dso_local local_unnamed_addr constant [16 x i8], align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_forward(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 7
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %244

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %244, !prof !9

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 4
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25, !prof !10

24:                                               ; preds = %20
  tail call void @__skb_warn_lro_forwarding(ptr noundef %0) #7
  br label %244

25:                                               ; preds = %20, %16, %10
  %26 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %27 = and i8 %26, 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 2), align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %32, %29
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %37
  %43 = inttoptr i32 %40 to ptr
  %44 = getelementptr inbounds %struct.dst_entry, ptr %43, i32 0, i32 7
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %59, label %62

48:                                               ; preds = %25
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, -2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = inttoptr i32 %51 to ptr
  %55 = getelementptr inbounds %struct.dst_entry, ptr %54, i32 0, i32 7
  %56 = load i16, ptr %55, align 4
  %57 = and i16 %56, 4
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %48, %42, %37
  %60 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 2, ptr noundef %0, i16 noundef zeroext 2) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %244, label %62

62:                                               ; preds = %59, %53, %42, %32
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 17
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call zeroext i1 @ip_call_ra_chain(ptr noundef %0) #7
  br i1 %67, label %245, label %68

68:                                               ; preds = %66, %62
  %69 = load i16, ptr %2, align 8
  %70 = and i16 %69, 96
  %71 = icmp eq i16 %70, 64
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = and i16 %69, -97
  store i16 %73, ptr %2, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %78 = load i16, ptr %77, align 4
  %79 = zext i16 %78 to i32
  %80 = getelementptr i8, ptr %76, i32 %79
  %81 = getelementptr inbounds %struct.iphdr, ptr %80, i32 0, i32 5
  %82 = load i8, ptr %81, align 4
  %83 = icmp ult i8 %82, 2
  br i1 %83, label %223, label %84

84:                                               ; preds = %74
  %85 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %86 = and i8 %85, 2
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 1), align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, -2
  %95 = inttoptr i32 %94 to ptr
  %96 = getelementptr inbounds %struct.dst_entry, ptr %95, i32 0, i32 7
  %97 = load i16, ptr %96, align 4
  %98 = and i16 %97, 2
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %109, label %112

100:                                              ; preds = %84
  %101 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, -2
  %104 = inttoptr i32 %103 to ptr
  %105 = getelementptr inbounds %struct.dst_entry, ptr %104, i32 0, i32 7
  %106 = load i16, ptr %105, align 4
  %107 = and i16 %106, 2
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100, %91
  %110 = tail call i32 @__xfrm_route_forward(ptr noundef %0, i16 noundef zeroext 2) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %244, label %112

112:                                              ; preds = %109, %100, %91, %88
  %113 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, -2
  %116 = inttoptr i32 %115 to ptr
  %117 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %118 = load i8, ptr %117, align 4
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.rtable, ptr %116, i32 0, i32 5
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %221

125:                                              ; preds = %121, %112
  %126 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 20
  %127 = load i16, ptr %126, align 4
  %128 = or i16 %127, 1
  store i16 %128, ptr %126, align 4
  %129 = tail call fastcc i32 @ip_dst_mtu_maybe_forward(ptr noundef %116)
  %130 = tail call fastcc zeroext i1 @ip_exceeds_mtu(ptr noundef %0, i32 noundef %129)
  br i1 %130, label %131, label %153

131:                                              ; preds = %125
  %132 = tail call ptr @llvm.thread.pointer() #7
  %133 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 1
  %134 = load volatile i32, ptr %133, align 4
  %135 = add i32 %134, 512
  store volatile i32 %135, ptr %133, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %136 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %137 = ptrtoint ptr %136 to i32
  %138 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %139 = inttoptr i32 %138 to ptr
  %140 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %139) #6, !srcloc !12
  %141 = add i32 %140, %137
  %142 = inttoptr i32 %141 to ptr
  %143 = getelementptr inbounds %struct.ipstats_mib, ptr %142, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !13
  %146 = getelementptr [37 x i64], ptr %142, i32 0, i32 21
  %147 = load i64, ptr %146, align 8
  %148 = add i64 %147, 1
  store i64 %148, ptr %146, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !14
  %149 = load i32, ptr %143, align 4
  %150 = add i32 %149, 1
  store i32 %150, ptr %143, align 4
  tail call fastcc void @local_bh_enable()
  %151 = tail call i32 @llvm.bswap.i32(i32 %129)
  %152 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef %151, ptr noundef %152) #7
  br label %244

153:                                              ; preds = %125
  %154 = load ptr, ptr %116, align 4
  %155 = getelementptr inbounds %struct.net_device, ptr %154, i32 0, i32 19
  %156 = load i16, ptr %155, align 2
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds %struct.net_device, ptr %154, i32 0, i32 21
  %159 = load i16, ptr %158, align 8
  %160 = zext i16 %159 to i32
  %161 = add nuw nsw i32 %160, %157
  %162 = and i32 %161, 131056
  %163 = getelementptr inbounds %struct.dst_entry, ptr %116, i32 0, i32 9
  %164 = load i16, ptr %163, align 4
  %165 = zext i16 %164 to i32
  %166 = add nuw nsw i32 %165, 16
  %167 = add nuw nsw i32 %166, %162
  %168 = tail call fastcc i32 @skb_cow(ptr noundef %0, i32 noundef %167)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %244

170:                                              ; preds = %153
  %171 = load ptr, ptr %75, align 8
  %172 = load i16, ptr %77, align 4
  %173 = zext i16 %172 to i32
  %174 = getelementptr i8, ptr %171, i32 %173
  %175 = getelementptr inbounds %struct.iphdr, ptr %174, i32 0, i32 7
  %176 = load i16, ptr %175, align 2
  %177 = add i16 %176, 1
  %178 = icmp ugt i16 %176, -3
  %179 = zext i1 %178 to i16
  %180 = add i16 %177, %179
  store i16 %180, ptr %175, align 2
  %181 = getelementptr inbounds %struct.iphdr, ptr %174, i32 0, i32 5
  %182 = load i8, ptr %181, align 4
  %183 = add i8 %182, -1
  store i8 %183, ptr %181, align 4
  %184 = load i16, ptr %126, align 4
  %185 = and i16 %184, 32
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %206, label %187

187:                                              ; preds = %170
  %188 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 13
  %189 = load i8, ptr %188, align 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %193 = load i8, ptr %192, align 1
  %194 = and i8 %193, 1
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %struct.skb_ext, ptr %198, i32 0, i32 1
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = shl nuw nsw i32 %201, 3
  %203 = getelementptr i8, ptr %198, i32 %202
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %196, %191
  tail call void @ip_rt_send_redirect(ptr noundef %0) #7
  br label %206

206:                                              ; preds = %205, %196, %187, %170
  %207 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 34), align 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.iphdr, ptr %174, i32 0, i32 1
  %211 = load i8, ptr %210, align 1
  %212 = lshr i8 %211, 1
  %213 = and i8 %212, 15
  %214 = zext i8 %213 to i32
  %215 = getelementptr [16 x i8], ptr @ip_tos2prio, i32 0, i32 %214
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  store i32 %217, ptr %218, align 8
  br label %219

219:                                              ; preds = %209, %206
  %220 = tail call fastcc i32 @NF_HOOK(ptr noundef %0)
  br label %245

221:                                              ; preds = %121
  %222 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 5, i32 noundef 0, ptr noundef %222) #7
  br label %244

223:                                              ; preds = %74
  %224 = tail call ptr @llvm.thread.pointer() #7
  %225 = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 1
  %226 = load volatile i32, ptr %225, align 4
  %227 = add i32 %226, 512
  store volatile i32 %227, ptr %225, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %228 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %229 = ptrtoint ptr %228 to i32
  %230 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %231 = inttoptr i32 %230 to ptr
  %232 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %231) #6, !srcloc !12
  %233 = add i32 %232, %229
  %234 = inttoptr i32 %233 to ptr
  %235 = getelementptr inbounds %struct.ipstats_mib, ptr %234, i32 0, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = add i32 %236, 1
  store i32 %237, ptr %235, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !13
  %238 = getelementptr [37 x i64], ptr %234, i32 0, i32 7
  %239 = load i64, ptr %238, align 8
  %240 = add i64 %239, 1
  store i64 %240, ptr %238, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !14
  %241 = load i32, ptr %235, align 4
  %242 = add i32 %241, 1
  store i32 %242, ptr %235, align 4
  tail call fastcc void @local_bh_enable()
  %243 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 11, i32 noundef 0, i32 noundef 0, ptr noundef %243) #7
  br label %244

244:                                              ; preds = %223, %221, %153, %131, %109, %59, %24, %6, %1
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  br label %245

245:                                              ; preds = %244, %219, %66
  %246 = phi i32 [ 1, %244 ], [ %220, %219 ], [ 0, %66 ]
  ret i32 %246
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip_call_ra_chain(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ip_dst_mtu_maybe_forward(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 33), align 4
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %3, i1 %7, i1 false
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -4
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  %17 = icmp ult i32 %5, 2
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %28, label %21

19:                                               ; preds = %1
  %20 = icmp ult i32 %5, 2
  br i1 %20, label %28, label %21

21:                                               ; preds = %19, %9
  %22 = lshr i32 %5, 1
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %23, %25
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %21, %19, %9
  %29 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -4
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr i32, ptr %32, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 20
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %5, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, ptr %32, align 4
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46, !prof !9

46:                                               ; preds = %42, %36
  %47 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 5
  %48 = load i8, ptr %47, align 1
  %49 = icmp ne i8 %48, 0
  %50 = icmp ugt i32 %39, 576
  %51 = select i1 %49, i1 %50, i1 false
  %52 = select i1 %51, i32 576, i32 %39
  br label %53

53:                                               ; preds = %46, %42, %28, %21
  %54 = phi i32 [ %22, %21 ], [ %34, %28 ], [ %52, %46 ], [ %39, %42 ]
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 65535)
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ip_exceeds_mtu(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 4
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 64
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %36, label %17, !prof !10

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 22
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ugt i32 %20, %1
  br i1 %21, label %36, label %22, !prof !10

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 4
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %0, i32 noundef %1) #7
  br i1 %34, label %36, label %35

35:                                               ; preds = %33, %27
  br label %36

36:                                               ; preds = %35, %33, %22, %17, %6, %2
  %37 = phi i1 [ true, %35 ], [ false, %2 ], [ false, %6 ], [ true, %17 ], [ false, %22 ], [ false, %33 ]
  ret i1 %37
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skb_cow(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 10
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = icmp ne i32 %12, 1
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %7 ]
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %18 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %23) #7
  %25 = or i32 %24, %16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %15
  %28 = add i32 %24, 63
  %29 = and i32 %28, -64
  %30 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %29, i32 noundef 0, i32 noundef 2592) #7
  br label %31

31:                                               ; preds = %27, %15
  %32 = phi i32 [ %30, %27 ], [ 0, %15 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_rt_send_redirect(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @NF_HOOK(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call ptr @llvm.thread.pointer() #7
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = add i32 %4, 512
  store volatile i32 %5, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %6 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.ipstats_mib, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !13
  %16 = getelementptr [37 x i64], ptr %12, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !14
  %19 = load i32, ptr %13, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %13, align 4
  tail call fastcc void @local_bh_enable() #7
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #6, !srcloc !12
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.ipstats_mib, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !13
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = zext i32 %32 to i64
  %34 = getelementptr [37 x i64], ptr %27, i32 0, i32 6
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, %33
  store i64 %36, ptr %34, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !14
  %37 = load i32, ptr %28, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %28, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %40 = load i16, ptr %39, align 2
  %41 = and i16 %40, 4096
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %1
  tail call void @consume_skb(ptr noundef %0) #7
  br label %58

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48, !prof !9

48:                                               ; preds = %44
  tail call void @ip_forward_options(ptr noundef %0) #7
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  store i64 0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, -2
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr inbounds %struct.dst_entry, ptr %54, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 %56(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %0) #7
  br label %58

58:                                               ; preds = %49, %43
  %59 = phi i32 [ 0, %43 ], [ %57, %49 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_warn_lro_forwarding(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_route_forward(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_forward_options(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148803909}
!12 = !{i64 766995}
!13 = !{i64 2149252787}
!14 = !{i64 2149253088}
