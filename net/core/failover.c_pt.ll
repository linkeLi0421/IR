; ModuleID = '/llk/IR/net/core/failover.c_pt.bc'
source_filename = "../net/core/failover.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_failover_slave_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22failover_slave_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_failover_slave_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_failover_register:\09\09\09\09\09"
module asm "\09.asciz \09\22failover_register\22\09\09\09\09\09"
module asm "__kstrtabns_failover_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_failover_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22failover_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_failover_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.59, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.64, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.64 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.105, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
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
%struct.netdevice_tracker = type {}
%struct.failover = type { %struct.list_head, ptr, %struct.netdevice_tracker, ptr }
%struct.failover_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_lag_upper_info = type { i32, i32 }

@failover_slave_unregister.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"net/core/failover.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@__kstrtab_failover_slave_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_failover_slave_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_failover_slave_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @failover_slave_unregister to i32), ptr @__kstrtab_failover_slave_unregister, ptr @__kstrtabns_failover_slave_unregister }, section "___ksymtab_gpl+failover_slave_unregister", align 4
@failover_lock = internal global %struct.spinlock zeroinitializer, align 4
@failover_list = internal global %struct.list_head { ptr @failover_list, ptr @failover_list }, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failover master:%s registered\0A\00", align 1
@__kstrtab_failover_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_failover_register = external dso_local constant [0 x i8], align 1
@__ksymtab_failover_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @failover_register to i32), ptr @__kstrtab_failover_register, ptr @__kstrtabns_failover_register }, section "___ksymtab_gpl+failover_register", align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failover master:%s unregistered\0A\00", align 1
@__kstrtab_failover_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_failover_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_failover_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @failover_unregister to i32), ptr @__kstrtab_failover_unregister, ptr @__kstrtabns_failover_unregister }, section "___ksymtab_gpl+failover_unregister", align 4
@__initcall__kmod_failover__330_305_failover_init6 = internal global ptr @failover_init, section ".initcall6.init", align 4
@failover_notifier = internal global %struct.notifier_block { ptr @failover_event, ptr null, i32 0 }, align 4
@__exitcall_failover_exit = internal global ptr @failover_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description331 = internal constant [63 x i8] c"failover.description=Generic failover infrastructure/interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [32 x i8] c"failover.file=net/core/failover\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [24 x i8] c"failover.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_net = external dso_local global %struct.net, align 64
@failover_slave_register.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"can not register failover rx handler (err = %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"can not set failover device %s (err = %d)\0A\00", align 1
@failover_slave_link_change.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@failover_slave_name_change.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_failover_exit, ptr @__initcall__kmod_failover__330_305_failover_init6, ptr @__ksymtab_failover_register, ptr @__ksymtab_failover_slave_unregister, ptr @__ksymtab_failover_unregister, ptr @failover_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @failover_slave_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %3 = load i64, ptr %2, align 16
  %4 = and i64 %3, 268435456
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %64, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @rtnl_is_locked() #7
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @failover_slave_unregister.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %6
  store i1 true, ptr @failover_slave_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 112) #7
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 49
  tail call void @_raw_spin_lock(ptr noundef nonnull @failover_lock) #7
  %15 = getelementptr %struct.net_device, ptr %0, i32 0, i32 49, i32 4
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi ptr [ @failover_list, %13 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @failover_list
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.failover, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 49
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %14, align 4
  %26 = xor i32 %25, %24
  %27 = getelementptr %struct.net_device, ptr %22, i32 0, i32 49, i32 4
  %28 = load i16, ptr %27, align 2
  %29 = load i16, ptr %15, align 2
  %30 = xor i16 %29, %28
  %31 = zext i16 %30 to i32
  %32 = or i32 %26, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %16

34:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %35 = load i16, ptr @failover_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @failover_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %64

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.failover, ptr %18, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %40 = load i16, ptr @failover_lock, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr @failover_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %42 = icmp eq ptr %22, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %37
  %44 = icmp eq ptr %39, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.failover_ops, ptr %39, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = tail call i32 %47(ptr noundef %0, ptr noundef nonnull %22) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49, %45
  tail call void @netdev_rx_handler_unregister(ptr noundef %0) #7
  tail call void @netdev_upper_dev_unlink(ptr noundef %0, ptr noundef nonnull %22) #7
  %53 = load i64, ptr %2, align 16
  %54 = and i64 %53, -1342177281
  store i64 %54, ptr %2, align 16
  %55 = getelementptr inbounds %struct.failover_ops, ptr %39, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = tail call i32 %56(ptr noundef %0, ptr noundef nonnull %22) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %64

61:                                               ; preds = %43
  tail call void @netdev_rx_handler_unregister(ptr noundef %0) #7
  tail call void @netdev_upper_dev_unlink(ptr noundef %0, ptr noundef nonnull %22) #7
  %62 = load i64, ptr %2, align 16
  %63 = and i64 %62, -1342177281
  store i64 %63, ptr %2, align 16
  br label %64

64:                                               ; preds = %61, %58, %52, %49, %37, %34, %1
  br label %65

65:                                               ; preds = %64, %58
  %66 = phi i32 [ 0, %64 ], [ 1, %58 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_handler_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @failover_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %4 = load i16, ptr %3, align 16
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %64

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 16) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %64, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %11 = getelementptr inbounds %struct.failover, ptr %8, i32 0, i32 3
  store volatile ptr %1, ptr %11, align 4
  %12 = icmp eq ptr %0, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !15
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #6, !srcloc !16
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #7, !srcloc !17
  br label %25

25:                                               ; preds = %13, %10
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %27 = load i64, ptr %26, align 16
  %28 = or i64 %27, 134217728
  store i64 %28, ptr %26, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %29 = getelementptr inbounds %struct.failover, ptr %8, i32 0, i32 1
  store volatile ptr %0, ptr %29, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @failover_lock) #7
  %30 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @failover_list, i32 0, i32 1), align 4
  store ptr %8, ptr getelementptr inbounds (%struct.list_head, ptr @failover_list, i32 0, i32 1), align 4
  store ptr @failover_list, ptr %8, align 8
  %31 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %8, ptr %30, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %32 = load i16, ptr @failover_lock, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr @failover_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  tail call void @rtnl_lock() #7
  %34 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %35 = icmp eq ptr %34, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %35, label %63, label %36

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 49
  %38 = getelementptr %struct.net_device, ptr %0, i32 0, i32 49, i32 4
  br label %39

39:                                               ; preds = %60, %36
  %40 = phi ptr [ %34, %36 ], [ %61, %60 ]
  %41 = getelementptr i8, ptr %40, i32 -40
  %42 = getelementptr i8, ptr %40, i32 72
  %43 = load i64, ptr %42, align 16
  %44 = and i64 %43, 134217728
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = getelementptr i8, ptr %40, i32 304
  %48 = load i32, ptr %37, align 4
  %49 = load i32, ptr %47, align 4
  %50 = xor i32 %49, %48
  %51 = load i16, ptr %38, align 2
  %52 = getelementptr i8, ptr %40, i32 308
  %53 = load i16, ptr %52, align 2
  %54 = xor i16 %53, %51
  %55 = zext i16 %54 to i32
  %56 = or i32 %50, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = tail call fastcc i32 @failover_slave_register(ptr noundef %41) #7
  br label %60

60:                                               ; preds = %58, %46, %39
  %61 = load ptr, ptr %40, align 8
  %62 = icmp eq ptr %61, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %62, label %63, label %39

63:                                               ; preds = %60, %25
  tail call void @rtnl_unlock() #7
  br label %64

64:                                               ; preds = %63, %6, %2
  %65 = phi ptr [ %8, %63 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %65
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @failover_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.failover, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %5 = load i64, ptr %4, align 16
  %6 = and i64 %5, -134217729
  store i64 %6, ptr %4, align 16
  %7 = icmp eq ptr %3, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !15
  %10 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 99
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #6, !srcloc !16
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %17, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #7, !srcloc !17
  br label %20

20:                                               ; preds = %8, %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @failover_lock) #7
  %21 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %25 = load i16, ptr @failover_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @failover_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @failover_init() #4 section ".init.text" {
  %1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @failover_notifier) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @failover_exit() #4 section ".exit.text" {
  %1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @failover_notifier) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @failover_slave_register(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.netdev_lag_upper_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !annotation !19
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %4 = load i16, ptr %3, align 16
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %76

6:                                                ; preds = %1
  %7 = tail call i32 @rtnl_is_locked() #7
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @failover_slave_register.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %6
  store i1 true, ptr @failover_slave_register.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 56) #7
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 49
  tail call void @_raw_spin_lock(ptr noundef nonnull @failover_lock) #7
  %15 = getelementptr %struct.net_device, ptr %0, i32 0, i32 49, i32 4
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi ptr [ @failover_list, %13 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @failover_list
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.failover, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 49
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %14, align 4
  %26 = xor i32 %25, %24
  %27 = getelementptr %struct.net_device, ptr %22, i32 0, i32 49, i32 4
  %28 = load i16, ptr %27, align 2
  %29 = load i16, ptr %15, align 2
  %30 = xor i16 %29, %28
  %31 = zext i16 %30 to i32
  %32 = or i32 %26, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %16

34:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %35 = load i16, ptr @failover_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @failover_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %76

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.failover, ptr %18, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %40 = load i16, ptr @failover_lock, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr @failover_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %42 = icmp eq ptr %22, null
  br i1 %42, label %76, label %43

43:                                               ; preds = %37
  %44 = icmp eq ptr %39, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %39, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call i32 %46(ptr noundef %0, ptr noundef nonnull %22) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %48, %45, %43
  %52 = getelementptr inbounds %struct.failover_ops, ptr %39, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @netdev_rx_handler_register(ptr noundef %0, ptr noundef %53, ptr noundef nonnull %22) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %54) #9
  br label %76

57:                                               ; preds = %51
  store i32 4, ptr %2, align 8
  %58 = call i32 @netdev_master_upper_dev_link(ptr noundef %0, ptr noundef nonnull %22, ptr noundef null, ptr noundef nonnull %2, ptr noundef null) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %22, i32 noundef %58) #9
  br label %75

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %63 = load i64, ptr %62, align 16
  %64 = or i64 %63, 1342177280
  store i64 %64, ptr %62, align 16
  br i1 %44, label %72, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.failover_ops, ptr %39, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = call i32 %67(ptr noundef %0, ptr noundef nonnull %22) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69, %65, %61
  call void @netdev_upper_dev_unlink(ptr noundef %0, ptr noundef nonnull %22) #7
  %73 = load i64, ptr %62, align 16
  %74 = and i64 %73, -1342177281
  store i64 %74, ptr %62, align 16
  br label %75

75:                                               ; preds = %72, %60
  call void @netdev_rx_handler_unregister(ptr noundef %0) #7
  br label %76

76:                                               ; preds = %75, %69, %56, %48, %37, %34, %1
  %77 = phi i32 [ 1, %69 ], [ 0, %48 ], [ 0, %37 ], [ 0, %1 ], [ 0, %75 ], [ 0, %56 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_rx_handler_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_master_upper_dev_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @failover_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 15
  %6 = load i64, ptr %5, align 16
  %7 = and i64 %6, 134217728
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %124

9:                                                ; preds = %3
  switch i32 %1, label %124 [
    i32 5, label %10
    i32 6, label %12
    i32 1, label %14
    i32 2, label %14
    i32 4, label %14
    i32 11, label %69
  ]

10:                                               ; preds = %9
  %11 = tail call fastcc i32 @failover_slave_register(ptr noundef %4)
  br label %124

12:                                               ; preds = %9
  %13 = tail call i32 @failover_slave_unregister(ptr noundef %4)
  br label %124

14:                                               ; preds = %9, %9, %9
  %15 = and i64 %6, 268435456
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %68, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @rtnl_is_locked() #7
  %19 = icmp eq i32 %18, 0
  %20 = load i1, ptr @failover_slave_link_change.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %17
  store i1 true, ptr @failover_slave_link_change.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 143) #7
  br label %24

24:                                               ; preds = %23, %17
  %25 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 49
  tail call void @_raw_spin_lock(ptr noundef nonnull @failover_lock) #7
  %26 = getelementptr %struct.net_device, ptr %4, i32 0, i32 49, i32 4
  br label %27

27:                                               ; preds = %31, %24
  %28 = phi ptr [ @failover_list, %24 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @failover_list
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.failover, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 49
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %25, align 4
  %37 = xor i32 %36, %35
  %38 = getelementptr %struct.net_device, ptr %33, i32 0, i32 49, i32 4
  %39 = load i16, ptr %38, align 2
  %40 = load i16, ptr %26, align 2
  %41 = xor i16 %40, %39
  %42 = zext i16 %41 to i32
  %43 = or i32 %37, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %27

45:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %46 = load i16, ptr @failover_lock, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr @failover_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %68

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.failover, ptr %29, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %51 = load i16, ptr @failover_lock, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr @failover_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %53 = icmp eq ptr %33, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 6
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  %59 = icmp ne ptr %50, null
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.failover_ops, ptr %50, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = tail call i32 %63(ptr noundef %4, ptr noundef nonnull %33) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %124, label %68

68:                                               ; preds = %65, %61, %54, %48, %45, %14
  br label %124

69:                                               ; preds = %9
  %70 = and i64 %6, 268435456
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %123, label %72

72:                                               ; preds = %69
  %73 = tail call i32 @rtnl_is_locked() #7
  %74 = icmp eq i32 %73, 0
  %75 = load i1, ptr @failover_slave_name_change.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %79, !prof !9

78:                                               ; preds = %72
  store i1 true, ptr @failover_slave_name_change.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 168) #7
  br label %79

79:                                               ; preds = %78, %72
  %80 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 49
  tail call void @_raw_spin_lock(ptr noundef nonnull @failover_lock) #7
  %81 = getelementptr %struct.net_device, ptr %4, i32 0, i32 49, i32 4
  br label %82

82:                                               ; preds = %86, %79
  %83 = phi ptr [ @failover_list, %79 ], [ %84, %86 ]
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, @failover_list
  br i1 %85, label %100, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.failover, ptr %84, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 49
  %90 = load i32, ptr %89, align 4
  %91 = load i32, ptr %80, align 4
  %92 = xor i32 %91, %90
  %93 = getelementptr %struct.net_device, ptr %88, i32 0, i32 49, i32 4
  %94 = load i16, ptr %93, align 2
  %95 = load i16, ptr %81, align 2
  %96 = xor i16 %95, %94
  %97 = zext i16 %96 to i32
  %98 = or i32 %92, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %82

100:                                              ; preds = %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %101 = load i16, ptr @failover_lock, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr @failover_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %123

103:                                              ; preds = %86
  %104 = getelementptr inbounds %struct.failover, ptr %84, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %106 = load i16, ptr @failover_lock, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr @failover_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %108 = icmp eq ptr %88, null
  br i1 %108, label %123, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 6
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  %114 = icmp ne ptr %105, null
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.failover_ops, ptr %105, i32 0, i32 5
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = tail call i32 %118(ptr noundef %4, ptr noundef nonnull %88) #7
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120, %116, %109, %103, %100, %69
  br label %124

124:                                              ; preds = %123, %120, %68, %65, %12, %10, %9, %3
  %125 = phi i32 [ %13, %12 ], [ %11, %10 ], [ 0, %3 ], [ 0, %9 ], [ 0, %68 ], [ 1, %65 ], [ 0, %123 ], [ 1, %120 ]
  ret i32 %125
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!10 = !{i64 2148931985}
!11 = !{i64 2148927809}
!12 = !{i64 2148927884, i64 2148927911, i64 2148927958, i64 2148927980, i64 2148928008, i64 2148928028}
!13 = !{i64 2148954988}
!14 = !{i64 2154721928}
!15 = !{i64 453138, i64 453199}
!16 = !{i64 471838}
!17 = !{i64 456155}
!18 = !{i64 2154730183}
!19 = !{!"auto-init"}
