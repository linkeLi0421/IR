; ModuleID = '/llk/IR/drivers/net/ethernet/broadcom/genet/bcmmii.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/genet/bcmmii.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcmgenet_hw_params = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.unimac_mdio_pdata = type { i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.bcmgenet_platform_data = type { i8, i32, i32, i32, i32, [6 x i8], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bcmgenet_priv = type { ptr, i32, ptr, ptr, ptr, i32, [17 x %struct.bcmgenet_tx_ring], ptr, ptr, i32, i32, [16 x %struct.bcmgenet_rxnfc_rule], %struct.list_head, [17 x %struct.bcmgenet_rx_ring], ptr, i8, %struct.wait_queue_head, i8, ptr, ptr, ptr, i16, ptr, i8, i32, i32, i32, i8, %struct.work_struct, i32, i32, i32, i8, %struct.spinlock, i32, i8, i32, i32, ptr, ptr, ptr, ptr, i32, [6 x i8], i8, %struct.bcmgenet_mib_counters, %struct.ethtool_eee }
%struct.bcmgenet_tx_ring = type { %struct.spinlock, %struct.napi_struct, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bcmgenet_rxnfc_rule = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i32 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.bcmgenet_rx_ring = type { %struct.napi_struct, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.bcmgenet_net_dim, i32, i32, ptr, ptr, ptr }
%struct.bcmgenet_net_dim = type { i16, i16, i32, i32, %struct.dim }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.bcmgenet_mib_counters = type { %struct.bcmgenet_rx_counters, %struct.bcmgenet_tx_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_rx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_pkt_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_tx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [13 x i8] c"internal PHY\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"MoCA\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"external MII\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"external RvMII\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"external RGMII (no delay)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"external RGMII (TX delay)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"external RGMII (RX delay)\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"unknown phy mode: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"configuring instance for %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"\013could not attach to PHY\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"unimac-mdio\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Invalid resource\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"bcmgenet MII bus\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"eth\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"brcm,genet-mdio-v%d\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"unable to find MDIO bus node\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"invalid PHY mode property\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"failed to register PHY device\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"failed to register fixed PHY device\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcmgenet_mii_setup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 8192
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call fastcc void @bcmgenet_mac_config(ptr noundef %0)
  br label %9

9:                                                ; preds = %8, %1
  tail call void @phy_print_status(ptr noundef %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_mac_config(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 100
  %10 = select i1 %9, i32 4, i32 0
  %11 = icmp eq i32 %8, 1000
  %12 = select i1 %11, i32 8, i32 %10
  %13 = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = or i32 %12, 268436736
  br label %57

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %0, i32 16236
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1
  %24 = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 4
  %25 = load i16, ptr %24, align 8
  %26 = and i16 %25, 4096
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = or i32 %12, 268435456
  br label %39

30:                                               ; preds = %23
  call void @phy_get_pause(ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  %31 = load i8, ptr %2, align 1, !range !8
  %32 = load i8, ptr %3, align 1, !range !8
  %33 = load i8, ptr %19, align 4
  %34 = icmp eq i8 %31, 0
  %35 = icmp eq i8 %32, 0
  br i1 %34, label %36, label %38

36:                                               ; preds = %30
  %37 = or i32 %12, 268435456
  br i1 %35, label %39, label %43

38:                                               ; preds = %30
  br i1 %35, label %39, label %43

39:                                               ; preds = %38, %36, %28
  %40 = phi i32 [ %37, %36 ], [ %12, %38 ], [ %29, %28 ]
  %41 = phi i8 [ %33, %36 ], [ %33, %38 ], [ %20, %28 ]
  %42 = or i32 %40, 256
  br label %43

43:                                               ; preds = %39, %38, %36
  %44 = phi i8 [ %41, %39 ], [ %33, %38 ], [ %33, %36 ]
  %45 = phi i32 [ %42, %39 ], [ %12, %38 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br label %46

46:                                               ; preds = %43, %18
  %47 = phi i8 [ %44, %43 ], [ %20, %18 ]
  %48 = phi i32 [ %45, %43 ], [ %12, %18 ]
  %49 = and i8 %47, 4
  %50 = icmp eq i8 %49, 0
  %51 = or i32 %48, 256
  %52 = select i1 %50, i32 %51, i32 %48
  %53 = and i8 %47, 2
  %54 = icmp eq i8 %53, 0
  %55 = or i32 %52, 268435456
  %56 = select i1 %54, i32 %55, i32 %52
  br label %57

57:                                               ; preds = %46, %16
  %58 = phi i32 [ %17, %16 ], [ %56, %46 ]
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr i8, ptr %59, i32 140
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #6, !srcloc !9
  %62 = and i32 %61, -49
  %63 = or i32 %62, 16
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr i8, ptr %64, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #6, !srcloc !10
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr i8, ptr %66, i32 2056
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !9
  %69 = and i32 %68, -268436749
  %70 = or i32 %69, %58
  %71 = and i32 %70, 8192
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %57
  %74 = and i32 %70, -8193
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr i8, ptr %75, i32 2056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #6, !srcloc !10
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 429496) #6
  %78 = or i32 %74, 3
  br label %79

79:                                               ; preds = %73, %57
  %80 = phi i32 [ %78, %73 ], [ %70, %57 ]
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr i8, ptr %81, i32 2056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #6, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcmgenet_phy_pause_set(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -24577
  %9 = select i1 %1, i32 8192, i32 0
  %10 = or i32 %8, %9
  %11 = or i1 %1, %2
  %12 = select i1 %11, i32 16384, i32 0
  %13 = or i32 %10, %12
  store i32 %13, ptr %6, align 4
  %14 = tail call i32 @phy_start_aneg(ptr noundef %5) #6
  %15 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 8192
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  tail call fastcc void @bcmgenet_mac_config(ptr noundef %0)
  br label %21

21:                                               ; preds = %20, %3
  tail call void @mutex_unlock(ptr noundef %15) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcmgenet_phy_power_set(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1412
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 16292
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %7, %2
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr i8, ptr %12, i32 156
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  br i1 %1, label %15, label %25

15:                                               ; preds = %11
  %16 = and i32 %14, -17
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr i8, ptr %17, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !10
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  %20 = and i32 %14, -60
  %21 = or i32 %20, 32
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr i8, ptr %22, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !10
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  br label %31

25:                                               ; preds = %11
  %26 = or i32 %14, 43
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr i8, ptr %27, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !10
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  %30 = or i32 %14, 59
  br label %31

31:                                               ; preds = %25, %15
  %32 = phi i32 [ %20, %15 ], [ %30, %25 ]
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr i8, ptr %33, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !10
  br label %35

35:                                               ; preds = %31, %7
  %36 = phi i32 [ 12884880, %31 ], [ 214748000, %7 ]
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef %36) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcmgenet_mii_config(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 16352
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = getelementptr i8, ptr %0, i32 16280
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %52 [
    i32 1, label %11
    i32 17, label %16
    i32 2, label %42
    i32 6, label %44
    i32 9, label %53
    i32 12, label %50
    i32 11, label %51
  ]

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %0, i32 1412
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 4
  %15 = zext i1 %14 to i32
  br label %53

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %0, i32 1412
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 4
  %20 = zext i1 %19 to i32
  %21 = icmp eq i32 %18, 5
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !9
  %26 = or i32 %25, 512
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !10
  br label %29

29:                                               ; preds = %22, %16
  %30 = getelementptr i8, ptr %0, i32 16232
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %31, i32 0, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %29
  %37 = getelementptr i8, ptr %0, i32 1416
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 120
  %40 = load ptr, ptr %39, align 8
  %41 = tail call i32 @fixed_phy_set_link_update(ptr noundef %40, ptr noundef nonnull @bcmgenet_fixed_phy_link_update) #6
  br label %53

42:                                               ; preds = %2
  %43 = tail call i32 @phy_set_max_speed(ptr noundef %5, i32 noundef 100) #6
  br label %53

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 16
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 20, i32 4
  br label %53

50:                                               ; preds = %2
  br label %53

51:                                               ; preds = %2
  br label %53

52:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %10) #7
  br label %85

53:                                               ; preds = %51, %50, %44, %42, %36, %29, %11, %2
  %54 = phi ptr [ @.str.6, %51 ], [ @.str.5, %50 ], [ @.str.2, %42 ], [ @.str, %11 ], [ @.str.3, %44 ], [ @.str.4, %2 ], [ @.str.1, %29 ], [ @.str.1, %36 ]
  %55 = phi i32 [ 0, %51 ], [ 0, %50 ], [ 0, %42 ], [ 0, %11 ], [ 0, %44 ], [ 65536, %2 ], [ 0, %29 ], [ 0, %36 ]
  %56 = phi i32 [ 3, %51 ], [ 3, %50 ], [ 2, %42 ], [ %15, %11 ], [ %49, %44 ], [ 3, %2 ], [ %20, %29 ], [ %20, %36 ]
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #6, !srcloc !10
  %59 = getelementptr i8, ptr %0, i32 16252
  %60 = load i8, ptr %59, align 4, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %53
  %63 = load i32, ptr %9, align 8
  %64 = icmp ne i32 %63, 17
  %65 = zext i1 %64 to i32
  %66 = getelementptr i8, ptr %0, i32 16288
  store i32 %65, ptr %66, align 8
  br i1 %64, label %67, label %83

67:                                               ; preds = %62
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr i8, ptr %68, i32 140
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !9
  %71 = and i32 %70, -65537
  %72 = or i32 %71, %55
  %73 = getelementptr i8, ptr %0, i32 1412
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, -1
  %76 = icmp ult i32 %75, 3
  %77 = select i1 %76, i32 1, i32 64
  %78 = or i32 %72, %77
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr i8, ptr %79, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #6, !srcloc !10
  br label %83

81:                                               ; preds = %53
  %82 = getelementptr i8, ptr %0, i32 16288
  store i32 0, ptr %82, align 8
  br label %83

83:                                               ; preds = %81, %67, %62
  br i1 %1, label %84, label %85

84:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull %54) #7
  br label %85

85:                                               ; preds = %84, %83, %52
  %86 = phi i32 [ -22, %52 ], [ 0, %84 ], [ 0, %83 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcmgenet_mii_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 16352
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 16280
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 16252
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 16268
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i32 [ %14, %11 ], [ 41, %1 ]
  switch i32 %7, label %19 [
    i32 9, label %17
    i32 12, label %18
  ]

17:                                               ; preds = %15
  br label %19

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %17, %15
  %20 = phi i32 [ %7, %15 ], [ 11, %18 ], [ 10, %17 ]
  %21 = icmp eq ptr %5, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %0, i32 16256
  %24 = load ptr, ptr %23, align 8
  %25 = tail call ptr @of_phy_connect(ptr noundef %0, ptr noundef %24, ptr noundef nonnull @bcmgenet_mii_setup, i32 noundef %16, i32 noundef %20) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  br label %54

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.phy_device, ptr %31, i32 0, i32 6
  store i32 %16, ptr %32, align 8
  %33 = tail call i32 @phy_connect_direct(ptr noundef %0, ptr noundef %31, ptr noundef nonnull @bcmgenet_mii_setup, i32 noundef %20) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  br label %54

37:                                               ; preds = %29, %22
  %38 = tail call i32 @bcmgenet_mii_config(ptr noundef %0, i1 noundef zeroext true)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %42 = load ptr, ptr %41, align 8
  tail call void @phy_disconnect(ptr noundef %42) #6
  br label %54

43:                                               ; preds = %37
  %44 = load i8, ptr %8, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = getelementptr i8, ptr %0, i32 1412
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 5
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.phy_device, ptr %52, i32 0, i32 21
  store i32 -2, ptr %53, align 4
  br label %54

54:                                               ; preds = %50, %46, %43, %40, %35, %27
  %55 = phi i32 [ %38, %40 ], [ -19, %27 ], [ -19, %35 ], [ 0, %50 ], [ 0, %46 ], [ 0, %43 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcmgenet_mii_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca [61 x i8], align 1
  %4 = alloca %struct.fixed_phy_status, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca %struct.unimac_mdio_pdata, align 4
  %7 = alloca %struct.resource, align 4
  %8 = getelementptr i8, ptr %0, i32 16352
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 25
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #6
  %15 = tail call ptr @platform_get_resource(ptr noundef %9, i32 noundef 512, i32 noundef 0) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14) #7
  br label %90

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %0, i32 1408
  %20 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %20, i8 0, i32 24, i1 false) #6
  store i32 0, ptr %6, align 4
  %21 = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %6, i32 0, i32 1
  store ptr @bcmgenet_mii_wait, ptr %21, align 4
  %22 = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %6, i32 0, i32 2
  store ptr %19, ptr %22, align 4
  %23 = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %6, i32 0, i32 3
  store ptr @.str.15, ptr %23, align 4
  %24 = load i32, ptr %15, align 4
  %25 = add i32 %24, 3604
  store i32 %25, ptr %7, align 4
  %26 = add i32 %24, 3612
  %27 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 3
  store i32 512, ptr %28, align 4
  %29 = icmp eq ptr %14, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %18
  %31 = tail call i32 @of_alias_get_id(ptr noundef nonnull %14, ptr noundef nonnull @.str.16) #6
  br label %35

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ]
  %37 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.11, i32 noundef %36) #6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %90, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %0, i32 16356
  store ptr %37, ptr %40, align 4
  %41 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3, i32 1
  store ptr %10, ptr %41, align 4
  br i1 %29, label %60, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3, i32 25
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr i8, ptr %0, i32 1412
  %48 = load i32, ptr %47, align 4
  %49 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.17, i32 noundef %48) #6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = tail call ptr @of_get_compatible_child(ptr noundef %46, ptr noundef nonnull %49) #6
  %53 = getelementptr i8, ptr %0, i32 16260
  store ptr %52, ptr %53, align 4
  tail call void @kfree(ptr noundef nonnull %49) #6
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.18) #7
  br label %57

57:                                               ; preds = %56, %51, %42
  %58 = phi ptr [ null, %56 ], [ null, %42 ], [ %54, %51 ]
  %59 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3, i32 25
  store ptr %58, ptr %59, align 8
  br label %79

60:                                               ; preds = %39
  %61 = icmp eq ptr %12, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %8, align 8
  %64 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 17
  br i1 %68, label %79, label %69

69:                                               ; preds = %62
  %70 = load i8, ptr %65, align 4, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %65, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp ult i32 %74, 32
  %76 = shl nuw i32 1, %74
  %77 = select i1 %75, i32 %76, i32 0
  store i32 %77, ptr %6, align 4
  br label %79

78:                                               ; preds = %60
  store i32 -1, ptr %6, align 4
  br label %79

79:                                               ; preds = %78, %72, %69, %62, %57
  %80 = call i32 @platform_device_add_resources(ptr noundef nonnull %37, ptr noundef nonnull %7, i32 noundef 1) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = call i32 @platform_device_add_data(ptr noundef nonnull %37, ptr noundef nonnull %6, i32 noundef 16) #6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = call i32 @platform_device_add(ptr noundef nonnull %37) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85, %82, %79
  %89 = phi i32 [ %80, %79 ], [ %83, %82 ], [ %86, %85 ]
  call void @platform_device_put(ptr noundef nonnull %37) #6
  br label %90

90:                                               ; preds = %88, %35, %17
  %91 = phi i32 [ -12, %35 ], [ -22, %17 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %184

92:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %93 = load ptr, ptr %8, align 8
  %94 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3, i32 25
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %128, label %97

97:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #6, !annotation !11
  %98 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %95, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #6
  %99 = icmp eq i32 %98, 0
  %100 = load ptr, ptr %5, align 4
  %101 = select i1 %99, ptr %100, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #6
  %102 = getelementptr i8, ptr %0, i32 16256
  store ptr %101, ptr %102, align 8
  %103 = icmp eq ptr %101, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %95) #6
  br i1 %105, label %106, label %111

106:                                              ; preds = %104
  %107 = call i32 @of_phy_register_fixed_link(ptr noundef nonnull %95) #6
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %173

109:                                              ; preds = %106
  %110 = call ptr @of_node_get(ptr noundef nonnull %95) #6
  store ptr %110, ptr %102, align 8
  br label %111

111:                                              ; preds = %109, %104, %97
  %112 = load ptr, ptr %8, align 8
  %113 = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3
  %114 = call i32 @device_get_phy_mode(ptr noundef %113) #6
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = getelementptr i8, ptr %0, i32 16280
  store i32 %114, ptr %117, align 8
  switch i32 %114, label %184 [
    i32 1, label %118
    i32 17, label %121
  ]

118:                                              ; preds = %116
  %119 = getelementptr i8, ptr %0, i32 16252
  store i8 1, ptr %119, align 4
  br label %184

120:                                              ; preds = %111
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.20) #7
  br label %173

121:                                              ; preds = %116
  %122 = call ptr @of_phy_find_device(ptr noundef nonnull %95) #6
  %123 = icmp eq ptr %122, null
  br i1 %123, label %184, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.phy_device, ptr %122, i32 0, i32 4
  %126 = load i16, ptr %125, align 8
  %127 = and i16 %126, -8193
  store i16 %127, ptr %125, align 8
  call void @put_device(ptr noundef nonnull %122) #6
  br label %184

128:                                              ; preds = %92
  %129 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  %130 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3, i32 7
  %131 = load ptr, ptr %130, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i32 64, i1 false) #6, !annotation !11
  call void @llvm.lifetime.start.p0(i64 61, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(61) %3, i8 0, i32 61, i1 false) #6, !annotation !11
  %132 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 61, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %133) #6
  %135 = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %131, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 17
  br i1 %137, label %150, label %138

138:                                              ; preds = %128
  %139 = load i8, ptr %131, align 4, !range !8
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %131, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 61, ptr noundef nonnull @.str.21, ptr noundef nonnull %3, i32 noundef %143) #6
  %145 = getelementptr i8, ptr %0, i32 1416
  %146 = load ptr, ptr %145, align 8
  %147 = load i32, ptr %135, align 4
  %148 = call ptr @phy_attach(ptr noundef %146, ptr noundef nonnull %2, i32 noundef %147) #6
  %149 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %149, label %171, label %168

150:                                              ; preds = %138, %128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  store i32 1, ptr %4, align 4
  %151 = getelementptr inbounds %struct.fixed_phy_status, ptr %4, i32 0, i32 1
  %152 = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %131, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  store i32 %153, ptr %151, align 4
  %154 = getelementptr inbounds %struct.fixed_phy_status, ptr %4, i32 0, i32 2
  %155 = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %131, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  store i32 %156, ptr %154, align 4
  %157 = getelementptr inbounds %struct.fixed_phy_status, ptr %4, i32 0, i32 3
  store i32 0, ptr %157, align 4
  %158 = getelementptr inbounds %struct.fixed_phy_status, ptr %4, i32 0, i32 4
  store i32 0, ptr %158, align 4
  %159 = call ptr @fixed_phy_register(i32 noundef -1, ptr noundef nonnull %4, ptr noundef null) #6
  %160 = icmp eq ptr %159, null
  %161 = icmp ugt ptr %159, inttoptr (i32 -4096 to ptr)
  %162 = or i1 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.23) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  br label %173

164:                                              ; preds = %150
  %165 = getelementptr inbounds %struct.phy_device, ptr %159, i32 0, i32 4
  %166 = load i16, ptr %165, align 8
  %167 = and i16 %166, -8193
  store i16 %167, ptr %165, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  br label %168

168:                                              ; preds = %164, %141
  %169 = load i32, ptr %135, align 4
  %170 = getelementptr i8, ptr %0, i32 16280
  store i32 %169, ptr %170, align 8
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  br label %184

171:                                              ; preds = %141
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.22) #7
  %172 = ptrtoint ptr %148 to i32
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  br label %173

173:                                              ; preds = %171, %163, %120, %106
  %174 = phi i32 [ %172, %171 ], [ -19, %163 ], [ %114, %120 ], [ %107, %106 ]
  %175 = load ptr, ptr %8, align 8
  %176 = getelementptr inbounds %struct.platform_device, ptr %175, i32 0, i32 3, i32 25
  %177 = load ptr, ptr %176, align 8
  %178 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %177) #6
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  call void @of_phy_deregister_fixed_link(ptr noundef %177) #6
  br label %180

180:                                              ; preds = %179, %173
  %181 = getelementptr i8, ptr %0, i32 16256
  %182 = load ptr, ptr %181, align 8
  call void @of_node_put(ptr noundef %182) #6
  %183 = load ptr, ptr %40, align 4
  call void @platform_device_unregister(ptr noundef %183) #6
  br label %184

184:                                              ; preds = %180, %168, %124, %121, %118, %116, %90
  %185 = phi i32 [ %174, %180 ], [ %91, %90 ], [ 0, %168 ], [ 0, %121 ], [ 0, %124 ], [ 0, %118 ], [ 0, %116 ]
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcmgenet_mii_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 16352
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %5) #6
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @of_phy_deregister_fixed_link(ptr noundef %5) #6
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr i8, ptr %0, i32 16256
  %10 = load ptr, ptr %9, align 8
  tail call void @of_node_put(ptr noundef %10) #6
  %11 = getelementptr i8, ptr %0, i32 16356
  %12 = load ptr, ptr %11, align 4
  tail call void @platform_device_unregister(ptr noundef %12) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_get_pause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixed_phy_set_link_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_fixed_phy_link_update(ptr noundef readonly %0, ptr noundef writeonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 1408
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 2116
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  %15 = lshr i32 %14, 5
  %16 = and i32 %15, 1
  store i32 %16, ptr %1, align 4
  br label %17

17:                                               ; preds = %10, %4, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_mii_wait(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr i8, ptr %3, i32 3604
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  %6 = and i32 %5, 536870912
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !11
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #6
  %9 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 16
  %10 = call i32 @prepare_to_wait_event(ptr noundef %9, ptr noundef nonnull %2, i32 noundef 2) #6
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr i8, ptr %11, i32 3604
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  %14 = and i32 %13, 536870912
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %16, %8
  %17 = phi i32 [ %28, %16 ], [ 1, %8 ]
  %18 = call i32 @schedule_timeout(i32 noundef %17) #6
  %19 = call i32 @prepare_to_wait_event(ptr noundef %9, ptr noundef nonnull %2, i32 noundef 2) #6
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr i8, ptr %20, i32 3604
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !9
  %23 = and i32 %22, 536870912
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = icmp ne i32 %18, 0
  %27 = select i1 %24, i1 true, i1 %26
  %28 = select i1 %27, i32 %18, i32 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %25, i1 true, i1 %29
  br i1 %30, label %31, label %16

31:                                               ; preds = %16, %8
  call void @finish_wait(ptr noundef %9, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  br label %32

32:                                               ; preds = %31, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_phy_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fixed_phy_register(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 6020400}
!10 = !{i64 6019982}
!11 = !{!"auto-init"}
