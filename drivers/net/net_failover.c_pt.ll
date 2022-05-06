; ModuleID = '/llk/IR/drivers/net/net_failover.c_pt.bc'
source_filename = "../drivers/net/net_failover.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_failover_create:\09\09\09\09\09"
module asm "\09.asciz \09\22net_failover_create\22\09\09\09\09\09"
module asm "__kstrtabns_net_failover_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_failover_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22net_failover_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_net_failover_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.failover_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.failover = type { %struct.list_head, ptr, %struct.netdevice_tracker, ptr }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.netdev_lag_lower_state_info = type { i8 }

@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate failover_netdev!\0A\00", align 1
@failover_dev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @net_failover_open, ptr @net_failover_close, ptr @net_failover_start_xmit, ptr @passthru_features_check, ptr @net_failover_select_queue, ptr null, ptr @net_failover_set_rx_mode, ptr null, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @net_failover_change_mtu, ptr null, ptr null, ptr @net_failover_get_stats, ptr null, ptr null, ptr null, ptr @net_failover_vlan_rx_add_vid, ptr @net_failover_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@failover_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @nfo_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfo_ethtool_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to register failover_dev!\0A\00", align 1
@net_failover_ops = internal global %struct.failover_ops { ptr @net_failover_slave_pre_register, ptr @net_failover_slave_register, ptr @net_failover_slave_pre_unregister, ptr @net_failover_slave_unregister, ptr @net_failover_slave_link_change, ptr @net_failover_slave_name_change, ptr @net_failover_handle_frame }, align 4
@__kstrtab_net_failover_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_failover_create = external dso_local constant [0 x i8], align 1
@__ksymtab_net_failover_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_failover_create to i32), ptr @__kstrtab_net_failover_create, ptr @__kstrtabns_net_failover_create }, section "___ksymtab_gpl+net_failover_create", align 4
@__kstrtab_net_failover_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_failover_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_net_failover_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_failover_destroy to i32), ptr @__kstrtab_net_failover_destroy, ptr @__kstrtabns_net_failover_destroy }, section "___ksymtab_gpl+net_failover_destroy", align 4
@__initcall__kmod_net_failover__384_831_net_failover_init6 = internal global ptr @net_failover_init, section ".initcall6.init", align 4
@__exitcall_net_failover_exit = internal global ptr @net_failover_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description385 = internal constant [65 x i8] c"net_failover.description=Failover driver for Paravirtual drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_file386 = internal constant [43 x i8] c"net_failover.file=drivers/net/net_failover\00", section ".modinfo", align 1
@__UNIQUE_ID_license387 = internal constant [28 x i8] c"net_failover.license=GPL v2\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"net_failover\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"%s attempting to register as slave dev when %s already present\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"unable to change mtu of %s to %u register failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Opening slave %s failed err:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failover %s slave:%s registered\0A\00", align 1
@net_failover_slave_unregister.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"drivers/net/net_failover.c\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"failover %s slave:%s unregistered\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_file386, ptr @__UNIQUE_ID_license387, ptr @__exitcall_net_failover_exit, ptr @__initcall__kmod_net_failover__384_831_net_failover_init6, ptr @__ksymtab_net_failover_create, ptr @__ksymtab_net_failover_destroy, ptr @net_failover_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @net_failover_create(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 592, i32 noundef 16, i32 noundef 16) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #17
  br label %41

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 111, i32 1
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 16
  store ptr @failover_dev_ops, ptr %9, align 8
  %10 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  store ptr @failover_ethtool_ops, ptr %10, align 8
  %11 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 15
  %12 = load i64, ptr %11, align 16
  %13 = and i64 %12, -530465
  %14 = or i64 %13, 528384
  store i64 %14, ptr %11, align 16
  %15 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  %16 = load i64, ptr %15, align 16
  %17 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 24
  store i64 266175465, ptr %17, align 8
  %18 = or i64 %16, 266187753
  store i64 %18, ptr %15, align 16
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %20 = load ptr, ptr %19, align 32
  %21 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 51
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  tail call void @dev_addr_mod(ptr noundef nonnull %4, i32 noundef 0, ptr noundef %20, i32 noundef %23) #16
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 30
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 30
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 31
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 31
  store i32 %28, ptr %29, align 4
  %30 = tail call i32 @register_netdev(ptr noundef nonnull %4) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #17
  br label %38

33:                                               ; preds = %7
  tail call void @netif_carrier_off(ptr noundef nonnull %4) #16
  %34 = tail call ptr @failover_register(ptr noundef nonnull %4, ptr noundef nonnull @net_failover_ops) #16
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = ptrtoint ptr %34 to i32
  tail call void @unregister_netdev(ptr noundef nonnull %4) #16
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %30, %32 ], [ %37, %36 ]
  tail call void @free_netdev(ptr noundef nonnull %4) #16
  %40 = inttoptr i32 %39 to ptr
  br label %41

41:                                               ; preds = %38, %33, %6
  %42 = phi ptr [ %40, %38 ], [ inttoptr (i32 -12 to ptr), %6 ], [ %34, %33 ]
  ret ptr %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @failover_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @net_failover_destroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.failover, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1408
  tail call void @netif_device_detach(ptr noundef %5) #16
  tail call void @rtnl_lock() #16
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @failover_slave_unregister(ptr noundef nonnull %7) #16
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr i8, ptr %5, i32 1412
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @failover_slave_unregister(ptr noundef nonnull %13) #16
  br label %17

17:                                               ; preds = %15, %11
  tail call void @failover_unregister(ptr noundef nonnull %0) #16
  tail call void @unregister_netdevice_queue(ptr noundef %5, ptr noundef null) #16
  tail call void @rtnl_unlock() #16
  tail call void @free_netdev(ptr noundef %5) #16
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @failover_slave_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @failover_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @net_failover_init() #4 section ".init.text" {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal void @net_failover_exit() #4 section ".exit.text" {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_failover_open(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @dev_open(ptr noundef nonnull %3, ptr noundef null) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %5, %1
  %9 = getelementptr i8, ptr %0, i32 1412
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @dev_open(ptr noundef nonnull %10, ptr noundef null) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %12, %8
  br i1 %4, label %25, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load volatile i32, ptr %17, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21, %16, %15
  br i1 %11, label %78, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %78, label %31

31:                                               ; preds = %26
  %32 = load volatile i32, ptr %27, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %31, %21
  tail call void @netif_carrier_on(ptr noundef %0) #16
  %36 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %78, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ 0, %39 ], [ %45, %41 ]
  %43 = load ptr, ptr %40, align 64
  %44 = getelementptr %struct.netdev_queue, ptr %43, i32 %42
  tail call void @netif_tx_wake_queue(ptr noundef %44) #16
  %45 = add nuw i32 %42, 1
  %46 = load i32, ptr %36, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %41, label %78

48:                                               ; preds = %12
  br i1 %4, label %50, label %49

49:                                               ; preds = %48
  tail call void @dev_close(ptr noundef nonnull %3) #16
  br label %50

50:                                               ; preds = %49, %48, %5
  %51 = phi i32 [ %6, %5 ], [ %13, %49 ], [ %13, %48 ]
  %52 = tail call ptr @llvm.thread.pointer() #16
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = add i32 %54, 512
  store volatile i32 %55, ptr %53, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %56 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %58) #16
  %59 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi i32 [ 0, %62 ], [ %72, %64 ]
  %66 = load ptr, ptr %63, align 64
  %67 = getelementptr %struct.netdev_queue, ptr %66, i32 %65, i32 9
  tail call void @_raw_spin_lock(ptr noundef %67) #16
  %68 = getelementptr %struct.netdev_queue, ptr %66, i32 %65, i32 10
  store volatile i32 %57, ptr %68, align 4
  %69 = getelementptr %struct.netdev_queue, ptr %66, i32 %65, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %69) #16
  store volatile i32 -1, ptr %68, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %70 = load i16, ptr %67, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %67, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %72 = add nuw i32 %65, 1
  %73 = load i32, ptr %59, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %64, label %75

75:                                               ; preds = %64, %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %76 = load i16, ptr %58, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  tail call fastcc void @local_bh_enable() #16
  br label %78

78:                                               ; preds = %75, %41, %35, %31, %26, %25
  %79 = phi i32 [ %51, %75 ], [ 0, %31 ], [ 0, %25 ], [ 0, %35 ], [ 0, %26 ], [ 0, %41 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_failover_close(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = tail call ptr @llvm.thread.pointer() #16
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = add i32 %5, 512
  store volatile i32 %6, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %7 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %23, %15 ]
  %17 = load ptr, ptr %14, align 64
  %18 = getelementptr %struct.netdev_queue, ptr %17, i32 %16, i32 9
  tail call void @_raw_spin_lock(ptr noundef %18) #16
  %19 = getelementptr %struct.netdev_queue, ptr %17, i32 %16, i32 10
  store volatile i32 %8, ptr %19, align 4
  %20 = getelementptr %struct.netdev_queue, ptr %17, i32 %16, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %20) #16
  store volatile i32 -1, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %21 = load i16, ptr %18, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %23 = add nuw i32 %16, 1
  %24 = load i32, ptr %10, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %15, label %26

26:                                               ; preds = %15, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %27 = load i16, ptr %9, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  tail call fastcc void @local_bh_enable() #16
  %29 = load ptr, ptr %2, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @dev_close(ptr noundef nonnull %29) #16
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr i8, ptr %0, i32 1412
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @dev_close(ptr noundef nonnull %34) #16
  br label %37

37:                                               ; preds = %36, %32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_failover_start_xmit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %11, %6, %2
  %16 = getelementptr i8, ptr %1, i32 1412
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load volatile i32, ptr %20, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %19, %15
  %29 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #16, !srcloc !14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #16, !srcloc !15
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  br label %38

31:                                               ; preds = %24, %11
  %32 = phi ptr [ %4, %11 ], [ %17, %24 ]
  %33 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %35 = load i16, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  store i16 %35, ptr %36, align 4
  %37 = tail call i32 @dev_queue_xmit(ptr noundef %0) #16
  br label %38

38:                                               ; preds = %31, %28
  %39 = phi i32 [ %37, %31 ], [ 0, %28 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @passthru_features_check(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @net_failover_select_queue(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load volatile ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.net_device_ops, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call zeroext i16 %11(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #16
  br label %17

15:                                               ; preds = %7
  %16 = tail call zeroext i16 @netdev_pick_tx(ptr noundef nonnull %5, ptr noundef %1, ptr noundef null) #16
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i16 [ %14, %13 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  %20 = load i16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  store i16 %20, ptr %21, align 4
  br label %39

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 0
  %26 = add i16 %24, -1
  %27 = select i1 %25, i16 0, i16 %26
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  store i16 %24, ptr %28, align 4
  %29 = zext i16 %27 to i32
  %30 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 89
  %31 = load i32, ptr %30, align 8
  %32 = icmp ugt i32 %31, %29
  br i1 %32, label %39, label %33, !prof !16

33:                                               ; preds = %22
  %34 = trunc i32 %31 to i16
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i16 [ %37, %35 ], [ %27, %33 ]
  %37 = sub i16 %36, %34
  %38 = icmp ult i16 %37, %34
  br i1 %38, label %39, label %35

39:                                               ; preds = %35, %22, %17
  %40 = phi i16 [ %18, %17 ], [ %27, %22 ], [ %37, %35 ]
  ret i16 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @net_failover_set_rx_mode(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %3 = load volatile ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @dev_uc_sync_multiple(ptr noundef nonnull %3, ptr noundef %0) #16
  %7 = tail call i32 @dev_mc_sync_multiple(ptr noundef nonnull %3, ptr noundef %0) #16
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr i8, ptr %0, i32 1412
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @dev_uc_sync_multiple(ptr noundef nonnull %10, ptr noundef %0) #16
  %14 = tail call i32 @dev_mc_sync_multiple(ptr noundef nonnull %10, ptr noundef %0) #16
  br label %15

15:                                               ; preds = %12, %8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_failover_change_mtu(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @dev_set_mtu(ptr noundef nonnull %4, i32 noundef %1) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6, %2
  %10 = getelementptr i8, ptr %0, i32 1412
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @dev_set_mtu(ptr noundef nonnull %11, i32 noundef %1) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  br i1 %5, label %23, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @dev_set_mtu(ptr noundef nonnull %4, i32 noundef %19) #16
  br label %23

21:                                               ; preds = %13, %9
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %17, %16, %6
  %24 = phi i32 [ 0, %21 ], [ %7, %6 ], [ %14, %17 ], [ %14, %16 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @net_failover_get_stats(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.rtnl_link_stats64, align 8
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %3, i8 0, i32 192, i1 false), !annotation !19
  %5 = getelementptr i8, ptr %0, i32 1992
  tail call void @_raw_spin_lock(ptr noundef %5) #16
  %6 = getelementptr i8, ptr %0, i32 1800
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(192) %1, ptr noundef align 8 dereferenceable(192) %6, i32 192, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %7 = load volatile ptr, ptr %4, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = call ptr @dev_get_stats(ptr noundef nonnull %7, ptr noundef nonnull %3) #16
  %11 = getelementptr i8, ptr %0, i32 1416
  br label %12

12:                                               ; preds = %31, %9
  %13 = phi i32 [ 0, %9 ], [ %32, %31 ]
  %14 = getelementptr i64, ptr %10, i32 %13
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr i64, ptr %11, i32 %13
  %17 = load i64, ptr %16, align 8
  %18 = sub i64 %15, %17
  %19 = or i64 %17, %15
  %20 = icmp ult i64 %19, 4294967296
  %21 = trunc i64 %15 to i32
  %22 = trunc i64 %17 to i32
  %23 = sub i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = select i1 %20, i64 %24, i64 %18
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = getelementptr i64, ptr %1, i32 %13
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %29, %25
  store i64 %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %27, %12
  %32 = add nuw nsw i32 %13, 1
  %33 = icmp eq i32 %32, 24
  br i1 %33, label %34, label %12

34:                                               ; preds = %31
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(192) %11, ptr noundef align 8 dereferenceable(192) %10, i32 192, i1 false)
  br label %35

35:                                               ; preds = %34, %2
  %36 = getelementptr i8, ptr %0, i32 1412
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %65, label %39

39:                                               ; preds = %35
  %40 = call ptr @dev_get_stats(ptr noundef nonnull %37, ptr noundef nonnull %3) #16
  %41 = getelementptr i8, ptr %0, i32 1608
  br label %42

42:                                               ; preds = %61, %39
  %43 = phi i32 [ 0, %39 ], [ %62, %61 ]
  %44 = getelementptr i64, ptr %40, i32 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr i64, ptr %41, i32 %43
  %47 = load i64, ptr %46, align 8
  %48 = sub i64 %45, %47
  %49 = or i64 %47, %45
  %50 = icmp ult i64 %49, 4294967296
  %51 = trunc i64 %45 to i32
  %52 = trunc i64 %47 to i32
  %53 = sub i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = select i1 %50, i64 %54, i64 %48
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = getelementptr i64, ptr %1, i32 %43
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %59, %55
  store i64 %60, ptr %58, align 8
  br label %61

61:                                               ; preds = %57, %42
  %62 = add nuw nsw i32 %43, 1
  %63 = icmp eq i32 %62, 24
  br i1 %63, label %64, label %42

64:                                               ; preds = %61
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(192) %41, ptr noundef align 8 dereferenceable(192) %40, i32 192, i1 false)
  br label %65

65:                                               ; preds = %64, %35
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(192) %6, ptr noundef align 8 dereferenceable(192) %1, i32 192, i1 false)
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %66 = load i16, ptr %5, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @net_failover_vlan_rx_add_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load volatile ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 1412
  %7 = load volatile ptr, ptr %6, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @net_failover_vlan_rx_kill_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load volatile ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 1412
  %7 = load volatile ptr, ptr %6, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_sync_multiple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_sync_multiple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfo_ethtool_get_drvinfo(ptr nocapture noundef readnone %0, ptr noundef %1) #10 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 32) #16
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef 32) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfo_ethtool_get_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %11, %6, %2
  %16 = getelementptr i8, ptr %0, i32 1412
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load volatile i32, ptr %20, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %19, %15
  %29 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 -1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 -1, ptr %30, align 1
  %31 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 -1, ptr %31, align 4
  br label %35

32:                                               ; preds = %24, %11
  %33 = phi ptr [ %4, %11 ], [ %17, %24 ]
  %34 = tail call i32 @__ethtool_get_link_ksettings(ptr noundef nonnull %33, ptr noundef %1) #16
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ %34, %32 ], [ 0, %28 ]
  ret i32 %36
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_failover_slave_pre_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %1, i32 1412
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %16

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %1, i32 1408
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ @.str.6, %12 ], [ @.str.5, %8 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %0, ptr noundef nonnull %17) #17
  br label %25

18:                                               ; preds = %12
  %19 = icmp eq ptr %4, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @pci_bus_type
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %8
  br label %25

25:                                               ; preds = %24, %20, %18, %16
  %26 = phi i32 [ -22, %16 ], [ -22, %20 ], [ -22, %18 ], [ 0, %24 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_failover_slave_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.netdev_lag_lower_state_info, align 1
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @dev_set_mtu(ptr noundef %0, i32 noundef %7) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %11) #17
  br label %116

12:                                               ; preds = %2
  %13 = icmp eq ptr %0, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %12
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %17 = load ptr, ptr %16, align 8
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #14, !srcloc !21
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #16, !srcloc !22
  br label %26

26:                                               ; preds = %14, %12
  %27 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @dev_open(ptr noundef %0, ptr noundef null) #16
  switch i32 %32, label %33 [
    i32 -16, label %48
    i32 0, label %48
  ]

33:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %0, i32 noundef %32) #17
  br i1 %13, label %46, label %34

34:                                               ; preds = %33
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %36 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %37 = load ptr, ptr %36, align 8
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #14, !srcloc !21
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, -1
  store i32 %45, ptr %43, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #16, !srcloc !22
  br label %46

46:                                               ; preds = %34, %33
  %47 = tail call i32 @dev_set_mtu(ptr noundef %0, i32 noundef %5) #16
  br label %116

48:                                               ; preds = %31, %31, %26
  %49 = tail call ptr @llvm.thread.pointer() #16
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = add i32 %51, 512
  store volatile i32 %52, ptr %50, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %53 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %53) #16
  %54 = tail call i32 @dev_uc_sync_multiple(ptr noundef %0, ptr noundef %1) #16
  %55 = tail call i32 @dev_mc_sync_multiple(ptr noundef %0, ptr noundef %1) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %53) #16
  %56 = getelementptr i8, ptr %1, i32 1408
  %57 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %58, %60
  br i1 %61, label %77, label %62

62:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  store volatile ptr %0, ptr %56, align 8
  %63 = getelementptr i8, ptr %1, i32 1416
  %64 = tail call ptr @dev_get_stats(ptr noundef %0, ptr noundef %63) #16
  %65 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 30
  %66 = load i32, ptr %65, align 8
  %67 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 30
  store i32 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 31
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 31
  store i32 %69, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  %71 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %72 = load volatile i32, ptr %71, align 4
  %73 = trunc i32 %72 to i8
  %74 = lshr i8 %73, 2
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  br label %89

77:                                               ; preds = %48
  %78 = getelementptr i8, ptr %1, i32 1412
  %79 = load ptr, ptr %56, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  store volatile ptr %0, ptr %78, align 4
  %80 = getelementptr i8, ptr %1, i32 1608
  %81 = tail call ptr @dev_get_stats(ptr noundef %0, ptr noundef %80) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  %82 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %83 = load volatile i32, ptr %82, align 4
  %84 = trunc i32 %83 to i8
  %85 = lshr i8 %84, 2
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  %88 = icmp eq ptr %79, %0
  br i1 %88, label %89, label %99

89:                                               ; preds = %77, %62
  %90 = phi i8 [ %76, %62 ], [ %87, %77 ]
  %91 = phi ptr [ %71, %62 ], [ %82, %77 ]
  %92 = phi ptr [ @.str.6, %62 ], [ @.str.5, %77 ]
  %93 = load volatile i32, ptr %91, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %89
  %97 = or i8 %90, 2
  store i8 %97, ptr %3, align 1
  br label %113

98:                                               ; preds = %89
  store i8 %90, ptr %3, align 1
  br label %113

99:                                               ; preds = %77
  %100 = icmp eq ptr %79, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 6
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101, %99
  %107 = load volatile i32, ptr %82, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %101
  store i8 %87, ptr %3, align 1
  br label %113

111:                                              ; preds = %106
  %112 = or i8 %87, 2
  store i8 %112, ptr %3, align 1
  br label %113

113:                                              ; preds = %111, %110, %98, %96
  %114 = phi ptr [ %92, %96 ], [ %92, %98 ], [ @.str.5, %110 ], [ @.str.5, %111 ]
  call void @netdev_lower_state_changed(ptr noundef %0, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  call fastcc void @net_failover_compute_features(ptr noundef %1)
  %115 = call i32 @call_netdevice_notifiers(i32 noundef 20, ptr noundef %0) #16
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %114, ptr noundef %0) #17
  br label %116

116:                                              ; preds = %113, %46, %10
  %117 = phi i32 [ 0, %113 ], [ %8, %10 ], [ %32, %46 ]
  ret i32 %117
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @net_failover_slave_pre_unregister(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 1412
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i32 [ 0, %10 ], [ -19, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_failover_slave_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %1, i32 1412
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %4, %0
  %8 = icmp ne ptr %6, %0
  %9 = select i1 %7, i1 %8, i1 false
  %10 = load i1, ptr @net_failover_slave_unregister.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !25

13:                                               ; preds = %2
  store i1 true, ptr @net_failover_slave_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 604, i32 noundef 9, ptr noundef null) #16
  br label %14

14:                                               ; preds = %13, %2
  br i1 %9, label %49, label %15

15:                                               ; preds = %14
  tail call void @dev_uc_unsync(ptr noundef %0, ptr noundef %1) #16
  tail call void @dev_mc_unsync(ptr noundef %0, ptr noundef %1) #16
  tail call void @dev_close(ptr noundef %0) #16
  %16 = getelementptr i8, ptr %1, i32 1800
  %17 = tail call ptr @dev_get_stats(ptr noundef %1, ptr noundef %16) #16
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store volatile ptr null, ptr %5, align 4
  br label %33

24:                                               ; preds = %15
  store volatile ptr null, ptr %3, align 8
  %25 = icmp eq ptr %6, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 30
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 30
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 31
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 31
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %26, %24, %23
  %34 = phi ptr [ @.str.6, %24 ], [ @.str.6, %26 ], [ @.str.5, %23 ]
  %35 = icmp eq ptr %0, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %38 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %39 = load ptr, ptr %38, align 8
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #14, !srcloc !21
  %44 = add i32 %43, %40
  %45 = inttoptr i32 %44 to ptr
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  store i32 %47, ptr %45, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #16, !srcloc !22
  br label %48

48:                                               ; preds = %36, %33
  tail call fastcc void @net_failover_compute_features(ptr noundef %1)
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %34, ptr noundef %0) #17
  br label %49

49:                                               ; preds = %48, %14
  %50 = phi i32 [ 0, %48 ], [ -19, %14 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_failover_slave_link_change(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.netdev_lag_lower_state_info, align 1
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %1, i32 1412
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, %0
  %9 = icmp eq ptr %7, %0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %78

11:                                               ; preds = %2
  %12 = icmp eq ptr %5, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18, %13, %11
  %23 = icmp eq ptr %7, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %24
  %30 = load volatile i32, ptr %25, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29, %18
  tail call void @netif_carrier_on(ptr noundef %1) #16
  %34 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 88
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ 0, %37 ], [ %43, %39 ]
  %41 = load ptr, ptr %38, align 64
  %42 = getelementptr %struct.netdev_queue, ptr %41, i32 %40
  tail call void @netif_tx_wake_queue(ptr noundef %42) #16
  %43 = add nuw i32 %40, 1
  %44 = load i32, ptr %34, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %39, label %49

46:                                               ; preds = %29, %24, %22
  %47 = getelementptr i8, ptr %1, i32 1800
  %48 = tail call ptr @dev_get_stats(ptr noundef %1, ptr noundef %47) #16
  tail call void @netif_carrier_off(ptr noundef %1) #16
  tail call void @netif_tx_stop_all_queues(ptr noundef %1) #16
  br label %49

49:                                               ; preds = %46, %39, %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  %50 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %51 = load volatile i32, ptr %50, align 4
  %52 = trunc i32 %51 to i8
  %53 = lshr i8 %52, 2
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  br i1 %8, label %56, label %63

56:                                               ; preds = %49
  %57 = load volatile i32, ptr %50, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = or i8 %55, 2
  store i8 %61, ptr %3, align 1
  br label %77

62:                                               ; preds = %56
  store i8 %55, ptr %3, align 1
  br label %77

63:                                               ; preds = %49
  br i1 %12, label %69, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64, %63
  %70 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %64
  store i8 %55, ptr %3, align 1
  br label %77

75:                                               ; preds = %69
  %76 = or i8 %55, 2
  store i8 %76, ptr %3, align 1
  br label %77

77:                                               ; preds = %75, %74, %62, %60
  call void @netdev_lower_state_changed(ptr noundef %0, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %78

78:                                               ; preds = %77, %2
  %79 = phi i32 [ 0, %77 ], [ -19, %2 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_failover_slave_name_change(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 1412
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %2
  %11 = tail call i32 @dev_open(ptr noundef %0, ptr noundef null) #16
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ 0, %10 ], [ -19, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @net_failover_handle_frame(ptr nocapture noundef readonly %0) #13 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 81
  %6 = load volatile ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1408
  %8 = load volatile ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %6, i32 1412
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp ne ptr %8, null
  %12 = icmp eq ptr %4, %10
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store ptr %6, ptr %3, align 8
  br label %15

15:                                               ; preds = %14, %1
  %16 = phi i32 [ 1, %14 ], [ 2, %1 ]
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @net_failover_compute_features(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = load volatile ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 26
  %7 = load i64, ptr %6, align 8
  %8 = tail call i64 @netdev_increment_features(i64 noundef 0, i64 noundef %7, i64 noundef 1933417) #16
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 27
  %10 = load i64, ptr %9, align 16
  %11 = tail call i64 @netdev_increment_features(i64 noundef 1099513528329, i64 noundef %10, i64 noundef 1099513528329) #16
  %12 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %13 = load i64, ptr %12, align 16
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 131104
  %16 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %17 = load i16, ptr %16, align 2
  %18 = tail call i16 @llvm.umax.i16(i16 %17, i16 14)
  br label %19

19:                                               ; preds = %5, %1
  %20 = phi i32 [ 131104, %1 ], [ %15, %5 ]
  %21 = phi i16 [ 14, %1 ], [ %18, %5 ]
  %22 = phi i64 [ 1099513528329, %1 ], [ %11, %5 ]
  %23 = phi i64 [ 0, %1 ], [ %8, %5 ]
  %24 = getelementptr i8, ptr %0, i32 1412
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 26
  %29 = load i64, ptr %28, align 8
  %30 = tail call i64 @netdev_increment_features(i64 noundef %23, i64 noundef %29, i64 noundef 1933417) #16
  %31 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 27
  %32 = load i64, ptr %31, align 16
  %33 = tail call i64 @netdev_increment_features(i64 noundef %22, i64 noundef %32, i64 noundef 1099513528329) #16
  %34 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 15
  %35 = load i64, ptr %34, align 16
  %36 = trunc i64 %35 to i32
  %37 = and i32 %20, %36
  %38 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 19
  %39 = load i16, ptr %38, align 2
  %40 = tail call i16 @llvm.umax.i16(i16 %39, i16 %21)
  br label %41

41:                                               ; preds = %27, %19
  %42 = phi i32 [ %20, %19 ], [ %37, %27 ]
  %43 = phi i16 [ %21, %19 ], [ %40, %27 ]
  %44 = phi i64 [ %22, %19 ], [ %33, %27 ]
  %45 = phi i64 [ %23, %19 ], [ %30, %27 ]
  %46 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 26
  store i64 %45, ptr %46, align 8
  %47 = or i64 %44, 264241152
  %48 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 27
  store i64 %47, ptr %48, align 16
  %49 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  store i16 %43, ptr %49, align 2
  %50 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %51 = load i64, ptr %50, align 16
  %52 = and i64 %51, -33
  %53 = icmp eq i32 %42, 131104
  %54 = select i1 %53, i64 32, i64 0
  %55 = or i64 %52, %54
  store i64 %55, ptr %50, align 16
  tail call void @netdev_change_features(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_uc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_mc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_lower_state_changed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netdev_increment_features(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_change_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }

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
!9 = !{i64 2148889180}
!10 = !{i64 2149090841}
!11 = !{i64 2149086665}
!12 = !{i64 2149086740, i64 2149086767, i64 2149086814, i64 2149086836, i64 2149086864, i64 2149086884}
!13 = !{i64 2149113844}
!14 = !{i64 705620, i64 2148195591, i64 2148195617, i64 2148195664, i64 2148195686, i64 2148195714, i64 2148195734}
!15 = !{i64 2148207006, i64 2148207032, i64 2148207061, i64 2148207095, i64 2148207126, i64 2148207149}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149295955}
!18 = !{i64 2149296172}
!19 = !{!"auto-init"}
!20 = !{i64 611298, i64 611359}
!21 = !{i64 629998}
!22 = !{i64 614315}
!23 = !{i64 2155592815}
!24 = !{i64 2155584568}
!25 = !{!"branch_weights", i32 1, i32 2000}
