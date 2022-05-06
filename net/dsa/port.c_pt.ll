; ModuleID = '/llk/IR/net/dsa/port.c_pt.bc'
source_filename = "../net/dsa/port.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_port_get_phy_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_port_get_phy_strings\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_port_get_phy_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_port_get_ethtool_phy_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_port_get_ethtool_phy_stats\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_port_get_ethtool_phy_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_port_get_phy_sset_count:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_port_get_phy_sset_count\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_port_get_phy_sset_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.dsa_port = type { %union.anon, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.126 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.126 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_notifier_ageing_time_info = type { i32 }
%struct.dsa_notifier_bridge_info = type { %struct.dsa_bridge, i32, i32, i32, i8 }
%struct.dsa_bridge = type { ptr, i32, i8, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.dsa_notifier_lag_info = type { ptr, i32, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.137, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.137 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.dsa_notifier_mtu_info = type { i8, i32, i32, i32 }
%struct.dsa_notifier_fdb_info = type { i32, i32, ptr, i16 }
%struct.dsa_notifier_mdb_info = type { ptr, i32, i32 }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.dsa_notifier_vlan_info = type { ptr, i32, i32, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.dsa_notifier_tag_8021q_vlan_info = type { i32, i32, i32, i16 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }

@dsa_slave_switchdev_notifier = external dso_local global %struct.notifier_block, align 4
@dsa_slave_switchdev_blocking_notifier = external dso_local global %struct.notifier_block, align 4
@.str = private unnamed_addr constant [57 x i8] c"port %d failed to notify DSA_NOTIFIER_BRIDGE_LEAVE: %pe\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"port %d failed to notify DSA_NOTIFIER_LAG_LEAVE: %pe\0A\00", align 1
@dsa_port_phylink_mac_ops = internal constant %struct.phylink_mac_ops { ptr @dsa_port_phylink_validate, ptr null, ptr @dsa_port_phylink_mac_pcs_get_state, ptr null, ptr @dsa_port_phylink_mac_config, ptr null, ptr @dsa_port_phylink_mac_an_restart, ptr @dsa_port_phylink_mac_link_down, ptr @dsa_port_phylink_mac_link_up }, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"\013error creating PHYLINK: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Using legacy PHYLIB callbacks. Please migrate to PHYLINK!\0A\00", align 1
@__kstrtab_dsa_port_get_phy_strings = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_port_get_phy_strings = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_port_get_phy_strings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_port_get_phy_strings to i32), ptr @__kstrtab_dsa_port_get_phy_strings, ptr @__kstrtabns_dsa_port_get_phy_strings }, section "___ksymtab_gpl+dsa_port_get_phy_strings", align 4
@__kstrtab_dsa_port_get_ethtool_phy_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_port_get_ethtool_phy_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_port_get_ethtool_phy_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_port_get_ethtool_phy_stats to i32), ptr @__kstrtab_dsa_port_get_ethtool_phy_stats, ptr @__kstrtabns_dsa_port_get_ethtool_phy_stats }, section "___ksymtab_gpl+dsa_port_get_ethtool_phy_stats", align 4
@__kstrtab_dsa_port_get_phy_sset_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_port_get_phy_sset_count = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_port_get_phy_sset_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_port_get_phy_sset_count to i32), ptr @__kstrtab_dsa_port_get_phy_sset_count, ptr @__kstrtabns_dsa_port_get_phy_sset_count }, section "___ksymtab_gpl+dsa_port_get_phy_sset_count", align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"port %d failed to leave HSR %s: %pe\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"port %d failed to notify tag_8021q VLAN %d deletion: %pe\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\013DSA: failed to set STP state %u (%d)\0A\00", align 1
@dsa_port_bridge_create.__msg = internal constant [48 x i8] c"dsa_core: Range of offloadable bridges exceeded\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"failed to clear bridge port flag %lu: %pe\0A\00", align 1
@dsa_port_can_apply_vlan_filtering.__msg.9 = internal constant [45 x i8] c"dsa_core: VLAN filtering is a global setting\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"p%d: phylink_mac_link_state() failed: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\013could not attach to PHY: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"failed to register the fixed PHY of port %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_dsa_port_get_ethtool_phy_stats, ptr @__ksymtab_dsa_port_get_phy_sset_count, ptr @__ksymtab_dsa_port_get_phy_strings], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_set_state(ptr nocapture noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.switchdev_notifier_fdb_info, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch_ops, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  tail call void %10(ptr noundef %6, i32 noundef %14, i8 noundef zeroext %1) #9
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.dsa_switch, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dsa_switch_ops, ptr %17, i32 0, i32 50
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.dsa_switch_ops, ptr %17, i32 0, i32 49
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %13, align 4
  %27 = tail call i32 %23(ptr noundef %15, i32 noundef %26, [2 x i32] [i32 0, i32 32], ptr noundef null) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  br i1 %2, label %30, label %71

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %30, %25, %21, %12
  %36 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 10
  %37 = load i8, ptr %36, align 2
  %38 = and i8 %37, -2
  %39 = icmp eq i8 %38, 2
  br i1 %39, label %40, label %71

40:                                               ; preds = %35
  switch i8 %1, label %71 [
    i8 4, label %41
    i8 1, label %41
    i8 0, label %41
  ]

41:                                               ; preds = %40, %40, %40
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr inbounds %struct.dsa_switch, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dsa_switch_ops, ptr %44, i32 0, i32 48
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %71, label %48

48:                                               ; preds = %41
  %49 = load i32, ptr %13, align 4
  tail call void %46(ptr noundef %42, i32 noundef %49) #9
  %50 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  br label %70

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 18
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 19
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %54
  %63 = phi ptr [ %60, %58 ], [ %56, %54 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #9
  br label %67

64:                                               ; preds = %58
  %65 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %62
  %68 = phi ptr [ %63, %62 ], [ %65, %64 ]
  %69 = call i32 @call_switchdev_notifiers(i32 noundef 6, ptr noundef nonnull %68, ptr noundef nonnull %4, ptr noundef null) #9
  br label %70

70:                                               ; preds = %67, %64, %53
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  br label %71

71:                                               ; preds = %70, %41, %40, %35, %30, %29
  %72 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 10
  store i8 %1, ptr %72, align 2
  br label %73

73:                                               ; preds = %71, %3
  %74 = phi i32 [ 0, %71 ], [ -95, %3 ]
  ret i32 %74
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dsa_port_fast_age(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.switchdev_notifier_fdb_info, align 4
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 48
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  tail call void %8(ptr noundef %4, i32 noundef %12) #9
  %13 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  br label %33

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 18
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %17
  %26 = phi ptr [ %23, %21 ], [ %19, %17 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #9
  br label %30

27:                                               ; preds = %21
  %28 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %25
  %31 = phi ptr [ %26, %25 ], [ %28, %27 ]
  %32 = call i32 @call_switchdev_notifiers(i32 noundef 6, ptr noundef nonnull %31, ptr noundef nonnull %2, ptr noundef null) #9
  br label %33

33:                                               ; preds = %30, %27, %16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_enable_rt(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 34
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %4, i32 noundef %12, ptr noundef %1) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %10, %2
  %16 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.dsa_switch, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dsa_switch_ops, ptr %22, i32 0, i32 47
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  tail call void %24(ptr noundef %20, i32 noundef %28, i8 noundef zeroext 3) #9
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.dsa_switch, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dsa_switch_ops, ptr %31, i32 0, i32 50
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.dsa_switch_ops, ptr %31, i32 0, i32 49
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %27, align 4
  %41 = tail call i32 %37(ptr noundef %29, i32 noundef %40, [2 x i32] [i32 0, i32 32], ptr noundef null) #9
  br label %42

42:                                               ; preds = %39, %35, %26
  %43 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 10
  store i8 3, ptr %43, align 2
  br label %46

44:                                               ; preds = %19
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef -95) #10
  br label %46

46:                                               ; preds = %44, %42, %15
  %47 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 16
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @phylink_start(ptr noundef nonnull %48) #9
  br label %51

51:                                               ; preds = %50, %46, %10
  %52 = phi i32 [ %13, %10 ], [ 0, %50 ], [ 0, %46 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_enable(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @rtnl_lock() #9
  %3 = tail call i32 @dsa_port_enable_rt(ptr noundef %0, ptr noundef %1)
  tail call void @rtnl_unlock() #9
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_port_disable_rt(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @phylink_stop(ptr noundef nonnull %7) #9
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 @dsa_port_set_state(ptr noundef %0, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef %15) #10
  br label %19

19:                                               ; preds = %17, %14, %10
  %20 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dsa_switch_ops, ptr %21, i32 0, i32 35
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void %23(ptr noundef %3, i32 noundef %5) #9
  br label %26

26:                                               ; preds = %25, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_port_disable(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @rtnl_lock() #9
  %2 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @phylink_stop(ptr noundef nonnull %7) #9
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 @dsa_port_set_state(ptr noundef %0, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef %15) #10
  br label %19

19:                                               ; preds = %17, %14, %10
  %20 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dsa_switch_ops, ptr %21, i32 0, i32 35
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void %23(ptr noundef %3, i32 noundef %5) #9
  br label %26

26:                                               ; preds = %25, %19
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_bridge_join(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dsa_notifier_ageing_time_info, align 4
  %5 = alloca %struct.switchdev_notifier_fdb_info, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsa_notifier_bridge_info, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  %8 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds i8, ptr %7, i32 28
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_switch_tree, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %7, i32 0, i32 2
  %17 = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %7, i32 0, i32 3
  %20 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %7, i32 0, i32 4
  %23 = load ptr, ptr %0, align 4
  %24 = load ptr, ptr %12, align 4
  %25 = tail call ptr @dsa_tree_bridge_find(ptr noundef %24, ptr noundef %1) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.dsa_bridge, ptr %25, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !8
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #9, !srcloc !9
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !10

32:                                               ; preds = %27
  %33 = add i32 %30, 1
  %34 = or i32 %33, %30
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %56, label %36, !prof !11

36:                                               ; preds = %32, %27
  %37 = phi i32 [ 2, %27 ], [ 1, %32 ]
  tail call void @refcount_warn_saturate(ptr noundef %28, i32 noundef %37) #9
  br label %56

38:                                               ; preds = %3
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 16) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %187, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dsa_bridge, ptr %40, i32 0, i32 3
  store volatile i32 1, ptr %43, align 4
  store ptr %1, ptr %40, align 8
  %44 = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 17
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @dsa_bridge_num_get(ptr noundef %1, i32 noundef %45) #9
  %47 = getelementptr inbounds %struct.dsa_bridge, ptr %40, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %44, align 4
  %49 = icmp ne i32 %48, 0
  %50 = icmp eq i32 %46, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_port_bridge_create.__msg) #9
  %53 = icmp eq ptr %2, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  store ptr @dsa_port_bridge_create.__msg, ptr %2, align 4
  br label %55

55:                                               ; preds = %54, %52
  tail call void @kfree(ptr noundef nonnull %40) #9
  br label %187

56:                                               ; preds = %42, %36, %32
  %57 = phi ptr [ %25, %36 ], [ %25, %32 ], [ %40, %42 ]
  %58 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %60 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 18
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 19
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load ptr, ptr %0, align 4
  br label %69

69:                                               ; preds = %67, %63, %56
  %70 = phi ptr [ %68, %67 ], [ %61, %56 ], [ %65, %63 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %57, i32 16, i1 false)
  %71 = call i32 @dsa_broadcast(i32 noundef 1, ptr noundef nonnull %7) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %171

73:                                               ; preds = %69
  %74 = load i8, ptr %22, align 4, !range !12
  %75 = load ptr, ptr %59, align 4
  %76 = getelementptr inbounds %struct.dsa_bridge, ptr %75, i32 0, i32 2
  store i8 %74, ptr %76, align 4
  %77 = load ptr, ptr %59, align 4
  %78 = getelementptr inbounds %struct.dsa_bridge, ptr %77, i32 0, i32 2
  %79 = load i8, ptr %78, align 4, !range !12
  %80 = icmp ne i8 %79, 0
  %81 = call i32 @switchdev_bridge_port_offload(ptr noundef %70, ptr noundef %23, ptr noundef %0, ptr noundef nonnull @dsa_slave_switchdev_notifier, ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier, i1 noundef zeroext %80, ptr noundef %2) #9
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %168

83:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 18528, ptr %6, align 4
  %84 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 32, i32 noundef 0) #9
  %85 = icmp slt i32 %84, 32
  br i1 %85, label %86, label %149

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %88 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 10
  %89 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 18
  %90 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 19
  br label %91

91:                                               ; preds = %145, %86
  %92 = phi i32 [ %84, %86 ], [ %147, %145 ]
  %93 = load ptr, ptr %9, align 4
  %94 = getelementptr inbounds %struct.dsa_switch, ptr %93, i32 0, i32 8
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.dsa_switch_ops, ptr %95, i32 0, i32 50
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %145, label %99

99:                                               ; preds = %91
  %100 = shl nuw i32 1, %92
  %101 = insertvalue [2 x i32] [i32 0, i32 poison], i32 %100, 1
  %102 = load i32, ptr %20, align 4
  %103 = call i32 %97(ptr noundef %93, i32 noundef %102, [2 x i32] %101, ptr noundef %2) #9
  switch i32 %103, label %165 [
    i32 0, label %104
    i32 -95, label %145
  ]

104:                                              ; preds = %99
  %105 = icmp eq i32 %92, 5
  br i1 %105, label %106, label %145

106:                                              ; preds = %104
  %107 = load i8, ptr %87, align 1
  %108 = and i8 %107, 2
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %145, label %110

110:                                              ; preds = %106
  %111 = load i8, ptr %88, align 2
  %112 = and i8 %111, -2
  %113 = icmp eq i8 %112, 2
  br i1 %113, label %114, label %142

114:                                              ; preds = %110
  %115 = load ptr, ptr %9, align 4
  %116 = getelementptr inbounds %struct.dsa_switch, ptr %115, i32 0, i32 8
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.dsa_switch_ops, ptr %117, i32 0, i32 48
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %142, label %121

121:                                              ; preds = %114
  %122 = load i32, ptr %20, align 4
  call void %119(ptr noundef %115, i32 noundef %122) #9
  %123 = load ptr, ptr %59, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  br label %140

126:                                              ; preds = %121
  %127 = load ptr, ptr %89, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load ptr, ptr %90, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %129, %126
  %133 = phi ptr [ %130, %129 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #9
  br label %137

134:                                              ; preds = %129
  %135 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %134, %132
  %138 = phi ptr [ %133, %132 ], [ %135, %134 ]
  %139 = call i32 @call_switchdev_notifiers(i32 noundef 6, ptr noundef nonnull %138, ptr noundef nonnull %5, ptr noundef null) #9
  br label %140

140:                                              ; preds = %137, %134, %125
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  %141 = load i8, ptr %87, align 1
  br label %142

142:                                              ; preds = %140, %114, %110
  %143 = phi i8 [ %107, %110 ], [ %107, %114 ], [ %141, %140 ]
  %144 = and i8 %143, -3
  store i8 %144, ptr %87, align 1
  br label %145

145:                                              ; preds = %142, %106, %104, %99, %91
  %146 = add nsw i32 %92, 1
  %147 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 32, i32 noundef %146) #9
  %148 = icmp slt i32 %147, 32
  br i1 %148, label %91, label %149

149:                                              ; preds = %145, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %150 = call i32 @dsa_port_set_state(ptr noundef %0, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  switch i32 %150, label %166 [
    i32 -95, label %151
    i32 0, label %151
  ]

151:                                              ; preds = %149, %149
  %152 = call i32 @dsa_port_vlan_filtering(ptr noundef %0, i1 noundef zeroext false, ptr noundef %2) #9
  switch i32 %152, label %166 [
    i32 -95, label %153
    i32 0, label %153
  ]

153:                                              ; preds = %151, %151
  %154 = call i32 @clock_t_to_jiffies(i32 noundef 0) #9
  %155 = call i32 @jiffies_to_msecs(i32 noundef %154) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 %155, ptr %4, align 4
  %156 = load ptr, ptr %9, align 4
  %157 = getelementptr inbounds %struct.dsa_switch, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = call i32 @dsa_tree_notify(ptr noundef %158, i32 noundef 0, ptr noundef nonnull %4) #9
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 13
  store i32 %155, ptr %162, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %187

163:                                              ; preds = %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %164 = icmp eq i32 %159, -95
  br i1 %164, label %187, label %166

165:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %166

166:                                              ; preds = %165, %163, %151, %149
  %167 = phi i32 [ %103, %165 ], [ %159, %163 ], [ %152, %151 ], [ %150, %149 ]
  call void @switchdev_bridge_port_unoffload(ptr noundef %70, ptr noundef %0, ptr noundef nonnull @dsa_slave_switchdev_notifier, ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier) #9
  br label %168

168:                                              ; preds = %166, %73
  %169 = phi i32 [ %81, %73 ], [ %167, %166 ]
  %170 = call i32 @dsa_broadcast(i32 noundef 2, ptr noundef nonnull %7) #9
  br label %171

171:                                              ; preds = %168, %69
  %172 = phi i32 [ %71, %69 ], [ %169, %168 ]
  %173 = load ptr, ptr %59, align 4
  store ptr null, ptr %59, align 4
  %174 = getelementptr inbounds %struct.dsa_bridge, ptr %173, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %174) #9, !srcloc !8
  %175 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %174, ptr %174, i32 1, ptr elementtype(i32) %174) #9, !srcloc !14
  %176 = extractvalue { i32, i32, i32 } %175, 0
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %181, label %178

178:                                              ; preds = %171
  %179 = icmp sgt i32 %176, 0
  br i1 %179, label %187, label %180, !prof !11

180:                                              ; preds = %178
  call void @refcount_warn_saturate(ptr noundef %174, i32 noundef 3) #9
  br label %187

181:                                              ; preds = %171
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %182 = getelementptr inbounds %struct.dsa_bridge, ptr %173, i32 0, i32 1
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  call void @dsa_bridge_num_put(ptr noundef %1, i32 noundef %183) #9
  br label %186

186:                                              ; preds = %185, %181
  call void @kfree(ptr noundef %173) #9
  br label %187

187:                                              ; preds = %186, %180, %178, %163, %161, %55, %38
  %188 = phi i32 [ -95, %55 ], [ -12, %38 ], [ %172, %178 ], [ %172, %180 ], [ %172, %186 ], [ 0, %161 ], [ 0, %163 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  ret i32 %188
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_broadcast(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_port_pre_bridge_leave(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %10, %6
  %18 = phi ptr [ %15, %14 ], [ %12, %10 ], [ %8, %6 ]
  tail call void @switchdev_bridge_port_unoffload(ptr noundef nonnull %18, ptr noundef %0, ptr noundef nonnull @dsa_slave_switchdev_notifier, ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier) #9
  tail call void @dsa_flush_workqueue() #9
  br label %19

19:                                               ; preds = %17, %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_flush_workqueue() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_port_bridge_leave(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.switchdev_notifier_fdb_info, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_notifier_bridge_info, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds i8, ptr %5, i32 28
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsa_switch_tree, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %5, i32 0, i32 2
  %15 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %5, i32 0, i32 3
  %18 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %143, label %23

23:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %21, i32 16, i1 false)
  store ptr null, ptr %20, align 4
  %24 = getelementptr inbounds %struct.dsa_bridge, ptr %21, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #9, !srcloc !8
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #9, !srcloc !14
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %37, label %30, !prof !11

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #9
  br label %37

31:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %32 = getelementptr inbounds %struct.dsa_bridge, ptr %21, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @dsa_bridge_num_put(ptr noundef %1, i32 noundef %33) #9
  br label %36

36:                                               ; preds = %35, %31
  tail call void @kfree(ptr noundef nonnull %21) #9
  br label %37

37:                                               ; preds = %36, %30, %28
  %38 = call i32 @dsa_broadcast(i32 noundef 2, ptr noundef nonnull %5) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %7, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %18, align 4
  %44 = inttoptr i32 %38 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str, i32 noundef %43, ptr noundef nonnull %44) #10
  br label %45

45:                                               ; preds = %40, %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 18528, ptr %4, align 4
  %46 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef 0) #9
  %47 = icmp slt i32 %46, 32
  br i1 %47, label %48, label %117

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %50 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 10
  %51 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 18
  %52 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 19
  br label %53

53:                                               ; preds = %113, %48
  %54 = phi i32 [ %46, %48 ], [ %115, %113 ]
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, 18496
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr inbounds %struct.dsa_switch, ptr %57, i32 0, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dsa_switch_ops, ptr %59, i32 0, i32 50
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %113, label %63

63:                                               ; preds = %53
  %64 = insertvalue [2 x i32] poison, i32 %56, 0
  %65 = insertvalue [2 x i32] %64, i32 %55, 1
  %66 = load i32, ptr %18, align 4
  %67 = call i32 %61(ptr noundef %57, i32 noundef %66, [2 x i32] %65, ptr noundef null) #9
  switch i32 %67, label %109 [
    i32 0, label %68
    i32 -95, label %113
  ]

68:                                               ; preds = %63
  %69 = icmp eq i32 %54, 5
  br i1 %69, label %70, label %113

70:                                               ; preds = %68
  %71 = load i8, ptr %49, align 1
  %72 = and i8 %71, 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %113, label %74

74:                                               ; preds = %70
  %75 = load i8, ptr %50, align 2
  %76 = and i8 %75, -2
  %77 = icmp eq i8 %76, 2
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load ptr, ptr %7, align 4
  %80 = getelementptr inbounds %struct.dsa_switch, ptr %79, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.dsa_switch_ops, ptr %81, i32 0, i32 48
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %106, label %85

85:                                               ; preds = %78
  %86 = load i32, ptr %18, align 4
  call void %83(ptr noundef %79, i32 noundef %86) #9
  %87 = load ptr, ptr %20, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  br label %104

90:                                               ; preds = %85
  %91 = load ptr, ptr %51, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load ptr, ptr %52, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93, %90
  %97 = phi ptr [ %94, %93 ], [ %91, %90 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #9
  br label %101

98:                                               ; preds = %93
  %99 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98, %96
  %102 = phi ptr [ %97, %96 ], [ %99, %98 ]
  %103 = call i32 @call_switchdev_notifiers(i32 noundef 6, ptr noundef nonnull %102, ptr noundef nonnull %3, ptr noundef null) #9
  br label %104

104:                                              ; preds = %101, %98, %89
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  %105 = load i8, ptr %49, align 1
  br label %106

106:                                              ; preds = %104, %78, %74
  %107 = phi i8 [ %71, %74 ], [ %71, %78 ], [ %105, %104 ]
  %108 = and i8 %107, -3
  store i8 %108, ptr %49, align 1
  br label %113

109:                                              ; preds = %63
  %110 = load ptr, ptr %7, align 4
  %111 = load ptr, ptr %110, align 4
  %112 = inttoptr i32 %67 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.8, i32 noundef %56, ptr noundef %112) #10
  br label %113

113:                                              ; preds = %109, %106, %70, %68, %63, %53
  %114 = add nsw i32 %54, 1
  %115 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef %114) #9
  %116 = icmp slt i32 %115, 32
  br i1 %116, label %53, label %117

117:                                              ; preds = %113, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %118 = load ptr, ptr %7, align 4
  %119 = getelementptr inbounds %struct.dsa_switch, ptr %118, i32 0, i32 8
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.dsa_switch_ops, ptr %120, i32 0, i32 47
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %141, label %124

124:                                              ; preds = %117
  %125 = load i32, ptr %18, align 4
  call void %122(ptr noundef %118, i32 noundef %125, i8 noundef zeroext 3) #9
  %126 = load ptr, ptr %7, align 4
  %127 = getelementptr inbounds %struct.dsa_switch, ptr %126, i32 0, i32 8
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.dsa_switch_ops, ptr %128, i32 0, i32 50
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %139, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.dsa_switch_ops, ptr %128, i32 0, i32 49
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load i32, ptr %18, align 4
  %138 = call i32 %134(ptr noundef %126, i32 noundef %137, [2 x i32] [i32 0, i32 32], ptr noundef null) #9
  br label %139

139:                                              ; preds = %136, %132, %124
  %140 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 10
  store i8 3, ptr %140, align 2
  br label %143

141:                                              ; preds = %117
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef -95) #10
  br label %143

143:                                              ; preds = %141, %139, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_lag_change(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dsa_notifier_lag_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  store i32 0, ptr %3, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %3, i32 0, i32 3
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %2
  %17 = load i8, ptr %1, align 1
  %18 = and i8 %17, 3
  %19 = icmp eq i8 %18, 3
  %20 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  %24 = xor i1 %19, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %16
  %26 = select i1 %19, i8 4, i8 0
  %27 = and i8 %21, -5
  %28 = or i8 %26, %27
  store i8 %28, ptr %20, align 1
  %29 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @dsa_tree_notify(ptr noundef %30, i32 noundef 7, ptr noundef nonnull %3) #9
  br label %32

32:                                               ; preds = %25, %16, %2
  %33 = phi i32 [ %31, %25 ], [ 0, %2 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_lag_join(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.dsa_notifier_lag_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %5, i32 0, i32 3
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @dsa_lag_map(ptr noundef %16, ptr noundef %1) #9
  %17 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 18
  store ptr %1, ptr %17, align 4
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr inbounds %struct.dsa_switch, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @dsa_tree_notify(ptr noundef %20, i32 noundef 8, ptr noundef nonnull %5) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %4
  %24 = call ptr @netdev_master_upper_dev_get(ptr noundef %1) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 15
  %28 = load i64, ptr %27, align 16
  %29 = and i64 %28, 2
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = call i32 @dsa_port_bridge_join(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %3)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.dsa_switch, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @dsa_tree_notify(ptr noundef %37, i32 noundef 9, ptr noundef nonnull %5) #9
  br label %39

39:                                               ; preds = %34, %4
  %40 = phi i32 [ %21, %4 ], [ %32, %34 ]
  store ptr null, ptr %17, align 4
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr inbounds %struct.dsa_switch, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  call void @dsa_lag_unmap(ptr noundef %43, ptr noundef %1) #9
  br label %44

44:                                               ; preds = %39, %31, %26, %23
  %45 = phi i32 [ %40, %39 ], [ 0, %26 ], [ 0, %23 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_lag_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_lag_unmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_port_pre_lag_leave(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 18
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %13, %9
  %21 = phi ptr [ %18, %17 ], [ %15, %13 ], [ %11, %9 ]
  tail call void @switchdev_bridge_port_unoffload(ptr noundef nonnull %21, ptr noundef %0, ptr noundef nonnull @dsa_slave_switchdev_notifier, ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier) #9
  tail call void @dsa_flush_workqueue() #9
  br label %22

22:                                               ; preds = %20, %17, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_port_lag_leave(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dsa_notifier_lag_info, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  store ptr %1, ptr %3, align 4
  %11 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_switch, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %11, align 4
  %16 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %3, i32 0, i32 3
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %9
  %24 = icmp eq ptr %10, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  tail call void @dsa_port_bridge_leave(ptr noundef %0, ptr noundef nonnull %10)
  %26 = load ptr, ptr %12, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi ptr [ %26, %25 ], [ %13, %23 ]
  %29 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, -5
  store i8 %31, ptr %29, align 1
  store ptr null, ptr %20, align 4
  %32 = getelementptr inbounds %struct.dsa_switch, ptr %28, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 @dsa_tree_notify(ptr noundef %33, i32 noundef 9, ptr noundef nonnull %3) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr %12, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %17, align 4
  %40 = inttoptr i32 %34 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.1, i32 noundef %39, ptr noundef nonnull %40) #10
  br label %41

41:                                               ; preds = %36, %27
  %42 = load ptr, ptr %12, align 4
  %43 = getelementptr inbounds %struct.dsa_switch, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  call void @dsa_lag_unmap(ptr noundef %44, ptr noundef %1) #9
  br label %45

45:                                               ; preds = %41, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_vlan_filtering(ptr nocapture noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 3
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = and i16 %9, 64
  %14 = icmp ne i16 %13, 0
  br label %20

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 1
  %19 = icmp ne i8 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ %14, %12 ], [ %19, %15 ]
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dsa_switch_ops, ptr %24, i32 0, i32 51
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %178, label %28

28:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %29 = load ptr, ptr %6, align 4
  br i1 %1, label %30, label %50

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %36 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 13
  store ptr %36, ptr %4, align 4
  %37 = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %35, ptr noundef nonnull %4) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %46, %34
  %40 = phi ptr [ %47, %46 ], [ %37, %34 ]
  %41 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 15
  %42 = load i64, ptr %41, align 16
  %43 = and i64 %42, 1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/if_vlan.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 254, 0\0A.popsection", ""() #9, !srcloc !17
  unreachable

46:                                               ; preds = %39
  %47 = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %35, ptr noundef nonnull %4) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %39

49:                                               ; preds = %46, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %50

50:                                               ; preds = %49, %30, %28
  %51 = getelementptr inbounds %struct.dsa_switch, ptr %29, i32 0, i32 3
  %52 = load i16, ptr %51, align 4
  %53 = and i16 %52, 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %90, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.dsa_switch, ptr %29, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.dsa_switch_tree, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %90, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  br label %63

63:                                               ; preds = %86, %61
  %64 = phi ptr [ %59, %61 ], [ %87, %86 ]
  %65 = getelementptr i8, ptr %64, i32 -264
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %29
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %64, i32 -228
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %70, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %62, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %76, align 4
  %80 = icmp ne ptr %73, %79
  %81 = and i1 %80, %1
  br i1 %81, label %83, label %86

82:                                               ; preds = %75
  br i1 %1, label %83, label %86

83:                                               ; preds = %82, %78
  call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_port_can_apply_vlan_filtering.__msg.9) #9
  %84 = icmp eq ptr %2, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %83
  store ptr @dsa_port_can_apply_vlan_filtering.__msg.9, ptr %2, align 4
  br label %89

86:                                               ; preds = %82, %78, %72, %68, %63
  %87 = load ptr, ptr %64, align 4
  %88 = icmp eq ptr %87, %58
  br i1 %88, label %90, label %63

89:                                               ; preds = %85, %83
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %178

90:                                               ; preds = %86, %55, %50
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %91 = load ptr, ptr %6, align 4
  %92 = getelementptr inbounds %struct.dsa_switch, ptr %91, i32 0, i32 3
  %93 = load i16, ptr %92, align 4
  %94 = and i16 %93, 2
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = and i16 %93, 64
  %98 = icmp ne i16 %97, 0
  br label %104

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %101 = load i8, ptr %100, align 1
  %102 = and i8 %101, 1
  %103 = icmp ne i8 %102, 0
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi i1 [ %98, %96 ], [ %103, %99 ]
  %106 = xor i1 %105, %1
  br i1 %106, label %107, label %178

107:                                              ; preds = %104
  %108 = load ptr, ptr %23, align 4
  %109 = getelementptr inbounds %struct.dsa_switch_ops, ptr %108, i32 0, i32 51
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = call i32 %110(ptr noundef %7, i32 noundef %112, i1 noundef zeroext %1, ptr noundef %2) #9
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %178

115:                                              ; preds = %107
  %116 = load i16, ptr %8, align 4
  %117 = and i16 %116, 2
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %151, label %119

119:                                              ; preds = %115
  %120 = select i1 %1, i16 64, i16 0
  %121 = and i16 %116, -65
  %122 = or i16 %121, %120
  store i16 %122, ptr %8, align 4
  %123 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.dsa_switch_tree, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %125
  br i1 %127, label %178, label %128

128:                                              ; preds = %146, %119
  %129 = phi ptr [ %147, %146 ], [ %124, %119 ]
  %130 = phi ptr [ %148, %146 ], [ %126, %119 ]
  %131 = getelementptr i8, ptr %130, i32 -264
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, %7
  br i1 %133, label %134, label %146

134:                                              ; preds = %128
  %135 = getelementptr i8, ptr %130, i32 -256
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load ptr, ptr %0, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = call i32 @dsa_slave_manage_vlan_filtering(ptr noundef nonnull %139, i1 noundef zeroext %1) #9
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load ptr, ptr %123, align 4
  br label %146

146:                                              ; preds = %144, %138, %134, %128
  %147 = phi ptr [ %145, %144 ], [ %129, %138 ], [ %129, %128 ], [ %129, %134 ]
  %148 = load ptr, ptr %130, align 4
  %149 = getelementptr inbounds %struct.dsa_switch_tree, ptr %147, i32 0, i32 1
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %178, label %128

151:                                              ; preds = %115
  %152 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %153 = load i8, ptr %152, align 1
  %154 = and i8 %153, -2
  %155 = or i8 %154, %5
  store i8 %155, ptr %152, align 1
  %156 = load ptr, ptr %0, align 4
  %157 = call i32 @dsa_slave_manage_vlan_filtering(ptr noundef %156, i1 noundef zeroext %1) #9
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %178, label %159

159:                                              ; preds = %151, %141
  %160 = phi i32 [ %157, %151 ], [ %142, %141 ]
  %161 = load ptr, ptr %23, align 4
  %162 = getelementptr inbounds %struct.dsa_switch_ops, ptr %161, i32 0, i32 51
  %163 = load ptr, ptr %162, align 4
  %164 = load i32, ptr %111, align 4
  %165 = call i32 %163(ptr noundef %7, i32 noundef %164, i1 noundef zeroext %21, ptr noundef null) #9
  %166 = load i16, ptr %8, align 4
  %167 = and i16 %166, 2
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %159
  %170 = select i1 %21, i16 64, i16 0
  %171 = and i16 %166, -65
  %172 = or i16 %171, %170
  store i16 %172, ptr %8, align 4
  br label %178

173:                                              ; preds = %159
  %174 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %175 = load i8, ptr %174, align 1
  %176 = and i8 %175, -2
  %177 = or i8 %176, %22
  store i8 %177, ptr %174, align 1
  br label %178

178:                                              ; preds = %173, %169, %151, %146, %119, %107, %104, %89, %20
  %179 = phi i32 [ -95, %20 ], [ -22, %89 ], [ 0, %104 ], [ %113, %107 ], [ 0, %151 ], [ %160, %173 ], [ %160, %169 ], [ 0, %119 ], [ 0, %146 ]
  ret i32 %179
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_slave_manage_vlan_filtering(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dsa_port_skip_vlan_configuration(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 3
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br label %15

15:                                               ; preds = %8, %5, %1
  %16 = phi i1 [ false, %5 ], [ false, %1 ], [ %14, %8 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_ageing_time(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dsa_notifier_ageing_time_info, align 4
  %4 = tail call i32 @clock_t_to_jiffies(i32 noundef %1) #9
  %5 = tail call i32 @jiffies_to_msecs(i32 noundef %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @dsa_tree_notify(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %3) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 13
  store i32 %5, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_pre_bridge_flags(ptr nocapture noundef readonly %0, [2 x i32] %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 49
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 %9(ptr noundef %5, i32 noundef %13, [2 x i32] %1, ptr noundef %2) #9
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ %14, %11 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_bridge_flags(ptr nocapture noundef %0, [2 x i32] %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = extractvalue [2 x i32] %1, 0
  %5 = extractvalue [2 x i32] %1, 1
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 50
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 %11(ptr noundef %7, i32 noundef %15, [2 x i32] %1, ptr noundef %2) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = and i32 %5, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %18
  %22 = and i32 %4, 32
  %23 = trunc i32 %22 to i8
  %24 = lshr exact i8 %23, 4
  %25 = lshr exact i32 %22, 5
  %26 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 11
  %27 = load i8, ptr %26, align 1
  %28 = lshr i8 %27, 1
  %29 = and i8 %28, 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %47, label %32

32:                                               ; preds = %21
  %33 = icmp ne i32 %22, 0
  %34 = icmp eq i8 %29, 0
  %35 = select i1 %34, i1 true, i1 %33
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 10
  %38 = load i8, ptr %37, align 2
  %39 = and i8 %38, -2
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  tail call fastcc void @dsa_port_fast_age(ptr noundef %0)
  %42 = load i8, ptr %26, align 1
  br label %43

43:                                               ; preds = %41, %36, %32
  %44 = phi i8 [ %27, %36 ], [ %27, %32 ], [ %42, %41 ]
  %45 = and i8 %44, -3
  %46 = or i8 %45, %24
  store i8 %46, ptr %26, align 1
  br label %47

47:                                               ; preds = %43, %21, %18, %13, %3
  %48 = phi i32 [ -95, %3 ], [ %16, %13 ], [ 0, %43 ], [ 0, %18 ], [ 0, %21 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mtu_change(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dsa_notifier_mtu_info, align 4
  %5 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !19
  store i8 %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %4, i32 0, i32 2
  %12 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %4, i32 0, i32 3
  store i32 %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @dsa_tree_notify(ptr noundef %16, i32 noundef 16, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_fdb_add(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dsa_notifier_fdb_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %5, align 4, !annotation !19
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 2
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 3
  store i16 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @dsa_tree_notify(ptr noundef %16, i32 noundef 3, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_fdb_del(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dsa_notifier_fdb_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %5, align 4, !annotation !19
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 2
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 3
  store i16 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @dsa_tree_notify(ptr noundef %16, i32 noundef 4, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_host_fdb_add(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dsa_notifier_fdb_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %5, align 4, !annotation !19
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 2
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 3
  store i16 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 15
  %19 = load i64, ptr %18, align 16
  %20 = and i64 %19, 4096
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = tail call i32 @dev_uc_add(ptr noundef %17, ptr noundef %1) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  br label %27

27:                                               ; preds = %25, %3
  %28 = phi ptr [ %26, %25 ], [ %7, %3 ]
  %29 = getelementptr inbounds %struct.dsa_switch, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @dsa_tree_notify(ptr noundef %30, i32 noundef 5, ptr noundef nonnull %4) #9
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i32 [ %31, %27 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_host_fdb_del(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dsa_notifier_fdb_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %5, align 4, !annotation !19
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 2
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %4, i32 0, i32 3
  store i16 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 15
  %19 = load i64, ptr %18, align 16
  %20 = and i64 %19, 4096
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = tail call i32 @dev_uc_del(ptr noundef %17, ptr noundef %1) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  br label %27

27:                                               ; preds = %25, %3
  %28 = phi ptr [ %26, %25 ], [ %7, %3 ]
  %29 = getelementptr inbounds %struct.dsa_switch, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @dsa_tree_notify(ptr noundef %30, i32 noundef 6, ptr noundef nonnull %4) #9
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i32 [ %31, %27 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_fdb_dump(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 56
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 %9(ptr noundef %5, i32 noundef %13, ptr noundef %1, ptr noundef %2) #9
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ %14, %11 ], [ -95, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mdb_add(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dsa_notifier_mdb_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @dsa_tree_notify(ptr noundef %13, i32 noundef 10, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mdb_del(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dsa_notifier_mdb_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @dsa_tree_notify(ptr noundef %13, i32 noundef 11, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_host_mdb_add(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dsa_notifier_mdb_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %1, i32 0, i32 1
  %16 = tail call i32 @dev_mc_add(ptr noundef %14, ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.dsa_switch, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @dsa_tree_notify(ptr noundef %21, i32 noundef 12, ptr noundef nonnull %3) #9
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i32 [ %22, %18 ], [ %16, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_host_mdb_del(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dsa_notifier_mdb_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %1, i32 0, i32 1
  %16 = tail call i32 @dev_mc_del(ptr noundef %14, ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.dsa_switch, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @dsa_tree_notify(ptr noundef %21, i32 noundef 13, ptr noundef nonnull %3) #9
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i32 [ %22, %18 ], [ %16, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_vlan_add(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dsa_notifier_vlan_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %4, i32 0, i32 2
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %4, i32 0, i32 3
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @dsa_tree_notify(ptr noundef %15, i32 noundef 14, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_vlan_del(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dsa_notifier_vlan_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %3, i32 0, i32 3
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @dsa_tree_notify(ptr noundef %14, i32 noundef 15, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mrp_add(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 98
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %4, i32 noundef %12, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ -95, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mrp_del(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 99
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %4, i32 noundef %12, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ -95, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mrp_add_ring_role(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 100
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %4, i32 noundef %12, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ -95, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mrp_del_ring_role(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 101
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %4, i32 noundef %12, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ -95, %2 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dsa_port_set_tag_protocol(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.dsa_device_ops, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 3
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_phylink_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !19
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @of_get_phy_mode(ptr noundef %6, ptr noundef nonnull %2) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsa_switch_ops, ptr %12, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.dsa_switch_ops, ptr %12, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %10
  %21 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 17, i32 2
  store i8 1, ptr %21, align 4
  %22 = load ptr, ptr %11, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ %12, %16 ]
  %25 = getelementptr inbounds %struct.dsa_switch_ops, ptr %24, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 17
  call void %26(ptr noundef %4, i32 noundef %30, ptr noundef %31) #9
  br label %32

32:                                               ; preds = %28, %23
  %33 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 17
  %34 = load ptr, ptr %5, align 4
  %35 = icmp eq ptr %34, null
  %36 = getelementptr inbounds %struct.device_node, ptr %34, i32 0, i32 3
  %37 = select i1 %35, ptr null, ptr %36
  %38 = load i32, ptr %2, align 4
  %39 = call ptr @phylink_create(ptr noundef %33, ptr noundef %37, i32 noundef %38, ptr noundef nonnull @dsa_port_phylink_mac_ops) #9
  %40 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 16
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = ptrtoint ptr %39 to i32
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %43) #10
  %45 = load ptr, ptr %40, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %47

47:                                               ; preds = %42, %32
  %48 = phi i32 [ %46, %42 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_link_register_of(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !19
  %16 = call i32 @__of_parse_phandle_with_args(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %19 = load ptr, ptr %14, align 4
  %20 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %19) #9
  %21 = icmp ne ptr %18, null
  %22 = select i1 %17, i1 %21, i1 false
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %13
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.dsa_switch_ops, ptr %25, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  call void %27(ptr noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #9
  br label %30

30:                                               ; preds = %29, %24
  %31 = load ptr, ptr %4, align 4
  %32 = load ptr, ptr %14, align 4
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 17
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 17, i32 1
  store i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dsa_switch, ptr %31, i32 0, i32 3
  %37 = load i16, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 17, i32 3
  %39 = trunc i16 %37 to i8
  %40 = lshr i8 %39, 7
  store i8 %40, ptr %38, align 1
  %41 = call i32 @dsa_port_phylink_create(ptr noundef %0) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %84

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 16
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @phylink_of_phy_connect(ptr noundef %45, ptr noundef %32, i32 noundef 0) #9
  switch i32 %46, label %47 [
    i32 -19, label %84
    i32 0, label %84
  ]

47:                                               ; preds = %43
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %46) #10
  %49 = load ptr, ptr %44, align 4
  call void @phylink_destroy(ptr noundef %49) #9
  br label %84

50:                                               ; preds = %1
  %51 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.4) #10
  %52 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 12
  %53 = load ptr, ptr %52, align 4
  %54 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %53) #9
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = load ptr, ptr %52, align 4
  %57 = load ptr, ptr %4, align 4
  %58 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !19
  %59 = tail call i32 @of_phy_register_fixed_link(ptr noundef %56) #9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.12, i32 noundef %58) #10
  br label %81

63:                                               ; preds = %55
  %64 = tail call ptr @of_phy_find_device(ptr noundef %56) #9
  %65 = call i32 @of_get_phy_mode(ptr noundef %56, ptr noundef nonnull %2) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, ptr %2, align 4
  br label %70

69:                                               ; preds = %63
  store i32 0, ptr %2, align 4
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = getelementptr inbounds %struct.phy_device, ptr %64, i32 0, i32 7
  store i32 %71, ptr %72, align 4
  %73 = call i32 @genphy_read_status(ptr noundef %64) #9
  %74 = getelementptr inbounds %struct.dsa_switch, ptr %57, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dsa_switch_ops, ptr %75, i32 0, i32 10
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  call void %77(ptr noundef %57, i32 noundef %58, ptr noundef %64) #9
  br label %80

80:                                               ; preds = %79, %70
  call void @put_device(ptr noundef %64) #9
  br label %81

81:                                               ; preds = %80, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %84

82:                                               ; preds = %50
  %83 = tail call fastcc i32 @dsa_port_setup_phy_of(ptr noundef %0, i1 noundef zeroext true)
  br label %84

84:                                               ; preds = %82, %81, %47, %43, %43, %30, %13
  %85 = phi i32 [ %59, %81 ], [ %83, %82 ], [ 0, %13 ], [ %46, %47 ], [ %41, %30 ], [ 0, %43 ], [ 0, %43 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_setup_phy_of(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !19
  %10 = call i32 @__of_parse_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %11 = icmp ne i32 %10, 0
  %12 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %13 = icmp eq ptr %12, null
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %43, label %15

15:                                               ; preds = %2
  %16 = call ptr @of_phy_find_device(ptr noundef nonnull %12) #9
  %17 = icmp eq ptr %16, null
  call void @of_node_put(ptr noundef nonnull %12) #9
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %16, %18 ], [ inttoptr (i32 -517 to ptr), %15 ]
  %22 = ptrtoint ptr %21 to i32
  br label %43

23:                                               ; preds = %18
  br i1 %1, label %24, label %30

24:                                               ; preds = %23
  %25 = call i32 @genphy_resume(ptr noundef nonnull %16) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = call i32 @genphy_read_status(ptr noundef nonnull %16) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %41, label %33

30:                                               ; preds = %23
  %31 = call i32 @genphy_suspend(ptr noundef nonnull %16) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %28, %27 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dsa_switch_ops, ptr %36, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  call void %38(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %16) #9
  br label %41

41:                                               ; preds = %40, %33, %30, %27, %24
  %42 = phi i32 [ %25, %24 ], [ %28, %27 ], [ %34, %40 ], [ %34, %33 ], [ %31, %30 ]
  call void @put_device(ptr noundef nonnull %16) #9
  br label %43

43:                                               ; preds = %41, %20, %2
  %44 = phi i32 [ %22, %20 ], [ %42, %41 ], [ 0, %2 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_port_link_unregister_of(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  tail call void @rtnl_lock() #9
  %14 = load ptr, ptr %10, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %14) #9
  tail call void @rtnl_unlock() #9
  %15 = load ptr, ptr %10, align 4
  tail call void @phylink_destroy(ptr noundef %15) #9
  store ptr null, ptr %10, align 4
  br label %24

16:                                               ; preds = %9, %1
  %17 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %18) #9
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %17, align 4
  tail call void @of_phy_deregister_fixed_link(ptr noundef %21) #9
  br label %24

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @dsa_port_setup_phy_of(ptr noundef %0, i1 noundef zeroext false)
  br label %24

24:                                               ; preds = %22, %20, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_get_phy_strings(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %5) #9
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !19
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %10 = icmp ne i32 %9, 0
  %11 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = call ptr @of_phy_find_device(ptr noundef nonnull %11) #9
  %16 = icmp eq ptr %15, null
  call void @of_node_put(ptr noundef nonnull %11) #9
  %17 = select i1 %16, ptr inttoptr (i32 -517 to ptr), ptr %15
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @phy_ethtool_get_strings(ptr noundef nonnull %17, ptr noundef %1) #9
  call void @put_device(ptr noundef nonnull %17) #9
  br label %21

21:                                               ; preds = %19, %14, %7, %2
  %22 = phi i32 [ %20, %19 ], [ -95, %2 ], [ -95, %14 ], [ -95, %7 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_strings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_get_ethtool_phy_stats(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %5) #9
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !19
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %10 = icmp ne i32 %9, 0
  %11 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = call ptr @of_phy_find_device(ptr noundef nonnull %11) #9
  %16 = icmp eq ptr %15, null
  call void @of_node_put(ptr noundef nonnull %11) #9
  %17 = select i1 %16, ptr inttoptr (i32 -517 to ptr), ptr %15
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @phy_ethtool_get_stats(ptr noundef nonnull %17, ptr noundef null, ptr noundef %1) #9
  call void @put_device(ptr noundef nonnull %17) #9
  br label %21

21:                                               ; preds = %19, %14, %7, %2
  %22 = phi i32 [ %20, %19 ], [ -95, %2 ], [ -95, %14 ], [ -95, %7 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_get_phy_sset_count(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %4) #9
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !19
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %9 = icmp ne i32 %8, 0
  %10 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %11 = icmp eq ptr %10, null
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = call ptr @of_phy_find_device(ptr noundef nonnull %10) #9
  %15 = icmp eq ptr %14, null
  call void @of_node_put(ptr noundef nonnull %10) #9
  %16 = select i1 %15, ptr inttoptr (i32 -517 to ptr), ptr %14
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @phy_ethtool_get_sset_count(ptr noundef nonnull %16) #9
  call void @put_device(ptr noundef nonnull %16) #9
  br label %20

20:                                               ; preds = %18, %13, %6, %1
  %21 = phi i32 [ %19, %18 ], [ -95, %1 ], [ -95, %13 ], [ -95, %6 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_sset_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_hsr_join(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 96
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 19
  store ptr %1, ptr %11, align 4
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.dsa_switch_ops, ptr %12, i32 0, i32 96
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 %14(ptr noundef %4, i32 noundef %16, ptr noundef %1) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  store ptr null, ptr %11, align 4
  br label %20

20:                                               ; preds = %19, %10, %2
  %21 = phi i32 [ -95, %2 ], [ %17, %19 ], [ 0, %10 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_port_hsr_leave(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 19
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 97
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 %9(ptr noundef %4, i32 noundef %13, ptr noundef %1) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %12, align 4
  %20 = inttoptr i32 %14 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.5, i32 noundef %19, ptr noundef %1, ptr noundef nonnull %20) #10
  br label %21

21:                                               ; preds = %16, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_port_tag_8021q_vlan_add(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dsa_notifier_tag_8021q_vlan_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %5, align 4, !annotation !19
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_tree, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %4, i32 0, i32 2
  %16 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %4, i32 0, i32 3
  store i16 %1, ptr %18, align 4
  br i1 %2, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @dsa_broadcast(i32 noundef 20, ptr noundef nonnull %4) #9
  br label %24

21:                                               ; preds = %3
  %22 = load ptr, ptr %8, align 4
  %23 = call i32 @dsa_tree_notify(ptr noundef %22, i32 noundef 20, ptr noundef nonnull %4) #9
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_port_tag_8021q_vlan_del(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dsa_notifier_tag_8021q_vlan_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %5, align 4, !annotation !19
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_tree, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %4, i32 0, i32 2
  %16 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %4, i32 0, i32 3
  store i16 %1, ptr %18, align 4
  br i1 %2, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @dsa_broadcast(i32 noundef 21, ptr noundef nonnull %4) #9
  br label %24

21:                                               ; preds = %3
  %22 = load ptr, ptr %8, align 4
  %23 = call i32 @dsa_tree_notify(ptr noundef %22, i32 noundef 21, ptr noundef nonnull %4) #9
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %16, align 4
  %31 = zext i16 %1 to i32
  %32 = inttoptr i32 %25 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6, i32 noundef %30, i32 noundef %31, ptr noundef nonnull %32) #10
  br label %33

33:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_tree_bridge_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_bridge_num_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_bridge_num_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tree_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_upper_get_next_dev_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_port_phylink_validate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -232
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.phylink_config, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  tail call void @phylink_generic_validate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %19

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %0, i32 -228
  %18 = load i32, ptr %17, align 4
  tail call void %9(ptr noundef %5, i32 noundef %18, ptr noundef %1, ptr noundef %2) #9
  br label %19

19:                                               ; preds = %16, %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_port_phylink_mac_pcs_get_state(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -232
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 -228
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %4, i32 noundef %12, ptr noundef %1) #9
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load ptr, ptr %4, align 4
  %17 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.10, i32 noundef %17, i32 noundef %13) #10
  br label %18

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 6
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, -2
  store i8 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %18, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_port_phylink_mac_config(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -232
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %0, i32 -228
  %13 = load i32, ptr %12, align 4
  tail call void %9(ptr noundef %5, i32 noundef %13, i32 noundef %1, ptr noundef %2) #9
  br label %14

14:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_port_phylink_mac_an_restart(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -232
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -228
  %11 = load i32, ptr %10, align 4
  tail call void %7(ptr noundef %3, i32 noundef %11) #9
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_port_phylink_mac_link_down(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -232
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -224
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 -248
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 120
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dsa_switch_ops, ptr %17, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.dsa_switch_ops, ptr %17, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ne ptr %23, null
  %25 = icmp ne ptr %15, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %0, i32 -228
  %29 = load i32, ptr %28, align 4
  tail call void %23(ptr noundef %5, i32 noundef %29, ptr noundef nonnull %15) #9
  br label %33

30:                                               ; preds = %14
  %31 = getelementptr i8, ptr %0, i32 -228
  %32 = load i32, ptr %31, align 4
  tail call void %19(ptr noundef %5, i32 noundef %32, i32 noundef %1, i32 noundef %2) #9
  br label %33

33:                                               ; preds = %30, %27, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_port_phylink_mac_link_up(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #0 {
  %9 = getelementptr i8, ptr %0, i32 -232
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsa_switch_ops, ptr %12, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.dsa_switch_ops, ptr %12, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ne ptr %18, null
  %20 = icmp ne ptr %1, null
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i32 -228
  %24 = load i32, ptr %23, align 4
  tail call void %18(ptr noundef %10, i32 noundef %24, ptr noundef nonnull %1) #9
  br label %28

25:                                               ; preds = %8
  %26 = getelementptr i8, ptr %0, i32 -228
  %27 = load i32, ptr %26, align 4
  tail call void %14(ptr noundef %10, i32 noundef %27, i32 noundef %2, i32 noundef %3, ptr noundef %1, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #9
  br label %28

28:                                               ; preds = %25, %22, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{i64 720475, i64 2148210446, i64 2148210472, i64 2148210519, i64 2148210541, i64 2148210569, i64 2148210589}
!9 = !{i64 2148223319, i64 2148223351, i64 2148223380, i64 2148223414, i64 2148223445, i64 2148223468}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i8 0, i8 2}
!13 = !{i64 2148323541}
!14 = !{i64 2148225676, i64 2148225708, i64 2148225737, i64 2148225771, i64 2148225802, i64 2148225825}
!15 = !{i64 2149527739}
!16 = !{i64 2149310426}
!17 = !{i64 2155315353, i64 2155315841, i64 2155315390, i64 2155315446, i64 2155315480, i64 2155315504, i64 2155315545, i64 2155315566, i64 2155315594, i64 2155315628}
!18 = !{i64 2149310643}
!19 = !{!"auto-init"}
