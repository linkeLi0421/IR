; ModuleID = '/llk/IR/net/ipv6/sysctl_net_ipv6.c_pt.bc'
source_filename = "../net/ipv6/sysctl_net_ipv6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ctl_table_header = type { %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32 }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }

@init_net = external dso_local global %struct.net, align 64
@.str = private unnamed_addr constant [9 x i8] c"net/ipv6\00", align 1
@ipv6_rotable = internal global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @sysctl_mld_max_msf, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr @sysctl_mld_qrv, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table zeroinitializer], align 4
@ip6_header = internal unnamed_addr global ptr null, align 4
@ipv6_sysctl_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv6_sysctl_net_init, ptr null, ptr @ipv6_sysctl_net_exit, ptr null, ptr null, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"mld_max_msf\00", align 1
@sysctl_mld_max_msf = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"mld_qrv\00", align 1
@sysctl_mld_qrv = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@ipv6_table_template = internal global [21 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.5, ptr getelementptr (i8, ptr @init_net, i64 1145), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.6, ptr getelementptr (i8, ptr @init_net, i64 1192), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.7, ptr getelementptr (i8, ptr @init_net, i64 1146), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr getelementptr (i8, ptr @init_net, i64 1147), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr @auto_flowlabels_max }, %struct.ctl_table { ptr @.str.9, ptr getelementptr (i8, ptr @init_net, i64 1194), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.10, ptr getelementptr (i8, ptr @init_net, i64 1196), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.11, ptr getelementptr (i8, ptr @init_net, i64 1200), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.12, ptr getelementptr (i8, ptr @init_net, i64 1195), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.13, ptr getelementptr (i8, ptr @init_net, i64 1193), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.14, ptr getelementptr (i8, ptr @init_net, i64 1204), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @flowlabel_reflect_max }, %struct.ctl_table { ptr @.str.15, ptr getelementptr (i8, ptr @init_net, i64 1208), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.16, ptr getelementptr (i8, ptr @init_net, i64 1212), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.17, ptr getelementptr (i8, ptr @init_net, i64 1216), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.18, ptr getelementptr (i8, ptr @init_net, i64 1220), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr getelementptr (i8, ptr @init_net, i64 1144), i32 1, i16 420, ptr null, ptr @proc_rt6_multipath_hash_policy, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @three }, %struct.ctl_table { ptr @.str.20, ptr getelementptr (i8, ptr @init_net, i64 1140), i32 4, i16 420, ptr null, ptr @proc_rt6_multipath_hash_fields, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @rt6_multipath_hash_fields_all_mask }, %struct.ctl_table { ptr @.str.21, ptr getelementptr (i8, ptr @init_net, i64 1224), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.22, ptr getelementptr (i8, ptr @init_net, i64 1241), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @two }, %struct.ctl_table { ptr @.str.23, ptr getelementptr (i8, ptr @init_net, i64 1228), i32 4, i16 420, ptr null, ptr @proc_douintvec_minmax, ptr null, ptr null, ptr @ioam6_id_max }, %struct.ctl_table { ptr @.str.24, ptr getelementptr (i8, ptr @init_net, i64 1232), i32 8, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr @ioam6_id_wide_max }, %struct.ctl_table zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"net/ipv6/route\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"net/ipv6/icmp\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"bindv6only\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"anycast_src_echo_reply\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"flowlabel_consistency\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"auto_flowlabels\00", align 1
@auto_flowlabels_max = internal global i32 3, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"fwmark_reflect\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"idgen_retries\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"idgen_delay\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"flowlabel_state_ranges\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"ip_nonlocal_bind\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"flowlabel_reflect\00", align 1
@flowlabel_reflect_max = internal global i32 7, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"max_dst_opts_number\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"max_hbh_opts_number\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"max_dst_opts_length\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"max_hbh_length\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"fib_multipath_hash_policy\00", align 1
@three = internal global i32 3, align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"fib_multipath_hash_fields\00", align 1
@rt6_multipath_hash_fields_all_mask = internal global i32 4095, align 4
@.str.21 = private unnamed_addr constant [15 x i8] c"seg6_flowlabel\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"fib_notify_on_flag_change\00", align 1
@two = internal global i32 2, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"ioam6_id\00", align 1
@ioam6_id_max = internal global i32 16777215, align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"ioam6_id_wide\00", align 1
@ioam6_id_wide_max = internal global i64 72057594037927935, align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_sysctl_register() local_unnamed_addr #0 {
  %1 = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str, ptr noundef nonnull @ipv6_rotable) #4
  store ptr %1, ptr @ip6_header, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipv6_sysctl_net_ops) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %8, %3, %0
  %7 = phi i32 [ %4, %8 ], [ 0, %3 ], [ -12, %0 ]
  ret i32 %7

8:                                                ; preds = %3
  %9 = load ptr, ptr @ip6_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %9) #4
  br label %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_sysctl_unregister() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ip6_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #4
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ipv6_sysctl_net_ops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipv6_sysctl_net_init(ptr noundef %0) #2 section ".init.text" {
  %2 = tail call ptr @kmemdup(ptr noundef nonnull @ipv6_table_template, i32 noundef 756, i32 noundef 3264) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = ptrtoint ptr %0 to i32
  %6 = sub i32 %5, ptrtoint (ptr @init_net to i32)
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ 0, %4 ], [ %12, %7 ]
  %9 = getelementptr %struct.ctl_table, ptr %2, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %6
  store ptr %11, ptr %9, align 4
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp eq i32 %12, 20
  br i1 %13, label %14, label %7

14:                                               ; preds = %7
  %15 = tail call ptr @ipv6_route_sysctl_init(ptr noundef %0) #4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @ipv6_icmp_sysctl_init(ptr noundef %0) #4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2) #4
  %22 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1
  store ptr %21, ptr %22, align 64
  %23 = icmp eq ptr %21, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %15) #4
  %26 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #4
  %30 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 2
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %40, %28, %1
  %33 = phi i32 [ -12, %40 ], [ -12, %1 ], [ 0, %28 ]
  ret i32 %33

34:                                               ; preds = %28
  %35 = load ptr, ptr %26, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %35) #4
  br label %36

36:                                               ; preds = %34, %24
  %37 = load ptr, ptr %22, align 64
  tail call void @unregister_net_sysctl_table(ptr noundef %37) #4
  br label %38

38:                                               ; preds = %36, %20
  tail call void @kfree(ptr noundef nonnull %18) #4
  br label %39

39:                                               ; preds = %38, %17
  tail call void @kfree(ptr noundef nonnull %15) #4
  br label %40

40:                                               ; preds = %39, %14
  tail call void @kfree(ptr noundef nonnull %2) #4
  br label %32
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv6_sysctl_net_exit(ptr nocapture noundef readonly %0) #3 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ctl_table_header, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ctl_table_header, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %11) #4
  %14 = load ptr, ptr %6, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %14) #4
  %15 = load ptr, ptr %2, align 64
  tail call void @unregister_net_sysctl_table(ptr noundef %15) #4
  tail call void @kfree(ptr noundef %5) #4
  tail call void @kfree(ptr noundef %9) #4
  tail call void @kfree(ptr noundef %13) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_route_sysctl_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_icmp_sysctl_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_rt6_multipath_hash_policy(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @proc_dou8vec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4
  %9 = icmp ne i32 %1, 0
  %10 = icmp eq i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %7, i32 -1144
  %14 = tail call i32 @call_netevent_notifiers(i32 noundef 5, ptr noundef %13) #4
  br label %15

15:                                               ; preds = %12, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_rt6_multipath_hash_fields(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @proc_douintvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4
  %9 = icmp ne i32 %1, 0
  %10 = icmp eq i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %7, i32 -1140
  %14 = tail call i32 @call_netevent_notifiers(i32 noundef 5, ptr noundef %13) #4
  br label %15

15:                                               ; preds = %12, %5
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netevent_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
