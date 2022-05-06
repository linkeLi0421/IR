; ModuleID = '/llk/IR/net/dsa/master.c_pt.bc'
source_filename = "../net/dsa/master.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dsa_netdevice_ops = type { ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.dsa_port = type { %union.anon.136, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.136 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.125 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.125 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.150 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [49 x i8] c"Failed to create a device link to DSA switch %s\0A\00", align 1
@dsa_netdev_ops = internal constant %struct.dsa_netdevice_ops { ptr @dsa_master_ioctl }, align 4
@dsa_group = internal constant %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @dsa_slave_attrs, ptr null }, align 4
@dsa_master_set_promiscuity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"net/dsa/master.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dsa\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"p%.2d\00", align 1
@dsa_slave_attrs = internal global [2 x ptr] [ptr @dev_attr_tagging, ptr null], align 4
@dev_attr_tagging = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @tagging_show, ptr @tagging_store }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"tagging\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_master_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @device_link_add(ptr noundef %5, ptr noundef %8, i32 noundef 2) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %17, %16 ], [ %14, %11 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %19) #9
  br label %20

20:                                               ; preds = %18, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %21 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %23 = load i64, ptr %22, align 16
  %24 = and i64 %23, 4096
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dsa_device_ops, ptr %28, i32 0, i32 9
  %30 = load i8, ptr %29, align 4, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %26, %20
  %33 = tail call i32 @rtnl_is_locked() #8
  %34 = icmp eq i32 %33, 0
  %35 = load i1, ptr @dsa_master_set_promiscuity.__already_done, align 1
  %36 = xor i1 %35, true
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %39, !prof !10

38:                                               ; preds = %32
  store i1 true, ptr @dsa_master_set_promiscuity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 275) #8
  br label %39

39:                                               ; preds = %38, %32
  %40 = tail call i32 @dev_set_promiscuity(ptr noundef %0, i32 noundef 1) #8
  %41 = load ptr, ptr %21, align 4
  br label %42

42:                                               ; preds = %39, %26
  %43 = phi ptr [ %1, %26 ], [ %41, %39 ]
  %44 = getelementptr inbounds %struct.dsa_port, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call noalias ptr @devm_kmalloc(ptr noundef %46, i32 noundef 284, i32 noundef 3520) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %72, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.dsa_port, ptr %43, i32 0, i32 21
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(284) %47, ptr noundef nonnull align 4 dereferenceable(284) %51, i32 284, i1 false) #8
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.ethtool_ops, ptr %47, i32 0, i32 4
  store ptr @dsa_master_get_regs_len, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ethtool_ops, ptr %47, i32 0, i32 5
  store ptr @dsa_master_get_regs, ptr %57, align 4
  %58 = getelementptr inbounds %struct.ethtool_ops, ptr %47, i32 0, i32 31
  store ptr @dsa_master_get_sset_count, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ethtool_ops, ptr %47, i32 0, i32 26
  store ptr @dsa_master_get_ethtool_stats, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ethtool_ops, ptr %47, i32 0, i32 24
  store ptr @dsa_master_get_strings, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ethtool_ops, ptr %47, i32 0, i32 61
  store ptr @dsa_master_get_ethtool_phy_stats, ptr %61, align 4
  store ptr %47, ptr %50, align 8
  %62 = load ptr, ptr %21, align 4
  %63 = getelementptr inbounds %struct.dsa_port, ptr %62, i32 0, i32 22
  store ptr @dsa_netdev_ops, ptr %63, align 4
  %64 = tail call i32 @sysfs_create_group(ptr noundef %6, ptr noundef nonnull @dsa_group) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %55
  %67 = load ptr, ptr %21, align 4
  %68 = getelementptr inbounds %struct.dsa_port, ptr %67, i32 0, i32 22
  store ptr null, ptr %68, align 4
  %69 = load ptr, ptr %21, align 4
  %70 = getelementptr inbounds %struct.dsa_port, ptr %69, i32 0, i32 21
  %71 = load ptr, ptr %70, align 4
  store ptr %71, ptr %50, align 8
  store ptr null, ptr %70, align 4
  br label %72

72:                                               ; preds = %66, %42
  %73 = phi i32 [ %64, %66 ], [ -12, %42 ]
  %74 = load i64, ptr %22, align 16
  %75 = and i64 %74, 4096
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %21, align 4
  %79 = getelementptr inbounds %struct.dsa_port, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.dsa_device_ops, ptr %80, i32 0, i32 9
  %82 = load i8, ptr %81, align 4, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %77, %72
  %85 = tail call i32 @rtnl_is_locked() #8
  %86 = icmp eq i32 %85, 0
  %87 = load i1, ptr @dsa_master_set_promiscuity.__already_done, align 1
  %88 = xor i1 %87, true
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %91, !prof !10

90:                                               ; preds = %84
  store i1 true, ptr @dsa_master_set_promiscuity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 275) #8
  br label %91

91:                                               ; preds = %90, %84
  %92 = tail call i32 @dev_set_promiscuity(ptr noundef %0, i32 noundef -1) #8
  br label %93

93:                                               ; preds = %91, %77, %55
  %94 = phi i32 [ 0, %55 ], [ %73, %77 ], [ %73, %91 ]
  ret i32 %94
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_master_teardown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  tail call void @sysfs_remove_group(ptr noundef %2, ptr noundef nonnull @dsa_group) #8
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 22
  store ptr null, ptr %5, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  store ptr %8, ptr %9, align 8
  store ptr null, ptr %7, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %11 = load i64, ptr %10, align 16
  %12 = and i64 %11, 4096
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.dsa_port, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dsa_device_ops, ptr %17, i32 0, i32 9
  %19 = load i8, ptr %18, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %14, %1
  %22 = tail call i32 @rtnl_is_locked() #8
  %23 = icmp eq i32 %22, 0
  %24 = load i1, ptr @dsa_master_set_promiscuity.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !10

27:                                               ; preds = %21
  store i1 true, ptr @dsa_master_set_promiscuity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 275) #8
  br label %28

28:                                               ; preds = %27, %21
  %29 = tail call i32 @dev_set_promiscuity(ptr noundef %0, i32 noundef -1) #8
  br label %30

30:                                               ; preds = %28, %14
  store ptr null, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_master_get_regs_len(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = tail call i32 %11(ptr noundef %0) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = add nuw i32 %14, 208
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i32 [ %17, %16 ], [ 208, %1 ]
  %20 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dsa_switch_ops, ptr %21, i32 0, i32 41
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = tail call i32 %23(ptr noundef %7, i32 noundef %9) #8
  %27 = icmp slt i32 %26, 0
  %28 = select i1 %27, i32 0, i32 %19
  %29 = add i32 %28, %26
  br label %30

30:                                               ; preds = %25, %18, %13
  %31 = phi i32 [ %14, %13 ], [ %19, %18 ], [ %29, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_master_get_regs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %13(ptr noundef %0) #8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 2
  store i32 %20, ptr %23, align 4
  %24 = load ptr, ptr %16, align 4
  tail call void %24(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  %25 = load i32, ptr %23, align 4
  %26 = getelementptr i8, ptr %2, i32 %25
  br label %27

27:                                               ; preds = %22, %15, %3
  %28 = phi ptr [ %26, %22 ], [ %2, %15 ], [ %2, %3 ]
  %29 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %28, i32 0, i32 1
  %30 = tail call i32 @strlcpy(ptr noundef %29, ptr noundef nonnull @.str.3, i32 noundef 32) #8
  %31 = getelementptr i8, ptr %28, i32 196
  %32 = getelementptr i8, ptr %28, i32 208
  %33 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dsa_switch_ops, ptr %34, i32 0, i32 41
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.dsa_switch_ops, ptr %34, i32 0, i32 42
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %36(ptr noundef %9, i32 noundef %11) #8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %28, i32 204
  store i32 %43, ptr %46, align 4
  %47 = load ptr, ptr %33, align 4
  %48 = getelementptr inbounds %struct.dsa_switch_ops, ptr %47, i32 0, i32 42
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %9, i32 noundef %11, ptr noundef %31, ptr noundef %32) #8
  br label %50

50:                                               ; preds = %45, %42, %38, %27, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_master_get_sset_count(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 7
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 61
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 @phy_ethtool_get_sset_count(ptr noundef nonnull %12) #8
  br label %26

20:                                               ; preds = %14, %10, %2
  %21 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 31
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %0, i32 noundef %1) #8
  br label %26

26:                                               ; preds = %24, %20, %18
  %27 = phi i32 [ %25, %24 ], [ 0, %20 ], [ %19, %18 ]
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 0)
  %29 = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dsa_switch_ops, ptr %30, i32 0, i32 22
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 %32(ptr noundef %8, i32 noundef %36, i32 noundef %1) #8
  %38 = add i32 %37, %28
  br label %39

39:                                               ; preds = %34, %26
  %40 = phi i32 [ %38, %34 ], [ %28, %26 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_master_get_ethtool_stats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 31
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 26
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %13(ptr noundef %0, i32 noundef 1) #8
  %21 = load ptr, ptr %16, align 4
  tail call void %21(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  br label %22

22:                                               ; preds = %19, %15, %3
  %23 = phi i32 [ %20, %19 ], [ 0, %15 ], [ 0, %3 ]
  %24 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dsa_switch_ops, ptr %25, i32 0, i32 21
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = getelementptr i64, ptr %2, i32 %23
  tail call void %27(ptr noundef %9, i32 noundef %11, ptr noundef %30) #8
  br label %31

31:                                               ; preds = %29, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_master_get_strings(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca [4 x i8], align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !12
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %12)
  %14 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  store i8 95, ptr %14, align 1
  %15 = icmp eq i32 %1, 7
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 61
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = tail call i32 @phy_ethtool_get_sset_count(ptr noundef nonnull %18) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %17, align 8
  %29 = tail call i32 @phy_ethtool_get_strings(ptr noundef %28, ptr noundef %2) #8
  br label %42

30:                                               ; preds = %20, %16, %3
  %31 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 31
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 24
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = tail call i32 %32(ptr noundef %0, i32 noundef %1) #8
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 0)
  %41 = load ptr, ptr %35, align 4
  tail call void %41(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8
  br label %42

42:                                               ; preds = %38, %34, %30, %27, %24
  %43 = phi i32 [ %40, %38 ], [ 0, %34 ], [ 0, %30 ], [ %25, %27 ], [ 0, %24 ]
  %44 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dsa_switch_ops, ptr %45, i32 0, i32 20
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %42
  %50 = shl i32 %43, 5
  %51 = getelementptr i8, ptr %2, i32 %50
  tail call void %47(ptr noundef %10, i32 noundef %12, i32 noundef %1, ptr noundef %51) #8
  %52 = load ptr, ptr %44, align 4
  %53 = getelementptr inbounds %struct.dsa_switch_ops, ptr %52, i32 0, i32 22
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef %10, i32 noundef %12, i32 noundef %1) #8
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i32, ptr %4, align 4
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ 0, %57 ], [ %65, %59 ]
  %61 = shl i32 %60, 5
  %62 = or i32 %61, 4
  %63 = getelementptr i8, ptr %51, i32 %62
  %64 = getelementptr i8, ptr %51, i32 %61
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(28) %63, ptr noundef align 1 dereferenceable(28) %64, i32 28, i1 false)
  store i32 %58, ptr %64, align 1
  %65 = add nuw nsw i32 %60, 1
  %66 = icmp eq i32 %65, %55
  br i1 %66, label %67, label %59

67:                                               ; preds = %59, %49, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_master_get_ethtool_phy_stats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 61
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = tail call i32 @phy_ethtool_get_sset_count(ptr noundef nonnull %13) #8
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load ptr, ptr %12, align 8
  %24 = tail call i32 @phy_ethtool_get_stats(ptr noundef %23, ptr noundef %1, ptr noundef %2) #8
  br label %36

25:                                               ; preds = %15, %3
  %26 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 31
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 61
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call i32 %27(ptr noundef %0, i32 noundef 7) #8
  %35 = load ptr, ptr %30, align 4
  tail call void %35(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  br label %36

36:                                               ; preds = %33, %29, %25, %22, %19
  %37 = phi i32 [ %34, %33 ], [ 0, %29 ], [ 0, %25 ], [ %20, %22 ], [ %20, %19 ]
  %38 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dsa_switch_ops, ptr %39, i32 0, i32 23
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = tail call i32 @llvm.smax.i32(i32 %37, i32 0)
  %45 = getelementptr i64, ptr %2, i32 %44
  tail call void %41(ptr noundef %9, i32 noundef %11, ptr noundef %45) #8
  br label %46

46:                                               ; preds = %43, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_sset_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_strings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_master_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, -2
  %5 = icmp eq i32 %4, 35248
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_port, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 1
  br label %14

14:                                               ; preds = %26, %6
  %15 = phi ptr [ %13, %6 ], [ %16, %26 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 -264
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dsa_switch, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dsa_switch_ops, ptr %22, i32 0, i32 74
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.dsa_switch_ops, ptr %22, i32 0, i32 75
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %14, label %38

30:                                               ; preds = %14, %3
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.net_device_ops, ptr %32, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call i32 %34(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  br label %38

38:                                               ; preds = %36, %30, %26, %18
  %39 = phi i32 [ %37, %36 ], [ -95, %30 ], [ -16, %26 ], [ -16, %18 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tagging_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -228
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @dsa_tag_protocol_to_str(ptr noundef %7) #8
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tagging_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -688
  %6 = getelementptr i8, ptr %0, i32 -228
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @dsa_find_tagger_by_name(ptr noundef %2) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = ptrtoint ptr %10 to i32
  br label %25

14:                                               ; preds = %4
  %15 = icmp eq ptr %10, %9
  br i1 %15, label %24, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dsa_switch, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @dsa_tree_change_tag_proto(ptr noundef %20, ptr noundef %5, ptr noundef %10, ptr noundef %9) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void @dsa_tag_driver_put(ptr noundef %10) #8
  br label %25

24:                                               ; preds = %16, %14
  tail call void @dsa_tag_driver_put(ptr noundef %9) #8
  br label %25

25:                                               ; preds = %24, %23, %12
  %26 = phi i32 [ %13, %12 ], [ %3, %24 ], [ %21, %23 ]
  ret i32 %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_tag_protocol_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_find_tagger_by_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tree_change_tag_proto(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_driver_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 2156592167}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2156592385}
!12 = !{!"auto-init"}
