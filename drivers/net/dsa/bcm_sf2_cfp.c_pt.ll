; ModuleID = '/llk/IR/drivers/net/dsa/bcm_sf2_cfp.c_pt.bc'
source_filename = "../drivers/net/dsa/bcm_sf2_cfp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bcm_sf2_cfp_stat = type { i32, i32, ptr }
%struct.cfp_udf_layout = type { [4 x %struct.cfp_udf_slice_layout] }
%struct.cfp_udf_slice_layout = type { [9 x i8], i32, i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dsa_port = type { %union.anon.136, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.136 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.125 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.125 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }
%struct.bcm_sf2_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, %struct.bcm_sf2_hw_params, [12 x %struct.bcm_sf2_port_status], i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, %struct.bcm_sf2_cfp_priv }
%struct.bcm_sf2_hw_params = type { i16, i16, i16, i32, i8, i8, i8, i8 }
%struct.bcm_sf2_port_status = type { i32, i32, i8 }
%struct.bcm_sf2_cfp_priv = type { %struct.mutex, [8 x i32], [8 x i32], i32, %struct.list_head }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.134, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.134 = type { i32 }
%struct.cfp_rule = type { i32, %struct.ethtool_rx_flow_spec, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.116, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.137, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.116 = type { %struct.list_head, %struct.list_head }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_rx_flow_spec_input = type { ptr, i32 }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ip = type { ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.anon.156 = type { i16, i16 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }

@.str = private unnamed_addr constant [23 x i8] c"failed to remove rule\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to restore rule\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"CFP%03d_%sCntr\00", align 1
@bcm_sf2_cfp_stats = internal unnamed_addr constant [3 x %struct.bcm_sf2_cfp_stat] [%struct.bcm_sf2_cfp_stat { i32 164352, i32 8192, ptr @.str.6 }, %struct.bcm_sf2_cfp_stat { i32 164368, i32 16384, ptr @.str.7 }, %struct.bcm_sf2_cfp_stat { i32 164384, i32 24576, ptr @.str.8 }], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@udf_tcpip4_layout = internal constant %struct.cfp_udf_layout { [4 x %struct.cfp_udf_slice_layout] [%struct.cfp_udf_slice_layout zeroinitializer, %struct.cfp_udf_slice_layout { [9 x i8] c"FGHI`a\00\00\00", i32 50397056, i32 164992 }, %struct.cfp_udf_slice_layout zeroinitializer, %struct.cfp_udf_slice_layout zeroinitializer] }, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"\013TCAM entry at addr %d failed\0A\00", align 1
@zero_slice = internal constant [9 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\013Policer entry at %d failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\013Meter entry at %d failed\0A\00", align 1
@udf_tcpip6_layout = internal constant %struct.cfp_udf_layout { [4 x %struct.cfp_udf_slice_layout] [%struct.cfp_udf_slice_layout { [9 x i8] c"DEFGHIJK`", i32 50397056, i32 165120 }, %struct.cfp_udf_slice_layout zeroinitializer, %struct.cfp_udf_slice_layout zeroinitializer, %struct.cfp_udf_slice_layout { [9 x i8] c"LMNOPQRSa", i32 50397056, i32 165504 }] }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"drivers/net/dsa/bcm_sf2_cfp.c\00", align 1
@switch.table.bcm_sf2_set_rxnfc = private unnamed_addr constant [6 x i32] [i32 16, i32 16, i32 40, i32 40, i32 40, i32 40], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm_sf2_get_rxnfc(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_tree, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %24, label %10

10:                                               ; preds = %19, %4
  %11 = phi ptr [ %20, %19 ], [ %8, %4 ]
  %12 = getelementptr i8, ptr %11, i32 -264
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %11, i32 -260
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = load ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, %7
  br i1 %21, label %24, label %10

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %11, i32 -280
  br label %24

24:                                               ; preds = %22, %19, %4
  %25 = phi ptr [ %23, %22 ], [ null, %4 ], [ null, %19 ]
  %26 = getelementptr inbounds %struct.dsa_port, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.b53_device, ptr %30, i32 0, i32 23
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %32, i32 0, i32 32
  tail call void @mutex_lock(ptr noundef %33) #17
  %34 = load i32, ptr %2, align 8
  switch i32 %34, label %121 [
    i32 46, label %35
    i32 47, label %45
    i32 48, label %97
  ]

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %32, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %32, i32 0, i32 32, i32 2
  %39 = tail call i32 @__bitmap_weight(ptr noundef %38, i32 noundef %37) #17
  %40 = add i32 %39, -1
  %41 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 4
  store i32 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = or i64 %43, 2147483648
  store i64 %44, ptr %42, align 8
  br label %123

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %32, i32 0, i32 32, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 -176
  %51 = icmp eq ptr %49, %48
  br i1 %51, label %65, label %52

52:                                               ; preds = %61, %45
  %53 = phi ptr [ %63, %61 ], [ %50, %45 ]
  %54 = phi ptr [ %62, %61 ], [ %49, %45 ]
  %55 = load i32, ptr %53, align 8
  %56 = icmp eq i32 %55, %1
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %54, i32 -8
  %59 = load i32, ptr %58, align 8
  %60 = icmp eq i32 %59, %47
  br i1 %60, label %65, label %61

61:                                               ; preds = %57, %52
  %62 = load ptr, ptr %54, align 4
  %63 = getelementptr i8, ptr %62, i32 -176
  %64 = icmp eq ptr %62, %48
  br i1 %64, label %65, label %52

65:                                               ; preds = %61, %57, %45
  %66 = phi ptr [ %50, %45 ], [ %53, %57 ], [ %63, %61 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %121, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3
  %70 = getelementptr inbounds %struct.cfp_rule, ptr %66, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %69, ptr noundef align 8 dereferenceable(168) %70, i32 168, i1 false) #17
  %71 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 3
  br label %72

72:                                               ; preds = %72, %68
  %73 = phi i32 [ 0, %68 ], [ %77, %72 ]
  %74 = getelementptr [52 x i8], ptr %71, i32 0, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = xor i8 %75, -1
  store i8 %76, ptr %74, align 1
  %77 = add nuw nsw i32 %73, 1
  %78 = icmp eq i32 %77, 52
  br i1 %78, label %79, label %72

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 4, i32 2
  %81 = load i16, ptr %80, align 8
  %82 = xor i16 %81, -1
  store i16 %82, ptr %80, align 8
  %83 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 4, i32 3
  %84 = load i16, ptr %83, align 2
  %85 = xor i16 %84, -1
  store i16 %85, ptr %83, align 2
  %86 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 4, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = xor i32 %87, -1
  store i32 %88, ptr %86, align 4
  %89 = getelementptr %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 4, i32 4, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = xor i32 %90, -1
  store i32 %91, ptr %89, align 4
  %92 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %32, i32 0, i32 10
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, -1
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 2
  store i64 %95, ptr %96, align 8
  br label %123

97:                                               ; preds = %24
  %98 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %32, i32 0, i32 32, i32 2
  %99 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %32, i32 0, i32 10
  %100 = load i32, ptr %99, align 4
  %101 = tail call i32 @_find_next_bit_le(ptr noundef %98, i32 noundef %100, i32 noundef 1) #17
  %102 = load i32, ptr %99, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %104, %97
  %105 = phi i32 [ %108, %104 ], [ 0, %97 ]
  %106 = phi i32 [ %111, %104 ], [ %101, %97 ]
  %107 = getelementptr i32, ptr %3, i32 %105
  store i32 %106, ptr %107, align 4
  %108 = add i32 %105, 1
  %109 = load i32, ptr %99, align 4
  %110 = add nuw i32 %106, 1
  %111 = tail call i32 @_find_next_bit_le(ptr noundef %98, i32 noundef %109, i32 noundef %110) #17
  %112 = load i32, ptr %99, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %104, label %114

114:                                              ; preds = %104, %97
  %115 = phi i32 [ 0, %97 ], [ %108, %104 ]
  %116 = phi i32 [ %102, %97 ], [ %112, %104 ]
  %117 = add i32 %116, -1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 2
  store i64 %118, ptr %119, align 8
  %120 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 4
  store i32 %115, ptr %120, align 8
  br label %123

121:                                              ; preds = %65, %24
  %122 = phi i32 [ -95, %24 ], [ -22, %65 ]
  tail call void @mutex_unlock(ptr noundef %33) #17
  br label %133

123:                                              ; preds = %114, %79, %35
  tail call void @mutex_unlock(ptr noundef %33) #17
  %124 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 42
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.ethtool_ops, ptr %125, i32 0, i32 32
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = tail call i32 %127(ptr noundef %28, ptr noundef %2, ptr noundef %3) #17
  %131 = icmp eq i32 %130, -95
  %132 = select i1 %131, i32 0, i32 %130
  br label %133

133:                                              ; preds = %129, %123, %121
  %134 = phi i32 [ %122, %121 ], [ %132, %129 ], [ 0, %123 ]
  ret i32 %134
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm_sf2_set_rxnfc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %18, %3
  %10 = phi ptr [ %19, %18 ], [ %7, %3 ]
  %11 = getelementptr i8, ptr %10, i32 -264
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %10, i32 -260
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %9
  %19 = load ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %23, label %9

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %10, i32 -280
  br label %23

23:                                               ; preds = %21, %18, %3
  %24 = phi ptr [ %22, %21 ], [ null, %3 ], [ null, %18 ]
  %25 = getelementptr inbounds %struct.dsa_port, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.b53_device, ptr %29, i32 0, i32 23
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %31, i32 0, i32 32
  tail call void @mutex_lock(ptr noundef %32) #17
  %33 = load i32, ptr %2, align 8
  switch i32 %33, label %172 [
    i32 50, label %34
    i32 49, label %155
  ]

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3
  %36 = load ptr, ptr %28, align 4
  %37 = getelementptr inbounds %struct.b53_device, ptr %36, i32 0, i32 23
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %35, align 8
  %40 = and i32 %39, 1073741824
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %172

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 6
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %38, i32 0, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  %50 = icmp ugt i32 %44, %49
  br i1 %50, label %172, label %51

51:                                               ; preds = %46, %42
  %52 = icmp sgt i32 %39, -1
  br i1 %52, label %63, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dsa_switch_ops, ptr %55, i32 0, i32 52
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.dsa_switch_ops, ptr %55, i32 0, i32 53
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %172, label %63

63:                                               ; preds = %59, %53, %51
  br i1 %45, label %73, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %38, i32 0, i32 32, i32 1
  %66 = lshr i32 %44, 5
  %67 = getelementptr i32, ptr %65, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %44, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %172

73:                                               ; preds = %64, %63
  %74 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %38, i32 0, i32 32, i32 4
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  br i1 %76, label %141, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 5
  %79 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 2, i32 4
  %80 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 1
  %81 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 3
  %82 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 2, i32 3
  %83 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 4, i32 3
  %84 = and i32 %39, 2147483647
  %85 = add nsw i32 %84, -1
  %86 = icmp ult i32 %85, 6
  %87 = trunc i32 %85 to i8
  %88 = lshr i8 51, %87
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  %91 = getelementptr inbounds [6 x i32], ptr @switch.table.bcm_sf2_set_rxnfc, i32 0, i32 %85
  br label %92

92:                                               ; preds = %138, %77
  %93 = phi ptr [ %75, %77 ], [ %139, %138 ]
  %94 = getelementptr i8, ptr %93, i32 -176
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, %1
  br i1 %96, label %97, label %138

97:                                               ; preds = %92
  %98 = getelementptr i8, ptr %93, i32 -168
  %99 = load i32, ptr %98, align 8
  %100 = icmp eq i32 %99, %39
  br i1 %100, label %101, label %138

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %93, i32 -16
  %103 = load i64, ptr %102, align 8
  %104 = load i64, ptr %78, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %101
  %107 = getelementptr i8, ptr %93, i32 -100
  %108 = load i32, ptr %107, align 4
  %109 = load i32, ptr %79, align 4
  %110 = icmp eq i32 %108, %109
  %111 = xor i1 %110, true
  %112 = xor i1 %86, true
  %113 = select i1 %111, i1 true, i1 %112
  %114 = select i1 %113, i1 true, i1 %90
  br i1 %114, label %138, label %115

115:                                              ; preds = %106
  %116 = load i32, ptr %91, align 4
  %117 = getelementptr i8, ptr %93, i32 -164
  %118 = tail call i32 @memcmp(ptr noundef %117, ptr noundef %80, i32 noundef %116) #17
  %119 = getelementptr i8, ptr %93, i32 -92
  %120 = tail call i32 @memcmp(ptr noundef %119, ptr noundef %81, i32 noundef %116) #17
  %121 = or i32 %120, %118
  br i1 %52, label %135, label %122

122:                                              ; preds = %115
  %123 = getelementptr i8, ptr %93, i32 -102
  %124 = load i16, ptr %123, align 2
  %125 = load i16, ptr %82, align 2
  %126 = icmp ne i16 %124, %125
  %127 = zext i1 %126 to i32
  %128 = or i32 %121, %127
  %129 = getelementptr i8, ptr %93, i32 -30
  %130 = load i16, ptr %129, align 2
  %131 = load i16, ptr %83, align 2
  %132 = icmp ne i16 %130, %131
  %133 = zext i1 %132 to i32
  %134 = or i32 %128, %133
  br label %135

135:                                              ; preds = %122, %115
  %136 = phi i32 [ %134, %122 ], [ %121, %115 ]
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %172, label %138

138:                                              ; preds = %135, %106, %101, %97, %92
  %139 = load ptr, ptr %93, align 4
  %140 = icmp eq ptr %139, %74
  br i1 %140, label %141, label %92

141:                                              ; preds = %138, %73
  %142 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %143 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %142, i32 noundef 3520, i32 noundef 184) #18
  %144 = icmp eq ptr %143, null
  br i1 %144, label %172, label %145

145:                                              ; preds = %141
  %146 = tail call fastcc i32 @bcm_sf2_cfp_rule_insert(ptr noundef %0, i32 noundef %1, ptr noundef %35) #17
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  tail call void @kfree(ptr noundef nonnull %143) #17
  br label %172

149:                                              ; preds = %145
  store i32 %1, ptr %143, align 8
  %150 = getelementptr inbounds %struct.cfp_rule, ptr %143, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %150, ptr noundef align 8 dereferenceable(168) %35, i32 168, i1 false) #17
  %151 = getelementptr inbounds %struct.cfp_rule, ptr %143, i32 0, i32 2
  %152 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %38, i32 0, i32 32, i32 4, i32 1
  %153 = load ptr, ptr %152, align 4
  store ptr %151, ptr %152, align 4
  store ptr %74, ptr %151, align 8
  %154 = getelementptr inbounds %struct.cfp_rule, ptr %143, i32 0, i32 2, i32 1
  store ptr %153, ptr %154, align 4
  store volatile ptr %151, ptr %153, align 4
  tail call void @mutex_unlock(ptr noundef %32) #17
  br label %160

155:                                              ; preds = %23
  %156 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 6
  %157 = load i32, ptr %156, align 8
  %158 = tail call fastcc i32 @bcm_sf2_cfp_rule_del(ptr noundef %31, i32 noundef %1, i32 noundef %157)
  tail call void @mutex_unlock(ptr noundef %32) #17
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %155, %149
  %161 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 42
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.ethtool_ops, ptr %162, i32 0, i32 33
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %174, label %166

166:                                              ; preds = %160
  %167 = tail call i32 %164(ptr noundef %27, ptr noundef %2) #17
  switch i32 %167, label %168 [
    i32 -95, label %174
    i32 0, label %174
  ]

168:                                              ; preds = %166
  tail call void @mutex_lock(ptr noundef %32) #17
  %169 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 3, i32 6
  %170 = load i32, ptr %169, align 8
  %171 = tail call fastcc i32 @bcm_sf2_cfp_rule_del(ptr noundef %31, i32 noundef %1, i32 noundef %170)
  br label %172

172:                                              ; preds = %168, %148, %141, %135, %64, %59, %46, %34, %23
  %173 = phi i32 [ %167, %168 ], [ -12, %141 ], [ -16, %64 ], [ -95, %59 ], [ -22, %46 ], [ -22, %34 ], [ %146, %148 ], [ -95, %23 ], [ -17, %135 ]
  tail call void @mutex_unlock(ptr noundef %32) #17
  br label %174

174:                                              ; preds = %172, %166, %166, %160, %155
  %175 = phi i32 [ %158, %155 ], [ 0, %160 ], [ 0, %166 ], [ 0, %166 ], [ %173, %172 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_cfp_rule_del(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  %8 = icmp ult i32 %7, %2
  br i1 %8, label %56, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 32, i32 2
  %11 = lshr i32 %2, 5
  %12 = getelementptr i32, ptr %10, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %2, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %2, 0
  %19 = or i1 %18, %17
  br i1 %19, label %56, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 32, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 -176
  %24 = icmp eq ptr %22, %21
  br i1 %24, label %38, label %25

25:                                               ; preds = %34, %20
  %26 = phi ptr [ %36, %34 ], [ %23, %20 ]
  %27 = phi ptr [ %35, %34 ], [ %22, %20 ]
  %28 = load i32, ptr %26, align 8
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %27, i32 -8
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %25
  %35 = load ptr, ptr %27, align 4
  %36 = getelementptr i8, ptr %35, i32 -176
  %37 = icmp eq ptr %35, %21
  br i1 %37, label %38, label %25

38:                                               ; preds = %34, %30, %20
  %39 = phi ptr [ %23, %20 ], [ %36, %34 ], [ %26, %30 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4
  %42 = call fastcc i32 @bcm_sf2_cfp_rule_del_one(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4) #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, ptr %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call fastcc i32 @bcm_sf2_cfp_rule_del_one(ptr noundef %0, i32 noundef %45, ptr noundef null) #17
  br label %49

49:                                               ; preds = %47, %44, %41
  %50 = phi i32 [ %42, %41 ], [ %48, %47 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  %51 = getelementptr inbounds %struct.cfp_rule, ptr %39, i32 0, i32 2
  %52 = getelementptr inbounds %struct.cfp_rule, ptr %39, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  call void @kfree(ptr noundef nonnull %39) #17
  br label %56

56:                                               ; preds = %49, %38, %9, %3
  %57 = phi i32 [ %50, %49 ], [ -22, %3 ], [ -22, %9 ], [ -22, %38 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm_sf2_cfp_rst(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 163840, %3
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 %4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #17, !srcloc !8
  %8 = or i32 %7, 32768
  %9 = load i32, ptr %2, align 4
  %10 = shl i32 163840, %9
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #17, !srcloc !9
  br label %13

13:                                               ; preds = %22, %1
  %14 = phi i32 [ 1000, %1 ], [ %23, %22 ]
  %15 = load i32, ptr %2, align 4
  %16 = shl i32 163840, %15
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #17, !srcloc !8
  %20 = and i32 %19, 32768
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !11
  %23 = add nsw i32 %14, -1
  %24 = icmp eq i32 %14, 0
  br i1 %24, label %28, label %13

25:                                               ; preds = %13
  %26 = icmp eq i32 %14, 0
  %27 = select i1 %26, i32 -110, i32 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %27, %25 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcm_sf2_cfp_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.b53_device, ptr %3, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 32, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 32, i32 4, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %6
  br i1 %12, label %23, label %13

13:                                               ; preds = %13, %9
  %14 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %15 = getelementptr i8, ptr %14, i32 -176
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %15, align 8
  %19 = getelementptr i8, ptr %14, i32 -8
  %20 = load i32, ptr %19, align 8
  %21 = tail call fastcc i32 @bcm_sf2_cfp_rule_del(ptr noundef %5, i32 noundef %18, i32 noundef %20)
  %22 = icmp eq ptr %17, %6
  br i1 %22, label %23, label %13

23:                                               ; preds = %13, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm_sf2_cfp_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.b53_device, ptr %4, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 32, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %74, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 164864, %12
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 %13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #17, !srcloc !8
  %17 = and i32 %16, -512
  %18 = load i32, ptr %11, align 4
  %19 = shl i32 164864, %18
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #17, !srcloc !9
  %22 = load i32, ptr %11, align 4
  %23 = shl i32 163840, %22
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i8, ptr %24, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #17, !srcloc !8
  %27 = or i32 %26, 32768
  %28 = load i32, ptr %11, align 4
  %29 = shl i32 163840, %28
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr i8, ptr %30, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #17, !srcloc !9
  br label %32

32:                                               ; preds = %41, %10
  %33 = phi i32 [ 1000, %10 ], [ %42, %41 ]
  %34 = load i32, ptr %11, align 4
  %35 = shl i32 163840, %34
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #17, !srcloc !8
  %39 = and i32 %38, 32768
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !11
  %42 = add nsw i32 %33, -1
  %43 = icmp eq i32 %33, 0
  br i1 %43, label %46, label %32

44:                                               ; preds = %32
  %45 = icmp eq i32 %33, 0
  br i1 %45, label %74, label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %65, %46
  %48 = phi ptr [ %49, %65 ], [ %7, %46 ]
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 -176
  %51 = icmp eq ptr %49, %7
  br i1 %51, label %74, label %52

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %49, i32 -8
  %54 = load i32, ptr %53, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4
  %55 = call fastcc i32 @bcm_sf2_cfp_rule_del_one(ptr noundef %6, i32 noundef %54, ptr noundef nonnull %2) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %70

58:                                               ; preds = %52
  %59 = load i32, ptr %2, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %65

62:                                               ; preds = %58
  %63 = call fastcc i32 @bcm_sf2_cfp_rule_del_one(ptr noundef %6, i32 noundef %59, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62, %61
  %66 = getelementptr i8, ptr %49, i32 -168
  %67 = load i32, ptr %50, align 8
  %68 = call fastcc i32 @bcm_sf2_cfp_rule_insert(ptr noundef %0, i32 noundef %67, ptr noundef %66)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %47, label %70

70:                                               ; preds = %65, %62, %57
  %71 = phi ptr [ @.str, %57 ], [ @.str, %62 ], [ @.str.1, %65 ]
  %72 = phi i32 [ %55, %57 ], [ %63, %62 ], [ %68, %65 ]
  %73 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull %71) #19
  br label %74

74:                                               ; preds = %70, %47, %44, %1
  %75 = phi i32 [ 0, %1 ], [ -110, %44 ], [ %72, %70 ], [ 0, %47 ]
  ret i32 %75
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_cfp_rule_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ethtool_rx_flow_spec_input, align 8
  %5 = alloca %struct.flow_match_ipv6_addrs, align 8
  %6 = alloca %struct.flow_match_ports, align 8
  %7 = alloca %struct.ethtool_rx_flow_spec_input, align 8
  %8 = alloca %struct.flow_match_ipv4_addrs, align 8
  %9 = alloca %struct.flow_match_ports, align 8
  %10 = alloca %struct.flow_match_ip, align 8
  %11 = alloca %struct.switchdev_obj_port_vlan, align 4
  %12 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.b53_device, ptr %13, i32 0, i32 23
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dsa_switch_tree, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %35, label %21

21:                                               ; preds = %30, %3
  %22 = phi ptr [ %31, %30 ], [ %19, %3 ]
  %23 = getelementptr i8, ptr %22, i32 -264
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %22, i32 -260
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %22, align 4
  %32 = icmp eq ptr %31, %18
  br i1 %32, label %35, label %21

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %22, i32 -280
  br label %35

35:                                               ; preds = %33, %30, %3
  %36 = phi ptr [ %34, %33 ], [ null, %3 ], [ null, %30 ]
  %37 = getelementptr inbounds %struct.dsa_port, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dsa_port, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 5
  %42 = load i64, ptr %41, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %11, i8 0, i32 32, i1 false), !annotation !12
  %43 = icmp eq i64 %42, -2
  %44 = shl i32 %40, 24
  %45 = ashr exact i32 %44, 21
  %46 = sext i32 %45 to i64
  %47 = select i1 %43, i64 %46, i64 %42
  %48 = lshr i64 %47, 3
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i64 %47, -1
  br i1 %50, label %955, label %51

51:                                               ; preds = %35
  %52 = load ptr, ptr %18, align 4
  %53 = icmp eq ptr %52, %18
  br i1 %53, label %73, label %54

54:                                               ; preds = %63, %51
  %55 = phi ptr [ %64, %63 ], [ %52, %51 ]
  %56 = getelementptr i8, ptr %55, i32 -264
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %55, i32 -260
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %49
  br i1 %62, label %66, label %63

63:                                               ; preds = %59, %54
  %64 = load ptr, ptr %55, align 4
  %65 = icmp eq ptr %64, %18
  br i1 %65, label %68, label %54

66:                                               ; preds = %59
  %67 = getelementptr i8, ptr %55, i32 -280
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi ptr [ %67, %66 ], [ null, %63 ]
  %70 = getelementptr inbounds %struct.dsa_port, ptr %69, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %95, label %76

73:                                               ; preds = %51
  %74 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %95, label %90

76:                                               ; preds = %85, %68
  %77 = phi ptr [ %86, %85 ], [ %52, %68 ]
  %78 = getelementptr i8, ptr %77, i32 -264
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = getelementptr i8, ptr %77, i32 -260
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, %49
  br i1 %84, label %88, label %85

85:                                               ; preds = %81, %76
  %86 = load ptr, ptr %77, align 4
  %87 = icmp eq ptr %86, %18
  br i1 %87, label %90, label %76

88:                                               ; preds = %81
  %89 = getelementptr i8, ptr %77, i32 -280
  br label %90

90:                                               ; preds = %88, %85, %73
  %91 = phi ptr [ %89, %88 ], [ null, %73 ], [ null, %85 ]
  %92 = getelementptr inbounds %struct.dsa_port, ptr %91, i32 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %955

95:                                               ; preds = %90, %73, %68
  %96 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 20, i32 6
  %97 = load i8, ptr %96, align 2
  %98 = zext i8 %97 to i32
  %99 = icmp ult i32 %49, %98
  br i1 %99, label %100, label %955

100:                                              ; preds = %95
  %101 = load i32, ptr %2, align 8
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %128, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 4, i32 3
  %105 = load i16, ptr %104, align 2
  %106 = and i16 %105, -241
  %107 = icmp eq i16 %106, -241
  br i1 %107, label %108, label %955

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 2, i32 3
  %110 = load i16, ptr %109, align 2
  %111 = and i16 %110, -241
  %112 = tail call i16 @llvm.bswap.i16(i16 %111)
  %113 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %11, i32 0, i32 2
  store i16 %112, ptr %113, align 2
  %114 = getelementptr %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 2, i32 4, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = lshr i32 %115, 22
  %117 = trunc i32 %116 to i16
  %118 = and i16 %117, 4
  %119 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %11, i32 0, i32 1
  store i16 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 8
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.dsa_switch_ops, ptr %121, i32 0, i32 52
  %123 = load ptr, ptr %122, align 4
  %124 = call i32 %123(ptr noundef %0, i32 noundef %49, ptr noundef nonnull %11, ptr noundef null) #17
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %955

126:                                              ; preds = %108
  %127 = load i32, ptr %2, align 8
  br label %128

128:                                              ; preds = %126, %100
  %129 = phi i32 [ %127, %126 ], [ %101, %100 ]
  %130 = trunc i64 %47 to i32
  %131 = and i32 %130, 7
  %132 = icmp ugt i32 %49, 6
  %133 = sext i1 %132 to i32
  %134 = add i32 %133, %49
  %135 = and i32 %129, 2147483647
  switch i32 %135, label %955 [
    i32 1, label %136
    i32 2, label %136
    i32 5, label %515
    i32 6, label %515
  ]

136:                                              ; preds = %128, %128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store i64 0, ptr %8, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  store i64 0, ptr %9, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  store i64 0, ptr %10, align 8, !annotation !12
  switch i32 %135, label %513 [
    i32 1, label %138
    i32 2, label %137
  ]

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137, %136
  %139 = phi i32 [ 4352, %137 ], [ 1536, %136 ]
  %140 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 2, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = icmp sgt i32 %129, -1
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 2, i32 3
  %145 = load i16, ptr %144, align 2
  %146 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 4, i32 3
  %147 = load i16, ptr %146, align 2
  br label %148

148:                                              ; preds = %143, %138
  %149 = phi i16 [ %145, %143 ], [ 0, %138 ]
  %150 = phi i16 [ %147, %143 ], [ -1, %138 ]
  %151 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 6
  %152 = load i32, ptr %151, align 8
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32, i32 1
  %156 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 10
  %157 = load i32, ptr %156, align 4
  %158 = call i32 @_find_first_zero_bit_le(ptr noundef %155, i32 noundef %157) #17
  br label %159

159:                                              ; preds = %154, %148
  %160 = phi i32 [ %158, %154 ], [ %152, %148 ]
  %161 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 10
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, -1
  %164 = icmp ugt i32 %160, %163
  br i1 %164, label %513, label %165

165:                                              ; preds = %159
  store ptr %2, ptr %7, align 8
  %166 = call ptr @ethtool_rx_flow_rule_create(ptr noundef nonnull %7) #17
  %167 = icmp ugt ptr %166, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = ptrtoint ptr %166 to i32
  br label %513

170:                                              ; preds = %165
  %171 = load ptr, ptr %166, align 4
  call void @flow_rule_match_ipv4_addrs(ptr noundef %171, ptr noundef nonnull %8) #17
  %172 = load ptr, ptr %166, align 4
  call void @flow_rule_match_ports(ptr noundef %172, ptr noundef nonnull %9) #17
  %173 = load ptr, ptr %166, align 4
  call void @flow_rule_match_ip(ptr noundef %173, ptr noundef nonnull %10) #17
  %174 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) @udf_tcpip4_layout, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #17
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip4_layout, i32 0, i32 0, i32 1), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #17
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip4_layout, i32 0, i32 0, i32 2), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #17
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip4_layout, i32 0, i32 0, i32 3), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #17
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %511, label %185

185:                                              ; preds = %182, %179, %176, %170
  %186 = phi i32 [ 0, %170 ], [ 1, %176 ], [ 2, %179 ], [ 3, %182 ]
  %187 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip4_layout, i32 0, i32 %186
  %188 = load i8, ptr %187, align 4
  %189 = icmp eq i8 %188, 0
  %190 = getelementptr i8, ptr %187, i32 1
  %191 = load i8, ptr %190, align 1
  %192 = icmp ne i8 %191, 0
  %193 = sext i1 %192 to i32
  %194 = getelementptr i8, ptr %187, i32 2
  %195 = load i8, ptr %194, align 2
  %196 = icmp ne i8 %195, 0
  %197 = sext i1 %196 to i32
  %198 = getelementptr i8, ptr %187, i32 3
  %199 = load i8, ptr %198, align 1
  %200 = icmp ne i8 %199, 0
  %201 = sext i1 %200 to i32
  %202 = getelementptr i8, ptr %187, i32 4
  %203 = load i8, ptr %202, align 4
  %204 = icmp ne i8 %203, 0
  %205 = sext i1 %204 to i32
  %206 = getelementptr i8, ptr %187, i32 5
  %207 = load i8, ptr %206, align 1
  %208 = icmp ne i8 %207, 0
  %209 = sext i1 %208 to i32
  %210 = getelementptr i8, ptr %187, i32 6
  %211 = load i8, ptr %210, align 2
  %212 = icmp ne i8 %211, 0
  %213 = sext i1 %212 to i32
  %214 = getelementptr i8, ptr %187, i32 7
  %215 = load i8, ptr %214, align 1
  %216 = icmp ne i8 %215, 0
  %217 = sext i1 %216 to i32
  %218 = getelementptr i8, ptr %187, i32 8
  %219 = load i8, ptr %218, align 4
  %220 = icmp ne i8 %219, 0
  %221 = sext i1 %220 to i32
  %222 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip4_layout, i32 0, i32 %186, i32 2
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 9
  %225 = zext i8 %188 to i32
  %226 = load i32, ptr %224, align 4
  %227 = shl i32 %223, %226
  %228 = load ptr, ptr %15, align 4
  %229 = getelementptr i8, ptr %228, i32 %227
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %225) #17, !srcloc !9
  %230 = zext i8 %191 to i32
  %231 = add i32 %223, 4
  %232 = load i32, ptr %224, align 4
  %233 = shl i32 %231, %232
  %234 = load ptr, ptr %15, align 4
  %235 = getelementptr i8, ptr %234, i32 %233
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %230) #17, !srcloc !9
  %236 = zext i8 %195 to i32
  %237 = add i32 %223, 8
  %238 = load i32, ptr %224, align 4
  %239 = shl i32 %237, %238
  %240 = load ptr, ptr %15, align 4
  %241 = getelementptr i8, ptr %240, i32 %239
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %236) #17, !srcloc !9
  %242 = zext i8 %199 to i32
  %243 = add i32 %223, 12
  %244 = load i32, ptr %224, align 4
  %245 = shl i32 %243, %244
  %246 = load ptr, ptr %15, align 4
  %247 = getelementptr i8, ptr %246, i32 %245
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %242) #17, !srcloc !9
  %248 = zext i8 %203 to i32
  %249 = add i32 %223, 16
  %250 = load i32, ptr %224, align 4
  %251 = shl i32 %249, %250
  %252 = load ptr, ptr %15, align 4
  %253 = getelementptr i8, ptr %252, i32 %251
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 %248) #17, !srcloc !9
  %254 = zext i8 %207 to i32
  %255 = add i32 %223, 20
  %256 = load i32, ptr %224, align 4
  %257 = shl i32 %255, %256
  %258 = load ptr, ptr %15, align 4
  %259 = getelementptr i8, ptr %258, i32 %257
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %254) #17, !srcloc !9
  %260 = zext i8 %211 to i32
  %261 = add i32 %223, 24
  %262 = load i32, ptr %224, align 4
  %263 = shl i32 %261, %262
  %264 = load ptr, ptr %15, align 4
  %265 = getelementptr i8, ptr %264, i32 %263
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 %260) #17, !srcloc !9
  %266 = zext i8 %215 to i32
  %267 = add i32 %223, 28
  %268 = load i32, ptr %224, align 4
  %269 = shl i32 %267, %268
  %270 = load ptr, ptr %15, align 4
  %271 = getelementptr i8, ptr %270, i32 %269
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %266) #17, !srcloc !9
  %272 = zext i8 %219 to i32
  %273 = add i32 %223, 32
  %274 = load i32, ptr %224, align 4
  %275 = shl i32 %273, %274
  %276 = load ptr, ptr %15, align 4
  %277 = getelementptr i8, ptr %276, i32 %275
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 %272) #17, !srcloc !9
  %278 = shl nuw i32 1, %1
  %279 = load i32, ptr %224, align 4
  %280 = shl i32 164016, %279
  %281 = load ptr, ptr %15, align 4
  %282 = getelementptr i8, ptr %281, i32 %280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %278) #17, !srcloc !9
  %283 = load i32, ptr %224, align 4
  %284 = shl i32 164144, %283
  %285 = load ptr, ptr %15, align 4
  %286 = getelementptr i8, ptr %285, i32 %284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 255) #17, !srcloc !9
  %287 = load ptr, ptr %10, align 8
  %288 = load i8, ptr %287, align 1
  %289 = zext i8 %288 to i32
  %290 = shl nuw nsw i32 %289, 16
  %291 = or i32 %290, %139
  %292 = lshr i32 %141, 17
  %293 = and i32 %292, 128
  %294 = or i32 %291, %293
  %295 = select i1 %189, i32 32, i32 31
  %296 = add nsw i32 %295, %193
  %297 = add nsw i32 %296, %197
  %298 = add nsw i32 %297, %201
  %299 = add nsw i32 %298, %205
  %300 = add nsw i32 %299, %209
  %301 = add nsw i32 %300, %213
  %302 = add nsw i32 %301, %217
  %303 = add nsw i32 %302, %221
  %304 = lshr i32 -1, %303
  %305 = lshr i32 %304, 8
  %306 = or i32 %294, %305
  %307 = load i32, ptr %224, align 4
  %308 = shl i32 164000, %307
  %309 = load ptr, ptr %15, align 4
  %310 = getelementptr i8, ptr %309, i32 %308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %310, i32 %306) #17, !srcloc !9
  %311 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip4_layout, i32 0, i32 %186, i32 1
  %312 = load i32, ptr %311, align 4
  %313 = or i32 %312, %305
  %314 = load i32, ptr %224, align 4
  %315 = shl i32 164128, %314
  %316 = load ptr, ptr %15, align 4
  %317 = getelementptr i8, ptr %316, i32 %315
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 %313) #17, !srcloc !9
  %318 = load ptr, ptr %8, align 8
  %319 = load ptr, ptr %9, align 8
  %320 = call i16 @llvm.bswap.i16(i16 %149) #17
  %321 = zext i16 %320 to i32
  %322 = call i32 @llvm.fshl.i32(i32 %304, i32 %321, i32 24) #17
  %323 = load i32, ptr %224, align 4
  %324 = shl i32 163984, %323
  %325 = load ptr, ptr %15, align 4
  %326 = getelementptr i8, ptr %325, i32 %324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %322) #17, !srcloc !9
  %327 = shl i32 %321, 24
  %328 = load i32, ptr %224, align 4
  %329 = shl i32 163968, %328
  %330 = load ptr, ptr %15, align 4
  %331 = getelementptr i8, ptr %330, i32 %329
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %331, i32 %327) #17, !srcloc !9
  %332 = getelementptr inbounds %struct.anon.156, ptr %319, i32 0, i32 1
  %333 = load i16, ptr %332, align 2
  %334 = and i16 %333, 255
  %335 = zext i16 %334 to i32
  %336 = load i32, ptr %224, align 4
  %337 = shl i32 163952, %336
  %338 = load ptr, ptr %15, align 4
  %339 = getelementptr i8, ptr %338, i32 %337
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %339, i32 %335) #17, !srcloc !9
  %340 = load i16, ptr %332, align 2
  %341 = lshr i16 %340, 8
  %342 = zext i16 %341 to i32
  %343 = shl nuw i32 %342, 24
  %344 = load i16, ptr %319, align 4
  %345 = call i16 @llvm.bswap.i16(i16 %344) #17
  %346 = zext i16 %345 to i32
  %347 = shl nuw nsw i32 %346, 8
  %348 = or i32 %347, %343
  %349 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %318, i32 0, i32 1
  %350 = load i32, ptr %349, align 4
  %351 = lshr i32 %350, 16
  %352 = and i32 %351, 255
  %353 = or i32 %348, %352
  %354 = load i32, ptr %224, align 4
  %355 = shl i32 163936, %354
  %356 = load ptr, ptr %15, align 4
  %357 = getelementptr i8, ptr %356, i32 %355
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %357, i32 %353) #17, !srcloc !9
  %358 = load i32, ptr %349, align 4
  %359 = call i32 @llvm.bswap.i32(i32 %358) #17
  %360 = shl i32 %359, 24
  %361 = lshr i32 %359, 8
  %362 = and i32 %361, 16776960
  %363 = or i32 %362, %360
  %364 = load i32, ptr %318, align 4
  %365 = lshr i32 %364, 16
  %366 = and i32 %365, 255
  %367 = or i32 %363, %366
  %368 = load i32, ptr %224, align 4
  %369 = shl i32 163920, %368
  %370 = load ptr, ptr %15, align 4
  %371 = getelementptr i8, ptr %370, i32 %369
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %371, i32 %367) #17, !srcloc !9
  %372 = load i32, ptr %318, align 4
  %373 = call i32 @llvm.bswap.i32(i32 %372) #17
  %374 = shl i32 %373, 24
  %375 = lshr i32 %373, 8
  %376 = and i32 %375, 16776960
  %377 = or i32 %376, %374
  %378 = shl nuw nsw i32 %186, 2
  %379 = or i32 %377, %378
  %380 = or i32 %379, 3
  %381 = load i32, ptr %224, align 4
  %382 = shl i32 163904, %381
  %383 = load ptr, ptr %15, align 4
  %384 = getelementptr i8, ptr %383, i32 %382
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 %380) #17, !srcloc !9
  %385 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %8, i32 0, i32 1
  %386 = load ptr, ptr %385, align 4
  %387 = getelementptr inbounds %struct.flow_match_ports, ptr %9, i32 0, i32 1
  %388 = load ptr, ptr %387, align 4
  %389 = call i16 @llvm.bswap.i16(i16 %150) #17
  %390 = zext i16 %389 to i32
  %391 = call i32 @llvm.fshl.i32(i32 %304, i32 %390, i32 24) #17
  %392 = load i32, ptr %224, align 4
  %393 = shl i32 164112, %392
  %394 = load ptr, ptr %15, align 4
  %395 = getelementptr i8, ptr %394, i32 %393
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %395, i32 %391) #17, !srcloc !9
  %396 = shl i32 %390, 24
  %397 = load i32, ptr %224, align 4
  %398 = shl i32 164096, %397
  %399 = load ptr, ptr %15, align 4
  %400 = getelementptr i8, ptr %399, i32 %398
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 %396) #17, !srcloc !9
  %401 = getelementptr inbounds %struct.anon.156, ptr %388, i32 0, i32 1
  %402 = load i16, ptr %401, align 2
  %403 = and i16 %402, 255
  %404 = zext i16 %403 to i32
  %405 = load i32, ptr %224, align 4
  %406 = shl i32 164080, %405
  %407 = load ptr, ptr %15, align 4
  %408 = getelementptr i8, ptr %407, i32 %406
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %408, i32 %404) #17, !srcloc !9
  %409 = load i16, ptr %401, align 2
  %410 = lshr i16 %409, 8
  %411 = zext i16 %410 to i32
  %412 = shl nuw i32 %411, 24
  %413 = load i16, ptr %388, align 4
  %414 = call i16 @llvm.bswap.i16(i16 %413) #17
  %415 = zext i16 %414 to i32
  %416 = shl nuw nsw i32 %415, 8
  %417 = or i32 %416, %412
  %418 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %386, i32 0, i32 1
  %419 = load i32, ptr %418, align 4
  %420 = lshr i32 %419, 16
  %421 = and i32 %420, 255
  %422 = or i32 %417, %421
  %423 = load i32, ptr %224, align 4
  %424 = shl i32 164064, %423
  %425 = load ptr, ptr %15, align 4
  %426 = getelementptr i8, ptr %425, i32 %424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %426, i32 %422) #17, !srcloc !9
  %427 = load i32, ptr %418, align 4
  %428 = call i32 @llvm.bswap.i32(i32 %427) #17
  %429 = shl i32 %428, 24
  %430 = lshr i32 %428, 8
  %431 = and i32 %430, 16776960
  %432 = or i32 %431, %429
  %433 = load i32, ptr %386, align 4
  %434 = lshr i32 %433, 16
  %435 = and i32 %434, 255
  %436 = or i32 %432, %435
  %437 = load i32, ptr %224, align 4
  %438 = shl i32 164048, %437
  %439 = load ptr, ptr %15, align 4
  %440 = getelementptr i8, ptr %439, i32 %438
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %440, i32 %436) #17, !srcloc !9
  %441 = load i32, ptr %386, align 4
  %442 = call i32 @llvm.bswap.i32(i32 %441) #17
  %443 = shl i32 %442, 24
  %444 = lshr i32 %442, 8
  %445 = and i32 %444, 16776960
  %446 = or i32 %445, %443
  %447 = or i32 %446, 15
  %448 = load i32, ptr %224, align 4
  %449 = shl i32 164032, %448
  %450 = load ptr, ptr %15, align 4
  %451 = getelementptr i8, ptr %450, i32 %449
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %451, i32 %447) #17, !srcloc !9
  %452 = load i32, ptr %161, align 4
  %453 = icmp ugt i32 %452, %160
  br i1 %453, label %455, label %454, !prof !13

454:                                              ; preds = %185
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 198, i32 noundef 9, ptr noundef null) #17
  br label %455

455:                                              ; preds = %454, %185
  %456 = load i32, ptr %224, align 4
  %457 = shl i32 163840, %456
  %458 = load ptr, ptr %15, align 4
  %459 = getelementptr i8, ptr %458, i32 %457
  %460 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %459) #17, !srcloc !8
  %461 = and i32 %460, -16711681
  %462 = shl i32 %160, 16
  %463 = or i32 %461, %462
  %464 = load i32, ptr %224, align 4
  %465 = shl i32 163840, %464
  %466 = load ptr, ptr %15, align 4
  %467 = getelementptr i8, ptr %466, i32 %465
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %467, i32 %463) #17, !srcloc !9
  %468 = load i32, ptr %224, align 4
  %469 = shl i32 163840, %468
  %470 = load ptr, ptr %15, align 4
  %471 = getelementptr i8, ptr %470, i32 %469
  %472 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %471) #17, !srcloc !8
  %473 = and i32 %472, -31760
  %474 = or i32 %473, 1029
  %475 = load i32, ptr %224, align 4
  %476 = shl i32 163840, %475
  %477 = load ptr, ptr %15, align 4
  %478 = getelementptr i8, ptr %477, i32 %476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %478, i32 %474) #17, !srcloc !9
  br label %479

479:                                              ; preds = %488, %455
  %480 = phi i32 [ 1000, %455 ], [ %489, %488 ]
  %481 = load i32, ptr %224, align 4
  %482 = shl i32 163840, %481
  %483 = load ptr, ptr %15, align 4
  %484 = getelementptr i8, ptr %483, i32 %482
  %485 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %484) #17, !srcloc !8
  %486 = and i32 %485, 1
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %491, label %488

488:                                              ; preds = %479
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !15
  %489 = add nsw i32 %480, -1
  %490 = icmp eq i32 %480, 0
  br i1 %490, label %495, label %479

491:                                              ; preds = %479
  %492 = icmp eq i32 %480, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %491
  %494 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %160) #19
  br label %511

495:                                              ; preds = %491, %488
  %496 = call fastcc i32 @bcm_sf2_cfp_act_pol_set(ptr noundef %15, i32 noundef %160, i32 noundef %1, i32 noundef %134, i32 noundef %131, i1 noundef zeroext true) #17
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %511

498:                                              ; preds = %495
  %499 = load i32, ptr %224, align 4
  %500 = shl i32 164864, %499
  %501 = load ptr, ptr %15, align 4
  %502 = getelementptr i8, ptr %501, i32 %500
  %503 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %502) #17, !srcloc !8
  %504 = or i32 %503, %278
  %505 = load i32, ptr %224, align 4
  %506 = shl i32 164864, %505
  %507 = load ptr, ptr %15, align 4
  %508 = getelementptr i8, ptr %507, i32 %506
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %508, i32 %504) #17, !srcloc !9
  %509 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32, i32 1
  call void @_set_bit(i32 noundef %160, ptr noundef %509) #17
  %510 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32, i32 2
  call void @_set_bit(i32 noundef %160, ptr noundef %510) #17
  store i32 %160, ptr %151, align 8
  br label %513

511:                                              ; preds = %495, %493, %182
  %512 = phi i32 [ -110, %493 ], [ %496, %495 ], [ -22, %182 ]
  call void @ethtool_rx_flow_rule_destroy(ptr noundef %166) #17
  br label %513

513:                                              ; preds = %511, %498, %168, %159, %136
  %514 = phi i32 [ %169, %168 ], [ %512, %511 ], [ 0, %498 ], [ -22, %136 ], [ -28, %159 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  br label %955

515:                                              ; preds = %128, %128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store i64 0, ptr %5, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store i64 0, ptr %6, align 8, !annotation !12
  switch i32 %135, label %953 [
    i32 5, label %517
    i32 6, label %516
  ]

516:                                              ; preds = %515
  br label %517

517:                                              ; preds = %516, %515
  %518 = phi i32 [ 16781568, %516 ], [ 16778752, %515 ]
  %519 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 2, i32 4
  %520 = load i32, ptr %519, align 4
  %521 = icmp sgt i32 %129, -1
  br i1 %521, label %527, label %522

522:                                              ; preds = %517
  %523 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 2, i32 3
  %524 = load i16, ptr %523, align 2
  %525 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 4, i32 3
  %526 = load i16, ptr %525, align 2
  br label %527

527:                                              ; preds = %522, %517
  %528 = phi i16 [ %526, %522 ], [ -1, %517 ]
  %529 = phi i16 [ %524, %522 ], [ 0, %517 ]
  %530 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) @udf_tcpip6_layout, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #17
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %541

532:                                              ; preds = %527
  %533 = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip6_layout, i32 0, i32 0, i32 1), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #17
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %541

535:                                              ; preds = %532
  %536 = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip6_layout, i32 0, i32 0, i32 2), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #17
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %541

538:                                              ; preds = %535
  %539 = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip6_layout, i32 0, i32 0, i32 3), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #17
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %953, label %541

541:                                              ; preds = %538, %535, %532, %527
  %542 = phi i32 [ 0, %527 ], [ 1, %532 ], [ 2, %535 ], [ 3, %538 ]
  %543 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip6_layout, i32 0, i32 %542
  %544 = load i8, ptr %543, align 4
  %545 = icmp eq i8 %544, 0
  %546 = getelementptr i8, ptr %543, i32 1
  %547 = load i8, ptr %546, align 1
  %548 = icmp ne i8 %547, 0
  %549 = sext i1 %548 to i32
  %550 = getelementptr i8, ptr %543, i32 2
  %551 = load i8, ptr %550, align 2
  %552 = icmp ne i8 %551, 0
  %553 = sext i1 %552 to i32
  %554 = getelementptr i8, ptr %543, i32 3
  %555 = load i8, ptr %554, align 1
  %556 = icmp ne i8 %555, 0
  %557 = sext i1 %556 to i32
  %558 = getelementptr i8, ptr %543, i32 4
  %559 = load i8, ptr %558, align 4
  %560 = icmp ne i8 %559, 0
  %561 = sext i1 %560 to i32
  %562 = getelementptr i8, ptr %543, i32 5
  %563 = load i8, ptr %562, align 1
  %564 = icmp ne i8 %563, 0
  %565 = sext i1 %564 to i32
  %566 = getelementptr i8, ptr %543, i32 6
  %567 = load i8, ptr %566, align 2
  %568 = icmp ne i8 %567, 0
  %569 = sext i1 %568 to i32
  %570 = getelementptr i8, ptr %543, i32 7
  %571 = load i8, ptr %570, align 1
  %572 = icmp ne i8 %571, 0
  %573 = sext i1 %572 to i32
  %574 = getelementptr i8, ptr %543, i32 8
  %575 = load i8, ptr %574, align 4
  %576 = icmp ne i8 %575, 0
  %577 = sext i1 %576 to i32
  %578 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 6
  %579 = load i32, ptr %578, align 8
  %580 = icmp eq i32 %579, -1
  br i1 %580, label %581, label %586

581:                                              ; preds = %541
  %582 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32, i32 1
  %583 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 10
  %584 = load i32, ptr %583, align 4
  %585 = call i32 @_find_first_zero_bit_le(ptr noundef %582, i32 noundef %584) #17
  br label %586

586:                                              ; preds = %581, %541
  %587 = phi i32 [ %585, %581 ], [ %579, %541 ]
  %588 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 10
  %589 = load i32, ptr %588, align 4
  %590 = add i32 %589, -1
  %591 = icmp ugt i32 %587, %590
  br i1 %591, label %953, label %592

592:                                              ; preds = %586
  %593 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32, i32 1
  call void @_set_bit(i32 noundef %587, ptr noundef %593) #17
  %594 = load i32, ptr %588, align 4
  %595 = call i32 @_find_first_zero_bit_le(ptr noundef %593, i32 noundef %594) #17
  %596 = load i32, ptr %588, align 4
  %597 = add i32 %596, -1
  %598 = icmp ugt i32 %595, %597
  br i1 %598, label %951, label %599

599:                                              ; preds = %592
  store ptr %2, ptr %4, align 8
  %600 = call ptr @ethtool_rx_flow_rule_create(ptr noundef nonnull %4) #17
  %601 = icmp ugt ptr %600, inttoptr (i32 -4096 to ptr)
  br i1 %601, label %602, label %604

602:                                              ; preds = %599
  %603 = ptrtoint ptr %600 to i32
  br label %951

604:                                              ; preds = %599
  %605 = load ptr, ptr %600, align 4
  call void @flow_rule_match_ipv6_addrs(ptr noundef %605, ptr noundef nonnull %5) #17
  %606 = load ptr, ptr %600, align 4
  call void @flow_rule_match_ports(ptr noundef %606, ptr noundef nonnull %6) #17
  %607 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip6_layout, i32 0, i32 %542, i32 2
  %608 = load i32, ptr %607, align 4
  %609 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 9
  %610 = zext i8 %544 to i32
  %611 = load i32, ptr %609, align 4
  %612 = shl i32 %608, %611
  %613 = load ptr, ptr %15, align 4
  %614 = getelementptr i8, ptr %613, i32 %612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %614, i32 %610) #17, !srcloc !9
  %615 = zext i8 %547 to i32
  %616 = add i32 %608, 4
  %617 = load i32, ptr %609, align 4
  %618 = shl i32 %616, %617
  %619 = load ptr, ptr %15, align 4
  %620 = getelementptr i8, ptr %619, i32 %618
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %620, i32 %615) #17, !srcloc !9
  %621 = zext i8 %551 to i32
  %622 = add i32 %608, 8
  %623 = load i32, ptr %609, align 4
  %624 = shl i32 %622, %623
  %625 = load ptr, ptr %15, align 4
  %626 = getelementptr i8, ptr %625, i32 %624
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %626, i32 %621) #17, !srcloc !9
  %627 = zext i8 %555 to i32
  %628 = add i32 %608, 12
  %629 = load i32, ptr %609, align 4
  %630 = shl i32 %628, %629
  %631 = load ptr, ptr %15, align 4
  %632 = getelementptr i8, ptr %631, i32 %630
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %632, i32 %627) #17, !srcloc !9
  %633 = zext i8 %559 to i32
  %634 = add i32 %608, 16
  %635 = load i32, ptr %609, align 4
  %636 = shl i32 %634, %635
  %637 = load ptr, ptr %15, align 4
  %638 = getelementptr i8, ptr %637, i32 %636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %638, i32 %633) #17, !srcloc !9
  %639 = zext i8 %563 to i32
  %640 = add i32 %608, 20
  %641 = load i32, ptr %609, align 4
  %642 = shl i32 %640, %641
  %643 = load ptr, ptr %15, align 4
  %644 = getelementptr i8, ptr %643, i32 %642
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %644, i32 %639) #17, !srcloc !9
  %645 = zext i8 %567 to i32
  %646 = add i32 %608, 24
  %647 = load i32, ptr %609, align 4
  %648 = shl i32 %646, %647
  %649 = load ptr, ptr %15, align 4
  %650 = getelementptr i8, ptr %649, i32 %648
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %650, i32 %645) #17, !srcloc !9
  %651 = zext i8 %571 to i32
  %652 = add i32 %608, 28
  %653 = load i32, ptr %609, align 4
  %654 = shl i32 %652, %653
  %655 = load ptr, ptr %15, align 4
  %656 = getelementptr i8, ptr %655, i32 %654
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %656, i32 %651) #17, !srcloc !9
  %657 = zext i8 %575 to i32
  %658 = add i32 %608, 32
  %659 = load i32, ptr %609, align 4
  %660 = shl i32 %658, %659
  %661 = load ptr, ptr %15, align 4
  %662 = getelementptr i8, ptr %661, i32 %660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %662, i32 %657) #17, !srcloc !9
  %663 = shl nuw i32 1, %1
  %664 = load i32, ptr %609, align 4
  %665 = shl i32 164016, %664
  %666 = load ptr, ptr %15, align 4
  %667 = getelementptr i8, ptr %666, i32 %665
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %667, i32 %663) #17, !srcloc !9
  %668 = load i32, ptr %609, align 4
  %669 = shl i32 164144, %668
  %670 = load ptr, ptr %15, align 4
  %671 = getelementptr i8, ptr %670, i32 %669
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %671, i32 255) #17, !srcloc !9
  %672 = lshr i32 %520, 17
  %673 = and i32 %672, 128
  %674 = or i32 %673, %518
  %675 = select i1 %545, i32 32, i32 31
  %676 = add nsw i32 %675, %549
  %677 = add nsw i32 %676, %553
  %678 = add nsw i32 %677, %557
  %679 = add nsw i32 %678, %561
  %680 = add nsw i32 %679, %565
  %681 = add nsw i32 %680, %569
  %682 = add nsw i32 %681, %573
  %683 = add nsw i32 %682, %577
  %684 = lshr i32 -1, %683
  %685 = lshr i32 %684, 8
  %686 = or i32 %674, %685
  %687 = load i32, ptr %609, align 4
  %688 = shl i32 164000, %687
  %689 = load ptr, ptr %15, align 4
  %690 = getelementptr i8, ptr %689, i32 %688
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %690, i32 %686) #17, !srcloc !9
  %691 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip6_layout, i32 0, i32 %542, i32 1
  %692 = load i32, ptr %691, align 4
  %693 = or i32 %692, %685
  %694 = load i32, ptr %609, align 4
  %695 = shl i32 164128, %694
  %696 = load ptr, ptr %15, align 4
  %697 = getelementptr i8, ptr %696, i32 %695
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %697, i32 %693) #17, !srcloc !9
  %698 = load ptr, ptr %5, align 8
  %699 = load ptr, ptr %6, align 8
  %700 = load i16, ptr %699, align 4
  %701 = call i16 @llvm.bswap.i16(i16 %529) #17
  %702 = zext i16 %701 to i32
  %703 = call i32 @llvm.fshl.i32(i32 %684, i32 %702, i32 24) #17
  %704 = load i32, ptr %609, align 4
  %705 = shl i32 163984, %704
  %706 = load ptr, ptr %15, align 4
  %707 = getelementptr i8, ptr %706, i32 %705
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %707, i32 %703) #17, !srcloc !9
  %708 = getelementptr i32, ptr %698, i32 3
  %709 = load i32, ptr %708, align 4
  %710 = call i32 @llvm.bswap.i32(i32 %709) #17
  %711 = call i16 @llvm.bswap.i16(i16 %700) #17
  %712 = zext i16 %711 to i32
  %713 = shl nuw nsw i32 %712, 8
  %714 = lshr i32 %710, 8
  %715 = and i32 %714, 255
  %716 = or i32 %715, %713
  %717 = shl i32 %702, 24
  %718 = or i32 %716, %717
  %719 = load i32, ptr %609, align 4
  %720 = shl i32 163968, %719
  %721 = load ptr, ptr %15, align 4
  %722 = getelementptr i8, ptr %721, i32 %720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %722, i32 %718) #17, !srcloc !9
  %723 = getelementptr i32, ptr %698, i32 2
  %724 = load i32, ptr %723, align 4
  %725 = call i32 @llvm.bswap.i32(i32 %724) #17
  %726 = shl i32 %710, 24
  %727 = and i32 %714, 16776960
  %728 = or i32 %727, %726
  %729 = lshr i32 %725, 8
  %730 = and i32 %729, 255
  %731 = or i32 %730, %728
  %732 = load i32, ptr %609, align 4
  %733 = shl i32 163952, %732
  %734 = load ptr, ptr %15, align 4
  %735 = getelementptr i8, ptr %734, i32 %733
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %735, i32 %731) #17, !srcloc !9
  %736 = getelementptr i32, ptr %698, i32 1
  %737 = load i32, ptr %736, align 4
  %738 = call i32 @llvm.bswap.i32(i32 %737) #17
  %739 = shl i32 %725, 24
  %740 = and i32 %729, 16776960
  %741 = or i32 %740, %739
  %742 = lshr i32 %738, 8
  %743 = and i32 %742, 255
  %744 = or i32 %743, %741
  %745 = load i32, ptr %609, align 4
  %746 = shl i32 163936, %745
  %747 = load ptr, ptr %15, align 4
  %748 = getelementptr i8, ptr %747, i32 %746
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %748, i32 %744) #17, !srcloc !9
  %749 = load i32, ptr %698, align 4
  %750 = call i32 @llvm.bswap.i32(i32 %749) #17
  %751 = shl i32 %738, 24
  %752 = and i32 %742, 16776960
  %753 = or i32 %752, %751
  %754 = lshr i32 %750, 8
  %755 = and i32 %754, 255
  %756 = or i32 %755, %753
  %757 = load i32, ptr %609, align 4
  %758 = shl i32 163920, %757
  %759 = load ptr, ptr %15, align 4
  %760 = getelementptr i8, ptr %759, i32 %758
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %760, i32 %756) #17, !srcloc !9
  %761 = shl i32 %750, 24
  %762 = and i32 %754, 16776960
  %763 = or i32 %762, %761
  %764 = shl nuw nsw i32 %542, 2
  %765 = or i32 %763, %764
  %766 = or i32 %765, 3
  %767 = load i32, ptr %609, align 4
  %768 = shl i32 163904, %767
  %769 = load ptr, ptr %15, align 4
  %770 = getelementptr i8, ptr %769, i32 %768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %770, i32 %766) #17, !srcloc !9
  %771 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %5, i32 0, i32 1
  %772 = load ptr, ptr %771, align 4
  %773 = getelementptr inbounds %struct.flow_match_ports, ptr %6, i32 0, i32 1
  %774 = load ptr, ptr %773, align 4
  %775 = load i16, ptr %774, align 4
  %776 = call i16 @llvm.bswap.i16(i16 %528) #17
  %777 = zext i16 %776 to i32
  %778 = call i32 @llvm.fshl.i32(i32 %684, i32 %777, i32 24) #17
  %779 = load i32, ptr %609, align 4
  %780 = shl i32 164112, %779
  %781 = load ptr, ptr %15, align 4
  %782 = getelementptr i8, ptr %781, i32 %780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %782, i32 %778) #17, !srcloc !9
  %783 = getelementptr i32, ptr %772, i32 3
  %784 = load i32, ptr %783, align 4
  %785 = call i32 @llvm.bswap.i32(i32 %784) #17
  %786 = call i16 @llvm.bswap.i16(i16 %775) #17
  %787 = zext i16 %786 to i32
  %788 = shl nuw nsw i32 %787, 8
  %789 = lshr i32 %785, 8
  %790 = and i32 %789, 255
  %791 = or i32 %790, %788
  %792 = shl i32 %777, 24
  %793 = or i32 %791, %792
  %794 = load i32, ptr %609, align 4
  %795 = shl i32 164096, %794
  %796 = load ptr, ptr %15, align 4
  %797 = getelementptr i8, ptr %796, i32 %795
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %797, i32 %793) #17, !srcloc !9
  %798 = getelementptr i32, ptr %772, i32 2
  %799 = load i32, ptr %798, align 4
  %800 = call i32 @llvm.bswap.i32(i32 %799) #17
  %801 = shl i32 %785, 24
  %802 = and i32 %789, 16776960
  %803 = or i32 %802, %801
  %804 = lshr i32 %800, 8
  %805 = and i32 %804, 255
  %806 = or i32 %805, %803
  %807 = load i32, ptr %609, align 4
  %808 = shl i32 164080, %807
  %809 = load ptr, ptr %15, align 4
  %810 = getelementptr i8, ptr %809, i32 %808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %810, i32 %806) #17, !srcloc !9
  %811 = getelementptr i32, ptr %772, i32 1
  %812 = load i32, ptr %811, align 4
  %813 = call i32 @llvm.bswap.i32(i32 %812) #17
  %814 = shl i32 %800, 24
  %815 = and i32 %804, 16776960
  %816 = or i32 %815, %814
  %817 = lshr i32 %813, 8
  %818 = and i32 %817, 255
  %819 = or i32 %818, %816
  %820 = load i32, ptr %609, align 4
  %821 = shl i32 164064, %820
  %822 = load ptr, ptr %15, align 4
  %823 = getelementptr i8, ptr %822, i32 %821
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %823, i32 %819) #17, !srcloc !9
  %824 = load i32, ptr %772, align 4
  %825 = call i32 @llvm.bswap.i32(i32 %824) #17
  %826 = shl i32 %813, 24
  %827 = and i32 %817, 16776960
  %828 = or i32 %827, %826
  %829 = lshr i32 %825, 8
  %830 = and i32 %829, 255
  %831 = or i32 %830, %828
  %832 = load i32, ptr %609, align 4
  %833 = shl i32 164048, %832
  %834 = load ptr, ptr %15, align 4
  %835 = getelementptr i8, ptr %834, i32 %833
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %835, i32 %831) #17, !srcloc !9
  %836 = shl i32 %825, 24
  %837 = and i32 %829, 16776960
  %838 = or i32 %837, %836
  %839 = or i32 %838, 15
  %840 = load i32, ptr %609, align 4
  %841 = shl i32 164032, %840
  %842 = load ptr, ptr %15, align 4
  %843 = getelementptr i8, ptr %842, i32 %841
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %843, i32 %839) #17, !srcloc !9
  %844 = load i32, ptr %588, align 4
  %845 = icmp ugt i32 %844, %595
  br i1 %845, label %847, label %846, !prof !13

846:                                              ; preds = %604
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 198, i32 noundef 9, ptr noundef null) #17
  br label %847

847:                                              ; preds = %846, %604
  %848 = load i32, ptr %609, align 4
  %849 = shl i32 163840, %848
  %850 = load ptr, ptr %15, align 4
  %851 = getelementptr i8, ptr %850, i32 %849
  %852 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %851) #17, !srcloc !8
  %853 = and i32 %852, -16711681
  %854 = shl i32 %595, 16
  %855 = or i32 %853, %854
  %856 = load i32, ptr %609, align 4
  %857 = shl i32 163840, %856
  %858 = load ptr, ptr %15, align 4
  %859 = getelementptr i8, ptr %858, i32 %857
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %859, i32 %855) #17, !srcloc !9
  %860 = load i32, ptr %609, align 4
  %861 = shl i32 163840, %860
  %862 = load ptr, ptr %15, align 4
  %863 = getelementptr i8, ptr %862, i32 %861
  %864 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %863) #17, !srcloc !8
  %865 = and i32 %864, -31760
  %866 = or i32 %865, 1029
  %867 = load i32, ptr %609, align 4
  %868 = shl i32 163840, %867
  %869 = load ptr, ptr %15, align 4
  %870 = getelementptr i8, ptr %869, i32 %868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %870, i32 %866) #17, !srcloc !9
  br label %871

871:                                              ; preds = %880, %847
  %872 = phi i32 [ 1000, %847 ], [ %881, %880 ]
  %873 = load i32, ptr %609, align 4
  %874 = shl i32 163840, %873
  %875 = load ptr, ptr %15, align 4
  %876 = getelementptr i8, ptr %875, i32 %874
  %877 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %876) #17, !srcloc !8
  %878 = and i32 %877, 1
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %883, label %880

880:                                              ; preds = %871
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !15
  %881 = add nsw i32 %872, -1
  %882 = icmp eq i32 %872, 0
  br i1 %882, label %885, label %871

883:                                              ; preds = %871
  %884 = icmp eq i32 %872, 0
  br i1 %884, label %945, label %885

885:                                              ; preds = %883, %880
  %886 = call fastcc i32 @bcm_sf2_cfp_act_pol_set(ptr noundef %15, i32 noundef %595, i32 noundef %1, i32 noundef %134, i32 noundef %131, i1 noundef zeroext false) #17
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %949

888:                                              ; preds = %885
  %889 = add nuw nsw i32 %542, 1
  %890 = call fastcc i32 @bcm_sf2_get_slice_number(ptr noundef nonnull @udf_tcpip6_layout, i32 noundef %889) #17
  %891 = icmp eq i32 %890, 4
  br i1 %891, label %949, label %892

892:                                              ; preds = %888
  %893 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip6_layout, i32 0, i32 %890
  %894 = call fastcc i32 @bcm_sf2_get_num_udf_slices(ptr noundef %893) #17
  call fastcc void @bcm_sf2_cfp_udf_set(ptr noundef %15, ptr noundef nonnull @udf_tcpip6_layout, i32 noundef %890) #17
  %895 = load i32, ptr %609, align 4
  %896 = shl i32 164016, %895
  %897 = load ptr, ptr %15, align 4
  %898 = getelementptr i8, ptr %897, i32 %896
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %898, i32 0) #17, !srcloc !9
  %899 = load i32, ptr %609, align 4
  %900 = shl i32 164144, %899
  %901 = load ptr, ptr %15, align 4
  %902 = getelementptr i8, ptr %901, i32 %900
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %902, i32 0) #17, !srcloc !9
  %903 = shl i32 %595, 24
  %904 = and i32 %894, 255
  %905 = sub nsw i32 32, %904
  %906 = lshr i32 -1, %905
  %907 = shl i32 %906, 8
  %908 = or i32 %907, %903
  %909 = load i32, ptr %609, align 4
  %910 = shl i32 164000, %909
  %911 = load ptr, ptr %15, align 4
  %912 = getelementptr i8, ptr %911, i32 %910
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %912, i32 %908) #17, !srcloc !9
  %913 = or i32 %907, -16777216
  %914 = load i32, ptr %609, align 4
  %915 = shl i32 164128, %914
  %916 = load ptr, ptr %15, align 4
  %917 = getelementptr i8, ptr %916, i32 %915
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %917, i32 %913) #17, !srcloc !9
  %918 = load ptr, ptr %5, align 8
  %919 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %918, i32 0, i32 1
  %920 = load ptr, ptr %6, align 8
  %921 = getelementptr inbounds %struct.anon.156, ptr %920, i32 0, i32 1
  %922 = load i16, ptr %921, align 2
  call fastcc void @bcm_sf2_cfp_slice_ipv6(ptr noundef %15, ptr noundef %919, i16 noundef zeroext %922, i16 noundef zeroext 0, i32 noundef %890, i32 noundef 0, i1 noundef zeroext false) #17
  %923 = load ptr, ptr %771, align 4
  %924 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %923, i32 0, i32 1
  %925 = load ptr, ptr %6, align 8
  %926 = getelementptr inbounds %struct.anon.156, ptr %925, i32 0, i32 1
  %927 = load i16, ptr %926, align 2
  call fastcc void @bcm_sf2_cfp_slice_ipv6(ptr noundef %15, ptr noundef %924, i16 noundef zeroext %927, i16 noundef zeroext 0, i32 noundef 3, i32 noundef 0, i1 noundef zeroext true) #17
  call fastcc void @bcm_sf2_cfp_rule_addr_set(ptr noundef %15, i32 noundef %587) #17
  %928 = call fastcc i32 @bcm_sf2_cfp_op(ptr noundef %15, i32 noundef 1028) #17
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %930, label %945

930:                                              ; preds = %892
  %931 = call fastcc i32 @bcm_sf2_cfp_act_pol_set(ptr noundef %15, i32 noundef %587, i32 noundef %1, i32 noundef %134, i32 noundef %131, i1 noundef zeroext true) #17
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %933, label %949

933:                                              ; preds = %930
  %934 = load i32, ptr %609, align 4
  %935 = shl i32 164864, %934
  %936 = load ptr, ptr %15, align 4
  %937 = getelementptr i8, ptr %936, i32 %935
  %938 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %937) #17, !srcloc !8
  %939 = or i32 %938, %663
  %940 = load i32, ptr %609, align 4
  %941 = shl i32 164864, %940
  %942 = load ptr, ptr %15, align 4
  %943 = getelementptr i8, ptr %942, i32 %941
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %943, i32 %939) #17, !srcloc !9
  call void @_set_bit(i32 noundef %595, ptr noundef %593) #17
  %944 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32, i32 2
  call void @_set_bit(i32 noundef %587, ptr noundef %944) #17
  store i32 %587, ptr %578, align 8
  br label %953

945:                                              ; preds = %892, %883
  %946 = phi i32 [ %595, %883 ], [ %587, %892 ]
  %947 = phi i32 [ -110, %883 ], [ %928, %892 ]
  %948 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %946) #19
  br label %949

949:                                              ; preds = %945, %930, %888, %885
  %950 = phi i32 [ %886, %885 ], [ %931, %930 ], [ -22, %888 ], [ %947, %945 ]
  call void @ethtool_rx_flow_rule_destroy(ptr noundef %600) #17
  br label %951

951:                                              ; preds = %949, %602, %592
  %952 = phi i32 [ %603, %602 ], [ %950, %949 ], [ -28, %592 ]
  call void @_clear_bit(i32 noundef %587, ptr noundef %593) #17
  br label %953

953:                                              ; preds = %951, %933, %586, %538, %515
  %954 = phi i32 [ %952, %951 ], [ 0, %933 ], [ -22, %515 ], [ -28, %586 ], [ -22, %538 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %955

955:                                              ; preds = %953, %513, %128, %108, %103, %95, %90, %35
  %956 = phi i32 [ -22, %95 ], [ -22, %90 ], [ -22, %35 ], [ -22, %103 ], [ %124, %108 ], [ %954, %953 ], [ %514, %513 ], [ -22, %128 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #17
  ret i32 %956
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcm_sf2_cfp_get_strings(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.b53_device, ptr %7, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !12
  %10 = icmp eq i32 %2, 1
  br i1 %10, label %11, label %35

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %9, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %15, label %35

15:                                               ; preds = %15, %11
  %16 = phi i32 [ %32, %15 ], [ 1, %11 ]
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %16, ptr noundef nonnull @.str.6)
  %18 = mul i32 %16, 96
  %19 = add i32 %18, -96
  %20 = getelementptr i8, ptr %3, i32 %19
  %21 = call i32 @strlcpy(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 32) #17
  %22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %16, ptr noundef nonnull @.str.7)
  %23 = mul i32 %16, 96
  %24 = add i32 %23, -64
  %25 = getelementptr i8, ptr %3, i32 %24
  %26 = call i32 @strlcpy(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 32) #17
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %16, ptr noundef nonnull @.str.8)
  %28 = mul i32 %16, 96
  %29 = add i32 %28, -32
  %30 = getelementptr i8, ptr %3, i32 %29
  %31 = call i32 @strlcpy(ptr noundef %30, ptr noundef nonnull %5, i32 noundef 32) #17
  %32 = add nuw i32 %16, 1
  %33 = load i32, ptr %12, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %15, label %35

35:                                               ; preds = %15, %11, %4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcm_sf2_cfp_get_ethtool_stats(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.b53_device, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 32
  tail call void @mutex_lock(ptr noundef %8) #17
  %9 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %105

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 32, i32 4
  %14 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 9
  br label %15

15:                                               ; preds = %101, %12
  %16 = phi i32 [ %10, %12 ], [ %102, %101 ]
  %17 = phi i32 [ 1, %12 ], [ %103, %101 ]
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 -176
  %20 = icmp eq ptr %18, %13
  br i1 %20, label %34, label %21

21:                                               ; preds = %30, %15
  %22 = phi ptr [ %32, %30 ], [ %19, %15 ]
  %23 = phi ptr [ %31, %30 ], [ %18, %15 ]
  %24 = load i32, ptr %22, align 8
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %23, i32 -8
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %23, align 4
  %32 = getelementptr i8, ptr %31, i32 -176
  %33 = icmp eq ptr %31, %13
  br i1 %33, label %34, label %21

34:                                               ; preds = %30, %26, %15
  %35 = phi ptr [ %19, %15 ], [ %32, %30 ], [ %22, %26 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %101, label %37

37:                                               ; preds = %34
  %38 = shl i32 %17, 16
  %39 = mul i32 %17, 3
  %40 = add i32 %39, -3
  br label %41

41:                                               ; preds = %97, %37
  %42 = phi i32 [ %16, %37 ], [ %100, %97 ]
  %43 = phi i32 [ 0, %37 ], [ %98, %97 ]
  %44 = icmp ugt i32 %42, %17
  br i1 %44, label %46, label %45, !prof !13

45:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 198, i32 noundef 9, ptr noundef null) #17
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, ptr %14, align 4
  %48 = shl i32 163840, %47
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #17, !srcloc !8
  %52 = and i32 %51, -16711681
  %53 = or i32 %52, %38
  %54 = load i32, ptr %14, align 4
  %55 = shl i32 163840, %54
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr i8, ptr %56, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %53) #17, !srcloc !9
  %58 = getelementptr [3 x %struct.bcm_sf2_cfp_stat], ptr @bcm_sf2_cfp_stats, i32 0, i32 %43, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %14, align 4
  %61 = shl i32 163840, %60
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr i8, ptr %62, i32 %61
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #17, !srcloc !8
  %65 = and i32 %64, -31760
  %66 = or i32 %59, %65
  %67 = or i32 %66, 3
  %68 = load i32, ptr %14, align 4
  %69 = shl i32 163840, %68
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr i8, ptr %70, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %67) #17, !srcloc !9
  br label %72

72:                                               ; preds = %81, %46
  %73 = phi i32 [ 1000, %46 ], [ %82, %81 ]
  %74 = load i32, ptr %14, align 4
  %75 = shl i32 163840, %74
  %76 = load ptr, ptr %7, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #17, !srcloc !8
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !15
  %82 = add nsw i32 %73, -1
  %83 = icmp eq i32 %73, 0
  br i1 %83, label %86, label %72

84:                                               ; preds = %72
  %85 = icmp eq i32 %73, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %84, %81
  %87 = getelementptr [3 x %struct.bcm_sf2_cfp_stat], ptr @bcm_sf2_cfp_stats, i32 0, i32 %43
  %88 = add i32 %40, %43
  %89 = load i32, ptr %87, align 4
  %90 = load i32, ptr %14, align 4
  %91 = shl i32 %89, %90
  %92 = load ptr, ptr %7, align 4
  %93 = getelementptr i8, ptr %92, i32 %91
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #17, !srcloc !8
  %95 = zext i32 %94 to i64
  %96 = getelementptr i64, ptr %2, i32 %88
  store i64 %95, ptr %96, align 8
  br label %97

97:                                               ; preds = %86, %84
  %98 = add nuw nsw i32 %43, 1
  %99 = icmp eq i32 %98, 3
  %100 = load i32, ptr %9, align 4
  br i1 %99, label %101, label %41

101:                                              ; preds = %97, %34
  %102 = phi i32 [ %16, %34 ], [ %100, %97 ]
  %103 = add nuw i32 %17, 1
  %104 = icmp ult i32 %103, %102
  br i1 %104, label %15, label %105

105:                                              ; preds = %101, %3
  tail call void @mutex_unlock(ptr noundef %8) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_cfp_rule_addr_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6, !prof !13

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 198, i32 noundef 9, ptr noundef null) #17
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 163840, %9
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 %10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #17, !srcloc !8
  %14 = and i32 %13, -16711681
  %15 = shl i32 %1, 16
  %16 = or i32 %14, %15
  %17 = load i32, ptr %8, align 4
  %18 = shl i32 163840, %17
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %16) #17, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_cfp_op(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 163840, %4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #17, !srcloc !8
  %9 = and i32 %8, -31760
  %10 = or i32 %9, %1
  %11 = or i32 %10, 1
  %12 = load i32, ptr %3, align 4
  %13 = shl i32 163840, %12
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #17, !srcloc !9
  br label %16

16:                                               ; preds = %25, %2
  %17 = phi i32 [ 1000, %2 ], [ %26, %25 ]
  %18 = load i32, ptr %3, align 4
  %19 = shl i32 163840, %18
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #17, !srcloc !8
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !15
  %26 = add nsw i32 %17, -1
  %27 = icmp eq i32 %17, 0
  br i1 %27, label %31, label %16

28:                                               ; preds = %16
  %29 = icmp eq i32 %17, 0
  %30 = select i1 %29, i32 -110, i32 0
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ %30, %28 ], [ 0, %25 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @bcm_sf2_cfp_get_sset_count(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.b53_device, ptr %7, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %9, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 3
  %13 = add i32 %12, -3
  br label %14

14:                                               ; preds = %5, %3
  %15 = phi i32 [ %13, %5 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_cfp_rule_del_one(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7, !prof !13

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 198, i32 noundef 9, ptr noundef null) #17
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 163840, %10
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %12, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #17, !srcloc !8
  %15 = and i32 %14, -16711681
  %16 = shl i32 %1, 16
  %17 = or i32 %15, %16
  %18 = load i32, ptr %9, align 4
  %19 = shl i32 163840, %18
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #17, !srcloc !9
  %22 = load i32, ptr %9, align 4
  %23 = shl i32 163840, %22
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr i8, ptr %24, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #17, !srcloc !8
  %27 = and i32 %26, -31760
  %28 = or i32 %27, 1027
  %29 = load i32, ptr %9, align 4
  %30 = shl i32 163840, %29
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr i8, ptr %31, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %28) #17, !srcloc !9
  br label %33

33:                                               ; preds = %42, %8
  %34 = phi i32 [ 1000, %8 ], [ %43, %42 ]
  %35 = load i32, ptr %9, align 4
  %36 = shl i32 163840, %35
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr i8, ptr %37, i32 %36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #17, !srcloc !8
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !15
  %43 = add nsw i32 %34, -1
  %44 = icmp eq i32 %34, 0
  br i1 %44, label %47, label %33

45:                                               ; preds = %33
  %46 = icmp eq i32 %34, 0
  br i1 %46, label %95, label %47

47:                                               ; preds = %45, %42
  %48 = load i32, ptr %9, align 4
  %49 = shl i32 164000, %48
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #17, !srcloc !8
  %53 = icmp eq ptr %2, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = lshr i32 %52, 24
  store i32 %55, ptr %2, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i32, ptr %9, align 4
  %58 = shl i32 163904, %57
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr i8, ptr %59, i32 %58
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #17, !srcloc !8
  %62 = and i32 %61, -4
  %63 = load i32, ptr %9, align 4
  %64 = shl i32 163904, %63
  %65 = load ptr, ptr %0, align 4
  %66 = getelementptr i8, ptr %65, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %62) #17, !srcloc !9
  %67 = load i32, ptr %9, align 4
  %68 = shl i32 163840, %67
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr i8, ptr %69, i32 %68
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #17, !srcloc !8
  %72 = and i32 %71, -31760
  %73 = or i32 %72, 1029
  %74 = load i32, ptr %9, align 4
  %75 = shl i32 163840, %74
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %73) #17, !srcloc !9
  br label %78

78:                                               ; preds = %87, %56
  %79 = phi i32 [ 1000, %56 ], [ %88, %87 ]
  %80 = load i32, ptr %9, align 4
  %81 = shl i32 163840, %80
  %82 = load ptr, ptr %0, align 4
  %83 = getelementptr i8, ptr %82, i32 %81
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #17, !srcloc !8
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !15
  %88 = add nsw i32 %79, -1
  %89 = icmp eq i32 %79, 0
  br i1 %89, label %92, label %78

90:                                               ; preds = %78
  %91 = icmp eq i32 %79, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %90, %87
  %93 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 32, i32 1
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %93) #17
  %94 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 32, i32 2
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %94) #17
  br label %95

95:                                               ; preds = %92, %90, %45
  %96 = phi i32 [ 0, %92 ], [ -110, %45 ], [ -110, %90 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethtool_rx_flow_rule_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_get_slice_number(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #14 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %4, label %30

4:                                                ; preds = %2
  %5 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %0, i32 0, i32 %1
  %6 = tail call i32 @bcmp(ptr noundef dereferenceable(9) %5, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = add i32 %1, 1
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %30, label %11

11:                                               ; preds = %8
  %12 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %0, i32 0, i32 %9
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(9) %12, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = add i32 %1, 2
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %0, i32 0, i32 %16
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(9) %19, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = add i32 %1, 3
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %0, i32 0, i32 %23
  %27 = tail call i32 @bcmp(ptr noundef dereferenceable(9) %26, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9)
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 4, i32 %23
  br label %30

30:                                               ; preds = %25, %22, %18, %15, %11, %8, %4, %2
  %31 = phi i32 [ %1, %2 ], [ %1, %4 ], [ 4, %8 ], [ %9, %11 ], [ 4, %15 ], [ %16, %18 ], [ 4, %22 ], [ %29, %25 ]
  ret i32 %31
}

; Function Attrs: argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_get_num_udf_slices(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = load i8, ptr %0, align 1
  %3 = icmp ne i8 %2, 0
  %4 = zext i1 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp ne i8 %6, 0
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %4, %8
  %10 = getelementptr i8, ptr %0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i32
  %14 = add nuw nsw i32 %9, %13
  %15 = getelementptr i8, ptr %0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i32 %14, %18
  %20 = getelementptr i8, ptr %0, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = icmp ne i8 %21, 0
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %19, %23
  %25 = getelementptr i8, ptr %0, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = icmp ne i8 %26, 0
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %24, %28
  %30 = getelementptr i8, ptr %0, i32 6
  %31 = load i8, ptr %30, align 1
  %32 = icmp ne i8 %31, 0
  %33 = zext i1 %32 to i32
  %34 = add nuw nsw i32 %29, %33
  %35 = getelementptr i8, ptr %0, i32 7
  %36 = load i8, ptr %35, align 1
  %37 = icmp ne i8 %36, 0
  %38 = zext i1 %37 to i32
  %39 = add nuw nsw i32 %34, %38
  %40 = getelementptr i8, ptr %0, i32 8
  %41 = load i8, ptr %40, align 1
  %42 = icmp ne i8 %41, 0
  %43 = zext i1 %42 to i32
  %44 = add nuw nsw i32 %39, %43
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_cfp_udf_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %1, i32 0, i32 %2
  %5 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %1, i32 0, i32 %2, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 9
  %8 = load i8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  %10 = load i32, ptr %7, align 4
  %11 = shl i32 %6, %10
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %12, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %9) #17, !srcloc !9
  %14 = getelementptr [9 x i8], ptr %4, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = add i32 %6, 4
  %18 = load i32, ptr %7, align 4
  %19 = shl i32 %17, %18
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %16) #17, !srcloc !9
  %22 = getelementptr [9 x i8], ptr %4, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add i32 %6, 8
  %26 = load i32, ptr %7, align 4
  %27 = shl i32 %25, %26
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %24) #17, !srcloc !9
  %30 = getelementptr [9 x i8], ptr %4, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add i32 %6, 12
  %34 = load i32, ptr %7, align 4
  %35 = shl i32 %33, %34
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr i8, ptr %36, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %32) #17, !srcloc !9
  %38 = getelementptr [9 x i8], ptr %4, i32 0, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add i32 %6, 16
  %42 = load i32, ptr %7, align 4
  %43 = shl i32 %41, %42
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %40) #17, !srcloc !9
  %46 = getelementptr [9 x i8], ptr %4, i32 0, i32 5
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add i32 %6, 20
  %50 = load i32, ptr %7, align 4
  %51 = shl i32 %49, %50
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %48) #17, !srcloc !9
  %54 = getelementptr [9 x i8], ptr %4, i32 0, i32 6
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add i32 %6, 24
  %58 = load i32, ptr %7, align 4
  %59 = shl i32 %57, %58
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr i8, ptr %60, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %56) #17, !srcloc !9
  %62 = getelementptr [9 x i8], ptr %4, i32 0, i32 7
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add i32 %6, 28
  %66 = load i32, ptr %7, align 4
  %67 = shl i32 %65, %66
  %68 = load ptr, ptr %0, align 4
  %69 = getelementptr i8, ptr %68, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %64) #17, !srcloc !9
  %70 = getelementptr [9 x i8], ptr %4, i32 0, i32 8
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = add i32 %6, 32
  %74 = load i32, ptr %7, align 4
  %75 = shl i32 %73, %74
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %72) #17, !srcloc !9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_cfp_act_pol_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = add i32 %3, 14
  %8 = shl nuw i32 1, %7
  %9 = shl i32 %4, 10
  %10 = or i32 %9, %8
  %11 = or i32 %10, 33562624
  %12 = select i1 %5, i32 %11, i32 0
  %13 = icmp eq i32 %2, %3
  %14 = or i32 %12, 512
  %15 = select i1 %13, i32 %14, i32 %12
  %16 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 164160, %17
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %15) #17, !srcloc !9
  %21 = shl i32 %1, 20
  %22 = load i32, ptr %16, align 4
  %23 = shl i32 164176, %22
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr i8, ptr %24, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #17, !srcloc !9
  %26 = load i32, ptr %16, align 4
  %27 = shl i32 164192, %26
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #17, !srcloc !9
  %30 = load i32, ptr %16, align 4
  %31 = shl i32 163840, %30
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #17, !srcloc !8
  %35 = and i32 %34, -31760
  %36 = or i32 %35, 2053
  %37 = load i32, ptr %16, align 4
  %38 = shl i32 163840, %37
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr i8, ptr %39, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %36) #17, !srcloc !9
  br label %41

41:                                               ; preds = %50, %6
  %42 = phi i32 [ 1000, %6 ], [ %51, %50 ]
  %43 = load i32, ptr %16, align 4
  %44 = shl i32 163840, %43
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr i8, ptr %45, i32 %44
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #17, !srcloc !8
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !15
  %51 = add nsw i32 %42, -1
  %52 = icmp eq i32 %42, 0
  br i1 %52, label %55, label %41

53:                                               ; preds = %41
  %54 = icmp eq i32 %42, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %53, %50
  %56 = load i32, ptr %16, align 4
  %57 = shl i32 164224, %56
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr i8, ptr %58, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 24) #17, !srcloc !9
  %60 = load i32, ptr %16, align 4
  %61 = shl i32 163840, %60
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr i8, ptr %62, i32 %61
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #17, !srcloc !8
  %65 = and i32 %64, -31760
  %66 = or i32 %65, 4101
  %67 = load i32, ptr %16, align 4
  %68 = shl i32 163840, %67
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr i8, ptr %69, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %66) #17, !srcloc !9
  br label %71

71:                                               ; preds = %80, %55
  %72 = phi i32 [ 1000, %55 ], [ %81, %80 ]
  %73 = load i32, ptr %16, align 4
  %74 = shl i32 163840, %73
  %75 = load ptr, ptr %0, align 4
  %76 = getelementptr i8, ptr %75, i32 %74
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #17, !srcloc !8
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !15
  %81 = add nsw i32 %72, -1
  %82 = icmp eq i32 %72, 0
  br i1 %82, label %88, label %71

83:                                               ; preds = %71
  %84 = icmp eq i32 %72, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %83, %53
  %86 = phi ptr [ @.str.4, %53 ], [ @.str.5, %83 ]
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %86, i32 noundef %1) #19
  br label %88

88:                                               ; preds = %85, %83, %80
  %89 = phi i32 [ 0, %83 ], [ -110, %85 ], [ 0, %80 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_rx_flow_rule_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_cfp_slice_ipv6(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
  %8 = tail call i16 @llvm.bswap.i16(i16 %3)
  %9 = zext i16 %8 to i32
  %10 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %9, i32 24)
  %11 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  br i1 %6, label %13, label %17

13:                                               ; preds = %7
  %14 = shl i32 164112, %12
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %10) #17, !srcloc !9
  br label %21

17:                                               ; preds = %7
  %18 = shl i32 163984, %12
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %10) #17, !srcloc !9
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ 163904, %17 ], [ 164032, %13 ]
  %23 = phi i32 [ 163920, %17 ], [ 164048, %13 ]
  %24 = phi i32 [ 163936, %17 ], [ 164064, %13 ]
  %25 = phi i32 [ 163952, %17 ], [ 164080, %13 ]
  %26 = phi i32 [ 163968, %17 ], [ 164096, %13 ]
  %27 = getelementptr i32, ptr %1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = tail call i16 @llvm.bswap.i16(i16 %2)
  %31 = zext i16 %30 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = lshr i32 %29, 8
  %34 = and i32 %33, 255
  %35 = or i32 %34, %32
  %36 = shl i32 %9, 24
  %37 = or i32 %35, %36
  %38 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 %26, %39
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr i8, ptr %41, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #17, !srcloc !9
  %43 = getelementptr i32, ptr %1, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = shl i32 %29, 24
  %47 = and i32 %33, 16776960
  %48 = or i32 %47, %46
  %49 = lshr i32 %45, 8
  %50 = and i32 %49, 255
  %51 = or i32 %50, %48
  %52 = load i32, ptr %38, align 4
  %53 = shl i32 %25, %52
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr i8, ptr %54, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %51) #17, !srcloc !9
  %56 = getelementptr i32, ptr %1, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = shl i32 %45, 24
  %60 = and i32 %49, 16776960
  %61 = or i32 %60, %59
  %62 = lshr i32 %58, 8
  %63 = and i32 %62, 255
  %64 = or i32 %63, %61
  %65 = load i32, ptr %38, align 4
  %66 = shl i32 %24, %65
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr i8, ptr %67, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %64) #17, !srcloc !9
  %69 = load i32, ptr %1, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = shl i32 %58, 24
  %72 = and i32 %62, 16776960
  %73 = or i32 %72, %71
  %74 = lshr i32 %70, 8
  %75 = and i32 %74, 255
  %76 = or i32 %75, %73
  %77 = load i32, ptr %38, align 4
  %78 = shl i32 %23, %77
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr i8, ptr %79, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %76) #17, !srcloc !9
  %81 = shl i32 %70, 24
  %82 = and i32 %74, 16776960
  %83 = or i32 %82, %81
  %84 = shl i32 %4, 2
  %85 = or i32 %84, %83
  %86 = or i32 %85, 3
  %87 = load i32, ptr %38, align 4
  %88 = shl i32 %22, %87
  %89 = load ptr, ptr %0, align 4
  %90 = getelementptr i8, ptr %89, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %86) #17, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }

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
!8 = !{i64 4946094}
!9 = !{i64 4945676}
!10 = !{i64 2156710560}
!11 = !{i64 2156710402}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2156687054}
!15 = !{i64 2156686896}
