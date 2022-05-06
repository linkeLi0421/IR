; ModuleID = '/llk/IR/drivers/net/ethernet/freescale/gianfar_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/gianfar_ethtool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.gfar_priv_rx_q = type { ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, ptr, %struct.rx_q_stats, ptr, i8, i32, i32, [48 x i8] }
%struct.rx_q_stats = type { i64, i64, i64 }
%struct.gfar_priv_tx_q = type { %struct.spinlock, ptr, ptr, i32, i16, i16, %struct.tx_q_stats, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, [56 x i8] }
%struct.tx_q_stats = type { i64, i64 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gfar_private = type { ptr, ptr, i32, i16, i16, i32, i32, i32, [8 x ptr], [8 x ptr], [36 x i8], [2 x %struct.gfar_priv_grp], i32, i16, i32, i32, i32, i32, %struct.gfar_extra_stats, %struct.rmon_overflow, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.work_struct, ptr, i8, i32, i32, i32, i32, i32, i32, i32, %struct.ethtool_rx_list, %struct.mutex, [16 x ptr], i32, i16, i16, [256 x i32], [256 x i32], [52 x i8] }
%struct.gfar_priv_grp = type { %struct.spinlock, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, [3 x ptr], [20 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.gfar_extra_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.rmon_overflow = type { %struct.spinlock, i32, i64 }
%struct.ethtool_rx_list = type { %struct.list_head, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.gfar = type { i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [28 x i8], i32, i32, i32, i32, [44 x i8], i32, [8 x i8], i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, [40 x i8], i32, i32, [52 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, [56 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, i32, i32, i32, [12 x i8], [24 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [192 x i8], %struct.rmon_mib, i32, [188 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [352 x i8], i32, [252 x i8], [248 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [36 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], [556 x i8], i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [208 x i8] }
%struct.rmon_mib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.106, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.106 = type { i32 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethtool_flow_spec_container = type { %struct.ethtool_rx_flow_spec, %struct.list_head }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ptp_qoriq = type { ptr, %struct.ptp_qoriq_registers, %struct.spinlock, ptr, %struct.ptp_clock_info, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ptp_qoriq_registers = type { ptr, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.filer_table = type { i32, [530 x %struct.gfar_filer_entry] }
%struct.gfar_filer_entry = type { i32, i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }

@gfar_ethtool_ops = dso_local local_unnamed_addr constant %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @gfar_gdrvinfo, ptr @gfar_reglen, ptr @gfar_get_regs, ptr @gfar_get_wol, ptr @gfar_set_wol, ptr @gfar_get_msglevel, ptr @gfar_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @gfar_gcoalesce, ptr @gfar_scoalesce, ptr @gfar_gringparam, ptr @gfar_sringparam, ptr null, ptr @gfar_gpauseparam, ptr @gfar_spauseparam, ptr null, ptr @gfar_gstrings, ptr null, ptr @gfar_fill_stats, ptr null, ptr null, ptr null, ptr null, ptr @gfar_sset_count, ptr @gfar_get_nfc, ptr @gfar_set_nfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfar_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [10 x i8] c"gfar-enet\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Coalescing is limited to %d microseconds\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Coalescing is limited to %d frames\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Ring sizes must be a power of 2\0A\00", align 1
@stat_gstrings = internal unnamed_addr constant [57 x [32 x i8]] [[32 x i8] c"rx-allocation-errors\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-large-frame-errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-short-frame-errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-non-octet-errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-crc-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-overrun-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-busy-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-babbling-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-truncated-frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ethernet-bus-error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-babbling-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-underrun-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-timeout-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-64-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-65-127-frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-128-255-frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-256-511-frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-512-1023-frames\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-1024-1518-frames\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-1519-1522-good-vlan\00\00\00\00\00\00\00", [32 x i8] c"rx-bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-fcs-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"receive-multicast-packet\00\00\00\00\00\00\00\00", [32 x i8] c"receive-broadcast-packet\00\00\00\00\00\00\00\00", [32 x i8] c"rx-control-frame-packets\00\00\00\00\00\00\00\00", [32 x i8] c"rx-pause-frame-packets\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-unknown-op-code\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-alignment-error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-frame-length-error\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-code-error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-carrier-sense-error\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-undersize-packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-oversize-packets\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-fragmented-frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-jabber-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-dropped-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-byte-counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-multicast-packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-broadcast-packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-pause-control-frames\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-deferral-packets\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-excessive-deferral-packets\00\00\00", [32 x i8] c"tx-single-collision-packets\00\00\00\00\00", [32 x i8] c"tx-multiple-collision-packets\00\00\00", [32 x i8] c"tx-late-collision-packets\00\00\00\00\00\00\00", [32 x i8] c"tx-excessive-collision-packets\00\00", [32 x i8] c"tx-total-collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-dropped-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-jabber-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-fcs-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-control-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-oversize-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-undersize-frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-fragmented-frames\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Right now this class is not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"No parse rule found, can't create hash rules\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Rule not added: ID %d not free!\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"User-specific data not supported!\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"VLAN-etype not supported!\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"IP-Version differing from IPv4 not supported!\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Interface in FIFO mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Receive Queue Filtering enabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Receive Queue Filtering disabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Rule not added: No free space!\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Rule not added: Unsupported Flow-type!\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"fsl,etsec-ptp\00", align 1
@switch.table.gfar_set_nfc = private unnamed_addr constant [6 x i32] [i32 544, i32 528, i32 544, i32 544, i32 288, i32 272], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gfar_set_features(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %4 = load i64, ptr %3, align 16
  %5 = xor i64 %4, %1
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = and i64 %5, 1099511628160
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 2560
  br label %11

11:                                               ; preds = %20, %9
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #15, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 4, ptr elementtype(i32) %10) #15, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !12
  br label %11

21:                                               ; preds = %15
  store i64 %1, ptr %3, align 16
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  tail call void @stop_gfar(ptr noundef %0) #15
  %27 = tail call i32 @startup_gfar(ptr noundef %0) #15
  br label %29

28:                                               ; preds = %21
  tail call void @gfar_mac_reset(ptr noundef %6) #15
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #15, !srcloc !8
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 4, ptr elementtype(i32) %10) #15, !srcloc !14
  br label %32

32:                                               ; preds = %29, %2
  %33 = phi i32 [ %30, %29 ], [ 0, %2 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_gfar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @startup_gfar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfar_mac_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gfar_gdrvinfo(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gfar_reglen(ptr nocapture noundef readnone %0) #3 {
  ret i32 4096
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gfar_get_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1976
  %5 = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ 0, %3 ], [ %12, %6 ]
  %8 = getelementptr i32, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #15, !srcloc !15
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #15
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !16
  %11 = getelementptr i32, ptr %2, i32 %7
  store i32 %10, ptr %11, align 4
  %12 = add nuw nsw i32 %7, 1
  %13 = icmp eq i32 %12, 1024
  br i1 %13, label %14, label %6

14:                                               ; preds = %6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @gfar_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 2890
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  store i32 32, ptr %3, align 4
  %10 = load i16, ptr %5, align 2
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ 34, %9 ], [ 2, %2 ]
  %13 = phi i16 [ %10, %9 ], [ %6, %2 ]
  %14 = and i16 %13, 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 %12, ptr %3, align 4
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr i8, ptr %0, i32 2888
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  store i32 32, ptr %4, align 4
  %23 = load i16, ptr %18, align 8
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ 34, %22 ], [ 2, %17 ]
  %26 = phi i16 [ %23, %22 ], [ %19, %17 ]
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 %25, ptr %4, align 4
  br label %30

30:                                               ; preds = %29, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_set_wol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 2890
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  br i1 %6, label %9, label %11

9:                                                ; preds = %2
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %14, label %28

11:                                               ; preds = %2
  %12 = and i32 %8, -35
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %8, %11 ], [ 0, %9 ]
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  %18 = trunc i32 %15 to i16
  %19 = and i16 %18, 2
  %20 = select i1 %17, i16 %19, i16 1
  %21 = and i16 %20, %5
  %22 = getelementptr i8, ptr %0, i32 2888
  store i16 0, ptr %22, align 8
  %23 = load ptr, ptr %3, align 64
  %24 = icmp ne i16 %21, 0
  %25 = tail call i32 @device_set_wakeup_enable(ptr noundef %23, i1 noundef zeroext %24) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store i16 %21, ptr %22, align 8
  br label %28

28:                                               ; preds = %27, %14, %11, %9
  %29 = phi i32 [ 0, %27 ], [ -22, %9 ], [ -22, %11 ], [ %25, %14 ]
  ret i32 %29
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @gfar_get_msglevel(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 2732
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @gfar_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 2732
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @gfar_gcoalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #7 {
  %5 = getelementptr i8, ptr %0, i32 1424
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 1468
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 1436
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %15, i32 0, i32 14
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = lshr i32 %19, 21
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %17, i32 0, i32 14
  %24 = load i32, ptr %23, align 64
  %25 = and i32 %24, 65535
  %26 = lshr i32 %24, 21
  %27 = and i32 %26, 255
  %28 = getelementptr i8, ptr %0, i32 1412
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 120
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.phy_device, ptr %31, i32 0, i32 8
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 100
  %35 = select i1 %34, i32 2560, i32 25600
  %36 = icmp eq i32 %33, 1000
  %37 = select i1 %36, i32 512, i32 %35
  %38 = mul nuw nsw i32 %37, %20
  %39 = udiv i32 %38, 1000
  %40 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  store i32 %22, ptr %41, align 4
  %42 = load ptr, ptr %28, align 4
  %43 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 120
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.phy_device, ptr %44, i32 0, i32 8
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 100
  %48 = select i1 %47, i32 2560, i32 25600
  %49 = icmp eq i32 %46, 1000
  %50 = select i1 %49, i32 512, i32 %48
  %51 = mul nuw nsw i32 %50, %25
  %52 = udiv i32 %51, 1000
  %53 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  store i32 %27, ptr %54, align 4
  br label %55

55:                                               ; preds = %13, %9, %4
  %56 = phi i32 [ 0, %13 ], [ -95, %4 ], [ -19, %9 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_scoalesce(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 1424
  %7 = load i32, ptr %6, align 16
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %185, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %185, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 65535
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 65535) #16
  br label %185

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 255
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 255) #16
  br label %185

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 65535
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 65535) #16
  br label %185

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, 255
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %0, i32 2560
  br label %36

35:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 255) #16
  br label %185

36:                                               ; preds = %45, %33
  %37 = load volatile i32, ptr %34, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #15, !srcloc !8
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 4, ptr elementtype(i32) %34) #15, !srcloc !9
  %42 = extractvalue { i32, i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !18
  br label %36

46:                                               ; preds = %40
  %47 = load i32, ptr %15, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %20, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %0, i32 2572
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %110, label %68

56:                                               ; preds = %49, %46
  %57 = getelementptr i8, ptr %0, i32 2572
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %110, label %60

60:                                               ; preds = %60, %56
  %61 = phi i32 [ %65, %60 ], [ 0, %56 ]
  %62 = getelementptr %struct.gfar_private, ptr %5, i32 0, i32 9, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %63, i32 0, i32 13
  store i8 0, ptr %64, align 4
  %65 = add nuw i32 %61, 1
  %66 = load i32, ptr %57, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %60, label %76

68:                                               ; preds = %68, %52
  %69 = phi i32 [ %73, %68 ], [ 0, %52 ]
  %70 = getelementptr %struct.gfar_private, ptr %5, i32 0, i32 9, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %71, i32 0, i32 13
  store i8 1, ptr %72, align 4
  %73 = add nuw i32 %69, 1
  %74 = load i32, ptr %53, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %68, label %76

76:                                               ; preds = %68, %60
  %77 = phi i32 [ %66, %60 ], [ %74, %68 ]
  %78 = getelementptr i8, ptr %0, i32 2572
  %79 = icmp eq i32 %77, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %0, i32 1412
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi i32 [ 0, %80 ], [ %107, %82 ]
  %84 = load i32, ptr %20, align 4
  %85 = shl i32 %84, 21
  %86 = and i32 %85, 534773760
  %87 = load i32, ptr %15, align 4
  %88 = load ptr, ptr %81, align 4
  %89 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 120
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.phy_device, ptr %90, i32 0, i32 8
  %92 = load i32, ptr %91, align 8
  %93 = icmp eq i32 %92, 100
  %94 = select i1 %93, i32 2560, i32 25600
  %95 = icmp eq i32 %92, 1000
  %96 = select i1 %95, i32 512, i32 %94
  %97 = mul i32 %87, 1000
  %98 = add i32 %97, -1
  %99 = add i32 %98, %96
  %100 = udiv i32 %99, %96
  %101 = and i32 %100, 65535
  %102 = or i32 %86, %101
  %103 = or i32 %102, -2147483648
  %104 = getelementptr %struct.gfar_private, ptr %5, i32 0, i32 9, i32 %83
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %105, i32 0, i32 14
  store i32 %103, ptr %106, align 8
  %107 = add nuw i32 %83, 1
  %108 = load i32, ptr %78, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %82, label %110

110:                                              ; preds = %82, %76, %56, %52
  %111 = load i32, ptr %25, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %30, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = getelementptr i8, ptr %0, i32 2568
  %118 = load i32, ptr %117, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %174, label %132

120:                                              ; preds = %113, %110
  %121 = getelementptr i8, ptr %0, i32 2568
  %122 = load i32, ptr %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %174, label %124

124:                                              ; preds = %124, %120
  %125 = phi i32 [ %129, %124 ], [ 0, %120 ]
  %126 = getelementptr %struct.gfar_private, ptr %5, i32 0, i32 8, i32 %125
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %127, i32 0, i32 13
  store i32 0, ptr %128, align 4
  %129 = add nuw i32 %125, 1
  %130 = load i32, ptr %121, align 8
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %124, label %140

132:                                              ; preds = %132, %116
  %133 = phi i32 [ %137, %132 ], [ 0, %116 ]
  %134 = getelementptr %struct.gfar_private, ptr %5, i32 0, i32 8, i32 %133
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %135, i32 0, i32 13
  store i32 1, ptr %136, align 4
  %137 = add nuw i32 %133, 1
  %138 = load i32, ptr %117, align 8
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %132, label %140

140:                                              ; preds = %132, %124
  %141 = phi i32 [ %130, %124 ], [ %138, %132 ]
  %142 = getelementptr i8, ptr %0, i32 2568
  %143 = icmp eq i32 %141, 0
  br i1 %143, label %174, label %144

144:                                              ; preds = %140
  %145 = getelementptr i8, ptr %0, i32 1412
  br label %146

146:                                              ; preds = %146, %144
  %147 = phi i32 [ 0, %144 ], [ %171, %146 ]
  %148 = load i32, ptr %30, align 4
  %149 = shl i32 %148, 21
  %150 = and i32 %149, 534773760
  %151 = load i32, ptr %25, align 4
  %152 = load ptr, ptr %145, align 4
  %153 = getelementptr inbounds %struct.net_device, ptr %152, i32 0, i32 120
  %154 = load ptr, ptr %153, align 8
  %155 = getelementptr inbounds %struct.phy_device, ptr %154, i32 0, i32 8
  %156 = load i32, ptr %155, align 8
  %157 = icmp eq i32 %156, 100
  %158 = select i1 %157, i32 2560, i32 25600
  %159 = icmp eq i32 %156, 1000
  %160 = select i1 %159, i32 512, i32 %158
  %161 = mul i32 %151, 1000
  %162 = add i32 %161, -1
  %163 = add i32 %162, %160
  %164 = udiv i32 %163, %160
  %165 = and i32 %164, 65535
  %166 = or i32 %150, %165
  %167 = or i32 %166, -2147483648
  %168 = getelementptr %struct.gfar_private, ptr %5, i32 0, i32 8, i32 %147
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %169, i32 0, i32 14
  store i32 %167, ptr %170, align 64
  %171 = add nuw i32 %147, 1
  %172 = load i32, ptr %142, align 8
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %146, label %174

174:                                              ; preds = %146, %140, %120, %116
  %175 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %176 = load i32, ptr %175, align 8
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %174
  tail call void @stop_gfar(ptr noundef %0) #15
  %180 = tail call i32 @startup_gfar(ptr noundef %0) #15
  br label %182

181:                                              ; preds = %174
  tail call void @gfar_mac_reset(ptr noundef %5) #15
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i32 [ %180, %179 ], [ 0, %181 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #15, !srcloc !8
  %184 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 4, ptr elementtype(i32) %34) #15, !srcloc !14
  br label %185

185:                                              ; preds = %182, %35, %28, %23, %18, %10, %4
  %186 = phi i32 [ -22, %18 ], [ -22, %23 ], [ -22, %28 ], [ -22, %35 ], [ %183, %182 ], [ -95, %4 ], [ -19, %10 ]
  ret i32 %186
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @gfar_gringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #7 {
  %5 = getelementptr i8, ptr %0, i32 1436
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 1468
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 256, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 2
  store i32 256, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 3
  store i32 256, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 256, ptr %12, align 4
  %13 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %8, i32 0, i32 4
  %14 = load i16, ptr %13, align 16
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %15, ptr %16, align 4
  %17 = load i16, ptr %13, align 16
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 6
  store i32 %18, ptr %19, align 4
  %20 = load i16, ptr %13, align 16
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 7
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %6, i32 0, i32 5
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %25, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_sringparam(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 256
  br i1 %8, label %76, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @llvm.ctpop.i32(i32 %7) #15, !range !19
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #16
  br label %76

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 256
  br i1 %16, label %76, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @llvm.ctpop.i32(i32 %15) #15, !range !19
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %0, i32 2560
  br label %23

22:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #16
  br label %76

23:                                               ; preds = %32, %20
  %24 = load volatile i32, ptr %21, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #15, !srcloc !8
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 4, ptr elementtype(i32) %21) #15, !srcloc !9
  %29 = extractvalue { i32, i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !21
  br label %23

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @stop_gfar(ptr noundef %0) #15
  br label %39

39:                                               ; preds = %38, %33
  %40 = getelementptr i8, ptr %0, i32 2572
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %47, %39
  %44 = getelementptr i8, ptr %0, i32 2568
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %67, label %57

47:                                               ; preds = %47, %39
  %48 = phi i32 [ %54, %47 ], [ 0, %39 ]
  %49 = load i32, ptr %6, align 4
  %50 = trunc i32 %49 to i16
  %51 = getelementptr %struct.gfar_private, ptr %5, i32 0, i32 9, i32 %48
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %52, i32 0, i32 4
  store i16 %50, ptr %53, align 16
  %54 = add nuw i32 %48, 1
  %55 = load i32, ptr %40, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %47, label %43

57:                                               ; preds = %57, %43
  %58 = phi i32 [ %64, %57 ], [ 0, %43 ]
  %59 = load i32, ptr %14, align 4
  %60 = trunc i32 %59 to i16
  %61 = getelementptr %struct.gfar_private, ptr %5, i32 0, i32 8, i32 %58
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %62, i32 0, i32 5
  store i16 %60, ptr %63, align 2
  %64 = add nuw i32 %58, 1
  %65 = load i32, ptr %44, align 8
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %57, label %67

67:                                               ; preds = %57, %43
  %68 = load i32, ptr %34, align 8
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call i32 @startup_gfar(ptr noundef %0) #15
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi i32 [ %72, %71 ], [ 0, %67 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #15, !srcloc !8
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 4, ptr elementtype(i32) %21) #15, !srcloc !14
  br label %76

76:                                               ; preds = %73, %22, %13, %12, %4
  %77 = phi i32 [ %74, %73 ], [ -22, %22 ], [ -22, %12 ], [ -22, %4 ], [ -22, %13 ]
  ret i32 %77
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @gfar_gpauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr i8, ptr %0, i32 2756
  %4 = load i8, ptr %3, align 4
  %5 = lshr i8 %4, 4
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = load i8, ptr %3, align 4
  %10 = lshr i8 %9, 6
  %11 = and i8 %10, 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = load i8, ptr %3, align 4
  %15 = lshr i8 %14, 5
  %16 = and i8 %15, 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_spauseparam(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 1976
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %2
  %9 = tail call zeroext i1 @phy_validate_pause(ptr noundef nonnull %4, ptr noundef %1) #15
  br i1 %9, label %10, label %65

10:                                               ; preds = %8
  %11 = getelementptr i8, ptr %0, i32 2756
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, -97
  store i8 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  tail call void @phy_set_asym_pause(ptr noundef nonnull %4, i1 noundef zeroext %16, i1 noundef zeroext %19) #15
  %20 = load i32, ptr %14, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %10
  %23 = load i8, ptr %11, align 4
  %24 = or i8 %23, 64
  store i8 %24, ptr %11, align 4
  %25 = load i32, ptr %17, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = or i8 %23, 96
  br label %35

29:                                               ; preds = %10
  %30 = load i32, ptr %17, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %11, align 4
  %34 = or i8 %33, 32
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi i8 [ %34, %32 ], [ %28, %27 ]
  store i8 %36, ptr %11, align 4
  br label %37

37:                                               ; preds = %35, %29, %22
  %38 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = load i8, ptr %11, align 4
  %42 = and i8 %41, -17
  %43 = select i1 %40, i8 0, i8 16
  %44 = or i8 %42, %43
  store i8 %44, ptr %11, align 4
  %45 = load i32, ptr %38, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.gfar, ptr %6, i32 0, i32 119
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #15, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !16
  %50 = and i32 %49, -805306369
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = getelementptr i8, ptr %0, i32 2580
  store i32 0, ptr %52, align 4
  %53 = load i8, ptr %11, align 4
  %54 = and i8 %53, 32
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  store i32 1, ptr %52, align 4
  %57 = or i32 %51, 16
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi i32 [ %57, %56 ], [ %51, %47 ]
  %60 = lshr i8 %53, 1
  %61 = and i8 %60, 32
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %64) #15, !srcloc !23
  br label %65

65:                                               ; preds = %58, %37, %8, %2
  %66 = phi i32 [ -19, %2 ], [ -22, %8 ], [ 0, %58 ], [ 0, %37 ]
  ret i32 %66
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @gfar_gstrings(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 1424
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(1824) %2, ptr noundef nonnull align 1 dereferenceable(1824) @stat_gstrings, i32 1824, i1 false)
  br label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(416) %2, ptr noundef nonnull align 1 dereferenceable(416) @stat_gstrings, i32 416, i1 false)
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gfar_fill_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1976
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 2584
  %7 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %6, ptr elementtype(i64) %6) #15, !srcloc !24
  store i64 %7, ptr %2, align 8
  %8 = getelementptr i8, ptr %0, i32 2592
  %9 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %8, ptr elementtype(i64) %8) #15, !srcloc !24
  %10 = getelementptr i64, ptr %2, i32 1
  store i64 %9, ptr %10, align 8
  %11 = getelementptr i8, ptr %0, i32 2600
  %12 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %11, ptr elementtype(i64) %11) #15, !srcloc !24
  %13 = getelementptr i64, ptr %2, i32 2
  store i64 %12, ptr %13, align 8
  %14 = getelementptr i8, ptr %0, i32 2608
  %15 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %14, ptr elementtype(i64) %14) #15, !srcloc !24
  %16 = getelementptr i64, ptr %2, i32 3
  store i64 %15, ptr %16, align 8
  %17 = getelementptr i8, ptr %0, i32 2616
  %18 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %17, ptr elementtype(i64) %17) #15, !srcloc !24
  %19 = getelementptr i64, ptr %2, i32 4
  store i64 %18, ptr %19, align 8
  %20 = getelementptr i8, ptr %0, i32 2624
  %21 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %20, ptr elementtype(i64) %20) #15, !srcloc !24
  %22 = getelementptr i64, ptr %2, i32 5
  store i64 %21, ptr %22, align 8
  %23 = getelementptr i8, ptr %0, i32 2632
  %24 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %23, ptr elementtype(i64) %23) #15, !srcloc !24
  %25 = getelementptr i64, ptr %2, i32 6
  store i64 %24, ptr %25, align 8
  %26 = getelementptr i8, ptr %0, i32 2640
  %27 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %26, ptr elementtype(i64) %26) #15, !srcloc !24
  %28 = getelementptr i64, ptr %2, i32 7
  store i64 %27, ptr %28, align 8
  %29 = getelementptr i8, ptr %0, i32 2648
  %30 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %29, ptr elementtype(i64) %29) #15, !srcloc !24
  %31 = getelementptr i64, ptr %2, i32 8
  store i64 %30, ptr %31, align 8
  %32 = getelementptr i8, ptr %0, i32 2656
  %33 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %32, ptr elementtype(i64) %32) #15, !srcloc !24
  %34 = getelementptr i64, ptr %2, i32 9
  store i64 %33, ptr %34, align 8
  %35 = getelementptr i8, ptr %0, i32 2664
  %36 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %35, ptr elementtype(i64) %35) #15, !srcloc !24
  %37 = getelementptr i64, ptr %2, i32 10
  store i64 %36, ptr %37, align 8
  %38 = getelementptr i8, ptr %0, i32 2672
  %39 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %38, ptr elementtype(i64) %38) #15, !srcloc !24
  %40 = getelementptr i64, ptr %2, i32 11
  store i64 %39, ptr %40, align 8
  %41 = getelementptr i8, ptr %0, i32 2680
  %42 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %41, ptr elementtype(i64) %41) #15, !srcloc !24
  %43 = getelementptr i64, ptr %2, i32 12
  store i64 %42, ptr %43, align 8
  %44 = getelementptr i8, ptr %0, i32 1424
  %45 = load i32, ptr %44, align 16
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 161
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi ptr [ %58, %50 ], [ %49, %48 ]
  %52 = phi i32 [ %57, %50 ], [ 13, %48 ]
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #15, !srcloc !15
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #15
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !16
  %55 = zext i32 %54 to i64
  %56 = getelementptr i64, ptr %2, i32 %52
  store i64 %55, ptr %56, align 8
  %57 = add nuw nsw i32 %52, 1
  %58 = getelementptr i32, ptr %51, i32 1
  %59 = icmp eq i32 %57, 57
  br i1 %59, label %60, label %50

60:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @gfar_sset_count(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 1424
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 13, i32 57
  br label %10

10:                                               ; preds = %4, %2
  %11 = phi i32 [ %9, %4 ], [ -95, %2 ]
  ret i32 %11
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_get_nfc(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = load i32, ptr %1, align 8
  switch i32 %4, label %72 [
    i32 45, label %5
    i32 46, label %10
    i32 47, label %14
    i32 48, label %50
  ]

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 2572
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 %8, ptr %9, align 8
  br label %72

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 2796
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  store i32 %12, ptr %13, align 8
  br label %72

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %0, i32 2788
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  br label %17

17:                                               ; preds = %21, %14
  %18 = phi ptr [ %15, %14 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %15
  br i1 %20, label %72, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 -8
  %23 = load i32, ptr %22, align 8
  %24 = load i32, ptr %16, align 8
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %17

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %19, i32 -168
  %28 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %28, ptr noundef align 8 dereferenceable(168) %27, i32 168, i1 false) #15
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi i32 [ 0, %26 ], [ %35, %30 ]
  %32 = getelementptr [52 x i8], ptr %29, i32 0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = xor i8 %33, -1
  store i8 %34, ptr %32, align 1
  %35 = add nuw nsw i32 %31, 1
  %36 = icmp eq i32 %35, 52
  br i1 %36, label %37, label %30

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 2
  %39 = load i16, ptr %38, align 8
  %40 = xor i16 %39, -1
  store i16 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 3
  %42 = load i16, ptr %41, align 2
  %43 = xor i16 %42, -1
  store i16 %43, ptr %41, align 2
  %44 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, -1
  store i32 %46, ptr %44, align 4
  %47 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 4, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = xor i32 %48, -1
  store i32 %49, ptr %47, align 4
  br label %72

50:                                               ; preds = %3
  %51 = getelementptr i8, ptr %0, i32 2788
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  br label %56

56:                                               ; preds = %61, %54
  %57 = phi ptr [ %52, %54 ], [ %66, %61 ]
  %58 = phi i32 [ 0, %54 ], [ %65, %61 ]
  %59 = load i32, ptr %55, align 8
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %57, i32 -8
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr i32, ptr %2, i32 %58
  store i32 %63, ptr %64, align 4
  %65 = add i32 %58, 1
  %66 = load ptr, ptr %57, align 4
  %67 = icmp eq ptr %66, %51
  br i1 %67, label %68, label %56

68:                                               ; preds = %61, %50
  %69 = phi i32 [ 0, %50 ], [ %65, %61 ]
  %70 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 255, ptr %70, align 8
  %71 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  store i32 %69, ptr %71, align 8
  br label %72

72:                                               ; preds = %68, %56, %37, %17, %10, %5, %3
  %73 = phi i32 [ 0, %10 ], [ 0, %5 ], [ -22, %3 ], [ 0, %37 ], [ 0, %68 ], [ -22, %17 ], [ -90, %56 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_set_nfc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 2560
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %408

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 2800
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = load i32, ptr %1, align 8
  switch i32 %10, label %406 [
    i32 42, label %11
    i32 50, label %248
    i32 49, label %382
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 1024) #17
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 1024) #17
  %20 = icmp ne ptr %17, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %246

23:                                               ; preds = %11
  %24 = add i32 %15, -1
  %25 = icmp ult i32 %24, 6
  br i1 %25, label %26, label %242

26:                                               ; preds = %23
  %27 = trunc i32 %24 to i8
  %28 = lshr i8 51, %27
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %242, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds [6 x i32], ptr @switch.table.gfar_set_nfc, i32 0, i32 %24
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %47, %31
  %35 = phi i32 [ 255, %31 ], [ %43, %47 ]
  %36 = phi i32 [ 0, %31 ], [ %48, %47 ]
  %37 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i32, ptr %17, i32 %35
  store i32 %38, ptr %39, align 4
  %40 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %36
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i32, ptr %19, i32 %35
  store i32 %41, ptr %42, align 4
  %43 = add nsw i32 %35, -1
  %44 = icmp eq i32 %41, 641
  %45 = icmp eq i32 %38, %33
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = add nuw nsw i32 %36, 1
  %49 = icmp eq i32 %48, 256
  br i1 %49, label %242, label %34

50:                                               ; preds = %34
  %51 = icmp eq i32 %36, 256
  br i1 %51, label %242, label %52

52:                                               ; preds = %50
  %53 = add nuw i32 %36, 1
  %54 = icmp slt i32 %53, 255
  br i1 %54, label %55, label %80

55:                                               ; preds = %76, %52
  %56 = phi i32 [ %78, %76 ], [ %53, %52 ]
  %57 = phi i32 [ %56, %76 ], [ %36, %52 ]
  %58 = phi i32 [ %77, %76 ], [ %43, %52 ]
  %59 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %56
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 640
  switch i32 %61, label %70 [
    i32 512, label %62
    i32 128, label %76
  ]

62:                                               ; preds = %55
  store i32 131584, ptr %59, align 4
  %63 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %56
  store i32 -1, ptr %63, align 4
  %64 = getelementptr i8, ptr %0, i32 1976
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.gfar, ptr %65, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %67 = tail call i32 @llvm.bswap.i32(i32 %56) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %67) #15, !srcloc !23
  %68 = getelementptr inbounds %struct.gfar, ptr %65, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 131584) #15, !srcloc !23
  %69 = getelementptr inbounds %struct.gfar, ptr %65, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 -1) #15, !srcloc !23
  br label %80

70:                                               ; preds = %55
  %71 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %56
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i32, ptr %17, i32 %58
  store i32 %72, ptr %73, align 4
  %74 = getelementptr i32, ptr %19, i32 %58
  store i32 %60, ptr %74, align 4
  %75 = add i32 %58, -1
  br label %76

76:                                               ; preds = %70, %55
  %77 = phi i32 [ %75, %70 ], [ %58, %55 ]
  %78 = add nuw nsw i32 %56, 1
  %79 = icmp eq i32 %78, 255
  br i1 %79, label %80, label %55

80:                                               ; preds = %76, %62, %52
  %81 = phi i32 [ %58, %62 ], [ %43, %52 ], [ %77, %76 ]
  %82 = phi i32 [ %57, %62 ], [ %36, %52 ], [ 254, %76 ]
  %83 = getelementptr i8, ptr %0, i32 2784
  store i32 %82, ptr %83, align 32
  %84 = and i64 %13, 2
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %110, label %86

86:                                               ; preds = %80
  %87 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %82
  store i32 -1, ptr %87, align 4
  %88 = load i32, ptr %83, align 32
  %89 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %88
  store i32 196835, ptr %89, align 4
  %90 = load i32, ptr %83, align 32
  %91 = getelementptr i8, ptr %0, i32 1976
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.gfar, ptr %92, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %94 = tail call i32 @llvm.bswap.i32(i32 %90) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %94) #15, !srcloc !23
  %95 = getelementptr inbounds %struct.gfar, ptr %92, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 -486538496) #15, !srcloc !23
  %96 = getelementptr inbounds %struct.gfar, ptr %92, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 -1) #15, !srcloc !23
  %97 = load i32, ptr %83, align 32
  %98 = add i32 %97, -1
  store i32 %98, ptr %83, align 32
  %99 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %98
  store i32 -1, ptr %99, align 4
  %100 = load i32, ptr %83, align 32
  %101 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %100
  store i32 196836, ptr %101, align 4
  %102 = load i32, ptr %83, align 32
  %103 = load ptr, ptr %91, align 8
  %104 = getelementptr inbounds %struct.gfar, ptr %103, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %105 = tail call i32 @llvm.bswap.i32(i32 %102) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %105) #15, !srcloc !23
  %106 = getelementptr inbounds %struct.gfar, ptr %103, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 -469761280) #15, !srcloc !23
  %107 = getelementptr inbounds %struct.gfar, ptr %103, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 -1) #15, !srcloc !23
  %108 = load i32, ptr %83, align 32
  %109 = add i32 %108, -1
  store i32 %109, ptr %83, align 32
  br label %110

110:                                              ; preds = %86, %80
  %111 = phi i32 [ %109, %86 ], [ %82, %80 ]
  %112 = and i64 %13, 4
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %0, i32 1976
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.gfar, ptr %116, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %118 = tail call i32 @llvm.bswap.i32(i32 %111) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %118) #15, !srcloc !23
  %119 = getelementptr inbounds %struct.gfar, ptr %116, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 -402652416) #15, !srcloc !23
  %120 = getelementptr inbounds %struct.gfar, ptr %116, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 -1) #15, !srcloc !23
  %121 = load i32, ptr %83, align 32
  %122 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %121
  store i32 -1, ptr %122, align 4
  %123 = load i32, ptr %83, align 32
  %124 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %123
  store i32 196840, ptr %124, align 4
  %125 = load i32, ptr %83, align 32
  %126 = add i32 %125, -1
  store i32 %126, ptr %83, align 32
  br label %127

127:                                              ; preds = %114, %110
  %128 = phi i32 [ %126, %114 ], [ %111, %110 ]
  %129 = and i64 %13, 16
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %127
  %132 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %128
  store i32 -1, ptr %132, align 4
  %133 = load i32, ptr %83, align 32
  %134 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %133
  store i32 196845, ptr %134, align 4
  %135 = load i32, ptr %83, align 32
  %136 = getelementptr i8, ptr %0, i32 1976
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.gfar, ptr %137, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %139 = tail call i32 @llvm.bswap.i32(i32 %135) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %139) #15, !srcloc !23
  %140 = getelementptr inbounds %struct.gfar, ptr %137, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 -318766336) #15, !srcloc !23
  %141 = getelementptr inbounds %struct.gfar, ptr %137, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 -1) #15, !srcloc !23
  %142 = load i32, ptr %83, align 32
  %143 = add i32 %142, -1
  store i32 %143, ptr %83, align 32
  br label %144

144:                                              ; preds = %131, %127
  %145 = phi i32 [ %143, %131 ], [ %128, %127 ]
  %146 = and i64 %13, 32
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %144
  %149 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %145
  store i32 -1, ptr %149, align 4
  %150 = load i32, ptr %83, align 32
  %151 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %150
  store i32 196844, ptr %151, align 4
  %152 = load i32, ptr %83, align 32
  %153 = getelementptr i8, ptr %0, i32 1976
  %154 = load ptr, ptr %153, align 8
  %155 = getelementptr inbounds %struct.gfar, ptr %154, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %156 = tail call i32 @llvm.bswap.i32(i32 %152) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %156) #15, !srcloc !23
  %157 = getelementptr inbounds %struct.gfar, ptr %154, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 -335543552) #15, !srcloc !23
  %158 = getelementptr inbounds %struct.gfar, ptr %154, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 -1) #15, !srcloc !23
  %159 = load i32, ptr %83, align 32
  %160 = add i32 %159, -1
  store i32 %160, ptr %83, align 32
  br label %161

161:                                              ; preds = %148, %144
  %162 = phi i32 [ %160, %148 ], [ %145, %144 ]
  %163 = and i64 %13, 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %161
  %166 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %162
  store i32 -1, ptr %166, align 4
  %167 = load i32, ptr %83, align 32
  %168 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %167
  store i32 196843, ptr %168, align 4
  %169 = load i32, ptr %83, align 32
  %170 = getelementptr i8, ptr %0, i32 1976
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.gfar, ptr %171, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %173 = tail call i32 @llvm.bswap.i32(i32 %169) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %173) #15, !srcloc !23
  %174 = getelementptr inbounds %struct.gfar, ptr %171, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 -352320768) #15, !srcloc !23
  %175 = getelementptr inbounds %struct.gfar, ptr %171, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 -1) #15, !srcloc !23
  %176 = load i32, ptr %83, align 32
  %177 = add i32 %176, -1
  store i32 %177, ptr %83, align 32
  br label %178

178:                                              ; preds = %165, %161
  %179 = phi i32 [ %177, %165 ], [ %162, %161 ]
  %180 = and i64 %13, 64
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %178
  %183 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %179
  store i32 -1, ptr %183, align 4
  %184 = load i32, ptr %83, align 32
  %185 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %184
  store i32 196847, ptr %185, align 4
  %186 = load i32, ptr %83, align 32
  %187 = getelementptr i8, ptr %0, i32 1976
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr inbounds %struct.gfar, ptr %188, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %190 = tail call i32 @llvm.bswap.i32(i32 %186) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %190) #15, !srcloc !23
  %191 = getelementptr inbounds %struct.gfar, ptr %188, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 -285211904) #15, !srcloc !23
  %192 = getelementptr inbounds %struct.gfar, ptr %188, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 -1) #15, !srcloc !23
  %193 = load i32, ptr %83, align 32
  %194 = add i32 %193, -1
  store i32 %194, ptr %83, align 32
  br label %195

195:                                              ; preds = %182, %178
  %196 = phi i32 [ %194, %182 ], [ %179, %178 ]
  %197 = and i64 %13, 128
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %212, label %199

199:                                              ; preds = %195
  %200 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %196
  store i32 -1, ptr %200, align 4
  %201 = load i32, ptr %83, align 32
  %202 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %201
  store i32 196846, ptr %202, align 4
  %203 = load i32, ptr %83, align 32
  %204 = getelementptr i8, ptr %0, i32 1976
  %205 = load ptr, ptr %204, align 8
  %206 = getelementptr inbounds %struct.gfar, ptr %205, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %207 = tail call i32 @llvm.bswap.i32(i32 %203) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %207) #15, !srcloc !23
  %208 = getelementptr inbounds %struct.gfar, ptr %205, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 -301989120) #15, !srcloc !23
  %209 = getelementptr inbounds %struct.gfar, ptr %205, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 -1) #15, !srcloc !23
  %210 = load i32, ptr %83, align 32
  %211 = add i32 %210, -1
  store i32 %211, ptr %83, align 32
  br label %212

212:                                              ; preds = %199, %195
  %213 = phi i32 [ %196, %195 ], [ %211, %199 ]
  %214 = add i32 %81, 1
  %215 = icmp slt i32 %214, 255
  br i1 %215, label %216, label %246

216:                                              ; preds = %212
  %217 = getelementptr i8, ptr %0, i32 1976
  br label %218

218:                                              ; preds = %238, %216
  %219 = phi i32 [ %213, %216 ], [ %239, %238 ]
  %220 = phi i32 [ %214, %216 ], [ %240, %238 ]
  %221 = getelementptr i32, ptr %17, i32 %220
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %219
  store i32 %222, ptr %223, align 4
  %224 = getelementptr i32, ptr %19, i32 %220
  %225 = load i32, ptr %224, align 4
  %226 = load i32, ptr %83, align 32
  %227 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %226
  store i32 %225, ptr %227, align 4
  %228 = load i32, ptr %83, align 32
  %229 = load ptr, ptr %217, align 8
  %230 = getelementptr inbounds %struct.gfar, ptr %229, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %231 = tail call i32 @llvm.bswap.i32(i32 %228) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %231) #15, !srcloc !23
  %232 = getelementptr inbounds %struct.gfar, ptr %229, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %233 = tail call i32 @llvm.bswap.i32(i32 %225) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %233) #15, !srcloc !23
  %234 = getelementptr inbounds %struct.gfar, ptr %229, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %235 = tail call i32 @llvm.bswap.i32(i32 %222) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %235) #15, !srcloc !23
  %236 = load i32, ptr %83, align 32
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %218
  %239 = add i32 %236, -1
  store i32 %239, ptr %83, align 32
  %240 = add i32 %220, 1
  %241 = icmp eq i32 %240, 255
  br i1 %241, label %246, label %218

242:                                              ; preds = %50, %47, %26, %23
  %243 = phi ptr [ @.str.4, %23 ], [ @.str.5, %50 ], [ @.str.4, %26 ], [ @.str.5, %47 ]
  %244 = getelementptr i8, ptr %0, i32 1412
  %245 = load ptr, ptr %244, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %245, ptr noundef nonnull %243) #16
  br label %246

246:                                              ; preds = %242, %238, %218, %212, %11
  %247 = phi i32 [ -22, %11 ], [ 0, %212 ], [ -22, %242 ], [ 0, %238 ], [ 0, %218 ]
  tail call void @kfree(ptr noundef %19) #15
  tail call void @kfree(ptr noundef %17) #15
  br label %406

248:                                              ; preds = %8
  %249 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3
  %250 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 5
  %251 = load i64, ptr %250, align 8
  %252 = icmp eq i64 %251, -1
  br i1 %252, label %258, label %253

253:                                              ; preds = %248
  %254 = getelementptr i8, ptr %0, i32 2572
  %255 = load i32, ptr %254, align 4
  %256 = zext i32 %255 to i64
  %257 = icmp ult i64 %251, %256
  br i1 %257, label %258, label %406

258:                                              ; preds = %253, %248
  %259 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %260 = load i32, ptr %259, align 8
  %261 = icmp ugt i32 %260, 254
  br i1 %261, label %406, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %264 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %263, i32 noundef 3264, i32 noundef 176) #17
  %265 = icmp eq ptr %264, null
  br i1 %265, label %406, label %266

266:                                              ; preds = %262
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(168) %264, ptr noundef align 8 dereferenceable(168) %249, i32 168, i1 false) #15
  %267 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %264, i32 0, i32 3
  br label %268

268:                                              ; preds = %268, %266
  %269 = phi i32 [ 0, %266 ], [ %273, %268 ]
  %270 = getelementptr [52 x i8], ptr %267, i32 0, i32 %269
  %271 = load i8, ptr %270, align 1
  %272 = xor i8 %271, -1
  store i8 %272, ptr %270, align 1
  %273 = add nuw nsw i32 %269, 1
  %274 = icmp eq i32 %273, 52
  br i1 %274, label %275, label %268

275:                                              ; preds = %268
  %276 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %264, i32 0, i32 4, i32 2
  %277 = load i16, ptr %276, align 8
  %278 = xor i16 %277, -1
  store i16 %278, ptr %276, align 8
  %279 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %264, i32 0, i32 4, i32 3
  %280 = load i16, ptr %279, align 2
  %281 = xor i16 %280, -1
  store i16 %281, ptr %279, align 2
  %282 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %264, i32 0, i32 4, i32 4
  %283 = load i32, ptr %282, align 4
  %284 = xor i32 %283, -1
  store i32 %284, ptr %282, align 4
  %285 = getelementptr %struct.ethtool_rx_flow_spec, ptr %264, i32 0, i32 4, i32 4, i32 1
  %286 = load i32, ptr %285, align 8
  %287 = xor i32 %286, -1
  store i32 %287, ptr %285, align 8
  %288 = load i32, ptr %264, align 8
  %289 = icmp sgt i32 %288, -1
  br i1 %289, label %297, label %290

290:                                              ; preds = %275
  %291 = icmp eq i32 %283, 0
  %292 = icmp eq i32 %286, 0
  %293 = select i1 %291, i1 %292, i1 false
  br i1 %293, label %304, label %294

294:                                              ; preds = %290
  %295 = getelementptr i8, ptr %0, i32 1412
  %296 = load ptr, ptr %295, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %296, ptr noundef nonnull @.str.7) #16
  br label %304

297:                                              ; preds = %275
  %298 = icmp eq i32 %288, 13
  br i1 %298, label %299, label %308

299:                                              ; preds = %297
  %300 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %264, i32 0, i32 1
  %301 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %300, i32 0, i32 4
  %302 = load i8, ptr %301, align 1
  %303 = icmp eq i8 %302, 1
  br i1 %303, label %308, label %304

304:                                              ; preds = %299, %294, %290
  %305 = phi ptr [ @.str.8, %294 ], [ @.str.8, %290 ], [ @.str.9, %299 ]
  %306 = getelementptr i8, ptr %0, i32 1412
  %307 = load ptr, ptr %306, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %307, ptr noundef nonnull %305) #16
  br label %308

308:                                              ; preds = %304, %299, %297
  %309 = getelementptr i8, ptr %0, i32 2788
  %310 = load volatile ptr, ptr %309, align 4
  %311 = icmp eq ptr %310, %309
  br i1 %311, label %314, label %312

312:                                              ; preds = %308
  %313 = load i32, ptr %259, align 8
  br label %343

314:                                              ; preds = %308
  %315 = getelementptr i8, ptr %0, i32 1976
  %316 = load ptr, ptr %315, align 8
  %317 = getelementptr inbounds %struct.gfar, ptr %316, i32 0, i32 7
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #15, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !16
  %319 = and i32 %318, 8388608
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %329, label %321

321:                                              ; preds = %314
  %322 = getelementptr i8, ptr %0, i32 1412
  %323 = load ptr, ptr %322, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %323, ptr noundef nonnull @.str.10) #16
  %324 = getelementptr inbounds %struct.gfar, ptr %316, i32 0, i32 68
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %324) #15, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !16
  %326 = icmp ugt i32 %325, -536870913
  %327 = load ptr, ptr %322, align 4
  br i1 %326, label %336, label %328

328:                                              ; preds = %321
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %327, ptr noundef nonnull @.str.12) #16
  br label %380

329:                                              ; preds = %314
  %330 = getelementptr inbounds %struct.gfar, ptr %316, i32 0, i32 68
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %330) #15, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !16
  %332 = icmp ugt i32 %331, -1073741825
  %333 = getelementptr i8, ptr %0, i32 1412
  %334 = load ptr, ptr %333, align 4
  br i1 %332, label %336, label %335

335:                                              ; preds = %329
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %334, ptr noundef nonnull @.str.12) #16
  br label %380

336:                                              ; preds = %329, %321
  %337 = phi ptr [ %327, %321 ], [ %334, %329 ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %337, ptr noundef nonnull @.str.11) #16
  %338 = getelementptr inbounds %struct.gfar, ptr %316, i32 0, i32 78
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 -1010646592) #15, !srcloc !23
  %339 = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %264, i32 0, i32 1
  %340 = load ptr, ptr %309, align 4
  %341 = getelementptr inbounds %struct.list_head, ptr %340, i32 0, i32 1
  store ptr %339, ptr %341, align 4
  store ptr %340, ptr %339, align 8
  %342 = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %264, i32 0, i32 1, i32 1
  store ptr %309, ptr %342, align 4
  store volatile ptr %339, ptr %309, align 4
  br label %366

343:                                              ; preds = %355, %312
  %344 = phi ptr [ %310, %312 ], [ %356, %355 ]
  %345 = getelementptr i8, ptr %344, i32 -8
  %346 = load i32, ptr %345, align 8
  %347 = icmp ugt i32 %346, %313
  br i1 %347, label %348, label %353

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %264, i32 0, i32 1
  %350 = getelementptr inbounds %struct.list_head, ptr %344, i32 0, i32 1
  %351 = load ptr, ptr %350, align 4
  store ptr %349, ptr %350, align 4
  store ptr %344, ptr %349, align 8
  %352 = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %264, i32 0, i32 1, i32 1
  store ptr %351, ptr %352, align 4
  store volatile ptr %349, ptr %351, align 4
  br label %366

353:                                              ; preds = %343
  %354 = icmp eq i32 %346, %313
  br i1 %354, label %358, label %355

355:                                              ; preds = %353
  %356 = load ptr, ptr %344, align 4
  %357 = icmp eq ptr %356, %309
  br i1 %357, label %361, label %343

358:                                              ; preds = %353
  %359 = getelementptr i8, ptr %0, i32 1412
  %360 = load ptr, ptr %359, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %360, ptr noundef nonnull @.str.6, i32 noundef %313) #16
  br label %380

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %264, i32 0, i32 1
  %363 = getelementptr i8, ptr %0, i32 2792
  %364 = load ptr, ptr %363, align 4
  store ptr %362, ptr %363, align 4
  store ptr %309, ptr %362, align 8
  %365 = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %264, i32 0, i32 1, i32 1
  store ptr %364, ptr %365, align 4
  store volatile ptr %362, ptr %364, align 4
  br label %366

366:                                              ; preds = %361, %348, %336
  %367 = getelementptr i8, ptr %0, i32 2796
  %368 = load i32, ptr %367, align 4
  %369 = add i32 %368, 1
  store i32 %369, ptr %367, align 4
  %370 = tail call fastcc i32 @gfar_process_filer_changes(ptr noundef %3) #15
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %406, label %372

372:                                              ; preds = %366
  %373 = load i32, ptr %367, align 4
  %374 = add i32 %373, -1
  store i32 %374, ptr %367, align 4
  %375 = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %264, i32 0, i32 1
  %376 = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %264, i32 0, i32 1, i32 1
  %377 = load ptr, ptr %376, align 4
  %378 = load ptr, ptr %375, align 8
  %379 = getelementptr inbounds %struct.list_head, ptr %378, i32 0, i32 1
  store ptr %377, ptr %379, align 4
  store volatile ptr %378, ptr %377, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %375, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %376, align 4
  br label %380

380:                                              ; preds = %372, %358, %335, %328
  %381 = phi i32 [ %370, %372 ], [ -16, %358 ], [ -95, %328 ], [ -95, %335 ]
  tail call void @kfree(ptr noundef nonnull %264) #15
  br label %406

382:                                              ; preds = %8
  %383 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %384 = load i32, ptr %383, align 8
  %385 = getelementptr i8, ptr %0, i32 2788
  %386 = load volatile ptr, ptr %385, align 4
  %387 = icmp eq ptr %386, %385
  br i1 %387, label %406, label %388

388:                                              ; preds = %393, %382
  %389 = phi ptr [ %394, %393 ], [ %386, %382 ]
  %390 = getelementptr i8, ptr %389, i32 -8
  %391 = load i32, ptr %390, align 8
  %392 = icmp eq i32 %391, %384
  br i1 %392, label %396, label %393

393:                                              ; preds = %388
  %394 = load ptr, ptr %389, align 4
  %395 = icmp eq ptr %394, %385
  br i1 %395, label %406, label %388

396:                                              ; preds = %388
  %397 = getelementptr i8, ptr %389, i32 -168
  %398 = getelementptr inbounds %struct.list_head, ptr %389, i32 0, i32 1
  %399 = load ptr, ptr %398, align 4
  %400 = load ptr, ptr %389, align 4
  %401 = getelementptr inbounds %struct.list_head, ptr %400, i32 0, i32 1
  store ptr %399, ptr %401, align 4
  store volatile ptr %400, ptr %399, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %389, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %398, align 4
  tail call void @kfree(ptr noundef %397) #15
  %402 = getelementptr i8, ptr %0, i32 2796
  %403 = load i32, ptr %402, align 4
  %404 = add i32 %403, -1
  store i32 %404, ptr %402, align 4
  %405 = tail call fastcc i32 @gfar_process_filer_changes(ptr noundef %3) #15
  br label %406

406:                                              ; preds = %396, %393, %382, %380, %366, %262, %258, %253, %246, %8
  %407 = phi i32 [ %247, %246 ], [ -22, %258 ], [ -22, %253 ], [ -22, %8 ], [ %381, %380 ], [ -12, %262 ], [ 0, %366 ], [ -22, %382 ], [ 0, %396 ], [ -22, %393 ]
  tail call void @mutex_unlock(ptr noundef %9) #15
  br label %408

408:                                              ; preds = %406, %2
  %409 = phi i32 [ %407, %406 ], [ -16, %2 ]
  ret i32 %409
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_get_ts_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 2
  store i32 -1, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 1424
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  store i32 24, ptr %9, align 4
  br label %27

10:                                               ; preds = %2
  %11 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %11) #15
  tail call void @of_node_put(ptr noundef nonnull %11) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ptp_qoriq, ptr %18, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %3, align 4
  br label %23

23:                                               ; preds = %20, %16, %13, %10
  %24 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  store i32 69, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 3
  store i32 3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 5
  store i32 3, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @phy_validate_pause(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gfar_process_filer_changes(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4244) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %548, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 38
  br label %7

7:                                                ; preds = %494, %5
  %8 = phi ptr [ %6, %5 ], [ %9, %494 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %502, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -168
  %13 = load i32, ptr %3, align 8
  %14 = load i32, ptr %12, align 8
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %38, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %9, i32 -30
  %18 = load i16, ptr %17, align 2
  switch i16 %18, label %20 [
    i16 -1, label %38
    i16 0, label %19
  ]

19:                                               ; preds = %16
  store i16 -1, ptr %17, align 2
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i16 [ %18, %16 ], [ -1, %19 ]
  %22 = getelementptr i8, ptr %9, i32 -102
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, -241
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #15
  %26 = and i16 %21, -241
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #15
  %28 = lshr i16 %23, 5
  %29 = and i16 %28, 7
  %30 = lshr i16 %21, 5
  %31 = and i16 %30, 7
  %32 = and i16 %21, 16
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %20
  %35 = and i16 %23, 16
  %36 = icmp eq i16 %35, 0
  %37 = select i1 %36, i32 16384, i32 24576
  br label %38

38:                                               ; preds = %34, %20, %16, %11
  %39 = phi i32 [ %37, %34 ], [ 16384, %20 ], [ 0, %16 ], [ 0, %11 ]
  %40 = phi i32 [ 24576, %34 ], [ 16384, %20 ], [ 0, %16 ], [ 0, %11 ]
  %41 = phi i16 [ %25, %34 ], [ %25, %20 ], [ 0, %16 ], [ 0, %11 ]
  %42 = phi i16 [ %27, %34 ], [ %27, %20 ], [ 0, %16 ], [ 0, %11 ]
  %43 = phi i16 [ %29, %34 ], [ %29, %20 ], [ 0, %16 ], [ 0, %11 ]
  %44 = phi i16 [ %31, %34 ], [ %31, %20 ], [ 0, %16 ], [ 0, %11 ]
  %45 = zext i16 %44 to i32
  %46 = zext i16 %43 to i32
  %47 = zext i16 %42 to i32
  %48 = zext i16 %41 to i32
  %49 = and i32 %14, 2147483647
  switch i32 %49, label %499 [
    i32 1, label %50
    i32 2, label %64
    i32 3, label %78
    i32 13, label %100
    i32 18, label %209
  ]

50:                                               ; preds = %38
  %51 = or i32 %39, 544
  %52 = or i32 %40, 544
  %53 = load i32, ptr %3, align 8
  %54 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %53
  store i32 128, ptr %54, align 4
  %55 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %53, i32 1
  store i32 %52, ptr %55, align 8
  %56 = load i32, ptr %3, align 8
  %57 = add i32 %56, 1
  store i32 %57, ptr %3, align 8
  %58 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %57
  store i32 129, ptr %58, align 4
  %59 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %57, i32 1
  store i32 %51, ptr %59, align 8
  %60 = load i32, ptr %3, align 8
  %61 = add i32 %60, 1
  store i32 %61, ptr %3, align 8
  %62 = getelementptr i8, ptr %9, i32 -164
  %63 = getelementptr i8, ptr %9, i32 -92
  tail call fastcc void @gfar_set_basic_ip(ptr noundef %62, ptr noundef %63, ptr noundef %3) #15
  br label %430

64:                                               ; preds = %38
  %65 = or i32 %39, 528
  %66 = or i32 %40, 528
  %67 = load i32, ptr %3, align 8
  %68 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %67
  store i32 128, ptr %68, align 4
  %69 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %67, i32 1
  store i32 %66, ptr %69, align 8
  %70 = load i32, ptr %3, align 8
  %71 = add i32 %70, 1
  store i32 %71, ptr %3, align 8
  %72 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %71
  store i32 129, ptr %72, align 4
  %73 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %71, i32 1
  store i32 %65, ptr %73, align 8
  %74 = load i32, ptr %3, align 8
  %75 = add i32 %74, 1
  store i32 %75, ptr %3, align 8
  %76 = getelementptr i8, ptr %9, i32 -164
  %77 = getelementptr i8, ptr %9, i32 -92
  tail call fastcc void @gfar_set_basic_ip(ptr noundef %76, ptr noundef %77, ptr noundef %3) #15
  br label %430

78:                                               ; preds = %38
  %79 = or i32 %39, 512
  %80 = or i32 %40, 512
  %81 = load i32, ptr %3, align 8
  %82 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %81
  store i32 128, ptr %82, align 4
  %83 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %81, i32 1
  store i32 %80, ptr %83, align 8
  %84 = load i32, ptr %3, align 8
  %85 = add i32 %84, 1
  store i32 %85, ptr %3, align 8
  %86 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %85
  store i32 129, ptr %86, align 4
  %87 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %85, i32 1
  store i32 %79, ptr %87, align 8
  %88 = load i32, ptr %3, align 8
  %89 = add i32 %88, 1
  store i32 %89, ptr %3, align 8
  %90 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %89
  store i32 128, ptr %90, align 4
  %91 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %89, i32 1
  store i32 -1, ptr %91, align 8
  %92 = load i32, ptr %3, align 8
  %93 = add i32 %92, 1
  store i32 %93, ptr %3, align 8
  %94 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %93
  store i32 139, ptr %94, align 4
  %95 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %93, i32 1
  store i32 132, ptr %95, align 8
  %96 = load i32, ptr %3, align 8
  %97 = add i32 %96, 1
  store i32 %97, ptr %3, align 8
  %98 = getelementptr i8, ptr %9, i32 -164
  %99 = getelementptr i8, ptr %9, i32 -92
  tail call fastcc void @gfar_set_basic_ip(ptr noundef %98, ptr noundef %99, ptr noundef %3) #15
  br label %430

100:                                              ; preds = %38
  %101 = or i32 %39, 512
  %102 = or i32 %40, 512
  %103 = load i32, ptr %3, align 8
  %104 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %103
  store i32 128, ptr %104, align 4
  %105 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %103, i32 1
  store i32 %102, ptr %105, align 8
  %106 = load i32, ptr %3, align 8
  %107 = add i32 %106, 1
  store i32 %107, ptr %3, align 8
  %108 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %107
  store i32 129, ptr %108, align 4
  %109 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %107, i32 1
  store i32 %101, ptr %109, align 8
  %110 = load i32, ptr %3, align 8
  %111 = add i32 %110, 1
  store i32 %111, ptr %3, align 8
  %112 = getelementptr i8, ptr %9, i32 -164
  %113 = getelementptr i8, ptr %9, i32 -92
  %114 = load i32, ptr %112, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #15
  %116 = load i32, ptr %113, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #15
  switch i32 %117, label %119 [
    i32 -1, label %129
    i32 0, label %118
  ]

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %100
  %120 = phi i32 [ -1, %118 ], [ %117, %100 ]
  %121 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %111
  store i32 128, ptr %121, align 4
  %122 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %111, i32 1
  store i32 %120, ptr %122, align 8
  %123 = load i32, ptr %3, align 8
  %124 = add i32 %123, 1
  store i32 %124, ptr %3, align 8
  %125 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %124
  store i32 141, ptr %125, align 4
  %126 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %124, i32 1
  store i32 %115, ptr %126, align 8
  %127 = load i32, ptr %3, align 8
  %128 = add i32 %127, 1
  store i32 %128, ptr %3, align 8
  br label %129

129:                                              ; preds = %119, %100
  %130 = phi i32 [ %128, %119 ], [ %111, %100 ]
  %131 = getelementptr i8, ptr %9, i32 -160
  %132 = load i32, ptr %131, align 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #15
  %134 = getelementptr i8, ptr %9, i32 -88
  %135 = load i32, ptr %134, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #15
  switch i32 %136, label %138 [
    i32 -1, label %148
    i32 0, label %137
  ]

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %129
  %139 = phi i32 [ -1, %137 ], [ %136, %129 ]
  %140 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %130
  store i32 128, ptr %140, align 4
  %141 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %130, i32 1
  store i32 %139, ptr %141, align 8
  %142 = load i32, ptr %3, align 8
  %143 = add i32 %142, 1
  store i32 %143, ptr %3, align 8
  %144 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %143
  store i32 140, ptr %144, align 4
  %145 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %143, i32 1
  store i32 %133, ptr %145, align 8
  %146 = load i32, ptr %3, align 8
  %147 = add i32 %146, 1
  store i32 %147, ptr %3, align 8
  br label %148

148:                                              ; preds = %138, %129
  %149 = phi i32 [ %147, %138 ], [ %130, %129 ]
  %150 = getelementptr i8, ptr %9, i32 -80
  %151 = load i8, ptr %150, align 4
  %152 = zext i8 %151 to i32
  %153 = or i32 %152, -256
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %169, label %155

155:                                              ; preds = %148
  %156 = getelementptr i8, ptr %9, i32 -152
  %157 = load i8, ptr %156, align 4
  %158 = zext i8 %157 to i32
  %159 = icmp eq i8 %151, 0
  %160 = select i1 %159, i32 -1, i32 %153
  %161 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %149
  store i32 128, ptr %161, align 4
  %162 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %149, i32 1
  store i32 %160, ptr %162, align 8
  %163 = load i32, ptr %3, align 8
  %164 = add i32 %163, 1
  store i32 %164, ptr %3, align 8
  %165 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %164
  store i32 138, ptr %165, align 4
  %166 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %164, i32 1
  store i32 %158, ptr %166, align 8
  %167 = load i32, ptr %3, align 8
  %168 = add i32 %167, 1
  store i32 %168, ptr %3, align 8
  br label %169

169:                                              ; preds = %155, %148
  %170 = phi i32 [ %168, %155 ], [ %149, %148 ]
  %171 = getelementptr i8, ptr %9, i32 -78
  %172 = load i8, ptr %171, align 2
  %173 = zext i8 %172 to i32
  %174 = or i32 %173, -256
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %190, label %176

176:                                              ; preds = %169
  %177 = getelementptr i8, ptr %9, i32 -150
  %178 = load i8, ptr %177, align 2
  %179 = zext i8 %178 to i32
  %180 = icmp eq i8 %172, 0
  %181 = select i1 %180, i32 -1, i32 %174
  %182 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %170
  store i32 128, ptr %182, align 4
  %183 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %170, i32 1
  store i32 %181, ptr %183, align 8
  %184 = load i32, ptr %3, align 8
  %185 = add i32 %184, 1
  store i32 %185, ptr %3, align 8
  %186 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %185
  store i32 139, ptr %186, align 4
  %187 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %185, i32 1
  store i32 %179, ptr %187, align 8
  %188 = load i32, ptr %3, align 8
  %189 = add i32 %188, 1
  store i32 %189, ptr %3, align 8
  br label %190

190:                                              ; preds = %176, %169
  %191 = phi i32 [ %189, %176 ], [ %170, %169 ]
  %192 = getelementptr i8, ptr %9, i32 -156
  %193 = load i32, ptr %192, align 4
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #15
  %195 = getelementptr i8, ptr %9, i32 -84
  %196 = load i32, ptr %195, align 4
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #15
  switch i32 %197, label %199 [
    i32 -1, label %430
    i32 0, label %198
  ]

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %198, %190
  %200 = phi i32 [ -1, %198 ], [ %197, %190 ]
  %201 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %191
  store i32 128, ptr %201, align 4
  %202 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %191, i32 1
  store i32 %200, ptr %202, align 8
  %203 = load i32, ptr %3, align 8
  %204 = add i32 %203, 1
  store i32 %204, ptr %3, align 8
  %205 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %204
  store i32 130, ptr %205, align 4
  %206 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %204, i32 1
  store i32 %194, ptr %206, align 8
  %207 = load i32, ptr %3, align 8
  %208 = add i32 %207, 1
  store i32 %208, ptr %3, align 8
  br label %430

209:                                              ; preds = %38
  %210 = icmp eq i32 %39, 0
  br i1 %210, label %221, label %211

211:                                              ; preds = %209
  %212 = load i32, ptr %3, align 8
  %213 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %212
  store i32 128, ptr %213, align 4
  %214 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %212, i32 1
  store i32 %40, ptr %214, align 8
  %215 = load i32, ptr %3, align 8
  %216 = add i32 %215, 1
  store i32 %216, ptr %3, align 8
  %217 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %216
  store i32 129, ptr %217, align 4
  %218 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %216, i32 1
  store i32 %39, ptr %218, align 8
  %219 = load i32, ptr %3, align 8
  %220 = add i32 %219, 1
  store i32 %220, ptr %3, align 8
  br label %221

221:                                              ; preds = %211, %209
  %222 = getelementptr i8, ptr %9, i32 -164
  %223 = getelementptr i8, ptr %9, i32 -92
  %224 = getelementptr i8, ptr %9, i32 -86
  %225 = load i16, ptr %224, align 2
  %226 = getelementptr i8, ptr %9, i32 -84
  %227 = load i16, ptr %226, align 2
  %228 = and i16 %227, %225
  %229 = getelementptr i8, ptr %9, i32 -82
  %230 = load i16, ptr %229, align 2
  %231 = and i16 %228, %230
  %232 = icmp eq i16 %231, -1
  br i1 %232, label %307, label %233

233:                                              ; preds = %221
  %234 = load i32, ptr %224, align 4
  %235 = zext i16 %230 to i32
  %236 = or i32 %234, %235
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %251, label %238

238:                                              ; preds = %233
  %239 = lshr i32 %234, 16
  %240 = shl i32 %234, 16
  %241 = and i32 %240, 16711680
  %242 = and i32 %234, 65280
  %243 = or i32 %241, %242
  %244 = and i32 %239, 255
  %245 = or i32 %243, %244
  %246 = lshr i32 %234, 8
  %247 = and i32 %246, 16711680
  %248 = tail call i16 @llvm.bswap.i16(i16 %230) #15
  %249 = zext i16 %248 to i32
  %250 = or i32 %247, %249
  br label %251

251:                                              ; preds = %238, %233
  %252 = phi i32 [ %245, %238 ], [ -1, %233 ]
  %253 = phi i32 [ %250, %238 ], [ -1, %233 ]
  %254 = getelementptr i8, ptr %9, i32 -158
  %255 = load i8, ptr %254, align 1
  %256 = zext i8 %255 to i32
  %257 = shl nuw nsw i32 %256, 16
  %258 = getelementptr i8, ptr %9, i32 -157
  %259 = load i8, ptr %258, align 1
  %260 = zext i8 %259 to i32
  %261 = shl nuw nsw i32 %260, 8
  %262 = or i32 %261, %257
  %263 = getelementptr i8, ptr %9, i32 -156
  %264 = load i8, ptr %263, align 1
  %265 = zext i8 %264 to i32
  %266 = or i32 %262, %265
  %267 = or i32 %266, %252
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %280, label %269

269:                                              ; preds = %251
  %270 = or i32 %252, -16777216
  %271 = load i32, ptr %3, align 8
  %272 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %271
  store i32 128, ptr %272, align 4
  %273 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %271, i32 1
  store i32 %270, ptr %273, align 8
  %274 = load i32, ptr %3, align 8
  %275 = add i32 %274, 1
  store i32 %275, ptr %3, align 8
  %276 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %275
  store i32 133, ptr %276, align 4
  %277 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %275, i32 1
  store i32 %266, ptr %277, align 8
  %278 = load i32, ptr %3, align 8
  %279 = add i32 %278, 1
  store i32 %279, ptr %3, align 8
  br label %280

280:                                              ; preds = %269, %251
  %281 = getelementptr i8, ptr %9, i32 -155
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i32
  %284 = shl nuw nsw i32 %283, 16
  %285 = getelementptr i8, ptr %9, i32 -154
  %286 = load i8, ptr %285, align 1
  %287 = zext i8 %286 to i32
  %288 = shl nuw nsw i32 %287, 8
  %289 = or i32 %288, %284
  %290 = getelementptr i8, ptr %9, i32 -153
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i32
  %293 = or i32 %289, %292
  %294 = or i32 %293, %253
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %307, label %296

296:                                              ; preds = %280
  %297 = or i32 %253, -16777216
  %298 = load i32, ptr %3, align 8
  %299 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %298
  store i32 128, ptr %299, align 4
  %300 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %298, i32 1
  store i32 %297, ptr %300, align 8
  %301 = load i32, ptr %3, align 8
  %302 = add i32 %301, 1
  store i32 %302, ptr %3, align 8
  %303 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %302
  store i32 134, ptr %303, align 4
  %304 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %302, i32 1
  store i32 %293, ptr %304, align 8
  %305 = load i32, ptr %3, align 8
  %306 = add i32 %305, 1
  store i32 %306, ptr %3, align 8
  br label %307

307:                                              ; preds = %296, %280, %221
  %308 = load i16, ptr %223, align 2
  %309 = getelementptr i8, ptr %9, i32 -90
  %310 = load i16, ptr %309, align 2
  %311 = and i16 %310, %308
  %312 = getelementptr i8, ptr %9, i32 -88
  %313 = load i16, ptr %312, align 2
  %314 = and i16 %311, %313
  %315 = icmp eq i16 %314, -1
  br i1 %315, label %407, label %316

316:                                              ; preds = %307
  %317 = load i16, ptr %222, align 2
  %318 = getelementptr i8, ptr %9, i32 -162
  %319 = load i16, ptr %318, align 2
  %320 = and i16 %319, %317
  %321 = getelementptr i8, ptr %9, i32 -160
  %322 = load i16, ptr %321, align 2
  %323 = and i16 %320, %322
  %324 = icmp eq i16 %323, -1
  %325 = and i16 %317, -256
  %326 = lshr i16 %319, 8
  %327 = trunc i16 %326 to i8
  %328 = trunc i16 %322 to i8
  %329 = lshr i16 %322, 8
  %330 = trunc i16 %329 to i8
  %331 = load i32, ptr %223, align 4
  %332 = zext i16 %313 to i32
  %333 = or i32 %331, %332
  %334 = icmp eq i32 %333, 0
  br i1 %324, label %335, label %336

335:                                              ; preds = %316
  br i1 %334, label %394, label %337

336:                                              ; preds = %316
  br i1 %334, label %350, label %337

337:                                              ; preds = %336, %335
  %338 = lshr i32 %331, 16
  %339 = shl i32 %331, 16
  %340 = and i32 %339, 16711680
  %341 = and i32 %331, 65280
  %342 = or i32 %340, %341
  %343 = and i32 %338, 255
  %344 = or i32 %342, %343
  %345 = lshr i32 %331, 8
  %346 = and i32 %345, 16711680
  %347 = tail call i16 @llvm.bswap.i16(i16 %313) #15
  %348 = zext i16 %347 to i32
  %349 = or i32 %346, %348
  br label %350

350:                                              ; preds = %337, %336
  %351 = phi i32 [ %344, %337 ], [ -1, %336 ]
  %352 = phi i32 [ %349, %337 ], [ -1, %336 ]
  %353 = and i16 %317, 255
  %354 = zext i16 %353 to i32
  %355 = shl nuw nsw i32 %354, 16
  %356 = zext i16 %325 to i32
  %357 = or i32 %355, %356
  %358 = and i16 %319, 255
  %359 = zext i16 %358 to i32
  %360 = or i32 %357, %359
  %361 = or i32 %351, %360
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %379, label %363

363:                                              ; preds = %350
  %364 = or i32 %351, -16777216
  %365 = load i32, ptr %3, align 8
  %366 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %365
  store i32 128, ptr %366, align 4
  %367 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %365, i32 1
  store i32 %364, ptr %367, align 8
  %368 = load i32, ptr %3, align 8
  %369 = add i32 %368, 1
  store i32 %369, ptr %3, align 8
  %370 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %369
  store i32 131, ptr %370, align 4
  %371 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %369, i32 1
  store i32 %360, ptr %371, align 8
  %372 = load i32, ptr %3, align 8
  %373 = add i32 %372, 1
  store i32 %373, ptr %3, align 8
  %374 = getelementptr i8, ptr %9, i32 -161
  %375 = load i8, ptr %374, align 1
  %376 = load i8, ptr %321, align 1
  %377 = getelementptr i8, ptr %9, i32 -159
  %378 = load i8, ptr %377, align 1
  br label %379

379:                                              ; preds = %363, %350
  %380 = phi i8 [ %330, %350 ], [ %378, %363 ]
  %381 = phi i8 [ %328, %350 ], [ %376, %363 ]
  %382 = phi i8 [ %327, %350 ], [ %375, %363 ]
  %383 = zext i8 %382 to i32
  %384 = shl nuw nsw i32 %383, 16
  %385 = zext i8 %381 to i32
  %386 = shl nuw nsw i32 %385, 8
  %387 = or i32 %384, %386
  %388 = zext i8 %380 to i32
  %389 = or i32 %387, %388
  %390 = or i32 %389, %352
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %407, label %392

392:                                              ; preds = %379
  %393 = or i32 %352, -16777216
  br label %394

394:                                              ; preds = %392, %335
  %395 = phi i32 [ %393, %392 ], [ 32768, %335 ]
  %396 = phi i32 [ 132, %392 ], [ 129, %335 ]
  %397 = phi i32 [ %389, %392 ], [ 32768, %335 ]
  %398 = load i32, ptr %3, align 8
  %399 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %398
  store i32 128, ptr %399, align 4
  %400 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %398, i32 1
  store i32 %395, ptr %400, align 8
  %401 = load i32, ptr %3, align 8
  %402 = add i32 %401, 1
  store i32 %402, ptr %3, align 8
  %403 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %402
  store i32 %396, ptr %403, align 4
  %404 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %402, i32 1
  store i32 %397, ptr %404, align 8
  %405 = load i32, ptr %3, align 8
  %406 = add i32 %405, 1
  store i32 %406, ptr %3, align 8
  br label %407

407:                                              ; preds = %394, %379, %307
  %408 = getelementptr i8, ptr %9, i32 -80
  %409 = load i16, ptr %408, align 1
  %410 = tail call i16 @llvm.bswap.i16(i16 %409) #15
  %411 = zext i16 %410 to i32
  %412 = or i32 %411, -65536
  %413 = icmp eq i32 %412, -1
  br i1 %413, label %430, label %414

414:                                              ; preds = %407
  %415 = getelementptr i8, ptr %9, i32 -152
  %416 = load i16, ptr %415, align 1
  %417 = tail call i16 @llvm.bswap.i16(i16 %416) #15
  %418 = zext i16 %417 to i32
  %419 = icmp eq i16 %409, 0
  %420 = select i1 %419, i32 -1, i32 %412
  %421 = load i32, ptr %3, align 8
  %422 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %421
  store i32 128, ptr %422, align 4
  %423 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %421, i32 1
  store i32 %420, ptr %423, align 8
  %424 = load i32, ptr %3, align 8
  %425 = add i32 %424, 1
  store i32 %425, ptr %3, align 8
  %426 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %425
  store i32 135, ptr %426, align 4
  %427 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %425, i32 1
  store i32 %418, ptr %427, align 8
  %428 = load i32, ptr %3, align 8
  %429 = add i32 %428, 1
  store i32 %429, ptr %3, align 8
  br label %430

430:                                              ; preds = %414, %407, %199, %190, %78, %64, %50
  %431 = icmp eq i32 %39, 0
  br i1 %431, label %460, label %432

432:                                              ; preds = %430
  %433 = or i16 %42, %41
  %434 = icmp eq i16 %433, 0
  br i1 %434, label %446, label %435

435:                                              ; preds = %432
  %436 = or i32 %47, -4096
  %437 = load i32, ptr %3, align 8
  %438 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %437
  store i32 128, ptr %438, align 4
  %439 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %437, i32 1
  store i32 %436, ptr %439, align 8
  %440 = load i32, ptr %3, align 8
  %441 = add i32 %440, 1
  store i32 %441, ptr %3, align 8
  %442 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %441
  store i32 136, ptr %442, align 4
  %443 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %441, i32 1
  store i32 %48, ptr %443, align 8
  %444 = load i32, ptr %3, align 8
  %445 = add i32 %444, 1
  store i32 %445, ptr %3, align 8
  br label %446

446:                                              ; preds = %435, %432
  %447 = or i16 %44, %43
  %448 = icmp eq i16 %447, 0
  br i1 %448, label %460, label %449

449:                                              ; preds = %446
  %450 = or i32 %45, -8
  %451 = load i32, ptr %3, align 8
  %452 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %451
  store i32 128, ptr %452, align 4
  %453 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %451, i32 1
  store i32 %450, ptr %453, align 8
  %454 = load i32, ptr %3, align 8
  %455 = add i32 %454, 1
  store i32 %455, ptr %3, align 8
  %456 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %455
  store i32 137, ptr %456, align 4
  %457 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %455, i32 1
  store i32 %46, ptr %457, align 8
  %458 = load i32, ptr %3, align 8
  %459 = add i32 %458, 1
  store i32 %459, ptr %3, align 8
  br label %460

460:                                              ; preds = %449, %446, %430
  %461 = load i32, ptr %3, align 8
  %462 = icmp eq i32 %461, %13
  br i1 %462, label %463, label %472

463:                                              ; preds = %460
  %464 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %13
  store i32 128, ptr %464, align 4
  %465 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %13, i32 1
  store i32 -1, ptr %465, align 8
  %466 = load i32, ptr %3, align 8
  %467 = add i32 %466, 1
  store i32 %467, ptr %3, align 8
  %468 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %467
  store i32 32, ptr %468, align 4
  %469 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %467, i32 1
  store i32 0, ptr %469, align 8
  %470 = load i32, ptr %3, align 8
  %471 = add i32 %470, 1
  store i32 %471, ptr %3, align 8
  br label %472

472:                                              ; preds = %463, %460
  %473 = phi i32 [ %471, %463 ], [ %461, %460 ]
  %474 = add i32 %473, -1
  %475 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %474
  %476 = load i32, ptr %475, align 4
  %477 = and i32 %476, -129
  store i32 %477, ptr %475, align 4
  %478 = getelementptr i8, ptr %9, i32 -16
  %479 = load i64, ptr %478, align 8
  %480 = icmp eq i64 %479, -1
  %481 = trunc i64 %479 to i32
  %482 = shl i32 %481, 10
  %483 = select i1 %480, i32 256, i32 %482
  %484 = or i32 %483, %477
  store i32 %484, ptr %475, align 4
  %485 = add i32 %13, 2
  %486 = icmp ugt i32 %473, %485
  br i1 %486, label %487, label %494

487:                                              ; preds = %472
  %488 = add i32 %13, 1
  %489 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %488
  %490 = load i32, ptr %489, align 4
  %491 = or i32 %490, 512
  store i32 %491, ptr %489, align 4
  %492 = load i32, ptr %475, align 4
  %493 = or i32 %492, 512
  store i32 %493, ptr %475, align 4
  br label %494

494:                                              ; preds = %487, %472
  %495 = icmp ugt i32 %473, 509
  br i1 %495, label %496, label %7

496:                                              ; preds = %494
  %497 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 1
  %498 = load ptr, ptr %497, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %498, ptr noundef nonnull @.str.13) #16
  br label %546

499:                                              ; preds = %38
  %500 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 1
  %501 = load ptr, ptr %500, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %501, ptr noundef nonnull @.str.14) #16
  br label %546

502:                                              ; preds = %7
  %503 = load i32, ptr %3, align 8
  %504 = icmp ugt i32 %503, 254
  br i1 %504, label %543, label %505

505:                                              ; preds = %502
  %506 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 11, i32 0, i32 3
  br label %507

507:                                              ; preds = %515, %505
  %508 = phi i32 [ 0, %505 ], [ %523, %515 ]
  %509 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %508
  %510 = load i32, ptr %509, align 4
  %511 = getelementptr %struct.filer_table, ptr %3, i32 0, i32 1, i32 %508, i32 1
  %512 = load i32, ptr %511, align 8
  %513 = or i32 %512, %510
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %525, label %515

515:                                              ; preds = %507
  %516 = load ptr, ptr %506, align 8
  %517 = getelementptr inbounds %struct.gfar, ptr %516, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %518 = tail call i32 @llvm.bswap.i32(i32 %508) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %517, i32 %518) #15, !srcloc !23
  %519 = getelementptr inbounds %struct.gfar, ptr %516, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %520 = tail call i32 @llvm.bswap.i32(i32 %510) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %519, i32 %520) #15, !srcloc !23
  %521 = getelementptr inbounds %struct.gfar, ptr %516, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %522 = tail call i32 @llvm.bswap.i32(i32 %512) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %521, i32 %522) #15, !srcloc !23
  %523 = add nuw nsw i32 %508, 1
  %524 = icmp eq i32 %523, 255
  br i1 %524, label %536, label %507

525:                                              ; preds = %507
  %526 = icmp ult i32 %508, 255
  br i1 %526, label %527, label %536

527:                                              ; preds = %527, %525
  %528 = phi i32 [ %534, %527 ], [ %508, %525 ]
  %529 = load ptr, ptr %506, align 8
  %530 = getelementptr inbounds %struct.gfar, ptr %529, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %531 = tail call i32 @llvm.bswap.i32(i32 %528) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %530, i32 %531) #15, !srcloc !23
  %532 = getelementptr inbounds %struct.gfar, ptr %529, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %532, i32 1610612736) #15, !srcloc !23
  %533 = getelementptr inbounds %struct.gfar, ptr %529, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %533, i32 -1) #15, !srcloc !23
  %534 = add nuw nsw i32 %528, 1
  %535 = icmp eq i32 %534, 255
  br i1 %535, label %536, label %527

536:                                              ; preds = %527, %525, %515
  %537 = phi i32 [ %508, %525 ], [ 255, %527 ], [ 255, %515 ]
  %538 = load ptr, ptr %506, align 8
  %539 = getelementptr inbounds %struct.gfar, ptr %538, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  %540 = tail call i32 @llvm.bswap.i32(i32 %537) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %539, i32 %540) #15, !srcloc !23
  %541 = getelementptr inbounds %struct.gfar, ptr %538, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %541, i32 536870912) #15, !srcloc !23
  %542 = getelementptr inbounds %struct.gfar, ptr %538, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !22
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %542, i32 0) #15, !srcloc !23
  br label %546

543:                                              ; preds = %502
  %544 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 1
  %545 = load ptr, ptr %544, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %545, ptr noundef nonnull @.str.13) #16
  br label %546

546:                                              ; preds = %543, %536, %499, %496
  %547 = phi i32 [ -16, %496 ], [ -1, %499 ], [ -16, %543 ], [ 0, %536 ]
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %548

548:                                              ; preds = %546, %1
  %549 = phi i32 [ %547, %546 ], [ -12, %1 ]
  ret i32 %549
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @gfar_set_basic_ip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #8 {
  %4 = load i32, ptr %0, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = load i32, ptr %1, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  switch i32 %7, label %9 [
    i32 -1, label %20
    i32 0, label %8
  ]

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i32 [ -1, %8 ], [ %7, %3 ]
  %11 = load i32, ptr %2, align 4
  %12 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %11
  store i32 128, ptr %12, align 4
  %13 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %11, i32 1
  store i32 %10, ptr %13, align 4
  %14 = load i32, ptr %2, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %2, align 4
  %16 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %15
  store i32 141, ptr %16, align 4
  %17 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %15, i32 1
  store i32 %5, ptr %17, align 4
  %18 = load i32, ptr %2, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %2, align 4
  br label %20

20:                                               ; preds = %9, %3
  %21 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  switch i32 %26, label %28 [
    i32 -1, label %39
    i32 0, label %27
  ]

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %20
  %29 = phi i32 [ -1, %27 ], [ %26, %20 ]
  %30 = load i32, ptr %2, align 4
  %31 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %30
  store i32 128, ptr %31, align 4
  %32 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %30, i32 1
  store i32 %29, ptr %32, align 4
  %33 = load i32, ptr %2, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %2, align 4
  %35 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %34
  store i32 140, ptr %35, align 4
  %36 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %34, i32 1
  store i32 %23, ptr %36, align 4
  %37 = load i32, ptr %2, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %2, align 4
  br label %39

39:                                               ; preds = %28, %20
  %40 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %1, i32 0, i32 3
  %41 = load i16, ptr %40, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = zext i16 %42 to i32
  %44 = or i32 %43, -65536
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %62, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %0, i32 0, i32 3
  %48 = load i16, ptr %47, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %50 = zext i16 %49 to i32
  %51 = icmp eq i16 %41, 0
  %52 = select i1 %51, i32 -1, i32 %44
  %53 = load i32, ptr %2, align 4
  %54 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %53
  store i32 128, ptr %54, align 4
  %55 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %53, i32 1
  store i32 %52, ptr %55, align 4
  %56 = load i32, ptr %2, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %2, align 4
  %58 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %57
  store i32 142, ptr %58, align 4
  %59 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %57, i32 1
  store i32 %50, ptr %59, align 4
  %60 = load i32, ptr %2, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %2, align 4
  br label %62

62:                                               ; preds = %46, %39
  %63 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %1, i32 0, i32 2
  %64 = load i16, ptr %63, align 4
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %66 = zext i16 %65 to i32
  %67 = or i32 %66, -65536
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %85, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %0, i32 0, i32 2
  %71 = load i16, ptr %70, align 4
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %73 = zext i16 %72 to i32
  %74 = icmp eq i16 %64, 0
  %75 = select i1 %74, i32 -1, i32 %67
  %76 = load i32, ptr %2, align 4
  %77 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %76
  store i32 128, ptr %77, align 4
  %78 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %76, i32 1
  store i32 %75, ptr %78, align 4
  %79 = load i32, ptr %2, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %2, align 4
  %81 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %80
  store i32 143, ptr %81, align 4
  %82 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %80, i32 1
  store i32 %73, ptr %82, align 4
  %83 = load i32, ptr %2, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %2, align 4
  br label %85

85:                                               ; preds = %69, %62
  %86 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %1, i32 0, i32 4
  %87 = load i8, ptr %86, align 4
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, -256
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %106, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %0, i32 0, i32 4
  %93 = load i8, ptr %92, align 4
  %94 = zext i8 %93 to i32
  %95 = icmp eq i8 %87, 0
  %96 = select i1 %95, i32 -1, i32 %89
  %97 = load i32, ptr %2, align 4
  %98 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %97
  store i32 128, ptr %98, align 4
  %99 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %97, i32 1
  store i32 %96, ptr %99, align 4
  %100 = load i32, ptr %2, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %2, align 4
  %102 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %101
  store i32 138, ptr %102, align 4
  %103 = getelementptr %struct.filer_table, ptr %2, i32 0, i32 1, i32 %101, i32 1
  store i32 %94, ptr %103, align 4
  %104 = load i32, ptr %2, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %2, align 4
  br label %106

106:                                              ; preds = %91, %85
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

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
!8 = !{i64 447913, i64 2147937884, i64 2147937910, i64 2147937957, i64 2147937979, i64 2147938007, i64 2147938027}
!9 = !{i64 2147958558, i64 2147958590, i64 2147958619, i64 2147958653, i64 2147958684, i64 2147958707}
!10 = !{i64 2148059874}
!11 = !{i64 2155439135}
!12 = !{i64 2155438977}
!13 = !{i64 2148058839}
!14 = !{i64 2147957017, i64 2147957049, i64 2147957078, i64 2147957112, i64 2147957143, i64 2147957166}
!15 = !{i64 3088253}
!16 = !{i64 2155432645}
!17 = !{i64 2155437393}
!18 = !{i64 2155437235}
!19 = !{i32 0, i32 33}
!20 = !{i64 2155438357}
!21 = !{i64 2155438199}
!22 = !{i64 2155433013}
!23 = !{i64 3087835}
!24 = !{i64 437527, i64 437548}
