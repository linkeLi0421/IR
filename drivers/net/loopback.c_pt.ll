; ModuleID = '/llk/IR/drivers/net/loopback.c_pt.bc'
source_filename = "../drivers/net/loopback.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blackhole_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22blackhole_netdev\22\09\09\09\09\09"
module asm "__kstrtabns_blackhole_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_lstats_read:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_lstats_read\22\09\09\09\09\09"
module asm "__kstrtabns_dev_lstats_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.57, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.57 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.137, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.137 = type { ptr }
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
%struct.netdevice_tracker = type {}
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [12 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@blackhole_netdev = dso_local global ptr null, align 4
@__kstrtab_blackhole_netdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_blackhole_netdev = external dso_local constant [0 x i8], align 1
@__ksymtab_blackhole_netdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blackhole_netdev to i32), ptr @__kstrtab_blackhole_netdev, ptr @__kstrtabns_blackhole_netdev }, section "___ksymtab+blackhole_netdev", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_dev_lstats_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_lstats_read = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_lstats_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_lstats_read to i32), ptr @__kstrtab_dev_lstats_read, ptr @__kstrtabns_dev_lstats_read }, section "___ksymtab+dev_lstats_read", align 4
@loopback_net_ops = dso_local local_unnamed_addr global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @loopback_net_init, ptr null, ptr null, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@__initcall__kmod_loopback__450_278_blackhole_netdev_init6 = internal global ptr @blackhole_netdev_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@.str.1 = private unnamed_addr constant [44 x i8] c"loopback: Failed to register netdevice: %d\0A\00", align 1
@loopback_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @always_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@eth_header_ops = external dso_local constant %struct.header_ops, align 4
@loopback_ops = internal constant %struct.net_device_ops { ptr @loopback_dev_init, ptr null, ptr null, ptr null, ptr @loopback_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @loopback_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"blackhole_dev\00", align 1
@blackhole_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @blackhole_netdev_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"\014%s(): Dropping skb.\0A\00", align 1
@__func__.blackhole_netdev_xmit = private unnamed_addr constant [22 x i8] c"blackhole_netdev_xmit\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_loopback__450_278_blackhole_netdev_init6, ptr @__ksymtab_blackhole_netdev, ptr @__ksymtab_dev_lstats_read], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_lstats_read(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  store i64 0, ptr %1, align 8
  store i64 0, ptr %2, align 8
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  br label %9

9:                                                ; preds = %33, %7
  %10 = phi i32 [ %4, %7 ], [ %38, %33 ]
  %11 = load ptr, ptr %8, align 8
  %12 = ptrtoint ptr %11 to i32
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.pcpu_lstats, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.pcpu_lstats, ptr %16, i32 0, i32 1
  br label %19

19:                                               ; preds = %27, %9
  %20 = load volatile i32, ptr %17, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !10
  %24 = load volatile i32, ptr %17, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %20, %19 ], [ %24, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %29 = load i64, ptr %16, align 8
  %30 = load i64, ptr %18, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %31 = load volatile i32, ptr %17, align 4
  %32 = icmp eq i32 %31, %28
  br i1 %32, label %33, label %19

33:                                               ; preds = %27
  %34 = load i64, ptr %2, align 8
  %35 = add i64 %34, %30
  store i64 %35, ptr %2, align 8
  %36 = load i64, ptr %1, align 8
  %37 = add i64 %36, %29
  store i64 %37, ptr %1, align 8
  %38 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #10
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %9, label %41

41:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @loopback_net_init(ptr nocapture noundef writeonly %0) #2 section ".init.text" {
  %2 = tail call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @loopback_setup, i32 noundef 1, i32 noundef 1) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @register_netdev(ptr noundef nonnull %2) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11, !prof !13

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/loopback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 27
  store ptr %2, ptr %13, align 64
  ret i32 0

14:                                               ; preds = %4
  tail call void @free_netdev(ptr noundef nonnull %2) #11
  br label %15

15:                                               ; preds = %14, %1
  %16 = phi i32 [ %5, %14 ], [ -12, %1 ]
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, i32 noundef %16) #12
  unreachable
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @blackhole_netdev_init() #2 section ".init.text" {
  %1 = tail call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull @.str.4, i8 noundef zeroext 0, ptr noundef nonnull @blackhole_netdev_setup, i32 noundef 1, i32 noundef 1) #11
  store ptr %1, ptr @blackhole_netdev, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  tail call void @rtnl_lock() #11
  %4 = load ptr, ptr @blackhole_netdev, align 4
  tail call void @dev_init_scheduler(ptr noundef %4) #11
  %5 = load ptr, ptr @blackhole_netdev, align 4
  tail call void @dev_activate(ptr noundef %5) #11
  tail call void @rtnl_unlock() #11
  %6 = load ptr, ptr @blackhole_netdev, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %8 = load i32, ptr %7, align 8
  %9 = or i32 %8, 65
  store i32 %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %3, %0
  %11 = phi i32 [ 0, %3 ], [ -12, %0 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @loopback_setup(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 65536, ptr %2, align 4
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  store i16 14, ptr %3, align 2
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 33
  store i8 14, ptr %4, align 2
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  store i8 6, ptr %5, align 1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  store i16 772, ptr %6, align 16
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  store i32 8, ptr %7, align 8
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %9 = load i64, ptr %8, align 16
  %10 = and i64 %9, -688161
  %11 = or i64 %10, 557056
  store i64 %11, ptr %8, align 16
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 24
  store i64 26845446144, ptr %12, align 8
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  store i64 5593123075177, ptr %13, align 16
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  store ptr @loopback_ethtool_ops, ptr %14, align 8
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 44
  store ptr @eth_header_ops, ptr %15, align 16
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  store ptr @loopback_ops, ptr %16, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 105
  store i8 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 106
  store ptr @loopback_dev_free, ptr %18, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @loopback_dev_free(ptr nocapture noundef readonly %0) #0 {
  store ptr null, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  %3 = load ptr, ptr %2, align 8
  tail call void @free_percpu(ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @always_on(ptr nocapture noundef readnone %0) #6 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loopback_dev_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 32, i32 noundef 16, i32 noundef 3264) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = ptrtoint ptr %2 to i32
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %6, %8 ], [ %17, %10 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %9
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.pcpu_lstats, ptr %15, i32 0, i32 2
  store i32 0, ptr %16, align 4
  %17 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #10
  %18 = icmp ult i32 %17, %5
  br i1 %18, label %10, label %19

19:                                               ; preds = %10, %4, %1
  %20 = phi i32 [ -12, %1 ], [ 0, %4 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  store ptr %2, ptr %21, align 8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loopback_xmit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #11
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  store i64 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  tail call void %13(ptr noundef %0) #11
  store ptr null, ptr %12, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr null, ptr %16, align 4
  br label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !13

21:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #11, !srcloc !15
  unreachable

22:                                               ; preds = %17, %15
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  %27 = icmp ugt i32 %24, 1
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = and i32 %24, -2
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #11, !srcloc !17
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 0, i32 1, ptr elementtype(i32) %32) #11, !srcloc !18
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi ptr [ null, %29 ], [ %31, %36 ]
  %39 = ptrtoint ptr %38 to i32
  store i32 %39, ptr %23, align 8
  %40 = icmp ne ptr %38, null
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %43 = load i16, ptr %42, align 2
  %44 = lshr i16 %43, 14
  %45 = trunc i16 %44 to i8
  %46 = and i8 %45, 1
  %47 = or i8 %46, %41
  %48 = zext i8 %47 to i16
  %49 = shl nuw nsw i16 %48, 14
  %50 = and i16 %43, -16385
  %51 = or i16 %49, %50
  store i16 %51, ptr %42, align 2
  br label %52

52:                                               ; preds = %37, %22
  %53 = tail call zeroext i16 @eth_type_trans(ptr noundef %0, ptr noundef %1) #11
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = tail call i32 @netif_rx(ptr noundef %0) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %79, !prof !13

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 110
  %61 = load ptr, ptr %60, align 8
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %64 = inttoptr i32 %63 to ptr
  %65 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %64) #8, !srcloc !20
  %66 = add i32 %65, %62
  %67 = inttoptr i32 %66 to ptr
  %68 = getelementptr inbounds %struct.pcpu_lstats, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !21
  %71 = getelementptr inbounds %struct.pcpu_lstats, ptr %67, i32 0, i32 1
  %72 = zext i32 %56 to i64
  %73 = load i64, ptr %71, align 8
  %74 = add i64 %73, %72
  store i64 %74, ptr %71, align 8
  %75 = load i64, ptr %67, align 8
  %76 = add i64 %75, 1
  store i64 %76, ptr %67, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !22
  %77 = load i32, ptr %68, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %68, align 4
  br label %79

79:                                               ; preds = %59, %52
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @loopback_get_stats64(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %40

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  br label %8

8:                                                ; preds = %34, %6
  %9 = phi i64 [ 0, %6 ], [ %36, %34 ]
  %10 = phi i64 [ 0, %6 ], [ %35, %34 ]
  %11 = phi i32 [ %3, %6 ], [ %37, %34 ]
  %12 = load ptr, ptr %7, align 8
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.pcpu_lstats, ptr %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.pcpu_lstats, ptr %17, i32 0, i32 1
  br label %20

20:                                               ; preds = %28, %8
  %21 = load volatile i32, ptr %18, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %24, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !10
  %25 = load volatile i32, ptr %18, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %21, %20 ], [ %25, %24 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %30 = load i64, ptr %17, align 8
  %31 = load i64, ptr %19, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %32 = load volatile i32, ptr %18, align 4
  %33 = icmp eq i32 %32, %29
  br i1 %33, label %34, label %20

34:                                               ; preds = %28
  %35 = add i64 %31, %10
  %36 = add i64 %30, %9
  %37 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #10
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %8, label %40

40:                                               ; preds = %34, %2
  %41 = phi i64 [ 0, %2 ], [ %36, %34 ]
  %42 = phi i64 [ 0, %2 ], [ %35, %34 ]
  store i64 %41, ptr %1, align 8
  %43 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 1
  store i64 %41, ptr %43, align 8
  %44 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 2
  store i64 %42, ptr %44, align 8
  %45 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 3
  store i64 %42, ptr %45, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @blackhole_netdev_setup(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 68, ptr %2, align 4
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  store i16 14, ptr %3, align 2
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 33
  store i8 14, ptr %4, align 2
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  store i8 6, ptr %5, align 1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  store i16 772, ptr %6, align 16
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  store i32 8, ptr %7, align 8
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %9 = load i64, ptr %8, align 16
  %10 = and i64 %9, -688161
  %11 = or i64 %10, 557056
  store i64 %11, ptr %8, align 16
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 24
  store i64 26845446144, ptr %12, align 8
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  store i64 5593123075177, ptr %13, align 16
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 44
  store ptr null, ptr %15, align 16
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  store ptr @blackhole_netdev_ops, ptr %16, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 105
  store i8 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 106
  store ptr null, ptr %18, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_init_scheduler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_activate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blackhole_netdev_xmit(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #11
  %3 = tail call i32 @net_ratelimit() #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.blackhole_netdev_xmit) #14
  br label %7

7:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

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
!9 = !{i64 2152170802}
!10 = !{i64 2152170644}
!11 = !{i64 2152170946}
!12 = !{i64 2149387117}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2155903948, i64 2155904435, i64 2155903985, i64 2155904041, i64 2155904075, i64 2155904099, i64 2155904140, i64 2155904161, i64 2155904189, i64 2155904223}
!15 = !{i64 2153559691, i64 2153560179, i64 2153559728, i64 2153559784, i64 2153559818, i64 2153559842, i64 2153559883, i64 2153559904, i64 2153559932, i64 2153559966}
!16 = !{i64 2147917313}
!17 = !{i64 415623, i64 2147905594, i64 2147905620, i64 2147905667, i64 2147905689, i64 2147905717, i64 2147905737}
!18 = !{i64 402192, i64 402217, i64 402239, i64 402255, i64 402267, i64 402287, i64 402311, i64 402327, i64 402339}
!19 = !{i64 2147917439}
!20 = !{i64 329562}
!21 = !{i64 2149387416}
!22 = !{i64 2149387717}
