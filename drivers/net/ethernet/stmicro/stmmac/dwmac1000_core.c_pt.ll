; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.159, %struct.anon.160 }
%struct.anon.159 = type { i32, i32, i32 }
%struct.anon.160 = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.150 = type { ptr }
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
%struct.dsa_port = type { %union.anon.136, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.136 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.125 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.125 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rgmii_adv = type { i32, i32, i32, i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [56 x i8], [8 x %struct.stmmac_rx_queue], i32, [60 x i8], [8 x %struct.stmmac_tx_queue], i32, [60 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [20 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr, [12 x i8] }
%struct.stmmac_rx_queue = type { i32, i32, [56 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [44 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.154, [20 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.154 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, ptr, ptr, ptr, %union.anon.155, ptr, ptr, i32, i32, i32, i32, i32, i32, [16 x i8] }
%union.anon.155 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [40 x i8], %struct.napi_struct, [40 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [28 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }

@dwmac1000_ops = dso_local local_unnamed_addr constant %struct.stmmac_ops { ptr @dwmac1000_core_init, ptr @stmmac_set_mac, ptr @dwmac1000_rx_ipc_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwmac1000_dump_regs, ptr @dwmac1000_irq_status, ptr null, ptr @dwmac1000_set_filter, ptr @dwmac1000_flow_ctrl, ptr @dwmac1000_pmt, ptr @dwmac1000_set_umac_addr, ptr @dwmac1000_get_umac_addr, ptr @dwmac1000_set_eee_mode, ptr @dwmac1000_reset_eee_mode, ptr null, ptr @dwmac1000_set_eee_timer, ptr @dwmac1000_set_eee_pls, ptr @dwmac1000_debug, ptr @dwmac1000_ctrl_ane, ptr @dwmac1000_rane, ptr @dwmac1000_get_adv_lp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwmac1000_set_mac_loopback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [12 x i8] c"\09DWMAC1000\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\016stmmac_pcs: ANE process completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\016stmmac_pcs: Link Up\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\016stmmac_pcs: Link Down\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\016Link is Up - %d/%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\016Link is Down\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_core_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %6 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %5, 6389888
  %9 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 67
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dsa_port, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %12, %2
  %17 = getelementptr i8, ptr %1, i32 12096
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %12
  %23 = and i32 %8, -129
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi i32 [ %23, %22 ], [ %8, %16 ]
  %26 = icmp sgt i32 %7, 1500
  %27 = or i32 %25, 134217728
  %28 = select i1 %26, i32 %27, i32 %25
  %29 = icmp sgt i32 %7, 2000
  %30 = or i32 %28, 1048576
  %31 = select i1 %29, i32 %30, i32 %28
  %32 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 17
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %24
  %36 = or i32 %31, 8
  %37 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  switch i32 %33, label %51 [
    i32 1000, label %41
    i32 100, label %43
    i32 10, label %45
  ]

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9, i32 3
  br label %47

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9, i32 2
  br label %47

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9, i32 1
  br label %47

47:                                               ; preds = %45, %43, %41
  %48 = phi ptr [ %46, %45 ], [ %44, %43 ], [ %42, %41 ]
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, %40
  br label %51

51:                                               ; preds = %47, %35, %24
  %52 = phi i32 [ %40, %35 ], [ %31, %24 ], [ %50, %47 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %52) #7, !srcloc !11
  %53 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 15
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 519, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %57 = getelementptr i8, ptr %4, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #7, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_mac(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac1000_rx_ipc_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %5 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %4, -1025
  %9 = select i1 %7, i32 0, i32 1024
  %10 = or i32 %9, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %10) #7, !srcloc !11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %12 = lshr i32 %11, 10
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_dump_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %7 = shl i32 %6, 2
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %10 = getelementptr i32, ptr %1, i32 %6
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %6, 1
  %12 = icmp eq i32 %11, 55
  br i1 %12, label %13, label %5

13:                                               ; preds = %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac1000_irq_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 56
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %7 = getelementptr i8, ptr %4, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %9 = xor i32 %8, -1
  %10 = and i32 %6, %9
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 48
  %15 = load i32, ptr %14, align 64
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 64
  br label %17

17:                                               ; preds = %13, %2
  %18 = and i32 %10, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !19

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 49
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = and i32 %10, 128
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !19

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 50
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = and i32 %10, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34, !prof !19

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %4, i32 44
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %37 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 47
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = and i32 %10, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %4, i32 48
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 51
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = and i32 %45, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 52
  %57 = load i32, ptr %56, align 16
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 16
  br label %59

59:                                               ; preds = %55, %52
  %60 = and i32 %45, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 53
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = and i32 %45, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 54
  %71 = load i32, ptr %70, align 8
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 8
  br label %73

73:                                               ; preds = %69, %66, %40
  %74 = phi i32 [ %45, %69 ], [ %45, %66 ], [ 0, %40 ]
  %75 = getelementptr i8, ptr %4, i32 196
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %77 = and i32 %10, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 81
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  %83 = and i32 %76, 32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %87

87:                                               ; preds = %85, %79, %73
  %88 = and i32 %10, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 82
  %92 = load i32, ptr %91, align 8
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 8
  %94 = and i32 %76, 4
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, ptr @.str.3, ptr @.str.2
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %96) #8
  br label %98

98:                                               ; preds = %90, %87
  %99 = and i32 %10, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %98
  %102 = getelementptr i8, ptr %4, i32 216
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %104 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 83
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4
  %107 = and i32 %103, 8
  %108 = icmp eq i32 %107, 0
  %109 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 84
  br i1 %108, label %123, label %110

110:                                              ; preds = %101
  store i32 1, ptr %109, align 16
  %111 = lshr i32 %103, 1
  %112 = and i32 %111, 3
  %113 = icmp eq i32 %112, 1
  %114 = select i1 %113, i32 100, i32 10
  %115 = icmp eq i32 %112, 2
  %116 = select i1 %115, i32 1000, i32 %114
  %117 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 86
  store i32 %116, ptr %117, align 8
  %118 = and i32 %103, 1
  %119 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 85
  store i32 %118, ptr %119, align 4
  %120 = icmp eq i32 %118, 0
  %121 = select i1 %120, ptr @.str.6, ptr @.str.5
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %116, ptr noundef nonnull %121) #8
  br label %125

123:                                              ; preds = %101
  store i32 0, ptr %109, align 16
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %125

125:                                              ; preds = %123, %110, %98
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_set_filter(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = alloca [8 x i32], align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 32
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  %9 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %11 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %2
  %16 = and i32 %12, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 61
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 61, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = icmp eq i32 %10, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %82, label %25

25:                                               ; preds = %18
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, %19
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = sub i32 32, %10
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi ptr [ %28, %30 ], [ %45, %32 ]
  %34 = getelementptr inbounds %struct.netdev_hw_addr, ptr %33, i32 0, i32 2
  %35 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %34, i32 noundef 6) #9
  %36 = xor i32 %35, -1
  %37 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %36) #10, !srcloc !24
  %38 = lshr i32 %37, %31
  %39 = and i32 %38, 31
  %40 = shl nuw i32 1, %39
  %41 = ashr i32 %38, 5
  %42 = getelementptr [8 x i32], ptr %3, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %40, %43
  store i32 %44, ptr %42, align 4
  %45 = load ptr, ptr %33, align 4
  %46 = icmp eq ptr %45, %19
  br i1 %46, label %47, label %32

47:                                               ; preds = %32, %27, %25, %15, %2
  %48 = phi i32 [ 1024, %25 ], [ 1153, %2 ], [ 1040, %15 ], [ 1028, %27 ], [ 1028, %32 ]
  switch i32 %10, label %82 [
    i32 6, label %49
    i32 7, label %56
    i32 8, label %55
  ]

49:                                               ; preds = %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %50 = load i32, ptr %3, align 4
  %51 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %52 = getelementptr inbounds i32, ptr %3, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %53) #7, !srcloc !11
  br label %82

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %47
  %57 = phi i1 [ false, %55 ], [ true, %47 ]
  %58 = getelementptr i8, ptr %6, i32 1280
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %59 = load i32, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %59) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %60 = getelementptr inbounds i32, ptr %3, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %6, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %61) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %63 = getelementptr inbounds i32, ptr %3, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %6, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %64) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %66 = getelementptr inbounds i32, ptr %3, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i8, ptr %6, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %67) #7, !srcloc !11
  br i1 %57, label %82, label %69

69:                                               ; preds = %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %70 = getelementptr inbounds i32, ptr %3, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr i8, ptr %6, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %71) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %73 = getelementptr inbounds i32, ptr %3, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %6, i32 1300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %74) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %76 = getelementptr inbounds i32, ptr %3, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %6, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %77) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %79 = getelementptr inbounds i32, ptr %3, i32 7
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %6, i32 1308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %80) #7, !srcloc !11
  br label %82

82:                                               ; preds = %69, %56, %49, %47, %18
  %83 = phi i32 [ %48, %47 ], [ %48, %49 ], [ 1040, %18 ], [ %48, %69 ], [ %48, %56 ]
  %84 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 60
  %85 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 60, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %86, %8
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr %84, align 4
  %90 = icmp eq ptr %89, %84
  br i1 %90, label %93, label %96

91:                                               ; preds = %82
  %92 = or i32 %83, 1
  br label %121

93:                                               ; preds = %96, %88
  %94 = phi i32 [ 1, %88 ], [ %106, %96 ]
  %95 = icmp ult i32 %94, %8
  br i1 %95, label %109, label %121

96:                                               ; preds = %96, %88
  %97 = phi ptr [ %107, %96 ], [ %89, %88 ]
  %98 = phi i32 [ %106, %96 ], [ 1, %88 ]
  %99 = getelementptr inbounds %struct.netdev_hw_addr, ptr %97, i32 0, i32 2
  %100 = icmp sgt i32 %98, 15
  %101 = shl i32 %98, 3
  %102 = select i1 %100, i32 1920, i32 64
  %103 = add i32 %102, %101
  %104 = select i1 %100, i32 1924, i32 68
  %105 = add i32 %104, %101
  tail call void @stmmac_set_mac_addr(ptr noundef %6, ptr noundef %99, i32 noundef %103, i32 noundef %105) #7
  %106 = add i32 %98, 1
  %107 = load ptr, ptr %97, align 4
  %108 = icmp eq ptr %107, %84
  br i1 %108, label %93, label %96

109:                                              ; preds = %109, %93
  %110 = phi i32 [ %119, %109 ], [ %94, %93 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %111 = icmp sgt i32 %110, 15
  %112 = shl i32 %110, 3
  %113 = select i1 %111, i32 1920, i32 64
  %114 = add i32 %113, %112
  %115 = getelementptr i8, ptr %6, i32 %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 0) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %116 = select i1 %111, i32 1924, i32 68
  %117 = add i32 %116, %112
  %118 = getelementptr i8, ptr %6, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 0) #7, !srcloc !11
  %119 = add i32 %110, 1
  %120 = icmp eq i32 %119, %8
  br i1 %120, label %121, label %109

121:                                              ; preds = %109, %93, %91
  %122 = phi i32 [ %92, %91 ], [ %83, %93 ], [ %83, %109 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %123 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %122) #7, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_flow_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %2, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 8, i32 12
  %11 = and i32 %2, 2
  %12 = or i32 %10, %11
  %13 = icmp eq i32 %1, 0
  %14 = shl i32 %3, 16
  %15 = select i1 %13, i32 0, i32 %14
  %16 = or i32 %12, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %17 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_pmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, 32
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 3
  %8 = and i32 %1, 2
  %9 = icmp eq i32 %8, 0
  %10 = or i32 %7, 517
  %11 = select i1 %9, i32 %7, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %12 = getelementptr i8, ptr %4, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_set_umac_addr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt i32 %2, 15
  %7 = shl i32 %2, 3
  %8 = select i1 %6, i32 1920, i32 64
  %9 = add i32 %8, %7
  %10 = select i1 %6, i32 1924, i32 68
  %11 = add i32 %10, %7
  tail call void @stmmac_set_mac_addr(ptr noundef %5, ptr noundef %1, i32 noundef %9, i32 noundef %11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_get_umac_addr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt i32 %2, 15
  %7 = shl i32 %2, 3
  %8 = select i1 %6, i32 1920, i32 64
  %9 = add i32 %8, %7
  %10 = select i1 %6, i32 1924, i32 68
  %11 = add i32 %10, %7
  tail call void @stmmac_get_mac_addr(ptr noundef %5, ptr noundef %1, i32 noundef %9, i32 noundef %11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_set_eee_mode(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !33
  %7 = or i32 %6, 589824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_reset_eee_mode(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 48
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !35
  %6 = and i32 %5, -589825
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_set_eee_timer(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %2, 65535
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 134152192
  %9 = or i32 %6, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr i8, ptr %5, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_set_eee_pls(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !38
  %7 = icmp eq i32 %1, 0
  %8 = and i32 %6, -131073
  %9 = select i1 %7, i32 0, i32 131072
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_debug(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  %7 = and i32 %6, 33554432
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 87
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = and i32 %6, 16777216
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 88
  %18 = load i32, ptr %17, align 32
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 32
  br label %20

20:                                               ; preds = %16, %13
  %21 = and i32 %6, 4194304
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 89
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = lshr i32 %6, 20
  %29 = and i32 %28, 3
  switch i32 %29, label %42 [
    i32 0, label %43
    i32 3, label %30
    i32 2, label %34
    i32 1, label %38
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 90
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8
  br label %43

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 91
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  br label %43

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 92
  %40 = load i32, ptr %39, align 16
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 16
  br label %43

42:                                               ; preds = %27
  unreachable

43:                                               ; preds = %38, %34, %30, %27
  %44 = and i32 %6, 524288
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 94
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = lshr i32 %6, 17
  %52 = and i32 %51, 3
  switch i32 %52, label %65 [
    i32 0, label %66
    i32 3, label %53
    i32 2, label %57
    i32 1, label %61
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 95
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  br label %66

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 98
  %59 = load i32, ptr %58, align 8
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8
  br label %66

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 97
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  br label %66

65:                                               ; preds = %50
  unreachable

66:                                               ; preds = %61, %57, %53, %50
  %67 = and i32 %6, 65536
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 99
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %69, %66
  %74 = and i32 %6, 768
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 103
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = lshr i32 %6, 5
  %82 = and i32 %81, 3
  switch i32 %82, label %95 [
    i32 0, label %96
    i32 3, label %83
    i32 2, label %87
    i32 1, label %91
  ]

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 104
  %85 = load i32, ptr %84, align 32
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 32
  br label %96

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 105
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 4
  br label %96

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 106
  %93 = load i32, ptr %92, align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8
  br label %96

95:                                               ; preds = %80
  unreachable

96:                                               ; preds = %91, %87, %83, %80
  %97 = and i32 %6, 16
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 108
  %101 = load i32, ptr %100, align 16
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 16
  br label %103

103:                                              ; preds = %99, %96
  %104 = and i32 %6, 6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = lshr exact i32 %104, 1
  %108 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 109
  store i32 %107, ptr %108, align 4
  br label %109

109:                                              ; preds = %106, %103
  %110 = and i32 %6, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 110
  %114 = load i32, ptr %113, align 8
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 8
  br label %116

116:                                              ; preds = %112, %109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_ctrl_ane(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 192
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !41
  %7 = or i32 %6, 4608
  %8 = select i1 %1, i32 %7, i32 %6
  %9 = or i32 %8, 262144
  %10 = select i1 %2, i32 %9, i32 %8
  %11 = or i32 %10, 16384
  %12 = select i1 %3, i32 %11, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %12) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_rane(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 192
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !43
  %5 = or i32 %4, 512
  %6 = select i1 %1, i32 %5, i32 %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %6) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_get_adv_lp(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 200
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !45
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rgmii_adv, ptr %1, i32 0, i32 1
  store i32 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = lshr i32 %4, 7
  %11 = and i32 %10, 3
  store i32 %11, ptr %1, align 4
  %12 = getelementptr i8, ptr %0, i32 204
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !46
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rgmii_adv, ptr %1, i32 0, i32 3
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %9
  %19 = and i32 %13, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rgmii_adv, ptr %1, i32 0, i32 3
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = lshr i32 %13, 7
  %25 = and i32 %24, 3
  %26 = getelementptr inbounds %struct.rgmii_adv, ptr %1, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_set_mac_loopback(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !47
  %4 = and i32 %3, -4097
  %5 = select i1 %1, i32 4096, i32 0
  %6 = or i32 %4, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac1000_setup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str) #8
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 15
  %9 = load i64, ptr %8, align 16
  %10 = or i64 %9, 4096
  store i64 %10, ptr %8, align 16
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %12 = load ptr, ptr %11, align 32
  %13 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 10
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %15, i32 0, i32 24
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 11
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %14, align 64
  %20 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %19, i32 0, i32 25
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 12
  store i32 %21, ptr %22, align 4
  %23 = icmp eq i32 %17, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 true) #7
  %25 = xor i32 %24, 31
  %26 = select i1 %23, i32 0, i32 %25
  %27 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 13
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9
  %29 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 5
  store i32 2048, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 1
  store i32 32768, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 2
  store i32 49152, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 3
  store i32 0, ptr %32, align 4
  store i32 49152, ptr %28, align 4
  %33 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8
  store i32 16, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 1
  store i32 20, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 2
  store i32 11, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 4
  store i32 63488, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 3
  store i32 6, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 5
  store i32 1984, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 6
  store i32 2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 7
  store i32 60, ptr %40, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_get_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone }

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
!8 = !{i64 4976444}
!9 = !{i64 2157333376}
!10 = !{i64 2157333785}
!11 = !{i64 4976026}
!12 = !{i64 2157334935}
!13 = !{i64 2157335421}
!14 = !{i64 2157335643}
!15 = !{i64 2157336129}
!16 = !{i64 2157336465}
!17 = !{i64 2157355242}
!18 = !{i64 2157355593}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2157356479}
!21 = !{i64 2157356898}
!22 = !{i64 2157313597}
!23 = !{i64 2157353205}
!24 = !{i64 209043}
!25 = !{i64 2157337047}
!26 = !{i64 2157337412}
!27 = !{i64 2157338406}
!28 = !{i64 2157347843}
!29 = !{i64 2157348376}
!30 = !{i64 2157348770}
!31 = !{i64 2157351304}
!32 = !{i64 2157352723}
!33 = !{i64 2157357370}
!34 = !{i64 2157357584}
!35 = !{i64 2157358050}
!36 = !{i64 2157358264}
!37 = !{i64 2157359267}
!38 = !{i64 2157358730}
!39 = !{i64 2157358944}
!40 = !{i64 2157359782}
!41 = !{i64 2157316602}
!42 = !{i64 2157317130}
!43 = !{i64 2157315686}
!44 = !{i64 2157315962}
!45 = !{i64 2157317791}
!46 = !{i64 2157319001}
!47 = !{i64 2157367565}
!48 = !{i64 2157367787}
