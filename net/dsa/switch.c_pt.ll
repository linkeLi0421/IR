; ModuleID = '/llk/IR/net/dsa/switch.c_pt.bc'
source_filename = "../net/dsa/switch.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_notifier_bridge_info = type { %struct.dsa_bridge, i32, i32, i32, i8 }
%struct.dsa_bridge = type { ptr, i32, i8, %struct.refcount_struct }
%struct.dsa_notifier_fdb_info = type { i32, i32, ptr, i16 }
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
%struct.dsa_notifier_lag_info = type { ptr, i32, i32, ptr }
%struct.dsa_notifier_mdb_info = type { ptr, i32, i32 }
%struct.dsa_notifier_vlan_info = type { ptr, i32, i32, ptr }
%struct.dsa_notifier_mtu_info = type { i8, i32, i32, i32 }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
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
%struct.dsa_mac_addr = type { [6 x i8], i16, %struct.refcount_struct, %struct.list_head }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [36 x i8] c"failed to unregister notifier (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"port %d: %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dsa_switch_change_tag_proto.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"net/dsa/switch.c\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_switch_register_notifier(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 4
  store ptr @dsa_switch_event, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch_tree, ptr %4, i32 0, i32 2
  %6 = tail call i32 @raw_notifier_chain_register(ptr noundef %5, ptr noundef %2) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_switch_event(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.netlink_ext_ack, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  switch i32 %1, label %1000 [
    i32 0, label %6
    i32 1, label %51
    i32 2, label %132
    i32 3, label %254
    i32 4, label %325
    i32 5, label %396
    i32 6, label %432
    i32 7, label %468
    i32 8, label %492
    i32 9, label %522
    i32 10, label %548
    i32 11, label %617
    i32 12, label %686
    i32 13, label %720
    i32 14, label %754
    i32 15, label %809
    i32 16, label %826
    i32 17, label %884
    i32 18, label %962
    i32 19, label %986
    i32 20, label %996
    i32 21, label %998
  ]

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr i8, ptr %0, i32 36
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = icmp ult i32 %7, %9
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %1000, label %13

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 40
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = icmp ugt i32 %7, %15
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %1000, label %19

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %0, i32 -12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dsa_switch_tree, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %42, label %25

25:                                               ; preds = %38, %19
  %26 = phi ptr [ %40, %38 ], [ %23, %19 ]
  %27 = phi i32 [ %39, %38 ], [ %7, %19 ]
  %28 = getelementptr i8, ptr %26, i32 -264
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %5
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 -232
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp ult i32 %33, %27
  %36 = select i1 %34, i1 %35, i1 false
  %37 = select i1 %36, i32 %33, i32 %27
  br label %38

38:                                               ; preds = %31, %25
  %39 = phi i32 [ %27, %25 ], [ %37, %31 ]
  %40 = load ptr, ptr %26, align 4
  %41 = icmp eq ptr %40, %22
  br i1 %41, label %42, label %25

42:                                               ; preds = %38, %19
  %43 = phi i32 [ %7, %19 ], [ %39, %38 ]
  %44 = getelementptr i8, ptr %0, i32 24
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dsa_switch_ops, ptr %45, i32 0, i32 44
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %1009, label %49

49:                                               ; preds = %42
  %50 = tail call i32 %47(ptr noundef %5, i32 noundef %43) #6
  br label %1004

51:                                               ; preds = %3
  %52 = getelementptr i8, ptr %0, i32 -12
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dsa_switch_tree, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %51
  %60 = getelementptr i8, ptr %0, i32 -8
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %59
  %66 = getelementptr i8, ptr %0, i32 24
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dsa_switch_ops, ptr %67, i32 0, i32 45
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %1000, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 4
  %75 = load i32, ptr %2, align 4
  %76 = insertvalue [4 x i32] undef, i32 %75, 0
  %77 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = insertvalue [4 x i32] %76, i32 %78, 1
  %80 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = insertvalue [4 x i32] %79, i32 %81, 2
  %83 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = insertvalue [4 x i32] %82, i32 %84, 3
  %86 = tail call i32 %69(ptr noundef %5, i32 noundef %73, [4 x i32] %85, ptr noundef %74) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %1000

88:                                               ; preds = %71
  %89 = load i32, ptr %54, align 4
  %90 = load i32, ptr %56, align 4
  br label %91

91:                                               ; preds = %88, %51
  %92 = phi i32 [ %90, %88 ], [ %57, %51 ]
  %93 = phi i32 [ %89, %88 ], [ %55, %51 ]
  %94 = icmp eq i32 %93, %92
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = getelementptr i8, ptr %0, i32 -8
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %95, %59
  %101 = phi i32 [ %99, %95 ], [ %63, %59 ]
  %102 = phi i32 [ %97, %95 ], [ %61, %59 ]
  %103 = phi i32 [ %92, %95 ], [ %55, %59 ]
  %104 = icmp eq i32 %102, %101
  br i1 %104, label %130, label %105

105:                                              ; preds = %100, %91
  %106 = phi i32 [ %103, %100 ], [ %92, %91 ]
  %107 = getelementptr i8, ptr %0, i32 24
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.dsa_switch_ops, ptr %108, i32 0, i32 69
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %130, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = load i32, ptr %2, align 4
  %118 = insertvalue [4 x i32] undef, i32 %117, 0
  %119 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = insertvalue [4 x i32] %118, i32 %120, 1
  %122 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = insertvalue [4 x i32] %121, i32 %123, 2
  %125 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = insertvalue [4 x i32] %124, i32 %126, 3
  %128 = tail call i32 %110(ptr noundef %5, i32 noundef %106, i32 noundef %114, i32 noundef %116, [4 x i32] %127) #6
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %1000

130:                                              ; preds = %112, %105, %100
  %131 = tail call i32 @dsa_tag_8021q_bridge_join(ptr noundef %5, ptr noundef %2) #6
  br label %1004

132:                                              ; preds = %3
  %133 = getelementptr i8, ptr %0, i32 -12
  %134 = load ptr, ptr %133, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false) #6
  %135 = getelementptr inbounds %struct.dsa_switch_tree, ptr %134, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %168

140:                                              ; preds = %132
  %141 = getelementptr i8, ptr %0, i32 -8
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %177

146:                                              ; preds = %140
  %147 = getelementptr i8, ptr %0, i32 24
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.dsa_switch_ops, ptr %148, i32 0, i32 46
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %205, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 3
  %154 = load i32, ptr %153, align 4
  %155 = load i32, ptr %2, align 4
  %156 = insertvalue [4 x i32] undef, i32 %155, 0
  %157 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = insertvalue [4 x i32] %156, i32 %158, 1
  %160 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = insertvalue [4 x i32] %159, i32 %161, 2
  %163 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  %164 = load i32, ptr %163, align 4
  %165 = insertvalue [4 x i32] %162, i32 %164, 3
  tail call void %150(ptr noundef %5, i32 noundef %154, [4 x i32] %165) #6
  %166 = load i32, ptr %135, align 4
  %167 = load i32, ptr %137, align 4
  br label %168

168:                                              ; preds = %152, %132
  %169 = phi i32 [ %167, %152 ], [ %138, %132 ]
  %170 = phi i32 [ %166, %152 ], [ %136, %132 ]
  %171 = icmp eq i32 %170, %169
  br i1 %171, label %172, label %182

172:                                              ; preds = %168
  %173 = getelementptr i8, ptr %0, i32 -8
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 2
  %176 = load i32, ptr %175, align 4
  br label %177

177:                                              ; preds = %172, %140
  %178 = phi i32 [ %176, %172 ], [ %144, %140 ]
  %179 = phi i32 [ %174, %172 ], [ %142, %140 ]
  %180 = phi i32 [ %169, %172 ], [ %136, %140 ]
  %181 = icmp eq i32 %179, %178
  br i1 %181, label %205, label %182

182:                                              ; preds = %177, %168
  %183 = phi i32 [ %180, %177 ], [ %169, %168 ]
  %184 = getelementptr i8, ptr %0, i32 24
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.dsa_switch_ops, ptr %185, i32 0, i32 70
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %205, label %189

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 3
  %193 = load i32, ptr %192, align 4
  %194 = load i32, ptr %2, align 4
  %195 = insertvalue [4 x i32] undef, i32 %194, 0
  %196 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = insertvalue [4 x i32] %195, i32 %197, 1
  %199 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = insertvalue [4 x i32] %198, i32 %200, 2
  %202 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  %203 = load i32, ptr %202, align 4
  %204 = insertvalue [4 x i32] %201, i32 %203, 3
  tail call void %187(ptr noundef %5, i32 noundef %183, i32 noundef %191, i32 noundef %193, [4 x i32] %204) #6
  br label %205

205:                                              ; preds = %189, %182, %177, %146
  %206 = getelementptr i8, ptr %0, i32 -4
  %207 = load i16, ptr %206, align 4
  %208 = and i16 %207, 4
  %209 = icmp eq i16 %208, 0
  %210 = xor i1 %209, true
  br i1 %209, label %250, label %211

211:                                              ; preds = %205
  %212 = and i16 %207, 2
  %213 = icmp eq i16 %212, 0
  %214 = load ptr, ptr %133, align 4
  br i1 %213, label %221, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.dsa_switch_tree, ptr %214, i32 0, i32 1
  br label %217

217:                                              ; preds = %217, %215
  %218 = phi ptr [ %216, %215 ], [ %219, %217 ]
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, %216
  br i1 %220, label %221, label %217

221:                                              ; preds = %217, %211
  %222 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %2, i32 0, i32 3
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.dsa_switch_tree, ptr %214, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, %224
  br i1 %226, label %241, label %227

227:                                              ; preds = %236, %221
  %228 = phi ptr [ %237, %236 ], [ %225, %221 ]
  %229 = getelementptr i8, ptr %228, i32 -264
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, %5
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = getelementptr i8, ptr %228, i32 -260
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, %223
  br i1 %235, label %239, label %236

236:                                              ; preds = %232, %227
  %237 = load ptr, ptr %228, align 4
  %238 = icmp eq ptr %237, %224
  br i1 %238, label %241, label %227

239:                                              ; preds = %232
  %240 = getelementptr i8, ptr %228, i32 -280
  br label %241

241:                                              ; preds = %239, %236, %221
  %242 = phi ptr [ %240, %239 ], [ null, %221 ], [ null, %236 ]
  %243 = call i32 @dsa_port_vlan_filtering(ptr noundef %242, i1 noundef zeroext %210, ptr noundef nonnull %4) #6
  %244 = load ptr, ptr %4, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %249, label %246

246:                                              ; preds = %241
  %247 = load ptr, ptr %5, align 4
  %248 = load i32, ptr %222, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %247, ptr noundef nonnull @.str.1, i32 noundef %248, ptr noundef nonnull %244) #7
  br label %249

249:                                              ; preds = %246, %241
  switch i32 %243, label %252 [
    i32 -95, label %250
    i32 0, label %250
  ]

250:                                              ; preds = %249, %249, %205
  %251 = call i32 @dsa_tag_8021q_bridge_leave(ptr noundef %5, ptr noundef %2) #6
  br label %252

252:                                              ; preds = %250, %249
  %253 = phi i32 [ %251, %250 ], [ %243, %249 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  br label %1004

254:                                              ; preds = %3
  %255 = load i32, ptr %2, align 4
  %256 = getelementptr i8, ptr %0, i32 -8
  %257 = load i32, ptr %256, align 4
  %258 = icmp eq i32 %257, %255
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 1
  %261 = getelementptr i8, ptr %0, i32 -12
  %262 = load ptr, ptr %261, align 4
  br label %291

263:                                              ; preds = %254
  %264 = getelementptr i8, ptr %0, i32 -12
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.dsa_switch_tree, ptr %265, i32 0, i32 10
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, %266
  br i1 %268, label %289, label %269

269:                                              ; preds = %286, %263
  %270 = phi ptr [ %287, %286 ], [ %267, %263 ]
  %271 = getelementptr i8, ptr %270, i32 -8
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.dsa_port, ptr %272, i32 0, i32 4
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, %5
  br i1 %275, label %276, label %286

276:                                              ; preds = %269
  %277 = getelementptr i8, ptr %270, i32 -4
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.dsa_port, ptr %278, i32 0, i32 4
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.dsa_switch, ptr %280, i32 0, i32 2
  %282 = load i32, ptr %281, align 4
  %283 = icmp eq i32 %282, %255
  br i1 %283, label %284, label %286

284:                                              ; preds = %276
  %285 = getelementptr inbounds %struct.dsa_port, ptr %272, i32 0, i32 5
  br label %291

286:                                              ; preds = %276, %269
  %287 = load ptr, ptr %270, align 4
  %288 = icmp eq ptr %287, %266
  br i1 %288, label %289, label %269

289:                                              ; preds = %286, %263
  %290 = getelementptr i8, ptr %0, i32 64
  br label %291

291:                                              ; preds = %289, %284, %259
  %292 = phi ptr [ %262, %259 ], [ %265, %284 ], [ %265, %289 ]
  %293 = phi ptr [ %260, %259 ], [ %285, %284 ], [ %290, %289 ]
  %294 = load i32, ptr %293, align 4
  %295 = getelementptr inbounds %struct.dsa_switch_tree, ptr %292, i32 0, i32 1
  %296 = load ptr, ptr %295, align 4
  %297 = icmp eq ptr %296, %295
  br i1 %297, label %312, label %298

298:                                              ; preds = %307, %291
  %299 = phi ptr [ %308, %307 ], [ %296, %291 ]
  %300 = getelementptr i8, ptr %299, i32 -264
  %301 = load ptr, ptr %300, align 4
  %302 = icmp eq ptr %301, %5
  br i1 %302, label %303, label %307

303:                                              ; preds = %298
  %304 = getelementptr i8, ptr %299, i32 -260
  %305 = load i32, ptr %304, align 4
  %306 = icmp eq i32 %305, %294
  br i1 %306, label %310, label %307

307:                                              ; preds = %303, %298
  %308 = load ptr, ptr %299, align 4
  %309 = icmp eq ptr %308, %295
  br i1 %309, label %312, label %298

310:                                              ; preds = %303
  %311 = getelementptr i8, ptr %299, i32 -280
  br label %312

312:                                              ; preds = %310, %307, %291
  %313 = phi ptr [ %311, %310 ], [ null, %291 ], [ null, %307 ]
  %314 = getelementptr i8, ptr %0, i32 24
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.dsa_switch_ops, ptr %315, i32 0, i32 54
  %317 = load ptr, ptr %316, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %1000, label %319

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 2
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 3
  %323 = load i16, ptr %322, align 4
  %324 = tail call fastcc i32 @dsa_port_do_fdb_add(ptr noundef %313, ptr noundef %321, i16 noundef zeroext %323) #6
  br label %1004

325:                                              ; preds = %3
  %326 = load i32, ptr %2, align 4
  %327 = getelementptr i8, ptr %0, i32 -8
  %328 = load i32, ptr %327, align 4
  %329 = icmp eq i32 %328, %326
  br i1 %329, label %330, label %334

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 1
  %332 = getelementptr i8, ptr %0, i32 -12
  %333 = load ptr, ptr %332, align 4
  br label %362

334:                                              ; preds = %325
  %335 = getelementptr i8, ptr %0, i32 -12
  %336 = load ptr, ptr %335, align 4
  %337 = getelementptr inbounds %struct.dsa_switch_tree, ptr %336, i32 0, i32 10
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, %337
  br i1 %339, label %360, label %340

340:                                              ; preds = %357, %334
  %341 = phi ptr [ %358, %357 ], [ %338, %334 ]
  %342 = getelementptr i8, ptr %341, i32 -8
  %343 = load ptr, ptr %342, align 4
  %344 = getelementptr inbounds %struct.dsa_port, ptr %343, i32 0, i32 4
  %345 = load ptr, ptr %344, align 4
  %346 = icmp eq ptr %345, %5
  br i1 %346, label %347, label %357

347:                                              ; preds = %340
  %348 = getelementptr i8, ptr %341, i32 -4
  %349 = load ptr, ptr %348, align 4
  %350 = getelementptr inbounds %struct.dsa_port, ptr %349, i32 0, i32 4
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.dsa_switch, ptr %351, i32 0, i32 2
  %353 = load i32, ptr %352, align 4
  %354 = icmp eq i32 %353, %326
  br i1 %354, label %355, label %357

355:                                              ; preds = %347
  %356 = getelementptr inbounds %struct.dsa_port, ptr %343, i32 0, i32 5
  br label %362

357:                                              ; preds = %347, %340
  %358 = load ptr, ptr %341, align 4
  %359 = icmp eq ptr %358, %337
  br i1 %359, label %360, label %340

360:                                              ; preds = %357, %334
  %361 = getelementptr i8, ptr %0, i32 64
  br label %362

362:                                              ; preds = %360, %355, %330
  %363 = phi ptr [ %333, %330 ], [ %336, %355 ], [ %336, %360 ]
  %364 = phi ptr [ %331, %330 ], [ %356, %355 ], [ %361, %360 ]
  %365 = load i32, ptr %364, align 4
  %366 = getelementptr inbounds %struct.dsa_switch_tree, ptr %363, i32 0, i32 1
  %367 = load ptr, ptr %366, align 4
  %368 = icmp eq ptr %367, %366
  br i1 %368, label %383, label %369

369:                                              ; preds = %378, %362
  %370 = phi ptr [ %379, %378 ], [ %367, %362 ]
  %371 = getelementptr i8, ptr %370, i32 -264
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, %5
  br i1 %373, label %374, label %378

374:                                              ; preds = %369
  %375 = getelementptr i8, ptr %370, i32 -260
  %376 = load i32, ptr %375, align 4
  %377 = icmp eq i32 %376, %365
  br i1 %377, label %381, label %378

378:                                              ; preds = %374, %369
  %379 = load ptr, ptr %370, align 4
  %380 = icmp eq ptr %379, %366
  br i1 %380, label %383, label %369

381:                                              ; preds = %374
  %382 = getelementptr i8, ptr %370, i32 -280
  br label %383

383:                                              ; preds = %381, %378, %362
  %384 = phi ptr [ %382, %381 ], [ null, %362 ], [ null, %378 ]
  %385 = getelementptr i8, ptr %0, i32 24
  %386 = load ptr, ptr %385, align 4
  %387 = getelementptr inbounds %struct.dsa_switch_ops, ptr %386, i32 0, i32 55
  %388 = load ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %1000, label %390

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 2
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 3
  %394 = load i16, ptr %393, align 4
  %395 = tail call fastcc i32 @dsa_port_do_fdb_del(ptr noundef %384, ptr noundef %392, i16 noundef zeroext %394) #6
  br label %1004

396:                                              ; preds = %3
  %397 = getelementptr i8, ptr %0, i32 24
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr inbounds %struct.dsa_switch_ops, ptr %398, i32 0, i32 54
  %400 = load ptr, ptr %399, align 4
  %401 = icmp eq ptr %400, null
  br i1 %401, label %1000, label %402

402:                                              ; preds = %396
  %403 = getelementptr i8, ptr %0, i32 -12
  %404 = load ptr, ptr %403, align 4
  %405 = getelementptr inbounds %struct.dsa_switch_tree, ptr %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 2
  %407 = load ptr, ptr %405, align 4
  %408 = icmp eq ptr %407, %405
  br i1 %408, label %1009, label %409

409:                                              ; preds = %402
  %410 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 1
  %411 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 3
  br label %412

412:                                              ; preds = %427, %409
  %413 = phi ptr [ %407, %409 ], [ %428, %427 ]
  %414 = getelementptr i8, ptr %413, i32 -280
  %415 = getelementptr i8, ptr %413, i32 -264
  %416 = load ptr, ptr %415, align 4
  %417 = icmp eq ptr %416, %5
  br i1 %417, label %418, label %427

418:                                              ; preds = %412
  %419 = load i32, ptr %2, align 4
  %420 = load i32, ptr %410, align 4
  %421 = tail call fastcc zeroext i1 @dsa_port_host_address_match(ptr noundef %414, i32 noundef %419, i32 noundef %420) #6
  br i1 %421, label %422, label %427

422:                                              ; preds = %418
  %423 = load ptr, ptr %406, align 4
  %424 = load i16, ptr %411, align 4
  %425 = tail call fastcc i32 @dsa_port_do_fdb_add(ptr noundef %414, ptr noundef %423, i16 noundef zeroext %424) #6
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %1000

427:                                              ; preds = %422, %418, %412
  %428 = load ptr, ptr %413, align 4
  %429 = load ptr, ptr %403, align 4
  %430 = getelementptr inbounds %struct.dsa_switch_tree, ptr %429, i32 0, i32 1
  %431 = icmp eq ptr %428, %430
  br i1 %431, label %1009, label %412

432:                                              ; preds = %3
  %433 = getelementptr i8, ptr %0, i32 24
  %434 = load ptr, ptr %433, align 4
  %435 = getelementptr inbounds %struct.dsa_switch_ops, ptr %434, i32 0, i32 55
  %436 = load ptr, ptr %435, align 4
  %437 = icmp eq ptr %436, null
  br i1 %437, label %1000, label %438

438:                                              ; preds = %432
  %439 = getelementptr i8, ptr %0, i32 -12
  %440 = load ptr, ptr %439, align 4
  %441 = getelementptr inbounds %struct.dsa_switch_tree, ptr %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 2
  %443 = load ptr, ptr %441, align 4
  %444 = icmp eq ptr %443, %441
  br i1 %444, label %1009, label %445

445:                                              ; preds = %438
  %446 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 1
  %447 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %2, i32 0, i32 3
  br label %448

448:                                              ; preds = %463, %445
  %449 = phi ptr [ %443, %445 ], [ %464, %463 ]
  %450 = getelementptr i8, ptr %449, i32 -280
  %451 = getelementptr i8, ptr %449, i32 -264
  %452 = load ptr, ptr %451, align 4
  %453 = icmp eq ptr %452, %5
  br i1 %453, label %454, label %463

454:                                              ; preds = %448
  %455 = load i32, ptr %2, align 4
  %456 = load i32, ptr %446, align 4
  %457 = tail call fastcc zeroext i1 @dsa_port_host_address_match(ptr noundef %450, i32 noundef %455, i32 noundef %456) #6
  br i1 %457, label %458, label %463

458:                                              ; preds = %454
  %459 = load ptr, ptr %442, align 4
  %460 = load i16, ptr %447, align 4
  %461 = tail call fastcc i32 @dsa_port_do_fdb_del(ptr noundef %450, ptr noundef %459, i16 noundef zeroext %460) #6
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %1000

463:                                              ; preds = %458, %454, %448
  %464 = load ptr, ptr %449, align 4
  %465 = load ptr, ptr %439, align 4
  %466 = getelementptr inbounds %struct.dsa_switch_tree, ptr %465, i32 0, i32 1
  %467 = icmp eq ptr %464, %466
  br i1 %467, label %1009, label %448

468:                                              ; preds = %3
  %469 = getelementptr i8, ptr %0, i32 -8
  %470 = load i32, ptr %469, align 4
  %471 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 1
  %472 = load i32, ptr %471, align 4
  %473 = icmp eq i32 %470, %472
  %474 = getelementptr i8, ptr %0, i32 24
  %475 = load ptr, ptr %474, align 4
  br i1 %473, label %476, label %484

476:                                              ; preds = %468
  %477 = getelementptr inbounds %struct.dsa_switch_ops, ptr %475, i32 0, i32 93
  %478 = load ptr, ptr %477, align 4
  %479 = icmp eq ptr %478, null
  br i1 %479, label %1009, label %480

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 2
  %482 = load i32, ptr %481, align 4
  %483 = tail call i32 %478(ptr noundef %5, i32 noundef %482) #6
  br label %1004

484:                                              ; preds = %468
  %485 = getelementptr inbounds %struct.dsa_switch_ops, ptr %475, i32 0, i32 71
  %486 = load ptr, ptr %485, align 4
  %487 = icmp eq ptr %486, null
  br i1 %487, label %1009, label %488

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 2
  %490 = load i32, ptr %489, align 4
  %491 = tail call i32 %486(ptr noundef %5, i32 noundef %472, i32 noundef %490) #6
  br label %1004

492:                                              ; preds = %3
  %493 = getelementptr i8, ptr %0, i32 -8
  %494 = load i32, ptr %493, align 4
  %495 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 1
  %496 = load i32, ptr %495, align 4
  %497 = icmp eq i32 %494, %496
  %498 = getelementptr i8, ptr %0, i32 24
  %499 = load ptr, ptr %498, align 4
  br i1 %497, label %500, label %511

500:                                              ; preds = %492
  %501 = getelementptr inbounds %struct.dsa_switch_ops, ptr %499, i32 0, i32 94
  %502 = load ptr, ptr %501, align 4
  %503 = icmp eq ptr %502, null
  br i1 %503, label %1000, label %504

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 2
  %506 = load i32, ptr %505, align 4
  %507 = load ptr, ptr %2, align 4
  %508 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 3
  %509 = load ptr, ptr %508, align 4
  %510 = tail call i32 %502(ptr noundef %5, i32 noundef %506, ptr noundef %507, ptr noundef %509) #6
  br label %1004

511:                                              ; preds = %492
  %512 = getelementptr inbounds %struct.dsa_switch_ops, ptr %499, i32 0, i32 72
  %513 = load ptr, ptr %512, align 4
  %514 = icmp eq ptr %513, null
  br i1 %514, label %1000, label %515

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 2
  %517 = load i32, ptr %516, align 4
  %518 = load ptr, ptr %2, align 4
  %519 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 3
  %520 = load ptr, ptr %519, align 4
  %521 = tail call i32 %513(ptr noundef %5, i32 noundef %496, i32 noundef %517, ptr noundef %518, ptr noundef %520) #6
  br label %1004

522:                                              ; preds = %3
  %523 = getelementptr i8, ptr %0, i32 -8
  %524 = load i32, ptr %523, align 4
  %525 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 1
  %526 = load i32, ptr %525, align 4
  %527 = icmp eq i32 %524, %526
  %528 = getelementptr i8, ptr %0, i32 24
  %529 = load ptr, ptr %528, align 4
  br i1 %527, label %530, label %539

530:                                              ; preds = %522
  %531 = getelementptr inbounds %struct.dsa_switch_ops, ptr %529, i32 0, i32 95
  %532 = load ptr, ptr %531, align 4
  %533 = icmp eq ptr %532, null
  br i1 %533, label %1000, label %534

534:                                              ; preds = %530
  %535 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 2
  %536 = load i32, ptr %535, align 4
  %537 = load ptr, ptr %2, align 4
  %538 = tail call i32 %532(ptr noundef %5, i32 noundef %536, ptr noundef %537) #6
  br label %1004

539:                                              ; preds = %522
  %540 = getelementptr inbounds %struct.dsa_switch_ops, ptr %529, i32 0, i32 73
  %541 = load ptr, ptr %540, align 4
  %542 = icmp eq ptr %541, null
  br i1 %542, label %1000, label %543

543:                                              ; preds = %539
  %544 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %2, i32 0, i32 2
  %545 = load i32, ptr %544, align 4
  %546 = load ptr, ptr %2, align 4
  %547 = tail call i32 %541(ptr noundef %5, i32 noundef %526, i32 noundef %545, ptr noundef %546) #6
  br label %1004

548:                                              ; preds = %3
  %549 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %2, i32 0, i32 1
  %550 = load i32, ptr %549, align 4
  %551 = getelementptr i8, ptr %0, i32 -8
  %552 = load i32, ptr %551, align 4
  %553 = icmp eq i32 %552, %550
  br i1 %553, label %554, label %558

554:                                              ; preds = %548
  %555 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %2, i32 0, i32 2
  %556 = getelementptr i8, ptr %0, i32 -12
  %557 = load ptr, ptr %556, align 4
  br label %586

558:                                              ; preds = %548
  %559 = getelementptr i8, ptr %0, i32 -12
  %560 = load ptr, ptr %559, align 4
  %561 = getelementptr inbounds %struct.dsa_switch_tree, ptr %560, i32 0, i32 10
  %562 = load ptr, ptr %561, align 4
  %563 = icmp eq ptr %562, %561
  br i1 %563, label %584, label %564

564:                                              ; preds = %581, %558
  %565 = phi ptr [ %582, %581 ], [ %562, %558 ]
  %566 = getelementptr i8, ptr %565, i32 -8
  %567 = load ptr, ptr %566, align 4
  %568 = getelementptr inbounds %struct.dsa_port, ptr %567, i32 0, i32 4
  %569 = load ptr, ptr %568, align 4
  %570 = icmp eq ptr %569, %5
  br i1 %570, label %571, label %581

571:                                              ; preds = %564
  %572 = getelementptr i8, ptr %565, i32 -4
  %573 = load ptr, ptr %572, align 4
  %574 = getelementptr inbounds %struct.dsa_port, ptr %573, i32 0, i32 4
  %575 = load ptr, ptr %574, align 4
  %576 = getelementptr inbounds %struct.dsa_switch, ptr %575, i32 0, i32 2
  %577 = load i32, ptr %576, align 4
  %578 = icmp eq i32 %577, %550
  br i1 %578, label %579, label %581

579:                                              ; preds = %571
  %580 = getelementptr inbounds %struct.dsa_port, ptr %567, i32 0, i32 5
  br label %586

581:                                              ; preds = %571, %564
  %582 = load ptr, ptr %565, align 4
  %583 = icmp eq ptr %582, %561
  br i1 %583, label %584, label %564

584:                                              ; preds = %581, %558
  %585 = getelementptr i8, ptr %0, i32 64
  br label %586

586:                                              ; preds = %584, %579, %554
  %587 = phi ptr [ %557, %554 ], [ %560, %579 ], [ %560, %584 ]
  %588 = phi ptr [ %555, %554 ], [ %580, %579 ], [ %585, %584 ]
  %589 = load i32, ptr %588, align 4
  %590 = getelementptr inbounds %struct.dsa_switch_tree, ptr %587, i32 0, i32 1
  %591 = load ptr, ptr %590, align 4
  %592 = icmp eq ptr %591, %590
  br i1 %592, label %607, label %593

593:                                              ; preds = %602, %586
  %594 = phi ptr [ %603, %602 ], [ %591, %586 ]
  %595 = getelementptr i8, ptr %594, i32 -264
  %596 = load ptr, ptr %595, align 4
  %597 = icmp eq ptr %596, %5
  br i1 %597, label %598, label %602

598:                                              ; preds = %593
  %599 = getelementptr i8, ptr %594, i32 -260
  %600 = load i32, ptr %599, align 4
  %601 = icmp eq i32 %600, %589
  br i1 %601, label %605, label %602

602:                                              ; preds = %598, %593
  %603 = load ptr, ptr %594, align 4
  %604 = icmp eq ptr %603, %590
  br i1 %604, label %607, label %593

605:                                              ; preds = %598
  %606 = getelementptr i8, ptr %594, i32 -280
  br label %607

607:                                              ; preds = %605, %602, %586
  %608 = phi ptr [ %606, %605 ], [ null, %586 ], [ null, %602 ]
  %609 = getelementptr i8, ptr %0, i32 24
  %610 = load ptr, ptr %609, align 4
  %611 = getelementptr inbounds %struct.dsa_switch_ops, ptr %610, i32 0, i32 57
  %612 = load ptr, ptr %611, align 4
  %613 = icmp eq ptr %612, null
  br i1 %613, label %1000, label %614

614:                                              ; preds = %607
  %615 = load ptr, ptr %2, align 4
  %616 = tail call fastcc i32 @dsa_port_do_mdb_add(ptr noundef %608, ptr noundef %615) #6
  br label %1004

617:                                              ; preds = %3
  %618 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %2, i32 0, i32 1
  %619 = load i32, ptr %618, align 4
  %620 = getelementptr i8, ptr %0, i32 -8
  %621 = load i32, ptr %620, align 4
  %622 = icmp eq i32 %621, %619
  br i1 %622, label %623, label %627

623:                                              ; preds = %617
  %624 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %2, i32 0, i32 2
  %625 = getelementptr i8, ptr %0, i32 -12
  %626 = load ptr, ptr %625, align 4
  br label %655

627:                                              ; preds = %617
  %628 = getelementptr i8, ptr %0, i32 -12
  %629 = load ptr, ptr %628, align 4
  %630 = getelementptr inbounds %struct.dsa_switch_tree, ptr %629, i32 0, i32 10
  %631 = load ptr, ptr %630, align 4
  %632 = icmp eq ptr %631, %630
  br i1 %632, label %653, label %633

633:                                              ; preds = %650, %627
  %634 = phi ptr [ %651, %650 ], [ %631, %627 ]
  %635 = getelementptr i8, ptr %634, i32 -8
  %636 = load ptr, ptr %635, align 4
  %637 = getelementptr inbounds %struct.dsa_port, ptr %636, i32 0, i32 4
  %638 = load ptr, ptr %637, align 4
  %639 = icmp eq ptr %638, %5
  br i1 %639, label %640, label %650

640:                                              ; preds = %633
  %641 = getelementptr i8, ptr %634, i32 -4
  %642 = load ptr, ptr %641, align 4
  %643 = getelementptr inbounds %struct.dsa_port, ptr %642, i32 0, i32 4
  %644 = load ptr, ptr %643, align 4
  %645 = getelementptr inbounds %struct.dsa_switch, ptr %644, i32 0, i32 2
  %646 = load i32, ptr %645, align 4
  %647 = icmp eq i32 %646, %619
  br i1 %647, label %648, label %650

648:                                              ; preds = %640
  %649 = getelementptr inbounds %struct.dsa_port, ptr %636, i32 0, i32 5
  br label %655

650:                                              ; preds = %640, %633
  %651 = load ptr, ptr %634, align 4
  %652 = icmp eq ptr %651, %630
  br i1 %652, label %653, label %633

653:                                              ; preds = %650, %627
  %654 = getelementptr i8, ptr %0, i32 64
  br label %655

655:                                              ; preds = %653, %648, %623
  %656 = phi ptr [ %626, %623 ], [ %629, %648 ], [ %629, %653 ]
  %657 = phi ptr [ %624, %623 ], [ %649, %648 ], [ %654, %653 ]
  %658 = load i32, ptr %657, align 4
  %659 = getelementptr inbounds %struct.dsa_switch_tree, ptr %656, i32 0, i32 1
  %660 = load ptr, ptr %659, align 4
  %661 = icmp eq ptr %660, %659
  br i1 %661, label %676, label %662

662:                                              ; preds = %671, %655
  %663 = phi ptr [ %672, %671 ], [ %660, %655 ]
  %664 = getelementptr i8, ptr %663, i32 -264
  %665 = load ptr, ptr %664, align 4
  %666 = icmp eq ptr %665, %5
  br i1 %666, label %667, label %671

667:                                              ; preds = %662
  %668 = getelementptr i8, ptr %663, i32 -260
  %669 = load i32, ptr %668, align 4
  %670 = icmp eq i32 %669, %658
  br i1 %670, label %674, label %671

671:                                              ; preds = %667, %662
  %672 = load ptr, ptr %663, align 4
  %673 = icmp eq ptr %672, %659
  br i1 %673, label %676, label %662

674:                                              ; preds = %667
  %675 = getelementptr i8, ptr %663, i32 -280
  br label %676

676:                                              ; preds = %674, %671, %655
  %677 = phi ptr [ %675, %674 ], [ null, %655 ], [ null, %671 ]
  %678 = getelementptr i8, ptr %0, i32 24
  %679 = load ptr, ptr %678, align 4
  %680 = getelementptr inbounds %struct.dsa_switch_ops, ptr %679, i32 0, i32 58
  %681 = load ptr, ptr %680, align 4
  %682 = icmp eq ptr %681, null
  br i1 %682, label %1000, label %683

683:                                              ; preds = %676
  %684 = load ptr, ptr %2, align 4
  %685 = tail call fastcc i32 @dsa_port_do_mdb_del(ptr noundef %677, ptr noundef %684) #6
  br label %1004

686:                                              ; preds = %3
  %687 = getelementptr i8, ptr %0, i32 24
  %688 = load ptr, ptr %687, align 4
  %689 = getelementptr inbounds %struct.dsa_switch_ops, ptr %688, i32 0, i32 57
  %690 = load ptr, ptr %689, align 4
  %691 = icmp eq ptr %690, null
  br i1 %691, label %1000, label %692

692:                                              ; preds = %686
  %693 = getelementptr i8, ptr %0, i32 -12
  %694 = load ptr, ptr %693, align 4
  %695 = getelementptr inbounds %struct.dsa_switch_tree, ptr %694, i32 0, i32 1
  %696 = load ptr, ptr %695, align 4
  %697 = icmp eq ptr %696, %695
  br i1 %697, label %1009, label %698

698:                                              ; preds = %692
  %699 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %2, i32 0, i32 1
  %700 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %2, i32 0, i32 2
  br label %701

701:                                              ; preds = %715, %698
  %702 = phi ptr [ %696, %698 ], [ %716, %715 ]
  %703 = getelementptr i8, ptr %702, i32 -280
  %704 = getelementptr i8, ptr %702, i32 -264
  %705 = load ptr, ptr %704, align 4
  %706 = icmp eq ptr %705, %5
  br i1 %706, label %707, label %715

707:                                              ; preds = %701
  %708 = load i32, ptr %699, align 4
  %709 = load i32, ptr %700, align 4
  %710 = tail call fastcc zeroext i1 @dsa_port_host_address_match(ptr noundef %703, i32 noundef %708, i32 noundef %709) #6
  br i1 %710, label %711, label %715

711:                                              ; preds = %707
  %712 = load ptr, ptr %2, align 4
  %713 = tail call fastcc i32 @dsa_port_do_mdb_add(ptr noundef %703, ptr noundef %712) #6
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %1000

715:                                              ; preds = %711, %707, %701
  %716 = load ptr, ptr %702, align 4
  %717 = load ptr, ptr %693, align 4
  %718 = getelementptr inbounds %struct.dsa_switch_tree, ptr %717, i32 0, i32 1
  %719 = icmp eq ptr %716, %718
  br i1 %719, label %1009, label %701

720:                                              ; preds = %3
  %721 = getelementptr i8, ptr %0, i32 24
  %722 = load ptr, ptr %721, align 4
  %723 = getelementptr inbounds %struct.dsa_switch_ops, ptr %722, i32 0, i32 58
  %724 = load ptr, ptr %723, align 4
  %725 = icmp eq ptr %724, null
  br i1 %725, label %1000, label %726

726:                                              ; preds = %720
  %727 = getelementptr i8, ptr %0, i32 -12
  %728 = load ptr, ptr %727, align 4
  %729 = getelementptr inbounds %struct.dsa_switch_tree, ptr %728, i32 0, i32 1
  %730 = load ptr, ptr %729, align 4
  %731 = icmp eq ptr %730, %729
  br i1 %731, label %1009, label %732

732:                                              ; preds = %726
  %733 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %2, i32 0, i32 1
  %734 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %2, i32 0, i32 2
  br label %735

735:                                              ; preds = %749, %732
  %736 = phi ptr [ %730, %732 ], [ %750, %749 ]
  %737 = getelementptr i8, ptr %736, i32 -280
  %738 = getelementptr i8, ptr %736, i32 -264
  %739 = load ptr, ptr %738, align 4
  %740 = icmp eq ptr %739, %5
  br i1 %740, label %741, label %749

741:                                              ; preds = %735
  %742 = load i32, ptr %733, align 4
  %743 = load i32, ptr %734, align 4
  %744 = tail call fastcc zeroext i1 @dsa_port_host_address_match(ptr noundef %737, i32 noundef %742, i32 noundef %743) #6
  br i1 %744, label %745, label %749

745:                                              ; preds = %741
  %746 = load ptr, ptr %2, align 4
  %747 = tail call fastcc i32 @dsa_port_do_mdb_del(ptr noundef %737, ptr noundef %746) #6
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %749, label %1000

749:                                              ; preds = %745, %741, %735
  %750 = load ptr, ptr %736, align 4
  %751 = load ptr, ptr %727, align 4
  %752 = getelementptr inbounds %struct.dsa_switch_tree, ptr %751, i32 0, i32 1
  %753 = icmp eq ptr %750, %752
  br i1 %753, label %1009, label %735

754:                                              ; preds = %3
  %755 = getelementptr i8, ptr %0, i32 24
  %756 = load ptr, ptr %755, align 4
  %757 = getelementptr inbounds %struct.dsa_switch_ops, ptr %756, i32 0, i32 52
  %758 = load ptr, ptr %757, align 4
  %759 = icmp eq ptr %758, null
  br i1 %759, label %1000, label %760

760:                                              ; preds = %754
  %761 = getelementptr i8, ptr %0, i32 -12
  %762 = load ptr, ptr %761, align 4
  %763 = getelementptr inbounds %struct.dsa_switch_tree, ptr %762, i32 0, i32 1
  %764 = load ptr, ptr %763, align 4
  %765 = icmp eq ptr %764, %763
  br i1 %765, label %1009, label %766

766:                                              ; preds = %760
  %767 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %2, i32 0, i32 1
  %768 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %2, i32 0, i32 2
  %769 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %2, i32 0, i32 3
  %770 = getelementptr i8, ptr %0, i32 -8
  br label %771

771:                                              ; preds = %804, %766
  %772 = phi ptr [ %762, %766 ], [ %805, %804 ]
  %773 = phi ptr [ %764, %766 ], [ %806, %804 ]
  %774 = getelementptr i8, ptr %773, i32 -264
  %775 = load ptr, ptr %774, align 4
  %776 = icmp eq ptr %775, %5
  br i1 %776, label %777, label %804

777:                                              ; preds = %771
  %778 = load i32, ptr %770, align 4
  %779 = load i32, ptr %767, align 4
  %780 = icmp eq i32 %778, %779
  br i1 %780, label %781, label %786

781:                                              ; preds = %777
  %782 = getelementptr i8, ptr %773, i32 -260
  %783 = load i32, ptr %782, align 4
  %784 = load i32, ptr %768, align 4
  %785 = icmp eq i32 %783, %784
  br i1 %785, label %793, label %786

786:                                              ; preds = %781, %777
  %787 = getelementptr i8, ptr %773, i32 -256
  %788 = load i32, ptr %787, align 4
  %789 = icmp eq i32 %788, 2
  br i1 %789, label %790, label %804

790:                                              ; preds = %786
  %791 = getelementptr i8, ptr %773, i32 -260
  %792 = load i32, ptr %791, align 4
  br label %793

793:                                              ; preds = %790, %781
  %794 = phi i32 [ %792, %790 ], [ %783, %781 ]
  %795 = load ptr, ptr %755, align 4
  %796 = getelementptr inbounds %struct.dsa_switch_ops, ptr %795, i32 0, i32 52
  %797 = load ptr, ptr %796, align 4
  %798 = load ptr, ptr %2, align 4
  %799 = load ptr, ptr %769, align 4
  %800 = tail call i32 %797(ptr noundef %5, i32 noundef %794, ptr noundef %798, ptr noundef %799) #6
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %1000

802:                                              ; preds = %793
  %803 = load ptr, ptr %761, align 4
  br label %804

804:                                              ; preds = %802, %786, %771
  %805 = phi ptr [ %803, %802 ], [ %772, %771 ], [ %772, %786 ]
  %806 = load ptr, ptr %773, align 4
  %807 = getelementptr inbounds %struct.dsa_switch_tree, ptr %805, i32 0, i32 1
  %808 = icmp eq ptr %806, %807
  br i1 %808, label %1009, label %771

809:                                              ; preds = %3
  %810 = getelementptr i8, ptr %0, i32 24
  %811 = load ptr, ptr %810, align 4
  %812 = getelementptr inbounds %struct.dsa_switch_ops, ptr %811, i32 0, i32 53
  %813 = load ptr, ptr %812, align 4
  %814 = icmp eq ptr %813, null
  br i1 %814, label %1000, label %815

815:                                              ; preds = %809
  %816 = getelementptr i8, ptr %0, i32 -8
  %817 = load i32, ptr %816, align 4
  %818 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %2, i32 0, i32 1
  %819 = load i32, ptr %818, align 4
  %820 = icmp eq i32 %817, %819
  br i1 %820, label %821, label %1009

821:                                              ; preds = %815
  %822 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %2, i32 0, i32 2
  %823 = load i32, ptr %822, align 4
  %824 = load ptr, ptr %2, align 4
  %825 = tail call i32 %813(ptr noundef %5, i32 noundef %823, ptr noundef %824) #6
  br label %1004

826:                                              ; preds = %3
  %827 = getelementptr i8, ptr %0, i32 24
  %828 = load ptr, ptr %827, align 4
  %829 = getelementptr inbounds %struct.dsa_switch_ops, ptr %828, i32 0, i32 91
  %830 = load ptr, ptr %829, align 4
  %831 = icmp eq ptr %830, null
  br i1 %831, label %1000, label %832

832:                                              ; preds = %826
  %833 = getelementptr i8, ptr %0, i32 -12
  %834 = load ptr, ptr %833, align 4
  %835 = getelementptr inbounds %struct.dsa_switch_tree, ptr %834, i32 0, i32 1
  %836 = load ptr, ptr %835, align 4
  %837 = icmp eq ptr %836, %835
  br i1 %837, label %1009, label %838

838:                                              ; preds = %832
  %839 = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %2, i32 0, i32 1
  %840 = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %2, i32 0, i32 2
  %841 = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %2, i32 0, i32 3
  %842 = getelementptr i8, ptr %0, i32 -8
  br label %843

843:                                              ; preds = %879, %838
  %844 = phi ptr [ %834, %838 ], [ %880, %879 ]
  %845 = phi ptr [ %836, %838 ], [ %881, %879 ]
  %846 = getelementptr i8, ptr %845, i32 -264
  %847 = load ptr, ptr %846, align 4
  %848 = icmp eq ptr %847, %5
  br i1 %848, label %849, label %879

849:                                              ; preds = %843
  %850 = load i32, ptr %842, align 4
  %851 = load i32, ptr %839, align 4
  %852 = icmp eq i32 %850, %851
  br i1 %852, label %853, label %858

853:                                              ; preds = %849
  %854 = getelementptr i8, ptr %845, i32 -260
  %855 = load i32, ptr %854, align 4
  %856 = load i32, ptr %840, align 4
  %857 = icmp eq i32 %855, %856
  br i1 %857, label %869, label %858

858:                                              ; preds = %853, %849
  %859 = load i8, ptr %2, align 4, !range !8
  %860 = icmp eq i8 %859, 0
  br i1 %860, label %861, label %879

861:                                              ; preds = %858
  %862 = getelementptr i8, ptr %845, i32 -256
  %863 = load i32, ptr %862, align 4
  %864 = add i32 %863, -1
  %865 = icmp ult i32 %864, 2
  br i1 %865, label %866, label %879

866:                                              ; preds = %861
  %867 = getelementptr i8, ptr %845, i32 -260
  %868 = load i32, ptr %867, align 4
  br label %869

869:                                              ; preds = %866, %853
  %870 = phi i32 [ %868, %866 ], [ %855, %853 ]
  %871 = load ptr, ptr %827, align 4
  %872 = getelementptr inbounds %struct.dsa_switch_ops, ptr %871, i32 0, i32 91
  %873 = load ptr, ptr %872, align 4
  %874 = load i32, ptr %841, align 4
  %875 = tail call i32 %873(ptr noundef %5, i32 noundef %870, i32 noundef %874) #6
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %877, label %1000

877:                                              ; preds = %869
  %878 = load ptr, ptr %833, align 4
  br label %879

879:                                              ; preds = %877, %861, %858, %843
  %880 = phi ptr [ %878, %877 ], [ %844, %858 ], [ %844, %843 ], [ %844, %861 ]
  %881 = load ptr, ptr %845, align 4
  %882 = getelementptr inbounds %struct.dsa_switch_tree, ptr %880, i32 0, i32 1
  %883 = icmp eq ptr %881, %882
  br i1 %883, label %1009, label %843

884:                                              ; preds = %3
  %885 = load ptr, ptr %2, align 4
  %886 = getelementptr i8, ptr %0, i32 24
  %887 = load ptr, ptr %886, align 4
  %888 = getelementptr inbounds %struct.dsa_switch_ops, ptr %887, i32 0, i32 1
  %889 = load ptr, ptr %888, align 4
  %890 = icmp eq ptr %889, null
  br i1 %890, label %1000, label %891

891:                                              ; preds = %884
  %892 = tail call i32 @rtnl_is_locked() #6
  %893 = icmp eq i32 %892, 0
  %894 = load i1, ptr @dsa_switch_change_tag_proto.__already_done, align 1
  %895 = xor i1 %894, true
  %896 = select i1 %893, i1 %895, i1 false
  br i1 %896, label %897, label %898, !prof !9

897:                                              ; preds = %891
  store i1 true, ptr @dsa_switch_change_tag_proto.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 605, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 605) #6
  br label %898

898:                                              ; preds = %897, %891
  %899 = getelementptr i8, ptr %0, i32 -12
  %900 = load ptr, ptr %899, align 4
  %901 = getelementptr inbounds %struct.dsa_switch_tree, ptr %900, i32 0, i32 1
  %902 = load ptr, ptr %901, align 4
  %903 = icmp eq ptr %902, %901
  br i1 %903, label %908, label %904

904:                                              ; preds = %898
  %905 = getelementptr inbounds %struct.dsa_device_ops, ptr %885, i32 0, i32 8
  br label %913

906:                                              ; preds = %935
  %907 = load ptr, ptr %937, align 4
  br label %908

908:                                              ; preds = %906, %898
  %909 = phi ptr [ %900, %898 ], [ %936, %906 ]
  %910 = phi ptr [ %901, %898 ], [ %907, %906 ]
  %911 = getelementptr inbounds %struct.dsa_switch_tree, ptr %909, i32 0, i32 1
  %912 = icmp eq ptr %910, %911
  br i1 %912, label %1009, label %940

913:                                              ; preds = %935, %904
  %914 = phi ptr [ %900, %904 ], [ %936, %935 ]
  %915 = phi ptr [ %902, %904 ], [ %937, %935 ]
  %916 = getelementptr i8, ptr %915, i32 -280
  %917 = getelementptr i8, ptr %915, i32 -264
  %918 = load ptr, ptr %917, align 4
  %919 = icmp eq ptr %918, %5
  br i1 %919, label %920, label %935

920:                                              ; preds = %913
  %921 = getelementptr i8, ptr %915, i32 -256
  %922 = load i32, ptr %921, align 4
  %923 = icmp eq i32 %922, 1
  br i1 %923, label %924, label %935

924:                                              ; preds = %920
  %925 = load ptr, ptr %886, align 4
  %926 = getelementptr inbounds %struct.dsa_switch_ops, ptr %925, i32 0, i32 1
  %927 = load ptr, ptr %926, align 4
  %928 = getelementptr i8, ptr %915, i32 -260
  %929 = load i32, ptr %928, align 4
  %930 = load i32, ptr %905, align 4
  %931 = tail call i32 %927(ptr noundef %5, i32 noundef %929, i32 noundef %930) #6
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %933, label %1000

933:                                              ; preds = %924
  tail call void @dsa_port_set_tag_protocol(ptr noundef %916, ptr noundef %885) #6
  %934 = load ptr, ptr %899, align 4
  br label %935

935:                                              ; preds = %933, %920, %913
  %936 = phi ptr [ %914, %913 ], [ %934, %933 ], [ %914, %920 ]
  %937 = load ptr, ptr %915, align 4
  %938 = getelementptr inbounds %struct.dsa_switch_tree, ptr %936, i32 0, i32 1
  %939 = icmp eq ptr %937, %938
  br i1 %939, label %906, label %913

940:                                              ; preds = %957, %908
  %941 = phi ptr [ %958, %957 ], [ %909, %908 ]
  %942 = phi ptr [ %959, %957 ], [ %910, %908 ]
  %943 = getelementptr i8, ptr %942, i32 -280
  %944 = getelementptr i8, ptr %942, i32 -264
  %945 = load ptr, ptr %944, align 4
  %946 = icmp eq ptr %945, %5
  br i1 %946, label %947, label %957

947:                                              ; preds = %940
  %948 = getelementptr i8, ptr %942, i32 -256
  %949 = load i32, ptr %948, align 4
  %950 = icmp eq i32 %949, 3
  br i1 %950, label %951, label %957

951:                                              ; preds = %947
  %952 = load ptr, ptr %943, align 4
  tail call void @dsa_slave_setup_tagger(ptr noundef %952) #6
  %953 = getelementptr inbounds %struct.net_device, ptr %952, i32 0, i32 20
  %954 = load i32, ptr %953, align 4
  %955 = tail call i32 @dsa_slave_change_mtu(ptr noundef %952, i32 noundef %954) #6
  %956 = load ptr, ptr %899, align 4
  br label %957

957:                                              ; preds = %951, %947, %940
  %958 = phi ptr [ %941, %940 ], [ %956, %951 ], [ %941, %947 ]
  %959 = load ptr, ptr %942, align 4
  %960 = getelementptr inbounds %struct.dsa_switch_tree, ptr %958, i32 0, i32 1
  %961 = icmp eq ptr %959, %960
  br i1 %961, label %1009, label %940

962:                                              ; preds = %3
  %963 = load ptr, ptr %2, align 4
  %964 = getelementptr inbounds %struct.dsa_device_ops, ptr %963, i32 0, i32 3
  %965 = load ptr, ptr %964, align 4
  %966 = icmp eq ptr %965, null
  br i1 %966, label %970, label %967

967:                                              ; preds = %962
  %968 = tail call i32 %965(ptr noundef %5) #6
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %970, label %1000

970:                                              ; preds = %967, %962
  %971 = getelementptr i8, ptr %0, i32 24
  %972 = load ptr, ptr %971, align 4
  %973 = getelementptr inbounds %struct.dsa_switch_ops, ptr %972, i32 0, i32 2
  %974 = load ptr, ptr %973, align 4
  %975 = icmp eq ptr %974, null
  br i1 %975, label %1000, label %976

976:                                              ; preds = %970
  %977 = getelementptr inbounds %struct.dsa_device_ops, ptr %963, i32 0, i32 8
  %978 = load i32, ptr %977, align 4
  %979 = tail call i32 %974(ptr noundef %5, i32 noundef %978) #6
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1009, label %981

981:                                              ; preds = %976
  %982 = getelementptr inbounds %struct.dsa_device_ops, ptr %963, i32 0, i32 4
  %983 = load ptr, ptr %982, align 4
  %984 = icmp eq ptr %983, null
  br i1 %984, label %1000, label %985

985:                                              ; preds = %981
  tail call void %983(ptr noundef %5) #6
  br label %1000

986:                                              ; preds = %3
  %987 = load ptr, ptr %2, align 4
  %988 = getelementptr inbounds %struct.dsa_device_ops, ptr %987, i32 0, i32 4
  %989 = load ptr, ptr %988, align 4
  %990 = icmp eq ptr %989, null
  br i1 %990, label %1009, label %991

991:                                              ; preds = %986
  %992 = getelementptr i8, ptr %0, i32 16
  %993 = load ptr, ptr %992, align 4
  %994 = icmp eq ptr %993, null
  br i1 %994, label %1009, label %995

995:                                              ; preds = %991
  tail call void %989(ptr noundef %5) #6
  br label %1009

996:                                              ; preds = %3
  %997 = tail call i32 @dsa_switch_tag_8021q_vlan_add(ptr noundef %5, ptr noundef %2) #6
  br label %1004

998:                                              ; preds = %3
  %999 = tail call i32 @dsa_switch_tag_8021q_vlan_del(ptr noundef %5, ptr noundef %2) #6
  br label %1004

1000:                                             ; preds = %985, %981, %970, %967, %924, %884, %869, %826, %809, %793, %754, %745, %720, %711, %686, %676, %607, %539, %530, %511, %500, %458, %432, %422, %396, %383, %312, %112, %71, %65, %13, %6, %3
  %1001 = phi i32 [ %979, %981 ], [ %979, %985 ], [ -95, %970 ], [ %968, %967 ], [ -95, %884 ], [ -95, %826 ], [ -95, %809 ], [ -95, %754 ], [ -95, %720 ], [ -95, %686 ], [ -95, %676 ], [ -95, %607 ], [ -95, %530 ], [ -95, %539 ], [ -95, %500 ], [ -95, %511 ], [ -95, %432 ], [ -95, %396 ], [ -95, %383 ], [ -95, %312 ], [ %128, %112 ], [ %86, %71 ], [ -95, %65 ], [ -34, %13 ], [ -34, %6 ], [ -95, %3 ], [ %425, %422 ], [ %461, %458 ], [ %713, %711 ], [ %747, %745 ], [ %800, %793 ], [ %875, %869 ], [ %931, %924 ]
  %1002 = sub i32 1, %1001
  %1003 = or i32 %1002, 32768
  br label %1010

1004:                                             ; preds = %998, %996, %821, %683, %614, %543, %534, %515, %504, %488, %480, %390, %319, %252, %130, %49
  %1005 = phi i32 [ %999, %998 ], [ %997, %996 ], [ %253, %252 ], [ %50, %49 ], [ %131, %130 ], [ %324, %319 ], [ %395, %390 ], [ %483, %480 ], [ %491, %488 ], [ %510, %504 ], [ %521, %515 ], [ %538, %534 ], [ %547, %543 ], [ %616, %614 ], [ %685, %683 ], [ %825, %821 ]
  %1006 = icmp eq i32 %1005, 0
  %1007 = sub i32 1, %1005
  %1008 = or i32 %1007, 32768
  br i1 %1006, label %1009, label %1010

1009:                                             ; preds = %1004, %995, %991, %986, %976, %957, %908, %879, %832, %815, %804, %760, %749, %726, %715, %692, %484, %476, %463, %438, %427, %402, %42
  br label %1010

1010:                                             ; preds = %1009, %1004, %1000
  %1011 = phi i32 [ 1, %1009 ], [ %1008, %1004 ], [ %1003, %1000 ]
  ret i32 %1011
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_switch_unregister_notifier(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 4
  %6 = tail call i32 @raw_notifier_chain_unregister(ptr noundef %4, ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %6) #7
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_tag_8021q_vlan_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_tag_8021q_vlan_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tag_8021q_bridge_join(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_vlan_filtering(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tag_8021q_bridge_leave(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_do_fdb_add(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dsa_switch_ops, ptr %14, i32 0, i32 54
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %5, i32 noundef %7, ptr noundef %1, i16 noundef zeroext %2) #6
  br label %84

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %59, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %1, align 4
  %25 = getelementptr i8, ptr %1, i32 4
  %26 = load i16, ptr %25, align 2
  br label %27

27:                                               ; preds = %42, %23
  %28 = phi ptr [ %21, %23 ], [ %43, %42 ]
  %29 = getelementptr i8, ptr %28, i32 -12
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, %24
  %32 = getelementptr i8, ptr %28, i32 -8
  %33 = load i16, ptr %32, align 2
  %34 = xor i16 %33, %26
  %35 = zext i16 %34 to i32
  %36 = or i32 %31, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = getelementptr i8, ptr %28, i32 -6
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, %2
  br i1 %41, label %45, label %42

42:                                               ; preds = %38, %27
  %43 = load ptr, ptr %28, align 4
  %44 = icmp eq ptr %43, %20
  br i1 %44, label %59, label %27

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %28, i32 -12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %28, i32 -4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #6, !srcloc !10
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #6, !srcloc !11
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !9

53:                                               ; preds = %48
  %54 = add i32 %51, 1
  %55 = or i32 %54, %51
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %82, label %57, !prof !12

57:                                               ; preds = %53, %48
  %58 = phi i32 [ 2, %48 ], [ 1, %53 ]
  tail call void @refcount_warn_saturate(ptr noundef %49, i32 noundef %58) #6
  br label %82

59:                                               ; preds = %45, %42, %18
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 20) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %82, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.dsa_switch_ops, ptr %65, i32 0, i32 54
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %67(ptr noundef %5, i32 noundef %7, ptr noundef %1, i16 noundef zeroext %2) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  tail call void @kfree(ptr noundef nonnull %61) #6
  br label %82

71:                                               ; preds = %63
  %72 = load i32, ptr %1, align 4
  store i32 %72, ptr %61, align 8
  %73 = getelementptr i8, ptr %1, i32 4
  %74 = load i16, ptr %73, align 2
  %75 = getelementptr i8, ptr %61, i32 4
  store i16 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dsa_mac_addr, ptr %61, i32 0, i32 1
  store i16 %2, ptr %76, align 2
  %77 = getelementptr inbounds %struct.dsa_mac_addr, ptr %61, i32 0, i32 2
  store volatile i32 1, ptr %77, align 8
  %78 = getelementptr inbounds %struct.dsa_mac_addr, ptr %61, i32 0, i32 3
  %79 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 24, i32 1
  %80 = load ptr, ptr %79, align 4
  store ptr %78, ptr %79, align 4
  store ptr %20, ptr %78, align 4
  %81 = getelementptr inbounds %struct.dsa_mac_addr, ptr %61, i32 0, i32 3, i32 1
  store ptr %80, ptr %81, align 8
  store volatile ptr %78, ptr %80, align 4
  br label %82

82:                                               ; preds = %71, %70, %59, %57, %53
  %83 = phi i32 [ %68, %70 ], [ 0, %71 ], [ -12, %59 ], [ 0, %53 ], [ 0, %57 ]
  tail call void @mutex_unlock(ptr noundef %19) #6
  br label %84

84:                                               ; preds = %82, %12
  %85 = phi i32 [ %83, %82 ], [ %17, %12 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_do_fdb_del(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dsa_switch_ops, ptr %14, i32 0, i32 55
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %5, i32 noundef %7, ptr noundef %1, i16 noundef zeroext %2) #6
  br label %71

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %69, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %1, align 4
  %25 = getelementptr i8, ptr %1, i32 4
  %26 = load i16, ptr %25, align 2
  br label %27

27:                                               ; preds = %42, %23
  %28 = phi ptr [ %21, %23 ], [ %43, %42 ]
  %29 = getelementptr i8, ptr %28, i32 -12
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, %24
  %32 = getelementptr i8, ptr %28, i32 -8
  %33 = load i16, ptr %32, align 2
  %34 = xor i16 %33, %26
  %35 = zext i16 %34 to i32
  %36 = or i32 %31, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = getelementptr i8, ptr %28, i32 -6
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, %2
  br i1 %41, label %45, label %42

42:                                               ; preds = %38, %27
  %43 = load ptr, ptr %28, align 4
  %44 = icmp eq ptr %43, %20
  br i1 %44, label %69, label %27

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %28, i32 -12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %28, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #6, !srcloc !10
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #6, !srcloc !14
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %69, label %55, !prof !12

55:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef %49, i32 noundef 3) #6
  br label %69

56:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %57 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dsa_switch_ops, ptr %58, i32 0, i32 55
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef %5, i32 noundef %7, ptr noundef %1, i16 noundef zeroext %2) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store volatile i32 1, ptr %49, align 4
  br label %69

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %28, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %66, ptr %68, align 4
  store volatile ptr %67, ptr %66, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %65, align 4
  tail call void @kfree(ptr noundef nonnull %46) #6
  br label %69

69:                                               ; preds = %64, %63, %55, %53, %45, %42, %18
  %70 = phi i32 [ %61, %63 ], [ 0, %64 ], [ -2, %45 ], [ -2, %18 ], [ 0, %53 ], [ 0, %55 ], [ -2, %42 ]
  tail call void @mutex_unlock(ptr noundef %19) #6
  br label %71

71:                                               ; preds = %69, %12
  %72 = phi i32 [ %70, %69 ], [ %17, %12 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dsa_port_host_address_match(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_tree, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @dsa_switch_find(i32 noundef %9, i32 noundef %1) #6
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %30, label %16

16:                                               ; preds = %25, %3
  %17 = phi ptr [ %26, %25 ], [ %14, %3 ]
  %18 = getelementptr i8, ptr %17, i32 -264
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %10
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %17, i32 -260
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %28, label %25

25:                                               ; preds = %21, %16
  %26 = load ptr, ptr %17, align 4
  %27 = icmp eq ptr %26, %13
  br i1 %27, label %30, label %16

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %17, i32 -280
  br label %30

30:                                               ; preds = %28, %25, %3
  %31 = phi ptr [ %29, %28 ], [ null, %3 ], [ null, %25 ]
  %32 = getelementptr inbounds %struct.dsa_port, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %4, align 4
  %35 = icmp eq ptr %34, %10
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  br label %147

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.dsa_switch, ptr %34, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %65, label %45

45:                                               ; preds = %62, %39
  %46 = phi ptr [ %63, %62 ], [ %43, %39 ]
  %47 = getelementptr i8, ptr %46, i32 -8
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dsa_port, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %10
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %46, i32 -4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dsa_port, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dsa_switch, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, %41
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.dsa_port, ptr %48, i32 0, i32 5
  br label %67

62:                                               ; preds = %52, %45
  %63 = load ptr, ptr %46, align 4
  %64 = icmp eq ptr %63, %42
  br i1 %64, label %65, label %45

65:                                               ; preds = %62, %39
  %66 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 18
  br label %67

67:                                               ; preds = %65, %60
  %68 = phi ptr [ %61, %60 ], [ %66, %65 ]
  %69 = load i32, ptr %68, align 4
  br i1 %15, label %89, label %70

70:                                               ; preds = %79, %67
  %71 = phi ptr [ %80, %79 ], [ %14, %67 ]
  %72 = getelementptr i8, ptr %71, i32 -264
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %10
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = getelementptr i8, ptr %71, i32 -260
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %69
  br i1 %78, label %82, label %79

79:                                               ; preds = %75, %70
  %80 = load ptr, ptr %71, align 4
  %81 = icmp eq ptr %80, %13
  br i1 %81, label %84, label %70

82:                                               ; preds = %75
  %83 = getelementptr i8, ptr %71, i32 -280
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi ptr [ %83, %82 ], [ null, %79 ]
  %86 = getelementptr inbounds %struct.dsa_port, ptr %85, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %189, label %92

89:                                               ; preds = %67
  %90 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %189, label %106

92:                                               ; preds = %101, %84
  %93 = phi ptr [ %102, %101 ], [ %14, %84 ]
  %94 = getelementptr i8, ptr %93, i32 -264
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %10
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = getelementptr i8, ptr %93, i32 -260
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, %69
  br i1 %100, label %104, label %101

101:                                              ; preds = %97, %92
  %102 = load ptr, ptr %93, align 4
  %103 = icmp eq ptr %102, %13
  br i1 %103, label %106, label %92

104:                                              ; preds = %97
  %105 = getelementptr i8, ptr %93, i32 -280
  br label %106

106:                                              ; preds = %104, %101, %89
  %107 = phi ptr [ %105, %104 ], [ null, %89 ], [ null, %101 ]
  %108 = getelementptr inbounds %struct.dsa_port, ptr %107, i32 0, i32 8
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %147, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.dsa_port, ptr %109, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.dsa_switch, ptr %113, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.dsa_port, ptr %109, i32 0, i32 5
  %117 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, %115
  br i1 %119, label %143, label %120

120:                                              ; preds = %111
  br i1 %44, label %141, label %121

121:                                              ; preds = %138, %120
  %122 = phi ptr [ %139, %138 ], [ %43, %120 ]
  %123 = getelementptr i8, ptr %122, i32 -8
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.dsa_port, ptr %124, i32 0, i32 4
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %10
  br i1 %127, label %128, label %138

128:                                              ; preds = %121
  %129 = getelementptr i8, ptr %122, i32 -4
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.dsa_port, ptr %130, i32 0, i32 4
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.dsa_switch, ptr %132, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, %115
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.dsa_port, ptr %124, i32 0, i32 5
  br label %143

138:                                              ; preds = %128, %121
  %139 = load ptr, ptr %122, align 4
  %140 = icmp eq ptr %139, %42
  br i1 %140, label %141, label %121

141:                                              ; preds = %138, %120
  %142 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 18
  br label %143

143:                                              ; preds = %141, %136, %111
  %144 = phi ptr [ %116, %111 ], [ %137, %136 ], [ %142, %141 ]
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, %69
  br i1 %146, label %147, label %189

147:                                              ; preds = %143, %106, %36
  %148 = phi i32 [ %38, %36 ], [ %41, %106 ], [ %41, %143 ]
  %149 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.dsa_port, ptr %33, i32 0, i32 4
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.dsa_switch, ptr %152, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.dsa_port, ptr %33, i32 0, i32 5
  %156 = icmp eq i32 %148, %154
  br i1 %156, label %185, label %157

157:                                              ; preds = %147
  %158 = getelementptr inbounds %struct.dsa_switch, ptr %34, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.dsa_switch_tree, ptr %159, i32 0, i32 10
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, %160
  br i1 %162, label %183, label %163

163:                                              ; preds = %180, %157
  %164 = phi ptr [ %181, %180 ], [ %161, %157 ]
  %165 = getelementptr i8, ptr %164, i32 -8
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.dsa_port, ptr %166, i32 0, i32 4
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, %34
  br i1 %169, label %170, label %180

170:                                              ; preds = %163
  %171 = getelementptr i8, ptr %164, i32 -4
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.dsa_port, ptr %172, i32 0, i32 4
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.dsa_switch, ptr %174, i32 0, i32 2
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, %154
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.dsa_port, ptr %166, i32 0, i32 5
  br label %185

180:                                              ; preds = %170, %163
  %181 = load ptr, ptr %164, align 4
  %182 = icmp eq ptr %181, %160
  br i1 %182, label %183, label %163

183:                                              ; preds = %180, %157
  %184 = getelementptr inbounds %struct.dsa_switch, ptr %34, i32 0, i32 18
  br label %185

185:                                              ; preds = %183, %178, %147
  %186 = phi ptr [ %155, %147 ], [ %179, %178 ], [ %184, %183 ]
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %150, %187
  br label %189

189:                                              ; preds = %185, %143, %89, %84
  %190 = phi i1 [ %188, %185 ], [ false, %143 ], [ false, %84 ], [ false, %89 ]
  ret i1 %190
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_switch_find(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_do_mdb_add(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_switch_ops, ptr %13, i32 0, i32 57
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %4, i32 noundef %6, ptr noundef %1) #6
  br label %87

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 25
  %20 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %1, i32 0, i32 1
  %21 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %1, i32 0, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = load ptr, ptr %19, align 4
  %24 = icmp eq ptr %23, %19
  br i1 %24, label %61, label %25

25:                                               ; preds = %17
  %26 = load i32, ptr %20, align 4
  %27 = getelementptr %struct.switchdev_obj_port_mdb, ptr %1, i32 0, i32 1, i32 4
  %28 = load i16, ptr %27, align 2
  br label %29

29:                                               ; preds = %44, %25
  %30 = phi ptr [ %23, %25 ], [ %45, %44 ]
  %31 = getelementptr i8, ptr %30, i32 -12
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, %26
  %34 = getelementptr i8, ptr %30, i32 -8
  %35 = load i16, ptr %34, align 2
  %36 = xor i16 %35, %28
  %37 = zext i16 %36 to i32
  %38 = or i32 %33, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = getelementptr i8, ptr %30, i32 -6
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, %22
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %29
  %45 = load ptr, ptr %30, align 4
  %46 = icmp eq ptr %45, %19
  br i1 %46, label %61, label %29

47:                                               ; preds = %40
  %48 = getelementptr i8, ptr %30, i32 -12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %30, i32 -4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #6, !srcloc !10
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #6, !srcloc !11
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !9

55:                                               ; preds = %50
  %56 = add i32 %53, 1
  %57 = or i32 %56, %53
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %85, label %59, !prof !12

59:                                               ; preds = %55, %50
  %60 = phi i32 [ 2, %50 ], [ 1, %55 ]
  tail call void @refcount_warn_saturate(ptr noundef %51, i32 noundef %60) #6
  br label %85

61:                                               ; preds = %47, %44, %17
  %62 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 20) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %85, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dsa_switch_ops, ptr %67, i32 0, i32 57
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %4, i32 noundef %6, ptr noundef %1) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  tail call void @kfree(ptr noundef nonnull %63) #6
  br label %85

73:                                               ; preds = %65
  %74 = load i32, ptr %20, align 4
  store i32 %74, ptr %63, align 8
  %75 = getelementptr %struct.switchdev_obj_port_mdb, ptr %1, i32 0, i32 1, i32 4
  %76 = load i16, ptr %75, align 2
  %77 = getelementptr i8, ptr %63, i32 4
  store i16 %76, ptr %77, align 4
  %78 = load i16, ptr %21, align 2
  %79 = getelementptr inbounds %struct.dsa_mac_addr, ptr %63, i32 0, i32 1
  store i16 %78, ptr %79, align 2
  %80 = getelementptr inbounds %struct.dsa_mac_addr, ptr %63, i32 0, i32 2
  store volatile i32 1, ptr %80, align 8
  %81 = getelementptr inbounds %struct.dsa_mac_addr, ptr %63, i32 0, i32 3
  %82 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 25, i32 1
  %83 = load ptr, ptr %82, align 4
  store ptr %81, ptr %82, align 4
  store ptr %19, ptr %81, align 4
  %84 = getelementptr inbounds %struct.dsa_mac_addr, ptr %63, i32 0, i32 3, i32 1
  store ptr %83, ptr %84, align 8
  store volatile ptr %81, ptr %83, align 4
  br label %85

85:                                               ; preds = %73, %72, %61, %59, %55
  %86 = phi i32 [ %70, %72 ], [ 0, %73 ], [ -12, %61 ], [ 0, %55 ], [ 0, %59 ]
  tail call void @mutex_unlock(ptr noundef %18) #6
  br label %87

87:                                               ; preds = %85, %11
  %88 = phi i32 [ %86, %85 ], [ %16, %11 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_do_mdb_del(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_switch_ops, ptr %13, i32 0, i32 58
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %4, i32 noundef %6, ptr noundef %1) #6
  br label %73

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 25
  %20 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %1, i32 0, i32 2
  %21 = load i16, ptr %20, align 2
  %22 = load ptr, ptr %19, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %71, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.switchdev_obj_port_mdb, ptr %1, i32 0, i32 1, i32 4
  %28 = load i16, ptr %27, align 2
  br label %29

29:                                               ; preds = %44, %24
  %30 = phi ptr [ %22, %24 ], [ %45, %44 ]
  %31 = getelementptr i8, ptr %30, i32 -12
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, %26
  %34 = getelementptr i8, ptr %30, i32 -8
  %35 = load i16, ptr %34, align 2
  %36 = xor i16 %35, %28
  %37 = zext i16 %36 to i32
  %38 = or i32 %33, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = getelementptr i8, ptr %30, i32 -6
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, %21
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %29
  %45 = load ptr, ptr %30, align 4
  %46 = icmp eq ptr %45, %19
  br i1 %46, label %71, label %29

47:                                               ; preds = %40
  %48 = getelementptr i8, ptr %30, i32 -12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %71, label %50

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %30, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #6, !srcloc !10
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #6, !srcloc !14
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = icmp sgt i32 %53, 0
  br i1 %56, label %71, label %57, !prof !12

57:                                               ; preds = %55
  tail call void @refcount_warn_saturate(ptr noundef %51, i32 noundef 3) #6
  br label %71

58:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %59 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dsa_switch_ops, ptr %60, i32 0, i32 58
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef %4, i32 noundef %6, ptr noundef %1) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store volatile i32 1, ptr %51, align 4
  br label %71

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %30, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %68, ptr %70, align 4
  store volatile ptr %69, ptr %68, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %67, align 4
  tail call void @kfree(ptr noundef nonnull %48) #6
  br label %71

71:                                               ; preds = %66, %65, %57, %55, %47, %44, %17
  %72 = phi i32 [ %63, %65 ], [ 0, %66 ], [ -2, %47 ], [ -2, %17 ], [ 0, %55 ], [ 0, %57 ], [ -2, %44 ]
  tail call void @mutex_unlock(ptr noundef %18) #6
  br label %73

73:                                               ; preds = %71, %11
  %74 = phi i32 [ %72, %71 ], [ %16, %11 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_set_tag_protocol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_slave_setup_tagger(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_slave_change_mtu(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 705984, i64 2148195955, i64 2148195981, i64 2148196028, i64 2148196050, i64 2148196078, i64 2148196098}
!11 = !{i64 2148208828, i64 2148208860, i64 2148208889, i64 2148208923, i64 2148208954, i64 2148208977}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148309050}
!14 = !{i64 2148211185, i64 2148211217, i64 2148211246, i64 2148211280, i64 2148211311, i64 2148211334}
!15 = !{i64 2149513248}
