; ModuleID = '/llk/IR/net/core/net-procfs.c_pt.bc'
source_filename = "../net/core/net-procfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.112, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.anon.112 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.55 }
%union.anon.55 = type { i32 }
%struct.sk_buff_head = type { %union.anon.110, i32, %struct.spinlock }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.12, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.102, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.12 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.102 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, %struct.netdevice_tracker, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@dev_proc_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @dev_proc_net_init, ptr null, ptr @dev_proc_net_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@dev_mc_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @dev_mc_net_init, ptr null, ptr @dev_mc_net_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@.str = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@dev_seq_ops = internal constant %struct.seq_operations { ptr @dev_seq_start, ptr @dev_seq_stop, ptr @dev_seq_next, ptr @dev_seq_show }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"softnet_stat\00", align 1
@softnet_seq_ops = internal constant %struct.seq_operations { ptr @softnet_seq_start, ptr @softnet_seq_stop, ptr @softnet_seq_next, ptr @softnet_seq_show }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ptype\00", align 1
@ptype_seq_ops = internal constant %struct.seq_operations { ptr @ptype_seq_start, ptr @ptype_seq_stop, ptr @ptype_seq_next, ptr @ptype_seq_show }, align 4
@init_net = external dso_local global %struct.net, align 64
@.str.3 = private unnamed_addr constant [201 x i8] c"Inter-|   Receive                                                |  Transmit\0A face |bytes    packets errs drop fifo frame compressed multicast|bytes    packets errs drop fifo colls carrier compressed\0A\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"%6s: %7llu %7llu %4llu %4llu %4llu %5llu %10llu %9llu %8llu %7llu %4llu %4llu %4llu %5llu %7llu %10llu\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"%08x %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x\0A\00", align 1
@ptype_all = external dso_local global %struct.list_head, section ".data..read_mostly", align 4
@ptype_base = external dso_local global [16 x %struct.list_head], section ".data..read_mostly", align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Type Device      Function\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ALL \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" %-8s %ps\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"dev_mcast\00", align 1
@dev_mc_seq_ops = internal constant %struct.seq_operations { ptr @dev_seq_start, ptr @dev_seq_stop, ptr @dev_seq_next, ptr @dev_mc_seq_show }, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"%-4d %-15s %-5d %-5d %*phN\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dev_proc_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @dev_proc_ops) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @dev_mc_net_ops) #10
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dev_proc_net_init(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @dev_seq_ops, i32 noundef 0, ptr noundef null) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %7, ptr noundef nonnull @softnet_seq_ops, i32 noundef 0, ptr noundef null) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8
  %12 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %11, ptr noundef nonnull @ptype_seq_ops, i32 noundef 0, ptr noundef null) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %18, %10, %1
  %15 = phi i32 [ -12, %18 ], [ -12, %1 ], [ 0, %10 ]
  ret i32 %15

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %17) #10
  br label %18

18:                                               ; preds = %16, %6
  %19 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %19) #10
  br label %14
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dev_proc_net_exit(ptr nocapture noundef readonly %0) #3 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef %3) #10
  %4 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %4) #10
  %5 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dev_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #4 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %3 = load i64, ptr %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = icmp sgt i64 %3, 2147483647
  br i1 %6, label %41, label %7

7:                                                ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = lshr i64 %3, 23
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %34, %7
  %12 = phi i32 [ %37, %34 ], [ %8, %7 ]
  %13 = phi i32 [ %40, %34 ], [ %10, %7 ]
  %14 = and i32 %12, 8388607
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 24), align 4
  %16 = getelementptr %struct.hlist_head, ptr %15, i32 %13
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr i8, ptr %17, i32 -560
  %20 = icmp eq ptr %19, null
  %21 = or i1 %18, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %27, %11
  %23 = phi ptr [ %31, %27 ], [ %19, %11 ]
  %24 = phi i32 [ %25, %27 ], [ 0, %11 ]
  %25 = add i32 %24, 1
  %26 = icmp eq i32 %25, %14
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 85
  %29 = load volatile ptr, ptr %28, align 16
  %30 = icmp eq ptr %29, null
  %31 = getelementptr i8, ptr %29, i32 -560
  %32 = icmp eq ptr %31, null
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %22

34:                                               ; preds = %27, %11
  %35 = add i32 %13, 1
  %36 = shl i32 %35, 23
  %37 = or i32 %36, 1
  %38 = zext i32 %37 to i64
  store i64 %38, ptr %1, align 8
  %39 = icmp ult i32 %35, 256
  %40 = and i32 %35, 511
  br i1 %39, label %11, label %41

41:                                               ; preds = %34, %22, %5, %2
  %42 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ null, %5 ], [ %23, %22 ], [ null, %34 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dev_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dev_seq_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #5 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i64 %5, 23
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %32, %3
  %10 = phi i32 [ %35, %32 ], [ %6, %3 ]
  %11 = phi i32 [ %38, %32 ], [ %8, %3 ]
  %12 = and i32 %10, 8388607
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 24), align 4
  %14 = getelementptr %struct.hlist_head, ptr %13, i32 %11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -560
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %25, %9
  %21 = phi ptr [ %29, %25 ], [ %17, %9 ]
  %22 = phi i32 [ %23, %25 ], [ 0, %9 ]
  %23 = add i32 %22, 1
  %24 = icmp eq i32 %23, %12
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 85
  %27 = load volatile ptr, ptr %26, align 16
  %28 = icmp eq ptr %27, null
  %29 = getelementptr i8, ptr %27, i32 -560
  %30 = icmp eq ptr %29, null
  %31 = or i1 %28, %30
  br i1 %31, label %32, label %20

32:                                               ; preds = %25, %9
  %33 = add i32 %11, 1
  %34 = shl i32 %33, 23
  %35 = or i32 %34, 1
  %36 = zext i32 %35 to i64
  store i64 %36, ptr %2, align 8
  %37 = icmp ult i32 %33, 256
  %38 = and i32 %33, 511
  br i1 %37, label %9, label %39

39:                                               ; preds = %32, %20
  %40 = phi ptr [ %21, %20 ], [ null, %32 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_seq_show(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca %struct.rtnl_link_stats64, align 8
  %4 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.3) #10
  br label %60

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %3, i8 0, i32 192, i1 false) #10, !annotation !10
  %7 = call ptr @dev_get_stats(ptr noundef %1, ptr noundef nonnull %3) #10
  %8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %7, align 8
  %11 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 4
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 6
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 15
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, %14
  %18 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 14
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 10
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 11
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, %21
  %25 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 12
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %24, %26
  %28 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 13
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %27, %29
  %31 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 21
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 8
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 3
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 5
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 7
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 18
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 9
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 17
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 16
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %50, %48
  %52 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 20
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %51, %53
  %55 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 19
  %56 = load i64, ptr %55, align 8
  %57 = add i64 %54, %56
  %58 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %7, i32 0, i32 22
  %59 = load i64, ptr %58, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1, i64 noundef %9, i64 noundef %10, i64 noundef %12, i64 noundef %17, i64 noundef %19, i64 noundef %30, i64 noundef %32, i64 noundef %34, i64 noundef %36, i64 noundef %38, i64 noundef %40, i64 noundef %42, i64 noundef %44, i64 noundef %46, i64 noundef %57, i64 noundef %59) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #10
  br label %60

60:                                               ; preds = %6, %5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @softnet_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #5 {
  %3 = load i64, ptr %1, align 8
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = zext i32 %4 to i64
  %6 = icmp slt i64 %3, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %23, %2
  %8 = phi i64 [ %24, %23 ], [ %3, %2 ]
  %9 = trunc i64 %8 to i32
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %7
  %18 = trunc i64 %8 to i32
  %19 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, ptrtoint (ptr @softnet_data to i32)
  %22 = inttoptr i32 %21 to ptr
  br label %28

23:                                               ; preds = %7
  %24 = add nsw i64 %8, 1
  store i64 %24, ptr %1, align 8
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %7, label %28

28:                                               ; preds = %23, %17, %2
  %29 = phi ptr [ %22, %17 ], [ null, %2 ], [ null, %23 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @softnet_seq_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #7 {
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @softnet_seq_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #5 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %25, %3
  %10 = phi i64 [ %26, %25 ], [ %5, %3 ]
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %9
  %20 = trunc i64 %10 to i32
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, ptrtoint (ptr @softnet_data to i32)
  %24 = inttoptr i32 %23 to ptr
  br label %30

25:                                               ; preds = %9
  %26 = add nsw i64 %10, 1
  store i64 %26, ptr %2, align 8
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %9, label %30

30:                                               ; preds = %25, %19, %3
  %31 = phi ptr [ %24, %19 ], [ null, %3 ], [ null, %25 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @softnet_seq_show(ptr noundef %0, ptr noundef %1) #4 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %3 = getelementptr inbounds %struct.softnet_data, ptr %1, i32 0, i32 6
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %11 = getelementptr inbounds %struct.softnet_data, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.softnet_data, ptr %1, i32 0, i32 18
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.softnet_data, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.softnet_data, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 32
  %19 = getelementptr inbounds %struct.softnet_data, ptr %1, i32 0, i32 19, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.softnet_data, ptr %1, i32 0, i32 1, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 5
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %18, i32 noundef %10, i32 noundef %23, i32 noundef %26) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ptype_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %3 = load i64, ptr %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %65, label %5

5:                                                ; preds = %2
  %6 = add i64 %3, -1
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %8 = icmp eq ptr %7, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %8, label %13, label %17

9:                                                ; preds = %27, %17
  %10 = phi i64 [ %19, %17 ], [ %28, %27 ]
  %11 = load volatile ptr, ptr %18, align 8
  %12 = icmp eq ptr %11, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %5
  %14 = phi i64 [ 0, %5 ], [ %10, %9 ]
  %15 = load volatile ptr, ptr @ptype_all, align 4
  %16 = icmp eq ptr %15, @ptype_all
  br i1 %16, label %39, label %31

17:                                               ; preds = %9, %5
  %18 = phi ptr [ %11, %9 ], [ %7, %5 ]
  %19 = phi i64 [ %10, %9 ], [ 0, %5 ]
  %20 = getelementptr i8, ptr %18, i32 32
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %9, label %23

23:                                               ; preds = %27, %17
  %24 = phi ptr [ %29, %27 ], [ %21, %17 ]
  %25 = phi i64 [ %28, %27 ], [ %19, %17 ]
  %26 = icmp eq i64 %25, %6
  br i1 %26, label %63, label %27

27:                                               ; preds = %23
  %28 = add i64 %25, 1
  %29 = load volatile ptr, ptr %24, align 4
  %30 = icmp eq ptr %29, %20
  br i1 %30, label %9, label %23

31:                                               ; preds = %35, %13
  %32 = phi ptr [ %37, %35 ], [ %15, %13 ]
  %33 = phi i64 [ %36, %35 ], [ %14, %13 ]
  %34 = icmp eq i64 %33, %6
  br i1 %34, label %61, label %35

35:                                               ; preds = %31
  %36 = add i64 %33, 1
  %37 = load volatile ptr, ptr %32, align 4
  %38 = icmp eq ptr %37, @ptype_all
  br i1 %38, label %39, label %31

39:                                               ; preds = %35, %13
  %40 = phi i64 [ %14, %13 ], [ %36, %35 ]
  br label %41

41:                                               ; preds = %55, %39
  %42 = phi i64 [ %56, %55 ], [ %40, %39 ]
  %43 = phi i32 [ %57, %55 ], [ 0, %39 ]
  %44 = getelementptr [16 x %struct.list_head], ptr @ptype_base, i32 0, i32 %43
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %55, label %47

47:                                               ; preds = %51, %41
  %48 = phi ptr [ %53, %51 ], [ %45, %41 ]
  %49 = phi i64 [ %52, %51 ], [ %42, %41 ]
  %50 = icmp eq i64 %49, %6
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = add i64 %49, 1
  %53 = load volatile ptr, ptr %48, align 4
  %54 = icmp eq ptr %53, %44
  br i1 %54, label %55, label %47

55:                                               ; preds = %51, %41
  %56 = phi i64 [ %42, %41 ], [ %52, %51 ]
  %57 = add nuw nsw i32 %43, 1
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %65, label %41

59:                                               ; preds = %47
  %60 = getelementptr i8, ptr %48, i32 -28
  br label %65

61:                                               ; preds = %31
  %62 = getelementptr i8, ptr %32, i32 -28
  br label %65

63:                                               ; preds = %23
  %64 = getelementptr i8, ptr %24, i32 -28
  br label %65

65:                                               ; preds = %63, %61, %59, %55, %2
  %66 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ %60, %59 ], [ %62, %61 ], [ %64, %63 ], [ null, %55 ]
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ptype_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ptype_seq_next(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef %2) #5 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %6, label %7, label %76

7:                                                ; preds = %3
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %9 = icmp eq ptr %8, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %9, label %13, label %16

10:                                               ; preds = %16
  %11 = load volatile ptr, ptr %17, align 8
  %12 = icmp eq ptr %11, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %7
  %14 = load volatile ptr, ptr @ptype_all, align 4
  %15 = icmp eq ptr %14, @ptype_all
  br i1 %15, label %21, label %72

16:                                               ; preds = %10, %7
  %17 = phi ptr [ %11, %10 ], [ %8, %7 ]
  %18 = getelementptr i8, ptr %17, i32 32
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %10, label %74

21:                                               ; preds = %13
  %22 = load volatile ptr, ptr @ptype_base, align 4
  %23 = icmp eq ptr %22, @ptype_base
  br i1 %23, label %24, label %69

24:                                               ; preds = %21
  %25 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 1), align 4
  %26 = icmp eq ptr %25, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 1)
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 2), align 4
  %29 = icmp eq ptr %28, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 2)
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  %31 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 3), align 4
  %32 = icmp eq ptr %31, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 3)
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 4), align 4
  %35 = icmp eq ptr %34, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 4)
  br i1 %35, label %36, label %69

36:                                               ; preds = %33
  %37 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 5), align 4
  %38 = icmp eq ptr %37, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 5)
  br i1 %38, label %39, label %69

39:                                               ; preds = %36
  %40 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 6), align 4
  %41 = icmp eq ptr %40, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 6)
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  %43 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 7), align 4
  %44 = icmp eq ptr %43, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 7)
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 8), align 4
  %47 = icmp eq ptr %46, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 8)
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 9), align 4
  %50 = icmp eq ptr %49, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 9)
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 10), align 4
  %53 = icmp eq ptr %52, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 10)
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 11), align 4
  %56 = icmp eq ptr %55, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 11)
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 12), align 4
  %59 = icmp eq ptr %58, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 12)
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 13), align 4
  %62 = icmp eq ptr %61, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 13)
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 14), align 4
  %65 = icmp eq ptr %64, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 14)
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load volatile ptr, ptr getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 15), align 4
  %68 = icmp eq ptr %67, getelementptr inbounds ([16 x %struct.list_head], ptr @ptype_base, i32 0, i32 15)
  br i1 %68, label %125, label %69

69:                                               ; preds = %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21
  %70 = phi ptr [ %22, %21 ], [ %25, %24 ], [ %28, %27 ], [ %31, %30 ], [ %34, %33 ], [ %37, %36 ], [ %40, %39 ], [ %43, %42 ], [ %46, %45 ], [ %49, %48 ], [ %52, %51 ], [ %55, %54 ], [ %58, %57 ], [ %61, %60 ], [ %64, %63 ], [ %67, %66 ]
  %71 = getelementptr i8, ptr %70, i32 -28
  br label %125

72:                                               ; preds = %13
  %73 = getelementptr i8, ptr %14, i32 -28
  br label %125

74:                                               ; preds = %16
  %75 = getelementptr i8, ptr %19, i32 -28
  br label %125

76:                                               ; preds = %3
  %77 = getelementptr inbounds %struct.packet_type, ptr %1, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.packet_type, ptr %1, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %97, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 11
  %84 = icmp eq ptr %78, %83
  br i1 %84, label %85, label %122

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 7
  br label %87

87:                                               ; preds = %91, %85
  %88 = phi ptr [ %86, %85 ], [ %89, %91 ]
  %89 = load volatile ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %89, i32 32
  %93 = load volatile ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %92
  br i1 %94, label %87, label %122

95:                                               ; preds = %87
  %96 = load ptr, ptr @ptype_all, align 4
  br label %100

97:                                               ; preds = %76
  %98 = load i16, ptr %1, align 4
  %99 = icmp eq i16 %98, 768
  br i1 %99, label %100, label %105

100:                                              ; preds = %97, %95
  %101 = phi ptr [ %96, %95 ], [ %78, %97 ]
  %102 = icmp eq ptr %101, @ptype_all
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = load ptr, ptr @ptype_base, align 4
  br label %109

105:                                              ; preds = %97
  %106 = lshr i16 %98, 8
  %107 = and i16 %106, 15
  %108 = zext i16 %107 to i32
  br label %109

109:                                              ; preds = %105, %103
  %110 = phi i32 [ 0, %103 ], [ %108, %105 ]
  %111 = phi ptr [ %104, %103 ], [ %78, %105 ]
  %112 = getelementptr [16 x %struct.list_head], ptr @ptype_base, i32 0, i32 %110
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %117, %109
  %115 = phi i32 [ %118, %117 ], [ %110, %109 ]
  %116 = icmp eq i32 %115, 15
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = add nuw nsw i32 %115, 1
  %119 = getelementptr [16 x %struct.list_head], ptr @ptype_base, i32 0, i32 %118
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, %119
  br i1 %121, label %114, label %122

122:                                              ; preds = %117, %109, %100, %91, %82
  %123 = phi ptr [ %78, %82 ], [ %101, %100 ], [ %111, %109 ], [ %120, %117 ], [ %93, %91 ]
  %124 = getelementptr i8, ptr %123, i32 -28
  br label %125

125:                                              ; preds = %122, %114, %74, %72, %69, %66
  %126 = phi ptr [ %124, %122 ], [ %71, %69 ], [ %73, %72 ], [ %75, %74 ], [ null, %66 ], [ null, %114 ]
  ret ptr %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptype_seq_show(ptr noundef %0, ptr noundef readonly %1) #4 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  br label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.packet_type, ptr %1, i32 0, i32 2
  %7 = load i16, ptr %1, align 4
  %8 = icmp eq i16 %7, 768
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #10
  br label %13

10:                                               ; preds = %5
  %11 = tail call i16 @llvm.bswap.i16(i16 %7)
  %12 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %12) #10
  br label %13

13:                                               ; preds = %10, %9
  %14 = load ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str.10, ptr %14
  %17 = getelementptr inbounds %struct.packet_type, ptr %1, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %16, ptr noundef %18) #10
  br label %19

19:                                               ; preds = %13, %4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dev_mc_net_init(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.11, i16 noundef zeroext 0, ptr noundef %3, ptr noundef nonnull @dev_mc_seq_ops, i32 noundef 0, ptr noundef null) #10
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dev_mc_net_exit(ptr nocapture noundef readonly %0) #3 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.11, ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_mc_seq_show(ptr noundef %0, ptr noundef %1) #4 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = add i32 %7, 512
  store volatile i32 %8, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %9 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 61
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %29, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %15 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %11, %13 ], [ %27, %16 ]
  %18 = load i32, ptr %14, align 4
  %19 = getelementptr inbounds %struct.netdev_hw_addr, ptr %17, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.netdev_hw_addr, ptr %17, i32 0, i32 4
  %22 = load i8, ptr %21, align 1, !range !12
  %23 = zext i8 %22 to i32
  %24 = load i8, ptr %15, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.netdev_hw_addr, ptr %17, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %18, ptr noundef %1, i32 noundef %20, i32 noundef %23, i32 noundef %25, ptr noundef %26) #10
  %27 = load ptr, ptr %17, align 4
  %28 = icmp eq ptr %27, %10
  br i1 %28, label %29, label %16

29:                                               ; preds = %16, %4
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #10
  br label %30

30:                                               ; preds = %29, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i64 2149281695}
!9 = !{i64 2149281912}
!10 = !{!"auto-init"}
!11 = !{i64 2148874920}
!12 = !{i8 0, i8 2}
