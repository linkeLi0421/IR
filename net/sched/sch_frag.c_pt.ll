; ModuleID = '/llk/IR/net/sched/sch_frag.c_pt.bc'
source_filename = "../net/sched/sch_frag.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sch_frag_xmit_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22sch_frag_xmit_hook\22\09\09\09\09\09"
module asm "__kstrtabns_sch_frag_xmit_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sch_frag_data = type { i32, %struct.qdisc_skb_cb, i16, i16, i16, i32, [18 x i8], ptr }
%struct.qdisc_skb_cb = type { %struct.anon.143, [20 x i8] }
%struct.anon.143 = type { i32, i16, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.63, ptr, [60 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.63 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.vlan_hdr = type { i16, i16 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.57, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%union.anon.57 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.122, %union.anon.123, [48 x i8], %union.anon.124, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.126, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.122 = type { ptr }
%union.anon.123 = type { i64 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, ptr }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.128, i32, i32, i32, i16, i16, %union.anon.130, %union.anon.131, %union.anon.132, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.128 = type { i32 }
%union.anon.130 = type { i32 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.121 = type { ptr }
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
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_sch_frag_xmit_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_sch_frag_xmit_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_sch_frag_xmit_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sch_frag_xmit_hook to i32), ptr @__kstrtab_sch_frag_xmit_hook, ptr @__kstrtabns_sch_frag_xmit_hook }, section "___ksymtab_gpl+sch_frag_xmit_hook", align 4
@.str = private unnamed_addr constant [34 x i8] c"\014L2 header too long to fragment\0A\00", align 1
@sch_frag_dst_ops = internal global %struct.dst_ops { i16 0, i32 0, ptr null, ptr null, ptr null, ptr @sch_frag_dst_get_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [60 x i8] undef, %struct.percpu_counter zeroinitializer, [32 x i8] undef }, align 64
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\014Fail frag %s: eth=%x, MRU=%d, MTU=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"include/linux/if_vlan.h\00", align 1
@sch_frag_data_storage = internal global %struct.sch_frag_data zeroinitializer, section ".data..percpu", align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"(unnamed net_device)\00", align 1
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_sch_frag_xmit_hook], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sch_frag_xmit_hook(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.vlan_hdr, align 4
  %4 = alloca %struct.vlan_hdr, align 4
  %5 = alloca %struct.vlan_hdr, align 4
  %6 = alloca %struct.rtable, align 4
  %7 = alloca %struct.rt6_info, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %313, label %12

12:                                               ; preds = %2
  %13 = zext i16 %10 to i32
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 19
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = add nuw nsw i32 %20, %13
  %22 = icmp ugt i32 %15, %21
  br i1 %22, label %23, label %313

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = ptrtoint ptr %29 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = icmp sgt i32 %34, 18
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = tail call i32 @net_ratelimit() #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %312, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %312

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %43 = load i16, ptr %42, align 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %45 = load i16, ptr %44, align 8
  %46 = zext i16 %45 to i32
  switch i16 %43, label %87 [
    i16 -22392, label %47
    i16 129, label %47
  ]

47:                                               ; preds = %41, %41
  %48 = icmp eq i16 %45, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %47
  %50 = icmp ult i16 %45, 4
  br i1 %50, label %51, label %52, !prof !9

51:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %145

52:                                               ; preds = %49
  %53 = add nsw i32 %46, -4
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ %53, %52 ], [ 14, %47 ]
  %56 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %57 = icmp eq ptr %0, null
  br label %58

58:                                               ; preds = %84, %54
  %59 = phi i32 [ %15, %54 ], [ %86, %84 ]
  %60 = phi i32 [ %55, %54 ], [ %85, %84 ]
  %61 = phi i32 [ 8, %54 ], [ %77, %84 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !10
  %62 = load i32, ptr %56, align 4
  %63 = add i32 %60, %62
  %64 = sub i32 %59, %63
  %65 = icmp sgt i32 %64, 3
  br i1 %65, label %66, label %69, !prof !11

66:                                               ; preds = %58
  %67 = load ptr, ptr %30, align 4
  %68 = getelementptr i8, ptr %67, i32 %60
  br label %74

69:                                               ; preds = %58
  br i1 %57, label %80, label %70

70:                                               ; preds = %69
  %71 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %60, ptr noundef nonnull %5, i32 noundef 4) #10
  %72 = icmp slt i32 %71, 0
  %73 = select i1 %72, ptr null, ptr %5, !prof !9
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi ptr [ %68, %66 ], [ %73, %70 ]
  %76 = icmp eq ptr %75, null
  %77 = add nsw i32 %61, -1
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %76, i1 true, i1 %78, !prof !9
  br i1 %79, label %80, label %81, !prof !9

80:                                               ; preds = %74, %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %145

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.vlan_hdr, ptr %75, i32 0, i32 1
  %83 = load i16, ptr %82, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  switch i16 %83, label %87 [
    i16 -22392, label %84
    i16 129, label %84
  ]

84:                                               ; preds = %81, %81
  %85 = add nsw i32 %60, 4
  %86 = load i32, ptr %14, align 8
  br label %58

87:                                               ; preds = %81, %41
  %88 = phi i16 [ %43, %41 ], [ %83, %81 ]
  %89 = icmp eq i16 %88, 8
  br i1 %89, label %90, label %145

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(120) %6, i8 0, i32 120, i1 false) #10
  %91 = load ptr, ptr %24, align 8
  %92 = load i16, ptr %26, align 4
  %93 = load ptr, ptr %30, align 4
  %94 = call i32 @llvm.read_register.i32(metadata !0) #10
  %95 = inttoptr i32 %94 to ptr
  %96 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %95) #7, !srcloc !12
  %97 = add i32 %96, ptrtoint (ptr @sch_frag_data_storage to i32)
  %98 = inttoptr i32 %97 to ptr
  %99 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %100 = load i32, ptr %99, align 8
  store i32 %100, ptr %98, align 4
  %101 = getelementptr inbounds %struct.sch_frag_data, ptr %98, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %101, ptr noundef align 4 dereferenceable(28) %8, i32 28, i1 false) #10
  %102 = getelementptr inbounds %struct.sch_frag_data, ptr %98, i32 0, i32 7
  store ptr %1, ptr %102, align 4
  %103 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  %104 = load i16, ptr %103, align 8
  %105 = getelementptr inbounds %struct.sch_frag_data, ptr %98, i32 0, i32 2
  store i16 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %107 = load i16, ptr %106, align 2
  %108 = and i16 %107, 1
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %90
  %111 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %112 = load i16, ptr %111, align 2
  %113 = or i16 %112, 4096
  br label %114

114:                                              ; preds = %110, %90
  %115 = phi i16 [ %113, %110 ], [ 0, %90 ]
  %116 = getelementptr inbounds %struct.sch_frag_data, ptr %98, i32 0, i32 3
  store i16 %115, ptr %116, align 2
  %117 = zext i16 %92 to i32
  %118 = getelementptr i8, ptr %91, i32 %117
  %119 = ptrtoint ptr %118 to i32
  %120 = ptrtoint ptr %93 to i32
  %121 = sub i32 %119, %120
  %122 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 8
  %123 = load i16, ptr %122, align 4
  %124 = getelementptr inbounds %struct.sch_frag_data, ptr %98, i32 0, i32 4
  store i16 %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.sch_frag_data, ptr %98, i32 0, i32 5
  store i32 %121, ptr %125, align 4
  %126 = getelementptr inbounds %struct.sch_frag_data, ptr %98, i32 0, i32 6
  %127 = load ptr, ptr %30, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %126, ptr align 1 %127, i32 %121, i1 false) #10
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false) #10
  %128 = call ptr @skb_pull(ptr noundef %0, i32 noundef %121) #10
  call void @dst_init(ptr noundef nonnull %6, ptr noundef nonnull @sch_frag_dst_ops, ptr noundef null, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 8) #10
  %129 = load ptr, ptr %16, align 8
  store ptr %129, ptr %6, align 4
  %130 = load i32, ptr %99, align 8
  %131 = load i16, ptr %106, align 2
  %132 = or i16 %131, 16384
  store i16 %132, ptr %106, align 2
  %133 = ptrtoint ptr %6 to i32
  %134 = or i32 %133, 1
  store i32 %134, ptr %99, align 8
  %135 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 22
  store i16 %10, ptr %135, align 2
  %136 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = call i32 @ip_do_fragment(ptr noundef nonnull @init_net, ptr noundef %137, ptr noundef %0, ptr noundef nonnull @sch_frag_xmit) #10
  %139 = and i32 %130, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %114
  %142 = and i32 %130, -2
  %143 = inttoptr i32 %142 to ptr
  call void @dst_release(ptr noundef %143) #10
  br label %144

144:                                              ; preds = %141, %114
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #10
  br label %315

145:                                              ; preds = %87, %80, %51
  %146 = load i16, ptr %42, align 8
  %147 = load i16, ptr %44, align 8
  %148 = zext i16 %147 to i32
  switch i16 %146, label %188 [
    i16 -22392, label %149
    i16 129, label %149
  ]

149:                                              ; preds = %145, %145
  %150 = icmp eq i16 %147, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %149
  %152 = icmp ult i16 %147, 4
  br i1 %152, label %153, label %154, !prof !9

153:                                              ; preds = %151
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %249

154:                                              ; preds = %151
  %155 = add nsw i32 %148, -4
  br label %156

156:                                              ; preds = %154, %149
  %157 = phi i32 [ %155, %154 ], [ 14, %149 ]
  %158 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %159 = icmp eq ptr %0, null
  br label %160

160:                                              ; preds = %186, %156
  %161 = phi i32 [ %157, %156 ], [ %187, %186 ]
  %162 = phi i32 [ 8, %156 ], [ %179, %186 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !10
  %163 = load i32, ptr %14, align 8
  %164 = load i32, ptr %158, align 4
  %165 = add i32 %161, %164
  %166 = sub i32 %163, %165
  %167 = icmp sgt i32 %166, 3
  br i1 %167, label %168, label %171, !prof !11

168:                                              ; preds = %160
  %169 = load ptr, ptr %30, align 4
  %170 = getelementptr i8, ptr %169, i32 %161
  br label %176

171:                                              ; preds = %160
  br i1 %159, label %182, label %172

172:                                              ; preds = %171
  %173 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %161, ptr noundef nonnull %4, i32 noundef 4) #10
  %174 = icmp slt i32 %173, 0
  %175 = select i1 %174, ptr null, ptr %4, !prof !9
  br label %176

176:                                              ; preds = %172, %168
  %177 = phi ptr [ %170, %168 ], [ %175, %172 ]
  %178 = icmp eq ptr %177, null
  %179 = add nsw i32 %162, -1
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %178, i1 true, i1 %180, !prof !9
  br i1 %181, label %182, label %183, !prof !9

182:                                              ; preds = %176, %171
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %249

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.vlan_hdr, ptr %177, i32 0, i32 1
  %185 = load i16, ptr %184, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  switch i16 %185, label %188 [
    i16 -22392, label %186
    i16 129, label %186
  ]

186:                                              ; preds = %183, %183
  %187 = add nsw i32 %161, 4
  br label %160

188:                                              ; preds = %183, %145
  %189 = phi i16 [ %146, %145 ], [ %185, %183 ]
  %190 = icmp eq i16 %189, -8826
  br i1 %190, label %191, label %249

191:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %7) #10
  %192 = load ptr, ptr %24, align 8
  %193 = load i16, ptr %26, align 4
  %194 = load ptr, ptr %30, align 4
  %195 = call i32 @llvm.read_register.i32(metadata !0) #10
  %196 = inttoptr i32 %195 to ptr
  %197 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %196) #7, !srcloc !12
  %198 = add i32 %197, ptrtoint (ptr @sch_frag_data_storage to i32)
  %199 = inttoptr i32 %198 to ptr
  %200 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %201 = load i32, ptr %200, align 8
  store i32 %201, ptr %199, align 4
  %202 = getelementptr inbounds %struct.sch_frag_data, ptr %199, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %202, ptr noundef align 4 dereferenceable(28) %8, i32 28, i1 false) #10
  %203 = getelementptr inbounds %struct.sch_frag_data, ptr %199, i32 0, i32 7
  store ptr %1, ptr %203, align 4
  %204 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  %205 = load i16, ptr %204, align 8
  %206 = getelementptr inbounds %struct.sch_frag_data, ptr %199, i32 0, i32 2
  store i16 %205, ptr %206, align 4
  %207 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %208 = load i16, ptr %207, align 2
  %209 = and i16 %208, 1
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %191
  %212 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %213 = load i16, ptr %212, align 2
  %214 = or i16 %213, 4096
  br label %215

215:                                              ; preds = %211, %191
  %216 = phi i16 [ %214, %211 ], [ 0, %191 ]
  %217 = getelementptr inbounds %struct.sch_frag_data, ptr %199, i32 0, i32 3
  store i16 %216, ptr %217, align 2
  %218 = zext i16 %193 to i32
  %219 = getelementptr i8, ptr %192, i32 %218
  %220 = ptrtoint ptr %219 to i32
  %221 = ptrtoint ptr %194 to i32
  %222 = sub i32 %220, %221
  %223 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 8
  %224 = load i16, ptr %223, align 4
  %225 = getelementptr inbounds %struct.sch_frag_data, ptr %199, i32 0, i32 4
  store i16 %224, ptr %225, align 4
  %226 = getelementptr inbounds %struct.sch_frag_data, ptr %199, i32 0, i32 5
  store i32 %222, ptr %226, align 4
  %227 = getelementptr inbounds %struct.sch_frag_data, ptr %199, i32 0, i32 6
  %228 = load ptr, ptr %30, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %227, ptr align 1 %228, i32 %222, i1 false) #10
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false) #10
  %229 = call ptr @skb_pull(ptr noundef %0, i32 noundef %222) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(156) %7, i8 0, i32 156, i1 false) #10
  call void @dst_init(ptr noundef nonnull %7, ptr noundef nonnull @sch_frag_dst_ops, ptr noundef null, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 8) #10
  %230 = load ptr, ptr %16, align 8
  store ptr %230, ptr %7, align 4
  %231 = load i32, ptr %200, align 8
  %232 = load i16, ptr %207, align 2
  %233 = or i16 %232, 16384
  store i16 %233, ptr %207, align 2
  %234 = ptrtoint ptr %7 to i32
  %235 = or i32 %234, 1
  store i32 %235, ptr %200, align 8
  %236 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 20
  store i16 %10, ptr %236, align 4
  %237 = load ptr, ptr @ipv6_stub, align 4
  %238 = getelementptr inbounds %struct.ipv6_stub, ptr %237, i32 0, i32 21
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = call i32 %239(ptr noundef nonnull @init_net, ptr noundef %241, ptr noundef %0, ptr noundef nonnull @sch_frag_xmit) #10
  %243 = and i32 %231, 1
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %215
  %246 = and i32 %231, -2
  %247 = inttoptr i32 %246 to ptr
  call void @dst_release(ptr noundef %247) #10
  br label %248

248:                                              ; preds = %245, %215
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %7) #10
  br label %315

249:                                              ; preds = %188, %182, %153
  %250 = call i32 @net_ratelimit() #10
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %312, label %252

252:                                              ; preds = %249
  %253 = load ptr, ptr %16, align 8
  %254 = load i8, ptr %253, align 64
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = call ptr @strchr(ptr noundef %253, i32 noundef 37) #10
  %258 = icmp eq ptr %257, null
  %259 = select i1 %258, ptr %253, ptr @.str.5
  br label %260

260:                                              ; preds = %256, %252
  %261 = phi ptr [ @.str.5, %252 ], [ %259, %256 ]
  %262 = load i16, ptr %42, align 8
  %263 = load i16, ptr %44, align 8
  %264 = zext i16 %263 to i32
  switch i16 %262, label %304 [
    i16 -22392, label %265
    i16 129, label %265
  ]

265:                                              ; preds = %260, %260
  %266 = icmp eq i16 %263, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %265
  %268 = icmp ult i16 %263, 4
  br i1 %268, label %269, label %270, !prof !9

269:                                              ; preds = %267
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %304

270:                                              ; preds = %267
  %271 = add nsw i32 %264, -4
  br label %272

272:                                              ; preds = %270, %265
  %273 = phi i32 [ %271, %270 ], [ 14, %265 ]
  %274 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %275 = icmp eq ptr %0, null
  br label %276

276:                                              ; preds = %302, %272
  %277 = phi i32 [ %273, %272 ], [ %303, %302 ]
  %278 = phi i32 [ 8, %272 ], [ %295, %302 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !10
  %279 = load i32, ptr %14, align 8
  %280 = load i32, ptr %274, align 4
  %281 = add i32 %277, %280
  %282 = sub i32 %279, %281
  %283 = icmp sgt i32 %282, 3
  br i1 %283, label %284, label %287, !prof !11

284:                                              ; preds = %276
  %285 = load ptr, ptr %30, align 4
  %286 = getelementptr i8, ptr %285, i32 %277
  br label %292

287:                                              ; preds = %276
  br i1 %275, label %298, label %288

288:                                              ; preds = %287
  %289 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %277, ptr noundef nonnull %3, i32 noundef 4) #10
  %290 = icmp slt i32 %289, 0
  %291 = select i1 %290, ptr null, ptr %3, !prof !9
  br label %292

292:                                              ; preds = %288, %284
  %293 = phi ptr [ %286, %284 ], [ %291, %288 ]
  %294 = icmp eq ptr %293, null
  %295 = add nsw i32 %278, -1
  %296 = icmp eq i32 %295, 0
  %297 = select i1 %294, i1 true, i1 %296, !prof !9
  br i1 %297, label %298, label %299, !prof !9

298:                                              ; preds = %292, %287
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %304

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.vlan_hdr, ptr %293, i32 0, i32 1
  %301 = load i16, ptr %300, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  switch i16 %301, label %304 [
    i16 -22392, label %302
    i16 129, label %302
  ]

302:                                              ; preds = %299, %299
  %303 = add nsw i32 %277, 4
  br label %276

304:                                              ; preds = %299, %298, %269, %260
  %305 = phi i16 [ 0, %269 ], [ %262, %260 ], [ 0, %298 ], [ %301, %299 ]
  %306 = call i16 @llvm.bswap.i16(i16 %305) #10
  %307 = zext i16 %306 to i32
  %308 = load ptr, ptr %16, align 8
  %309 = getelementptr inbounds %struct.net_device, ptr %308, i32 0, i32 20
  %310 = load i32, ptr %309, align 4
  %311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %261, i32 noundef %307, i32 noundef %13, i32 noundef %310) #11
  br label %312

312:                                              ; preds = %304, %249, %39, %36
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #10
  br label %315

313:                                              ; preds = %12, %2
  %314 = tail call i32 %1(ptr noundef %0) #10
  br label %315

315:                                              ; preds = %313, %312, %248, %144
  %316 = phi i32 [ %314, %313 ], [ -1, %312 ], [ %138, %144 ], [ %242, %248 ]
  ret i32 %316
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_do_fragment(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sch_frag_xmit(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #7, !srcloc !12
  %7 = add i32 %6, ptrtoint (ptr @sch_frag_data_storage to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.sch_frag_data, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 11
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 10
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 65535
  %21 = ashr i32 %19, 16
  %22 = sub nsw i32 %20, %21
  %23 = icmp ne i32 %22, 1
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %15, %3
  %26 = phi i32 [ %24, %15 ], [ 0, %3 ]
  %27 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %28 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = tail call i32 @llvm.usub.sat.i32(i32 %10, i32 %33) #10
  %35 = or i32 %34, %26
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %25
  %38 = add i32 %34, 63
  %39 = and i32 %38, -64
  %40 = tail call i32 @pskb_expand_head(ptr noundef %2, i32 noundef %39, i32 noundef 0, i32 noundef 2592) #10
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #10
  br label %124

43:                                               ; preds = %37, %25
  %44 = load i32, ptr %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 3
  %48 = load i16, ptr %47, align 2
  %49 = lshr i16 %48, 14
  %50 = trunc i16 %49 to i8
  %51 = and i8 %50, 1
  %52 = or i8 %51, %46
  %53 = zext i8 %52 to i16
  %54 = shl nuw nsw i16 %53, 14
  %55 = and i16 %48, -16385
  %56 = or i16 %54, %55
  store i16 %56, ptr %47, align 2
  %57 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  store i32 %44, ptr %57, align 8
  %58 = and i32 %44, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %43
  %61 = and i32 %44, -2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = inttoptr i32 %61 to ptr
  %65 = getelementptr inbounds %struct.dst_entry, ptr %64, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #10, !srcloc !14
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 0, i32 1, ptr elementtype(i32) %65) #10, !srcloc !15
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  br label %71

70:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 231, i32 noundef 9, ptr noundef null) #10
  br label %71

71:                                               ; preds = %70, %69, %60, %43
  %72 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %73 = getelementptr inbounds %struct.sch_frag_data, ptr %8, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %72, ptr noundef align 4 dereferenceable(28) %73, i32 28, i1 false)
  %74 = getelementptr inbounds %struct.sch_frag_data, ptr %8, i32 0, i32 2
  %75 = load i16, ptr %74, align 4
  %76 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 12
  store i16 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.sch_frag_data, ptr %8, i32 0, i32 3
  %78 = load i16, ptr %77, align 2
  %79 = and i16 %78, 4096
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.sch_frag_data, ptr %8, i32 0, i32 4
  %83 = load i16, ptr %82, align 4
  %84 = and i16 %78, -4097
  %85 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 8
  store i16 %83, ptr %85, align 4
  %86 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 9
  store i16 %84, ptr %86, align 2
  %87 = load i16, ptr %47, align 2
  %88 = or i16 %87, 1
  br label %92

89:                                               ; preds = %71
  %90 = load i16, ptr %47, align 2
  %91 = and i16 %90, -2
  br label %92

92:                                               ; preds = %89, %81
  %93 = phi i16 [ %88, %81 ], [ %91, %89 ]
  store i16 %93, ptr %47, align 2
  %94 = load i32, ptr %9, align 4
  %95 = tail call ptr @skb_push(ptr noundef %2, i32 noundef %94) #10
  %96 = load ptr, ptr %27, align 4
  %97 = getelementptr inbounds %struct.sch_frag_data, ptr %8, i32 0, i32 6
  %98 = load i32, ptr %9, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %96, ptr align 4 %97, i32 %98, i1 false)
  %99 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %100 = load i16, ptr %99, align 8
  %101 = and i16 %100, 96
  %102 = icmp eq i16 %101, 64
  br i1 %102, label %103, label %113

103:                                              ; preds = %92
  %104 = load i32, ptr %9, align 4
  %105 = load ptr, ptr %27, align 4
  %106 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = tail call i32 @csum_partial(ptr noundef %105, i32 noundef %104, i32 noundef 0) #10
  %109 = add i32 %108, %107
  %110 = icmp ult i32 %109, %108
  %111 = zext i1 %110 to i32
  %112 = add i32 %109, %111
  store i32 %112, ptr %106, align 4
  br label %113

113:                                              ; preds = %103, %92
  %114 = load ptr, ptr %27, align 4
  %115 = load ptr, ptr %29, align 8
  %116 = ptrtoint ptr %114 to i32
  %117 = ptrtoint ptr %115 to i32
  %118 = sub i32 %116, %117
  %119 = trunc i32 %118 to i16
  %120 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 19
  store i16 %119, ptr %120, align 2
  %121 = getelementptr inbounds %struct.sch_frag_data, ptr %8, i32 0, i32 7
  %122 = load ptr, ptr %121, align 4
  %123 = tail call i32 %122(ptr noundef %2) #10
  br label %124

124:                                              ; preds = %113, %42
  %125 = phi i32 [ -12, %42 ], [ %123, %113 ]
  ret i32 %125
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sch_frag_dst_get_mtu(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 631106}
!13 = !{i64 2148207621}
!14 = !{i64 706728, i64 2148196699, i64 2148196725, i64 2148196772, i64 2148196794, i64 2148196822, i64 2148196842}
!15 = !{i64 693297, i64 693322, i64 693344, i64 693360, i64 693372, i64 693392, i64 693416, i64 693432, i64 693444}
!16 = !{i64 2148207747}
