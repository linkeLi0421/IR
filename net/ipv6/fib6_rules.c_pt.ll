; ModuleID = '/llk/IR/net/ipv6/fib6_rules.c_pt.bc'
source_filename = "../net/ipv6/fib6_rules.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib6_rule_default:\09\09\09\09\09"
module asm "\09.asciz \09\22fib6_rule_default\22\09\09\09\09\09"
module asm "__kstrtabns_fib6_rule_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.fib_rules_ops = type { i32, %struct.list_head, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.138, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.138 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.fib6_rule = type { %struct.fib_rule, %struct.rt6key, %struct.rt6key, i8 }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.fib_lookup_arg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.fib6_result = type { ptr, ptr, i32, i8, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.105, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.105 = type { ptr }
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
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.134 = type { i16, i16 }
%struct.fib_rule_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }

@__kstrtab_fib6_rule_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib6_rule_default = external dso_local constant [0 x i8], align 1
@__ksymtab_fib6_rule_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib6_rule_default to i32), ptr @__kstrtab_fib6_rule_default, ptr @__kstrtabns_fib6_rule_default }, section "___ksymtab_gpl+fib6_rule_default", align 4
@fib6_rules_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @fib6_rules_net_init, ptr null, ptr @fib6_rules_net_exit, ptr null, ptr null, i32 0 }, align 4
@.str = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@fib6_rules_ops_template = internal constant %struct.fib_rules_ops { i32 10, %struct.list_head zeroinitializer, i32 176, i32 16, i32 0, i32 0, i32 0, ptr @fib6_rule_action, ptr @fib6_rule_suppress, ptr @fib6_rule_match, ptr @fib6_rule_configure, ptr @fib6_rule_delete, ptr @fib6_rule_compare, ptr @fib6_rule_fill, ptr @fib6_rule_nlmsg_payload, ptr null, i32 19, %struct.list_head zeroinitializer, ptr null, ptr @init_net, %struct.callback_head zeroinitializer }, section ".init.rodata", align 4
@init_net = external dso_local global %struct.net, align 64
@fib6_rule_configure.__msg = internal constant [14 x i8] c"Invalid table\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_fib6_rule_default], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @fib6_rule_default(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 2, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = tail call zeroext i1 @fib_rule_matchall(ptr noundef %0) #12
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 7
  %17 = load i8, ptr %16, align 8
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 8
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -2
  %27 = icmp eq i32 %26, 254
  br label %28

28:                                               ; preds = %23, %19, %15, %13, %9, %5, %1
  %29 = phi i1 [ false, %19 ], [ false, %15 ], [ false, %13 ], [ %27, %23 ], [ false, %9 ], [ false, %5 ], [ false, %1 ]
  ret i1 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib6_rules_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @fib_rules_dump(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_dump(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib6_rules_seq_read(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @fib_rules_seq_read(ptr noundef %0, i32 noundef 10) #12
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_seq_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib6_lookup(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib_lookup_arg, align 4
  store i32 %1, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 18
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  store ptr @fib6_table_lookup, ptr %7, align 4
  %12 = getelementptr inbounds %struct.fib_lookup_arg, ptr %7, i32 0, i32 1
  store ptr %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fib_lookup_arg, ptr %7, i32 0, i32 2
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fib_lookup_arg, ptr %7, i32 0, i32 3
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fib_lookup_arg, ptr %7, i32 0, i32 4
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fib_lookup_arg, ptr %7, i32 0, i32 5
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @fib_rules_lookup(ptr noundef %18, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  br label %35

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 22
  %22 = load ptr, ptr %21, align 64
  %23 = tail call i32 @fib6_table_lookup(ptr noundef %0, ptr noundef %22, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.fib6_result, ptr %3, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 6
  %29 = load ptr, ptr %28, align 16
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %20
  %32 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @fib6_table_lookup(ptr noundef %0, ptr noundef %33, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #12
  br label %35

35:                                               ; preds = %31, %25, %11
  %36 = phi i32 [ %19, %11 ], [ %34, %31 ], [ 0, %25 ]
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib6_table_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib6_rule_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.fib6_result, align 4
  %7 = alloca %struct.fib_lookup_arg, align 4
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 18
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  store ptr %4, ptr %7, align 4
  %12 = getelementptr inbounds %struct.fib_lookup_arg, ptr %7, i32 0, i32 1
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fib_lookup_arg, ptr %7, i32 0, i32 2
  store ptr %6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fib_lookup_arg, ptr %7, i32 0, i32 3
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fib_lookup_arg, ptr %7, i32 0, i32 4
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fib_lookup_arg, ptr %7, i32 0, i32 5
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @fib_rules_lookup(ptr noundef %18, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %7) #12
  %20 = getelementptr inbounds %struct.fib6_result, ptr %6, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  br i1 %22, label %23, label %72

23:                                               ; preds = %11
  %24 = and i32 %3, 128
  br label %57

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 22
  %27 = load ptr, ptr %26, align 64
  %28 = tail call ptr %4(ptr noundef %0, ptr noundef %27, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12
  %29 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.dst_entry, ptr %28, i32 0, i32 15
  %34 = load i16, ptr %33, align 4
  %35 = icmp eq i16 %34, -11
  br i1 %35, label %36, label %72

36:                                               ; preds = %32, %25
  %37 = and i32 %3, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rt6_info, ptr %28, i32 0, i32 8
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %36
  tail call void @dst_release(ptr noundef %28) #12
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = tail call ptr %4(ptr noundef %0, ptr noundef %46, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12
  %48 = getelementptr inbounds %struct.dst_entry, ptr %47, i32 0, i32 15
  %49 = load i16, ptr %48, align 4
  %50 = icmp eq i16 %49, -11
  br i1 %50, label %51, label %72

51:                                               ; preds = %44
  br i1 %38, label %56, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.rt6_info, ptr %47, i32 0, i32 8
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %69, label %56

56:                                               ; preds = %52, %51
  tail call void @dst_release(ptr noundef %47) #12
  br label %57

57:                                               ; preds = %56, %23
  %58 = phi i32 [ %24, %23 ], [ %37, %56 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dst_entry, ptr %62, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #12, !srcloc !10
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 0, i32 1, ptr elementtype(i32) %63) #12, !srcloc !11
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  br label %69

68:                                               ; preds = %60
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #12
  br label %69

69:                                               ; preds = %68, %67, %57, %52
  %70 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 7
  %71 = load ptr, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %44, %32, %11
  %73 = phi ptr [ %21, %11 ], [ %71, %69 ], [ %28, %32 ], [ %47, %44 ]
  ret ptr %73
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @fib6_rules_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @fib6_rules_net_ops) #12
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib6_rules_cleanup() local_unnamed_addr #0 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @fib6_rules_net_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_rule_matchall(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fib6_rules_net_init(ptr noundef %0) #4 section ".init.text" {
  %2 = tail call ptr @fib_rules_register(ptr noundef nonnull @fib6_rules_ops_template, ptr noundef %0) #12
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %17

6:                                                ; preds = %1
  %7 = tail call i32 @fib_default_rule_add(ptr noundef %2, i32 noundef 0, i32 noundef 255, i32 noundef 0) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = tail call i32 @fib_default_rule_add(ptr noundef %2, i32 noundef 32766, i32 noundef 254, i32 noundef 0) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 23
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 19
  store i32 0, ptr %14, align 4
  br label %17

15:                                               ; preds = %9, %6
  %16 = phi i32 [ %7, %6 ], [ %10, %9 ]
  tail call void @fib_rules_unregister(ptr noundef %2) #12
  br label %17

17:                                               ; preds = %15, %12, %4
  %18 = phi i32 [ %5, %4 ], [ %16, %15 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fib6_rules_net_exit(ptr nocapture noundef readonly %0) #5 section ".ref.text" {
  tail call void @rtnl_lock() #12
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 23
  %3 = load ptr, ptr %2, align 4
  tail call void @fib_rules_unregister(ptr noundef %3) #12
  tail call void @rtnl_unlock() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_rules_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_default_rule_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_rules_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib6_rule_action(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, @fib6_table_lookup
  %7 = getelementptr inbounds %struct.fib_lookup_arg, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 7
  %12 = load i8, ptr %11, align 8
  br i1 %6, label %13, label %37

13:                                               ; preds = %4
  switch i8 %12, label %15 [
    i8 1, label %16
    i8 7, label %92
    i8 8, label %14
  ]

14:                                               ; preds = %13
  br label %92

15:                                               ; preds = %13
  br label %92

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @fib6_get_table(ptr noundef %10, i32 noundef %18) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %92, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.fib_lookup_arg, ptr %3, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @fib6_table_lookup(ptr noundef %10, ptr noundef nonnull %19, i32 noundef %24, ptr noundef %1, ptr noundef %8, i32 noundef %2) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %92

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.fib6_result, ptr %8, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 6
  %31 = load ptr, ptr %30, align 16
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %92, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %8, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call fastcc i32 @fib6_rule_saddr(ptr noundef %10, ptr noundef %0, i32 noundef %2, ptr noundef %1, ptr noundef %35) #12
  br label %92

37:                                               ; preds = %4
  switch i8 %12, label %40 [
    i8 1, label %44
    i8 7, label %38
    i8 8, label %42
  ]

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 7
  br label %75

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 21
  br label %75

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 20
  br label %75

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = tail call ptr @fib6_get_table(ptr noundef %10, i32 noundef %46) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %88, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.fib_lookup_arg, ptr %3, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call ptr %5(ptr noundef %10, ptr noundef nonnull %47, ptr noundef %1, ptr noundef %51, i32 noundef %2) #12
  %53 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.rt6_info, ptr %52, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = tail call fastcc i32 @fib6_rule_saddr(ptr noundef %10, ptr noundef %0, i32 noundef %2, ptr noundef %1, ptr noundef %59) #12
  %61 = icmp eq i32 %60, -11
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.dst_entry, ptr %52, i32 0, i32 15
  %64 = load i16, ptr %63, align 4
  %65 = sext i16 %64 to i32
  %66 = icmp eq i16 %64, -11
  br i1 %66, label %67, label %88

67:                                               ; preds = %62, %56, %49
  %68 = and i32 %2, 128
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.rt6_info, ptr %52, i32 0, i32 8
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %88, label %74

74:                                               ; preds = %70, %67
  tail call void @dst_release(ptr noundef %52) #12
  br label %88

75:                                               ; preds = %42, %40, %38
  %76 = phi ptr [ %41, %40 ], [ %43, %42 ], [ %39, %38 ]
  %77 = phi i32 [ -22, %40 ], [ -13, %42 ], [ -101, %38 ]
  %78 = load ptr, ptr %76, align 4
  %79 = and i32 %2, 128
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.dst_entry, ptr %78, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #12, !srcloc !10
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 0, i32 1, ptr elementtype(i32) %82) #12, !srcloc !11
  %84 = extractvalue { i32, i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  br label %88

87:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #12
  br label %88

88:                                               ; preds = %87, %86, %75, %74, %70, %62, %44
  %89 = phi ptr [ %78, %75 ], [ %52, %62 ], [ null, %44 ], [ null, %70 ], [ null, %74 ], [ %78, %86 ], [ %78, %87 ]
  %90 = phi i32 [ %77, %75 ], [ %65, %62 ], [ -11, %44 ], [ -11, %70 ], [ -11, %74 ], [ %77, %86 ], [ %77, %87 ]
  %91 = getelementptr inbounds %struct.fib6_result, ptr %8, i32 0, i32 4
  store ptr %89, ptr %91, align 4
  br label %92

92:                                               ; preds = %88, %33, %27, %21, %16, %15, %14, %13
  %93 = phi i32 [ %90, %88 ], [ -22, %15 ], [ -13, %14 ], [ -101, %13 ], [ -11, %16 ], [ %36, %33 ], [ -11, %27 ], [ -11, %21 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @fib6_rule_suppress(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.fib_lookup_arg, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fib6_result, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ null, %9 ]
  %17 = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 3, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 18
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 17
  %24 = load i32, ptr %23, align 8
  %25 = icmp ne i32 %24, -1
  %26 = icmp ne ptr %16, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 35
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %24
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %15
  %33 = and i32 %1, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 8
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %32
  tail call void @dst_release(ptr noundef nonnull %7) #12
  br label %40

40:                                               ; preds = %39, %35, %28, %22, %3
  %41 = phi i1 [ false, %3 ], [ false, %28 ], [ false, %22 ], [ true, %35 ], [ true, %39 ]
  ret i1 %41
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @fib6_rule_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %10 = lshr i32 %5, 5
  %11 = icmp ult i32 %5, 32
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = shl nuw nsw i32 %10, 2
  %14 = tail call i32 @bcmp(ptr %9, ptr %8, i32 %13) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %117

16:                                               ; preds = %12, %7
  %17 = and i32 %5, 31
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = getelementptr i32, ptr %9, i32 %10
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i32, ptr %8, i32 %10
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, %21
  %25 = sub nuw nsw i32 32, %17
  %26 = shl nsw i32 -1, %25
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  %28 = and i32 %24, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %117

30:                                               ; preds = %19, %16, %3
  %31 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %30
  %36 = and i32 %2, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  %40 = lshr i32 %33, 5
  %41 = icmp ult i32 %33, 32
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = shl nuw nsw i32 %40, 2
  %44 = tail call i32 @bcmp(ptr %39, ptr %31, i32 %43) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %117

46:                                               ; preds = %42, %38
  %47 = and i32 %33, 31
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %46
  %50 = getelementptr i32, ptr %39, i32 %40
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i32, ptr %31, i32 %40
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %53, %51
  %55 = sub nuw nsw i32 32, %47
  %56 = shl nsw i32 -1, %55
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  %58 = and i32 %54, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %117

60:                                               ; preds = %35
  %61 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65536
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %117, label %65

65:                                               ; preds = %60, %49, %46, %30
  %66 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 3
  %67 = load i8, ptr %66, align 8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 3
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 61455
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #12
  %74 = lshr exact i32 %73, 20
  %75 = trunc i32 %74 to i8
  %76 = icmp eq i8 %67, %75
  br i1 %76, label %77, label %117

77:                                               ; preds = %69, %65
  %78 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 10
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %83 = load i8, ptr %82, align 2
  %84 = icmp eq i8 %79, %83
  br i1 %84, label %85, label %117

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 22
  %87 = load i16, ptr %86, align 2
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 22, i32 1
  %91 = load i16, ptr %90, align 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  %95 = getelementptr inbounds %struct.anon.134, ptr %94, i32 0, i32 1
  %96 = load i16, ptr %95, align 2
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #12
  %98 = icmp ult i16 %97, %87
  %99 = icmp ugt i16 %97, %91
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %117, label %101

101:                                              ; preds = %93, %89, %85
  %102 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 23
  %103 = load i16, ptr %102, align 2
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 23, i32 1
  %107 = load i16, ptr %106, align 2
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  %111 = load i16, ptr %110, align 4
  %112 = tail call i16 @llvm.bswap.i16(i16 %111) #12
  %113 = icmp ult i16 %112, %103
  %114 = icmp ugt i16 %112, %107
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %117, label %116

116:                                              ; preds = %109, %105, %101
  br label %117

117:                                              ; preds = %116, %109, %93, %81, %69, %60, %49, %42, %19, %12
  %118 = phi i32 [ 1, %116 ], [ 0, %60 ], [ 0, %69 ], [ 0, %81 ], [ 0, %12 ], [ 0, %19 ], [ 0, %42 ], [ 0, %49 ], [ 0, %93 ], [ 0, %109 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib6_rule_configure(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) #0 {
  %6 = alloca %struct.in6_addr, align 4
  %7 = alloca %struct.in6_addr, align 4
  %8 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 7
  %9 = load i8, ptr %8, align 8
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 8
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib6_rule_configure.__msg) #12
  %20 = icmp eq ptr %4, null
  br i1 %20, label %80, label %21

21:                                               ; preds = %19
  store ptr @fib6_rule_configure.__msg, ptr %4, align 4
  br label %80

22:                                               ; preds = %15
  %23 = tail call ptr @fib6_new_table(ptr noundef nonnull @init_net, i32 noundef %17) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %80, label %25

25:                                               ; preds = %22, %11, %5
  %26 = getelementptr inbounds %struct.fib_rule_hdr, ptr %2, i32 0, i32 2
  %27 = load i8, ptr %26, align 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %31 = getelementptr ptr, ptr %3, i32 2
  %32 = load ptr, ptr %31, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #12, !alias.scope !13, !annotation !16
  %33 = call i32 @nla_memcpy(ptr noundef nonnull %6, ptr noundef %32, i32 noundef 16) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %34

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds %struct.fib_rule_hdr, ptr %2, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %40 = getelementptr ptr, ptr %3, i32 1
  %41 = load ptr, ptr %40, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #12, !alias.scope !17, !annotation !16
  %42 = call i32 @nla_memcpy(ptr noundef nonnull %7, ptr noundef %41, i32 noundef 16) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %39, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i8, ptr %26, align 2
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 1, i32 1
  store i32 %45, ptr %46, align 8
  %47 = load i8, ptr %35, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 2, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fib_rule_hdr, ptr %2, i32 0, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 3
  store i8 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 1
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %79, label %56

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 10
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 22
  %62 = load i16, ptr %61, align 2
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 22, i32 1
  %66 = load i16, ptr %65, align 2
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64, %60
  %69 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 23
  %70 = load i16, ptr %69, align 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 23, i32 1
  %74 = load i16, ptr %73, align 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72, %64, %56
  %77 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 19), align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 19), align 4
  br label %79

79:                                               ; preds = %76, %72, %68, %43
  store i8 1, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 18), align 1
  br label %80

80:                                               ; preds = %79, %22, %21, %19
  %81 = phi i32 [ 0, %79 ], [ -22, %21 ], [ -22, %19 ], [ -105, %22 ]
  ret i32 %81
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fib6_rule_delete(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 10
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 22
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 22, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 23
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.fib_rule, ptr %0, i32 0, i32 23, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27, %19, %11
  %32 = add i32 %5, -1
  store i32 %32, ptr %4, align 4
  br label %33

33:                                               ; preds = %31, %27, %23, %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib6_rule_compare(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.fib_rule_hdr, ptr %1, i32 0, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, %8
  br i1 %11, label %12, label %48

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %struct.fib_rule_hdr, ptr %1, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = zext i8 %14 to i32
  %18 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %21, label %48

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.fib_rule_hdr, ptr %1, i32 0, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 3
  %27 = load i8, ptr %26, align 8
  %28 = icmp eq i8 %27, %23
  br i1 %28, label %29, label %48

29:                                               ; preds = %25, %21
  br i1 %6, label %38, label %30

30:                                               ; preds = %29
  %31 = getelementptr ptr, ptr %2, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 1
  %34 = tail call i32 @nla_memcmp(ptr noundef %32, ptr noundef %33, i32 noundef 16) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i8, ptr %13, align 1
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i8 [ %37, %36 ], [ %14, %29 ]
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr ptr, ptr %2, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 2
  %45 = tail call i32 @nla_memcmp(ptr noundef %43, ptr noundef %44, i32 noundef 16) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %38
  br label %48

48:                                               ; preds = %47, %41, %30, %25, %16, %7
  %49 = phi i32 [ 1, %47 ], [ 0, %7 ], [ 0, %16 ], [ 0, %25 ], [ 0, %30 ], [ 0, %41 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib6_rule_fill(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds %struct.fib_rule_hdr, ptr %2, i32 0, i32 1
  store i8 %6, ptr %7, align 1
  %8 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.fib_rule_hdr, ptr %2, i32 0, i32 2
  store i8 %11, ptr %12, align 2
  %13 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 3
  %14 = load i8, ptr %13, align 8
  %15 = getelementptr inbounds %struct.fib_rule_hdr, ptr %2, i32 0, i32 3
  store i8 %14, ptr %15, align 1
  %16 = load i32, ptr %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.fib6_rule, ptr %0, i32 0, i32 2
  %20 = tail call i32 @nla_put(ptr noundef %1, i32 noundef 1, i32 noundef 16, ptr noundef %19) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %3
  %23 = load i32, ptr %9, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 16, ptr noundef %8) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %18
  br label %29

29:                                               ; preds = %28, %25, %22
  %30 = phi i32 [ -105, %28 ], [ 0, %25 ], [ 0, %22 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @fib6_rule_nlmsg_payload(ptr nocapture noundef readnone %0) #8 {
  ret i32 40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib6_get_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fib6_rule_saddr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.in6_addr, align 4
  %7 = getelementptr inbounds %struct.fib_rule, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65536
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.fib6_rule, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.fib6_rule, ptr %1, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = and i32 %2, 4
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %17, %15
  br i1 %18, label %19, label %50

19:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !16
  %20 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  %21 = lshr i32 %2, 3
  %22 = and i32 %21, 7
  %23 = call i32 @ipv6_dev_get_saddr(ptr noundef %0, ptr noundef %4, ptr noundef %20, i32 noundef %22, ptr noundef nonnull %6) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load i32, ptr %13, align 8
  %27 = lshr i32 %26, 5
  %28 = icmp ult i32 %26, 32
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = shl nuw nsw i32 %27, 2
  %31 = call i32 @bcmp(ptr nonnull %6, ptr %12, i32 %30) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29, %25
  %34 = and i32 %26, 31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = getelementptr i32, ptr %6, i32 %27
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i32, ptr %12, i32 %27
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, %38
  %42 = sub nuw nsw i32 32, %34
  %43 = shl nsw i32 -1, %42
  %44 = call i32 @llvm.bswap.i32(i32 %43) #12
  %45 = and i32 %41, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36, %33
  %48 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %48, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %50

49:                                               ; preds = %36, %29, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %50

50:                                               ; preds = %49, %47, %11, %5
  %51 = phi i32 [ -11, %49 ], [ 0, %47 ], [ 0, %11 ], [ 0, %5 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib6_new_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2148194982}
!10 = !{i64 694089, i64 2148184060, i64 2148184086, i64 2148184133, i64 2148184155, i64 2148184183, i64 2148184203}
!11 = !{i64 680658, i64 680683, i64 680705, i64 680721, i64 680733, i64 680753, i64 680777, i64 680793, i64 680805}
!12 = !{i64 2148195108}
!13 = !{!14}
!14 = distinct !{!14, !15, !"nla_get_in6_addr: argument 0"}
!15 = distinct !{!15, !"nla_get_in6_addr"}
!16 = !{!"auto-init"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"nla_get_in6_addr: argument 0"}
!19 = distinct !{!19, !"nla_get_in6_addr"}
