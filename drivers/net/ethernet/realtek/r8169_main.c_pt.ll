; ModuleID = '/llk/IR/drivers/net/ethernet/realtek/r8169_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/realtek/r8169_main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.140 = type { ptr, ptr }
%struct.ephy_info = type { i32, i16, i16 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.141, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.anon.141 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.rtl_mac_info = type { i16, i16, i32 }
%struct.rtl_coalesce_info = type { i32, [4 x i32] }
%struct.rtl8169_private = type { ptr, ptr, ptr, ptr, %struct.napi_struct, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, [256 x ptr], [256 x %struct.ring_info], i16, i32, i32, ptr, %struct.anon.135, i8, i32, ptr, %struct.rtl8169_tc_offsets, i32, i32, ptr, ptr, i32 }
%struct.ring_info = type { ptr, i32 }
%struct.anon.135 = type { [1 x i32], %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.rtl8169_tc_offsets = type { i8, i64, i32, i16, i16 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.117, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.117 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.134 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.TxDesc = type { i32, i32, i64 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.RxDesc = type { i32, i32, i64 }
%struct.rtl_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], %struct.rtl_fw_phy_action }
%struct.rtl_fw_phy_action = type { ptr, i32 }
%struct.rtl8169_counters = type { i64, i64, i64, i32, i16, i16, i32, i32, i64, i64, i32, i16, i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.vlan_ethhdr = type { %union.anon.142, i16, i16, i16 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { [6 x i8], [6 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.1, %union.anon.115, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.115 = type { %struct.atomic_t }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author463 = internal constant [71 x i8] c"r8169.author=Realtek and the Linux r8169 crew <netdev@vger.kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description464 = internal constant [59 x i8] c"r8169.description=RealTek RTL-8169 Gigabit Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep465 = internal constant [27 x i8] c"r8169.softdep=pre: realtek\00", section ".modinfo", align 1
@__UNIQUE_ID_file466 = internal constant [46 x i8] c"r8169.file=drivers/net/ethernet/realtek/r8169\00", section ".modinfo", align 1
@__UNIQUE_ID_license467 = internal constant [18 x i8] c"r8169.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware468 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168d-1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware469 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168d-2.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware470 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168e-1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware471 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168e-2.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware472 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168e-3.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware473 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8105e-1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware474 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168f-1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware475 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168f-2.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware476 = internal constant [36 x i8] c"r8169.firmware=rtl_nic/rtl8402-1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware477 = internal constant [36 x i8] c"r8169.firmware=rtl_nic/rtl8411-1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware478 = internal constant [36 x i8] c"r8169.firmware=rtl_nic/rtl8411-2.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware479 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8106e-1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware480 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8106e-2.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware481 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168g-2.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware482 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168g-3.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware483 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168h-1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware484 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8168h-2.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware485 = internal constant [38 x i8] c"r8169.firmware=rtl_nic/rtl8168fp-3.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware486 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8107e-1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware487 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8107e-2.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware488 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8125a-3.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware489 = internal constant [37 x i8] c"r8169.firmware=rtl_nic/rtl8125b-2.fw\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"%s failed: %d\0A\00", align 1
@__func__.r8169_apply_firmware = private unnamed_addr constant [21 x i8] c"r8169_apply_firmware\00", align 1
@__initcall__kmod_r8169__543_5468_rtl8169_pci_driver_init6 = internal global ptr @rtl8169_pci_driver_init, section ".initcall6.init", align 4
@rtl8169_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.5, ptr @rtl8169_pci_tbl, ptr @rtl_init_one, ptr @rtl_remove_one, ptr null, ptr null, ptr @rtl_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8169_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_rtl8169_pci_driver_exit = internal global ptr @rtl8169_pci_driver_exit, section ".exitcall.exit", align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s == %d (loop: %d, delay: %lu).\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"rtl_efusear_cond\00", align 1
@rtl_ocp_reg_failure.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"drivers/net/ethernet/realtek/r8169_main.c\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid ocp reg %x!\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"r8169\00", align 1
@rtl8169_pci_tbl = internal constant [20 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 9474, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 9728, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33065, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33078, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4332, i32 33121, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33122, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33127, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33128, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4351, i32 33128, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33129, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 17152, i32 4486, i32 19216, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 17152, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 17154, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4697, i32 49415, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5868, i32 278, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5943, i32 4146, i32 -1, i32 36, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 1, i32 33128, i32 -1, i32 9232, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33061, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 12288, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@rtl8169_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rtl8169_suspend, ptr @rtl8169_resume, ptr @rtl8169_suspend, ptr @rtl8169_resume, ptr @rtl8169_suspend, ptr @rtl8169_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8169_runtime_suspend, ptr @rtl8169_runtime_resume, ptr @rtl8169_runtime_idle }, align 4
@rtl_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @rtl_open, ptr @rtl8169_close, ptr @rtl8169_start_xmit, ptr @rtl8169_features_check, ptr null, ptr null, ptr @rtl_set_rx_mode, ptr @rtl_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @rtl8169_change_mtu, ptr null, ptr @rtl8169_tx_timeout, ptr @rtl8169_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8169_fix_features, ptr @rtl8169_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"enable failure\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Mem-Wr-Inval unavailable\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"no MMIO resource found\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Invalid PCI region size(s), aborting\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"cannot remap MMIO, aborting\0A\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"unknown chip XID %03x, contact r8169 maintainers (see MAINTAINERS file)\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Can't allocate interrupt\0A\00", align 1
@rtl8169_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @rtl8169_get_drvinfo, ptr @rtl8169_get_regs_len, ptr @rtl8169_get_regs, ptr @rtl8169_get_wol, ptr @rtl8169_set_wol, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @rtl_get_coalesce, ptr @rtl_set_coalesce, ptr @rtl8169_get_ringparam, ptr null, ptr null, ptr @rtl8169_get_pauseparam, ptr @rtl8169_set_pauseparam, ptr null, ptr @rtl8169_get_strings, ptr null, ptr @rtl8169_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @rtl8169_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr @rtl8169_get_eee, ptr @rtl8169_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rtl_chip_infos = internal unnamed_addr constant [53 x %struct.anon.140] [%struct.anon.140 { ptr @.str.50, ptr null }, %struct.anon.140 { ptr @.str.51, ptr null }, %struct.anon.140 { ptr @.str.52, ptr null }, %struct.anon.140 { ptr @.str.53, ptr null }, %struct.anon.140 { ptr @.str.53, ptr null }, %struct.anon.140 { ptr @.str.54, ptr null }, %struct.anon.140 { ptr @.str.54, ptr null }, %struct.anon.140 { ptr @.str.55, ptr null }, %struct.anon.140 { ptr @.str.56, ptr null }, %struct.anon.140 { ptr @.str.57, ptr null }, %struct.anon.140 { ptr @.str.57, ptr null }, %struct.anon.140 { ptr @.str.58, ptr null }, %struct.anon.140 { ptr @.str.59, ptr null }, %struct.anon.140 { ptr @.str.56, ptr null }, %struct.anon.140 { ptr @.str.57, ptr null }, %struct.anon.140 { ptr @.str.60, ptr null }, %struct.anon.140 { ptr @.str.61, ptr null }, %struct.anon.140 { ptr @.str.61, ptr null }, %struct.anon.140 { ptr @.str.61, ptr null }, %struct.anon.140 { ptr @.str.61, ptr null }, %struct.anon.140 { ptr @.str.60, ptr null }, %struct.anon.140 { ptr @.str.60, ptr null }, %struct.anon.140 { ptr @.str.62, ptr @.str.63 }, %struct.anon.140 { ptr @.str.62, ptr @.str.64 }, %struct.anon.140 { ptr @.str.65, ptr null }, %struct.anon.140 { ptr @.str.66, ptr @.str.67 }, %struct.anon.140 { ptr @.str.66, ptr @.str.67 }, %struct.anon.140 { ptr @.str.65, ptr null }, %struct.anon.140 { ptr @.str.68, ptr @.str.69 }, %struct.anon.140 { ptr @.str.68, ptr @.str.70 }, %struct.anon.140 { ptr @.str.71, ptr @.str.72 }, %struct.anon.140 { ptr @.str.73, ptr @.str.74 }, %struct.anon.140 { ptr @.str.73, ptr @.str.75 }, %struct.anon.140 { ptr @.str.76, ptr @.str.77 }, %struct.anon.140 { ptr @.str.78, ptr @.str.79 }, %struct.anon.140 { ptr @.str.80, ptr @.str.81 }, %struct.anon.140 { ptr @.str.82, ptr @.str.83 }, %struct.anon.140 { ptr @.str.82, ptr null }, %struct.anon.140 { ptr @.str.84, ptr @.str.85 }, %struct.anon.140 { ptr @.str.86, ptr @.str.87 }, %struct.anon.140 { ptr @.str.88, ptr @.str.89 }, %struct.anon.140 { ptr @.str.90, ptr @.str.91 }, %struct.anon.140 { ptr @.str.90, ptr @.str.92 }, %struct.anon.140 { ptr @.str.93, ptr @.str.94 }, %struct.anon.140 { ptr @.str.93, ptr @.str.95 }, %struct.anon.140 { ptr @.str.96, ptr null }, %struct.anon.140 { ptr @.str.96, ptr null }, %struct.anon.140 { ptr @.str.96, ptr null }, %struct.anon.140 { ptr @.str.97, ptr @.str.98 }, %struct.anon.140 { ptr @.str.97, ptr null }, %struct.anon.140 { ptr @.str.99, ptr null }, %struct.anon.140 { ptr @.str.99, ptr @.str.100 }, %struct.anon.140 { ptr @.str.101, ptr @.str.102 }], align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"%s, %pM, XID %03x, IRQ %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"jumbo features [frames: %d bytes, tx checksumming: %s]\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"ko\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"DASH enabled\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Failed to map RX DMA!\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"rtl_eriar_cond\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"addr: 0x%x, mask: 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"rtl_ocp_gphy_cond\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"rtl_phyar_cond\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"PCI error (cmd = 0x%04x, status_errs = 0x%04x)\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"rtl_npq_cond\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"rtl_txcfg_empty_cond\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"rtl_rxtx_empty_cond\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"rtl_rxtx_empty_cond_2\00", align 1
@rtl_hw_config.hw_configs = internal unnamed_addr constant [53 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl_hw_start_8102e_1, ptr @rtl_hw_start_8102e_3, ptr @rtl_hw_start_8102e_2, ptr null, ptr @rtl_hw_start_8168b, ptr @rtl_hw_start_8168b, ptr null, ptr @rtl_hw_start_8401, ptr null, ptr @rtl_hw_start_8168b, ptr @rtl_hw_start_8168cp_1, ptr @rtl_hw_start_8168c_1, ptr @rtl_hw_start_8168c_2, ptr @rtl_hw_start_8168c_2, ptr @rtl_hw_start_8168c_4, ptr @rtl_hw_start_8168cp_2, ptr @rtl_hw_start_8168cp_3, ptr @rtl_hw_start_8168d, ptr @rtl_hw_start_8168d, ptr @rtl_hw_start_8168d_4, ptr @rtl_hw_start_8105e_1, ptr @rtl_hw_start_8105e_2, ptr @rtl_hw_start_8168d, ptr @rtl_hw_start_8168e_1, ptr @rtl_hw_start_8168e_1, ptr @rtl_hw_start_8168e_2, ptr @rtl_hw_start_8168f_1, ptr @rtl_hw_start_8168f_1, ptr @rtl_hw_start_8402, ptr @rtl_hw_start_8411, ptr @rtl_hw_start_8106, ptr @rtl_hw_start_8168g_1, ptr @rtl_hw_start_8168g_1, ptr @rtl_hw_start_8168g_2, ptr @rtl_hw_start_8168g_2, ptr @rtl_hw_start_8411_2, ptr @rtl_hw_start_8168h_1, ptr @rtl_hw_start_8168h_1, ptr @rtl_hw_start_8168h_1, ptr @rtl_hw_start_8168h_1, ptr @rtl_hw_start_8168ep_1, ptr @rtl_hw_start_8168ep_2, ptr @rtl_hw_start_8168ep_3, ptr @rtl_hw_start_8117, ptr @rtl_hw_start_8117, ptr @rtl_hw_start_8125a_1, ptr @rtl_hw_start_8125a_2, ptr @rtl_hw_start_8125b], align 4
@rtl_hw_start_8102e_1.e_info_8102e_1 = internal constant [8 x %struct.ephy_info] [%struct.ephy_info { i32 1, i16 0, i16 28261 }, %struct.ephy_info { i32 2, i16 0, i16 2335 }, %struct.ephy_info { i32 3, i16 0, i16 -15623 }, %struct.ephy_info { i32 6, i16 0, i16 -20555 }, %struct.ephy_info { i32 7, i16 0, i16 3584 }, %struct.ephy_info { i32 25, i16 0, i16 -4992 }, %struct.ephy_info { i32 1, i16 0, i16 11877 }, %struct.ephy_info { i32 1, i16 0, i16 28261 }], align 4
@rtl_set_aspm_entry_latency.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\015\00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"No native access to PCI extended config space, falling back to CSI\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"rtl_csiar_cond\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"rtl_ephyar_cond\00", align 1
@rtl_hw_start_8401.e_info_8401 = internal constant [4 x %struct.ephy_info] [%struct.ephy_info { i32 1, i16 -1, i16 28645 }, %struct.ephy_info { i32 3, i16 -1, i16 1433 }, %struct.ephy_info { i32 6, i16 -1, i16 -20699 }, %struct.ephy_info { i32 7, i16 -1, i16 -29080 }], align 4
@rtl_hw_start_8168cp_1.e_info_8168cp = internal constant [5 x %struct.ephy_info] [%struct.ephy_info { i32 1, i16 0, i16 1 }, %struct.ephy_info { i32 2, i16 2048, i16 4096 }, %struct.ephy_info { i32 3, i16 0, i16 66 }, %struct.ephy_info { i32 6, i16 128, i16 0 }, %struct.ephy_info { i32 7, i16 0, i16 8192 }], align 4
@rtl_hw_start_8168c_1.e_info_8168c_1 = internal constant [3 x %struct.ephy_info] [%struct.ephy_info { i32 2, i16 2048, i16 4096 }, %struct.ephy_info { i32 3, i16 0, i16 2 }, %struct.ephy_info { i32 6, i16 128, i16 0 }], align 4
@rtl_hw_start_8168c_2.e_info_8168c_2 = internal constant [2 x %struct.ephy_info] [%struct.ephy_info { i32 1, i16 0, i16 1 }, %struct.ephy_info { i32 3, i16 1024, i16 32 }], align 4
@rtl_hw_start_8168d_4.e_info_8168d_4 = internal constant [4 x %struct.ephy_info] [%struct.ephy_info { i32 11, i16 0, i16 72 }, %struct.ephy_info { i32 25, i16 32, i16 80 }, %struct.ephy_info { i32 12, i16 256, i16 32 }, %struct.ephy_info { i32 16, i16 4, i16 0 }], align 4
@rtl_hw_start_8105e_1.e_info_8105e_1 = internal constant [8 x %struct.ephy_info] [%struct.ephy_info { i32 7, i16 0, i16 16384 }, %struct.ephy_info { i32 25, i16 0, i16 512 }, %struct.ephy_info { i32 25, i16 0, i16 32 }, %struct.ephy_info { i32 30, i16 0, i16 8192 }, %struct.ephy_info { i32 3, i16 0, i16 1 }, %struct.ephy_info { i32 25, i16 0, i16 256 }, %struct.ephy_info { i32 25, i16 0, i16 4 }, %struct.ephy_info { i32 10, i16 0, i16 32 }], align 4
@rtl_hw_start_8168e_1.e_info_8168e_1 = internal constant [13 x %struct.ephy_info] [%struct.ephy_info { i32 0, i16 512, i16 256 }, %struct.ephy_info { i32 0, i16 0, i16 4 }, %struct.ephy_info { i32 6, i16 2, i16 1 }, %struct.ephy_info { i32 6, i16 0, i16 48 }, %struct.ephy_info { i32 7, i16 0, i16 8192 }, %struct.ephy_info { i32 0, i16 0, i16 32 }, %struct.ephy_info { i32 3, i16 22528, i16 8192 }, %struct.ephy_info { i32 3, i16 0, i16 1 }, %struct.ephy_info { i32 1, i16 2048, i16 4096 }, %struct.ephy_info { i32 7, i16 0, i16 16384 }, %struct.ephy_info { i32 30, i16 0, i16 8192 }, %struct.ephy_info { i32 25, i16 -1, i16 -404 }, %struct.ephy_info { i32 10, i16 0, i16 64 }], align 4
@rtl_hw_start_8168e_2.e_info_8168e_2 = internal constant [4 x %struct.ephy_info] [%struct.ephy_info { i32 9, i16 0, i16 128 }, %struct.ephy_info { i32 25, i16 0, i16 548 }, %struct.ephy_info { i32 0, i16 0, i16 4 }, %struct.ephy_info { i32 12, i16 15856, i16 512 }], align 4
@rtl_hw_start_8168f_1.e_info_8168f_1 = internal constant [6 x %struct.ephy_info] [%struct.ephy_info { i32 6, i16 192, i16 32 }, %struct.ephy_info { i32 8, i16 1, i16 2 }, %struct.ephy_info { i32 9, i16 0, i16 128 }, %struct.ephy_info { i32 25, i16 0, i16 548 }, %struct.ephy_info { i32 0, i16 0, i16 8 }, %struct.ephy_info { i32 12, i16 15856, i16 512 }], align 4
@rtl_hw_start_8402.e_info_8402 = internal constant [2 x %struct.ephy_info] [%struct.ephy_info { i32 25, i16 -1, i16 -156 }, %struct.ephy_info { i32 30, i16 0, i16 16384 }], align 4
@rtl_hw_start_8411.e_info_8168f_1 = internal constant [5 x %struct.ephy_info] [%struct.ephy_info { i32 6, i16 192, i16 32 }, %struct.ephy_info { i32 15, i16 -1, i16 20992 }, %struct.ephy_info { i32 25, i16 0, i16 548 }, %struct.ephy_info { i32 0, i16 0, i16 8 }, %struct.ephy_info { i32 12, i16 15856, i16 512 }], align 4
@rtl_hw_start_8168g_1.e_info_8168g_1 = internal constant [4 x %struct.ephy_info] [%struct.ephy_info { i32 0, i16 8, i16 0 }, %struct.ephy_info { i32 12, i16 16368, i16 2080 }, %struct.ephy_info { i32 30, i16 0, i16 1 }, %struct.ephy_info { i32 25, i16 -32768, i16 0 }], align 4
@rtl_hw_start_8168g_2.e_info_8168g_2 = internal constant [9 x %struct.ephy_info] [%struct.ephy_info { i32 0, i16 8, i16 0 }, %struct.ephy_info { i32 12, i16 16368, i16 2080 }, %struct.ephy_info { i32 25, i16 -1, i16 31744 }, %struct.ephy_info { i32 30, i16 -1, i16 8427 }, %struct.ephy_info { i32 13, i16 -1, i16 5734 }, %struct.ephy_info { i32 0, i16 -1, i16 4259 }, %struct.ephy_info { i32 6, i16 -1, i16 -4016 }, %struct.ephy_info { i32 4, i16 0, i16 16 }, %struct.ephy_info { i32 29, i16 16384, i16 0 }], align 4
@rtl_hw_start_8411_2.e_info_8411_2 = internal constant [10 x %struct.ephy_info] [%struct.ephy_info { i32 0, i16 8, i16 0 }, %struct.ephy_info { i32 12, i16 14288, i16 2080 }, %struct.ephy_info { i32 30, i16 0, i16 1 }, %struct.ephy_info { i32 25, i16 -32735, i16 0 }, %struct.ephy_info { i32 30, i16 0, i16 8192 }, %struct.ephy_info { i32 13, i16 256, i16 512 }, %struct.ephy_info { i32 0, i16 0, i16 128 }, %struct.ephy_info { i32 6, i16 0, i16 16 }, %struct.ephy_info { i32 4, i16 0, i16 16 }, %struct.ephy_info { i32 29, i16 0, i16 16384 }], align 4
@rtl_hw_start_8168h_1.e_info_8168h_1 = internal constant [6 x %struct.ephy_info] [%struct.ephy_info { i32 30, i16 2048, i16 1 }, %struct.ephy_info { i32 29, i16 0, i16 2048 }, %struct.ephy_info { i32 5, i16 -1, i16 8329 }, %struct.ephy_info { i32 6, i16 -1, i16 22657 }, %struct.ephy_info { i32 4, i16 -1, i16 -31414 }, %struct.ephy_info { i32 1, i16 -1, i16 1675 }], align 4
@rtl_hw_start_8168ep_1.e_info_8168ep_1 = internal constant [5 x %struct.ephy_info] [%struct.ephy_info { i32 0, i16 -1, i16 4267 }, %struct.ephy_info { i32 6, i16 -1, i16 -4048 }, %struct.ephy_info { i32 8, i16 -1, i16 8198 }, %struct.ephy_info { i32 13, i16 -1, i16 5734 }, %struct.ephy_info { i32 12, i16 16368, i16 0 }], align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"rtl_ocp_tx_cond\00", align 1
@rtl_hw_start_8168ep_2.e_info_8168ep_2 = internal constant [3 x %struct.ephy_info] [%struct.ephy_info { i32 0, i16 -1, i16 4259 }, %struct.ephy_info { i32 25, i16 -1, i16 -1024 }, %struct.ephy_info { i32 30, i16 -1, i16 8426 }], align 4
@rtl_hw_start_8168ep_3.e_info_8168ep_3 = internal constant [4 x %struct.ephy_info] [%struct.ephy_info { i32 0, i16 0, i16 128 }, %struct.ephy_info { i32 13, i16 256, i16 512 }, %struct.ephy_info { i32 25, i16 -32735, i16 0 }, %struct.ephy_info { i32 30, i16 0, i16 8192 }], align 4
@rtl_hw_start_8117.e_info_8117 = internal constant [2 x %struct.ephy_info] [%struct.ephy_info { i32 25, i16 64, i16 4352 }, %struct.ephy_info { i32 89, i16 64, i16 4352 }], align 4
@rtl_hw_start_8125a_1.e_info_8125a_1 = internal constant [24 x %struct.ephy_info] [%struct.ephy_info { i32 1, i16 -1, i16 -22510 }, %struct.ephy_info { i32 9, i16 -1, i16 21004 }, %struct.ephy_info { i32 4, i16 -1, i16 -12288 }, %struct.ephy_info { i32 13, i16 -1, i16 -2302 }, %struct.ephy_info { i32 10, i16 -1, i16 -31149 }, %struct.ephy_info { i32 6, i16 -1, i16 30 }, %struct.ephy_info { i32 8, i16 -1, i16 13717 }, %struct.ephy_info { i32 32, i16 -1, i16 -27563 }, %struct.ephy_info { i32 33, i16 -1, i16 -26113 }, %struct.ephy_info { i32 2, i16 -1, i16 24646 }, %struct.ephy_info { i32 41, i16 -1, i16 -512 }, %struct.ephy_info { i32 35, i16 -1, i16 -21662 }, %struct.ephy_info { i32 65, i16 -1, i16 -22516 }, %struct.ephy_info { i32 73, i16 -1, i16 21004 }, %struct.ephy_info { i32 68, i16 -1, i16 -12288 }, %struct.ephy_info { i32 77, i16 -1, i16 -2302 }, %struct.ephy_info { i32 74, i16 -1, i16 -31149 }, %struct.ephy_info { i32 70, i16 -1, i16 30 }, %struct.ephy_info { i32 72, i16 -1, i16 13717 }, %struct.ephy_info { i32 96, i16 -1, i16 -27563 }, %struct.ephy_info { i32 97, i16 -1, i16 -26113 }, %struct.ephy_info { i32 66, i16 -1, i16 24646 }, %struct.ephy_info { i32 105, i16 -1, i16 -512 }, %struct.ephy_info { i32 99, i16 -1, i16 -21662 }], align 4
@.str.33 = private unnamed_addr constant [22 x i8] c"rtl_mac_ocp_e00e_cond\00", align 1
@rtl_hw_start_8125a_2.e_info_8125a_2 = internal constant [12 x %struct.ephy_info] [%struct.ephy_info { i32 4, i16 -1, i16 -12288 }, %struct.ephy_info { i32 10, i16 -1, i16 -31149 }, %struct.ephy_info { i32 35, i16 -1, i16 -21658 }, %struct.ephy_info { i32 32, i16 -1, i16 -27563 }, %struct.ephy_info { i32 33, i16 -1, i16 -26113 }, %struct.ephy_info { i32 41, i16 -1, i16 -508 }, %struct.ephy_info { i32 68, i16 -1, i16 -12288 }, %struct.ephy_info { i32 74, i16 -1, i16 -31149 }, %struct.ephy_info { i32 99, i16 -1, i16 -21658 }, %struct.ephy_info { i32 96, i16 -1, i16 -27563 }, %struct.ephy_info { i32 97, i16 -1, i16 -26113 }, %struct.ephy_info { i32 105, i16 -1, i16 -508 }], align 4
@rtl_hw_start_8125b.e_info_8125b = internal constant [6 x %struct.ephy_info] [%struct.ephy_info { i32 11, i16 -1, i16 -22264 }, %struct.ephy_info { i32 30, i16 -1, i16 8427 }, %struct.ephy_info { i32 75, i16 -1, i16 -22264 }, %struct.ephy_info { i32 94, i16 -1, i16 8427 }, %struct.ephy_info { i32 34, i16 48, i16 32 }, %struct.ephy_info { i32 98, i16 48, i16 32 }], align 4
@.str.34 = private unnamed_addr constant [18 x i8] c"rtl_counters_cond\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"BUG! Tx Ring full when queue awake!\0A\00", align 1
@rtl8169_tso_csum_v1.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtl8169_tso_csum_v2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtl8169_tso_csum_v2.__already_done.36 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"include/linux/if_vlan.h\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"Failed to map TX data!\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 64
@.str.42 = private unnamed_addr constant [10 x i8] c"ether_clk\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"failed to get clk\0A\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"failed to enable clk: %d\0A\00", align 1
@rtl8169_get_mac_version.mac_info = internal unnamed_addr constant [50 x %struct.rtl_mac_info] [%struct.rtl_mac_info { i16 1999, i16 1601, i32 52 }, %struct.rtl_mac_info { i16 1999, i16 1545, i32 51 }, %struct.rtl_mac_info { i16 1999, i16 1355, i32 49 }, %struct.rtl_mac_info { i16 1999, i16 1354, i32 48 }, %struct.rtl_mac_info { i16 1999, i16 1282, i32 47 }, %struct.rtl_mac_info { i16 1999, i16 1345, i32 42 }, %struct.rtl_mac_info { i16 1999, i16 1480, i32 40 }, %struct.rtl_mac_info { i16 1999, i16 1289, i32 38 }, %struct.rtl_mac_info { i16 1999, i16 1216, i32 36 }, %struct.rtl_mac_info { i16 1992, i16 1160, i32 34 }, %struct.rtl_mac_info { i16 1999, i16 1153, i32 32 }, %struct.rtl_mac_info { i16 1999, i16 1152, i32 31 }, %struct.rtl_mac_info { i16 1992, i16 712, i32 30 }, %struct.rtl_mac_info { i16 1999, i16 705, i32 28 }, %struct.rtl_mac_info { i16 1992, i16 704, i32 29 }, %struct.rtl_mac_info { i16 1999, i16 641, i32 22 }, %struct.rtl_mac_info { i16 1992, i16 640, i32 23 }, %struct.rtl_mac_info { i16 1999, i16 650, i32 24 }, %struct.rtl_mac_info { i16 1999, i16 651, i32 27 }, %struct.rtl_mac_info { i16 1999, i16 969, i32 20 }, %struct.rtl_mac_info { i16 1999, i16 968, i32 15 }, %struct.rtl_mac_info { i16 1992, i16 968, i32 21 }, %struct.rtl_mac_info { i16 1999, i16 960, i32 16 }, %struct.rtl_mac_info { i16 1999, i16 962, i32 17 }, %struct.rtl_mac_info { i16 1999, i16 963, i32 18 }, %struct.rtl_mac_info { i16 1992, i16 960, i32 19 }, %struct.rtl_mac_info { i16 1999, i16 896, i32 10 }, %struct.rtl_mac_info { i16 1992, i16 896, i32 14 }, %struct.rtl_mac_info { i16 1992, i16 768, i32 9 }, %struct.rtl_mac_info { i16 1992, i16 1096, i32 35 }, %struct.rtl_mac_info { i16 1992, i16 1088, i32 33 }, %struct.rtl_mac_info { i16 1999, i16 1033, i32 25 }, %struct.rtl_mac_info { i16 1992, i16 1032, i32 26 }, %struct.rtl_mac_info { i16 1999, i16 841, i32 6 }, %struct.rtl_mac_info { i16 1999, i16 585, i32 6 }, %struct.rtl_mac_info { i16 1999, i16 840, i32 5 }, %struct.rtl_mac_info { i16 1999, i16 584, i32 5 }, %struct.rtl_mac_info { i16 1999, i16 832, i32 11 }, %struct.rtl_mac_info { i16 1999, i16 576, i32 12 }, %struct.rtl_mac_info { i16 1999, i16 835, i32 8 }, %struct.rtl_mac_info { i16 1999, i16 834, i32 13 }, %struct.rtl_mac_info { i16 1992, i16 840, i32 7 }, %struct.rtl_mac_info { i16 1992, i16 584, i32 7 }, %struct.rtl_mac_info { i16 1992, i16 832, i32 13 }, %struct.rtl_mac_info { i16 4040, i16 2432, i32 4 }, %struct.rtl_mac_info { i16 4040, i16 384, i32 3 }, %struct.rtl_mac_info { i16 4040, i16 256, i32 2 }, %struct.rtl_mac_info { i16 4040, i16 64, i32 1 }, %struct.rtl_mac_info { i16 4040, i16 8, i32 0 }, %struct.rtl_mac_info { i16 0, i16 0, i32 53 }], align 4
@.str.45 = private unnamed_addr constant [15 x i8] c"rtl_ocpar_cond\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"rtl_link_list_ready_cond\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"rtl_chipcmd_cond\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"can't read MAC address, setting random one\0A\00", align 1
@rtl_coalesce_info_8169 = internal constant [4 x %struct.rtl_coalesce_info] [%struct.rtl_coalesce_info { i32 1000, [4 x i32] [i32 320, i32 2560, i32 5120, i32 10240] }, %struct.rtl_coalesce_info { i32 100, [4 x i32] [i32 2560, i32 20480, i32 40960, i32 81920] }, %struct.rtl_coalesce_info { i32 10, [4 x i32] [i32 40960, i32 327680, i32 655360, i32 1310720] }, %struct.rtl_coalesce_info zeroinitializer], align 4
@rtl_coalesce_info_8168_8136 = internal constant [4 x %struct.rtl_coalesce_info] [%struct.rtl_coalesce_info { i32 1000, [4 x i32] [i32 5000, i32 40000, i32 80000, i32 160000] }, %struct.rtl_coalesce_info { i32 100, [4 x i32] [i32 2560, i32 20480, i32 40960, i32 81920] }, %struct.rtl_coalesce_info { i32 10, [4 x i32] [i32 40960, i32 327680, i32 655360, i32 1310720] }, %struct.rtl_coalesce_info zeroinitializer], align 4
@rtl8169_gstrings = internal unnamed_addr constant [13 x [32 x i8]] [[32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_missed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_single_collisions\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_multi_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_aborted\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"Rx ERROR. status = %08x\0A\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"RTL8169s\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"RTL8110s\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"RTL8169sb/8110sb\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"RTL8169sc/8110sc\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"RTL8102e\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"RTL8102e/RTL8103e\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"RTL8101e\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"RTL8168b/8111b\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"RTL8101e/RTL8100e\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"RTL8401\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"RTL8168cp/8111cp\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"RTL8168c/8111c\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"RTL8168d/8111d\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168d-1.fw\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168d-2.fw\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"RTL8168dp/8111dp\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"RTL8105e\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8105e-1.fw\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"RTL8168e/8111e\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168e-1.fw\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168e-2.fw\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"RTL8168evl/8111evl\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168e-3.fw\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"RTL8168f/8111f\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168f-1.fw\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168f-2.fw\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"RTL8402\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"rtl_nic/rtl8402-1.fw\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"RTL8411\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"rtl_nic/rtl8411-1.fw\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"RTL8106e\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8106e-1.fw\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"RTL8168g/8111g\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168g-2.fw\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"RTL8168gu/8111gu\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168g-3.fw\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"RTL8106eus\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8106e-2.fw\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"RTL8411b\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"rtl_nic/rtl8411-2.fw\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"RTL8168h/8111h\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168h-1.fw\00", align 1
@.str.92 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8168h-2.fw\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"RTL8107e\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8107e-1.fw\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8107e-2.fw\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"RTL8168ep/8111ep\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"RTL8168fp/RTL8117\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"rtl_nic/rtl8168fp-3.fw\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"RTL8125A\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8125a-3.fw\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"RTL8125B\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"rtl_nic/rtl8125b-2.fw\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"r8169-%x-%x\00", align 1
@.str.104 = private unnamed_addr constant [99 x i8] c"no dedicated PHY driver found for PHY ID 0x%08x, maybe realtek.ko needs to be added to initramfs?\0A\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"rtl_dp_ocp_read_cond\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"rtl_ep_ocp_read_cond\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_description464, ptr @__UNIQUE_ID_file466, ptr @__UNIQUE_ID_firmware468, ptr @__UNIQUE_ID_firmware469, ptr @__UNIQUE_ID_firmware470, ptr @__UNIQUE_ID_firmware471, ptr @__UNIQUE_ID_firmware472, ptr @__UNIQUE_ID_firmware473, ptr @__UNIQUE_ID_firmware474, ptr @__UNIQUE_ID_firmware475, ptr @__UNIQUE_ID_firmware476, ptr @__UNIQUE_ID_firmware477, ptr @__UNIQUE_ID_firmware478, ptr @__UNIQUE_ID_firmware479, ptr @__UNIQUE_ID_firmware480, ptr @__UNIQUE_ID_firmware481, ptr @__UNIQUE_ID_firmware482, ptr @__UNIQUE_ID_firmware483, ptr @__UNIQUE_ID_firmware484, ptr @__UNIQUE_ID_firmware485, ptr @__UNIQUE_ID_firmware486, ptr @__UNIQUE_ID_firmware487, ptr @__UNIQUE_ID_firmware488, ptr @__UNIQUE_ID_firmware489, ptr @__UNIQUE_ID_license467, ptr @__UNIQUE_ID_softdep465, ptr @__exitcall_rtl8169_pci_driver_exit, ptr @__initcall__kmod_r8169__543_5468_rtl8169_pci_driver_init6, ptr @rtl8169_pci_driver_exit], section "llvm.metadata"
@switch.table.rtl_init_one = private unnamed_addr constant [22 x i32] [i32 7146, i32 7146, i32 7146, i32 7146, i32 7146, i32 9194, i32 9194, i32 9194, i32 9194, i32 4074, i32 4074, i32 9194, i32 9194, i32 9194, i32 4074, i32 6122, i32 6122, i32 6122, i32 6122, i32 6122, i32 6122, i32 6122], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl8168d_efuse_read(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !9
  tail call void @arm_heavy_mb() #19
  %3 = shl i32 %1, 8
  %4 = and i32 %3, 261888
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %5, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #19, !srcloc !10
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i32 220
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !12
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %16, label %28

11:                                               ; preds = %16
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 220
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !12
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %18, %11 ], [ 0, %2 ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %18 = add nuw nsw i32 %17, 1
  %19 = icmp eq i32 %18, 300
  br i1 %19, label %20, label %11

20:                                               ; preds = %16
  %21 = tail call i32 @net_ratelimit() #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 300, i32 noundef 100) #20
  br label %33

26:                                               ; preds = %20, %11
  %27 = icmp ult i32 %17, 299
  br i1 %27, label %28, label %33

28:                                               ; preds = %26, %2
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 220
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !13
  %32 = trunc i32 %31 to i8
  br label %33

33:                                               ; preds = %28, %26, %23
  %34 = phi i8 [ %32, %28 ], [ -1, %26 ], [ -1, %23 ]
  ret i8 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @r8169_apply_firmware(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  tail call void @rtl_fw_write_firmware(ptr noundef %0, ptr noundef nonnull %3) #19
  %6 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 29
  store i32 41984, ptr %6, align 8
  %7 = tail call i64 @ktime_get() #19
  %8 = add i64 %7, 600000000
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #19
  %9 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mdio_device, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mdio_device, ptr %10, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @mdiobus_read(ptr noundef %12, i32 noundef %14, i32 noundef 0) #19
  %16 = and i32 %15, -2147450880
  %17 = icmp eq i32 %16, 32768
  br i1 %17, label %18, label %37

18:                                               ; preds = %28, %5
  %19 = tail call i64 @ktime_get() #19
  %20 = icmp sgt i64 %19, %8
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.mdio_device, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.mdio_device, ptr %22, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @mdiobus_read(ptr noundef %24, i32 noundef %26, i32 noundef 0) #19
  br label %37

28:                                               ; preds = %18
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #19
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.mdio_device, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.mdio_device, ptr %29, i32 0, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 @mdiobus_read(ptr noundef %31, i32 noundef %33, i32 noundef 0) #19
  %35 = and i32 %34, -2147450880
  %36 = icmp eq i32 %35, 32768
  br i1 %36, label %18, label %37

37:                                               ; preds = %28, %21, %5
  %38 = phi i32 [ %27, %21 ], [ %15, %5 ], [ %34, %28 ]
  %39 = icmp slt i32 %38, 0
  %40 = and i32 %38, -2147450880
  %41 = icmp eq i32 %40, 32768
  %42 = select i1 %41, i32 -110, i32 0
  %43 = select i1 %39, i32 %38, i32 %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.r8169_apply_firmware, i32 noundef %43) #20
  br label %47

47:                                               ; preds = %45, %37, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fw_write_firmware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @rtl8168h_2_get_adc_bias_ioffset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -293502851) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %4, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1853947904) #19, !srcloc !10
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 176
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr i8, ptr %9, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1853882368) #19, !srcloc !10
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr i8, ptr %11, i32 176
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %14 = trunc i32 %13 to i16
  %15 = lshr i16 %14, 1
  %16 = and i16 %15, 32760
  %17 = and i16 %14, 7
  %18 = trunc i32 %8 to i16
  %19 = shl i16 %18, 8
  %20 = and i16 %19, -32768
  %21 = or i16 %17, %20
  %22 = or i16 %21, %16
  ret i16 %22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rtl8169_pci_driver_init() #4 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtl8169_pci_driver, ptr noundef null, ptr noundef nonnull @.str.5) #19
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rtl8169_pci_driver_exit() #4 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtl8169_pci_driver) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl_init_one(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [6 x i8], align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %5 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %4, i32 noundef 3440, i32 noundef 1, i32 noundef 1) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %579, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111, i32 1
  store ptr %4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  store ptr @rtl_netdev_ops, ptr %9, align 8
  %10 = getelementptr i8, ptr %5, i32 1408
  %11 = getelementptr i8, ptr %5, i32 1416
  store ptr %5, ptr %11, align 8
  %12 = getelementptr i8, ptr %5, i32 1412
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 1
  %16 = getelementptr i8, ptr %5, i32 4784
  %17 = zext i1 %15 to i8
  %18 = load i8, ptr %16, align 8
  %19 = and i8 %18, -2
  %20 = or i8 %19, %17
  store i8 %20, ptr %16, align 8
  %21 = getelementptr i8, ptr %5, i32 4828
  store i32 -1, ptr %21, align 4
  %22 = getelementptr i8, ptr %5, i32 4840
  store i32 41984, ptr %22, align 8
  %23 = tail call ptr @__devm_alloc_percpu(ptr noundef %4, i32 noundef 64, i32 noundef 32) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %7
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = ptrtoint ptr %23 to i32
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ %27, %29 ], [ %38, %31 ]
  %33 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %30
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %36, i32 0, i32 4
  store i32 0, ptr %37, align 4
  %38 = tail call i32 @cpumask_next(i32 noundef %32, ptr noundef nonnull @__cpu_possible_mask) #21
  %39 = icmp ult i32 %38, %26
  br i1 %39, label %31, label %42

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 110
  store ptr null, ptr %41, align 8
  br label %579

42:                                               ; preds = %31, %25
  %43 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 110
  store ptr %23, ptr %43, align 8
  %44 = load ptr, ptr %12, align 4
  %45 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %46 = tail call ptr @devm_clk_get(ptr noundef %45, ptr noundef nonnull @.str.42) #19
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = icmp eq ptr %46, inttoptr (i32 -2 to ptr)
  br i1 %49, label %67, label %64

50:                                               ; preds = %42
  %51 = getelementptr i8, ptr %5, i32 4760
  store ptr %46, ptr %51, align 8
  %52 = tail call i32 @clk_prepare(ptr noundef %46) #19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = tail call i32 @clk_enable(ptr noundef %46) #19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  tail call void @clk_unprepare(ptr noundef %46) #19
  br label %58

58:                                               ; preds = %57, %50
  %59 = phi i32 [ %55, %57 ], [ %52, %50 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.44, i32 noundef %59) #20
  br label %579

60:                                               ; preds = %54
  %61 = tail call i32 @devm_add_action(ptr noundef %45, ptr noundef nonnull @rtl_disable_clk, ptr noundef %46) #19
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  tail call void @clk_disable(ptr noundef %46) #19
  tail call void @clk_unprepare(ptr noundef %46) #19
  br label %579

64:                                               ; preds = %48
  %65 = ptrtoint ptr %46 to i32
  %66 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %45, i32 noundef %65, ptr noundef nonnull @.str.43) #19
  br label %579

67:                                               ; preds = %60, %48
  %68 = tail call i32 @pcim_enable_device(ptr noundef %0) #19
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #20
  br label %579

71:                                               ; preds = %67
  %72 = tail call i32 @pcim_set_mwi(ptr noundef %0) #19
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.7) #20
  br label %75

75:                                               ; preds = %74, %71
  %76 = tail call i32 @pci_select_bars(ptr noundef %0, i32 noundef 512) #19
  %77 = tail call i32 @llvm.cttz.i32(i32 %76, i1 true), !range !17
  %78 = icmp eq i32 %76, 0
  %79 = select i1 %78, i32 -1, i32 %77
  br i1 %78, label %80, label %81

80:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #20
  br label %579

81:                                               ; preds = %75
  %82 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %79, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %79
  %87 = load i32, ptr %86, align 8
  %88 = add i32 %83, 1
  %89 = sub i32 %88, %87
  %90 = icmp ult i32 %89, 256
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %81
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #20
  br label %579

92:                                               ; preds = %85
  %93 = shl nuw i32 1, %79
  %94 = tail call i32 @pcim_iomap_regions(ptr noundef %0, i32 noundef %93, ptr noundef nonnull @.str.5) #19
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10) #20
  br label %579

97:                                               ; preds = %92
  %98 = tail call ptr @pcim_iomap_table(ptr noundef %0) #19
  %99 = getelementptr ptr, ptr %98, i32 %79
  %100 = load ptr, ptr %99, align 4
  store ptr %100, ptr %10, align 8
  %101 = getelementptr i8, ptr %100, i32 64
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !18
  %103 = lshr i32 %102, 20
  %104 = trunc i32 %103 to i16
  %105 = and i16 %104, 4047
  %106 = load i8, ptr %16, align 8
  %107 = and i8 %106, 1
  br label %108

108:                                              ; preds = %108, %97
  %109 = phi ptr [ @rtl8169_get_mac_version.mac_info, %97 ], [ %115, %108 ]
  %110 = load i16, ptr %109, align 4
  %111 = and i16 %110, %105
  %112 = getelementptr inbounds %struct.rtl_mac_info, ptr %109, i32 0, i32 1
  %113 = load i16, ptr %112, align 2
  %114 = icmp eq i16 %111, %113
  %115 = getelementptr %struct.rtl_mac_info, ptr %109, i32 1
  br i1 %114, label %116, label %108

116:                                              ; preds = %108
  %117 = icmp ne i8 %107, 0
  %118 = getelementptr inbounds %struct.rtl_mac_info, ptr %109, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 53
  %121 = or i1 %117, %120
  br i1 %121, label %130, label %122

122:                                              ; preds = %116
  switch i32 %119, label %127 [
    i32 38, label %123
    i32 41, label %125
  ]

123:                                              ; preds = %122
  %124 = getelementptr i8, ptr %5, i32 1640
  store i32 39, ptr %124, align 8
  br label %138

125:                                              ; preds = %122
  %126 = getelementptr i8, ptr %5, i32 1640
  store i32 43, ptr %126, align 8
  br label %141

127:                                              ; preds = %122
  %128 = icmp eq i32 %119, 42
  %129 = select i1 %128, i32 44, i32 %119
  br label %130

130:                                              ; preds = %127, %116
  %131 = phi i32 [ %129, %127 ], [ %119, %116 ]
  %132 = icmp eq i32 %131, 53
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = zext i16 %105 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %134) #20
  br label %579

135:                                              ; preds = %130
  %136 = getelementptr i8, ptr %5, i32 1640
  store i32 %131, ptr %136, align 8
  %137 = icmp ugt i32 %131, 40
  br i1 %137, label %141, label %138

138:                                              ; preds = %135, %123
  %139 = phi ptr [ %124, %123 ], [ %136, %135 ]
  %140 = phi i32 [ 39, %123 ], [ %131, %135 ]
  br label %141

141:                                              ; preds = %138, %135, %125
  %142 = phi i32 [ 2, %138 ], [ 16, %125 ], [ 16, %135 ]
  %143 = phi ptr [ %139, %138 ], [ %126, %125 ], [ %136, %135 ]
  %144 = phi i32 [ %140, %138 ], [ 43, %125 ], [ %131, %135 ]
  %145 = tail call i32 @pci_disable_link_state(ptr noundef %0, i32 noundef %142) #19
  %146 = icmp eq i32 %145, 0
  %147 = load i8, ptr %16, align 8
  %148 = select i1 %146, i8 2, i8 0
  %149 = and i8 %147, -3
  %150 = or i8 %149, %148
  store i8 %150, ptr %16, align 8
  %151 = load i32, ptr %143, align 8
  switch i32 %151, label %162 [
    i32 24, label %152
    i32 27, label %152
    i32 45, label %158
    i32 46, label %158
    i32 47, label %158
    i32 48, label %158
    i32 49, label %158
  ]

152:                                              ; preds = %141, %141
  %153 = icmp eq i32 %151, 27
  %154 = select i1 %153, i16 184, i16 16
  %155 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %10, i16 noundef zeroext %154) #19
  %156 = lshr i32 %155, 15
  %157 = and i32 %156, 1
  br label %162

158:                                              ; preds = %141, %141, %141, %141, %141
  %159 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %10, i32 noundef 296, i32 noundef 131072) #19
  %160 = shl i32 %159, 1
  %161 = and i32 %160, 2
  br label %162

162:                                              ; preds = %158, %152, %141
  %163 = phi i32 [ %161, %158 ], [ %157, %152 ], [ 0, %141 ]
  %164 = getelementptr i8, ptr %5, i32 1644
  store i32 %163, ptr %164, align 4
  %165 = load ptr, ptr %10, align 8
  %166 = getelementptr i8, ptr %165, i32 224
  %167 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %166) #19, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !20
  %168 = and i16 %167, 8291
  %169 = getelementptr i8, ptr %5, i32 4748
  store i16 %168, ptr %169, align 4
  tail call fastcc void @rtl_init_rxcfg(ptr noundef %10)
  %170 = load i32, ptr %143, align 8
  %171 = icmp ugt i32 %170, 49
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %172 = load ptr, ptr %10, align 8
  br i1 %171, label %173, label %175

173:                                              ; preds = %162
  %174 = getelementptr i8, ptr %172, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 0) #19, !srcloc !10
  br label %177

175:                                              ; preds = %162
  %176 = getelementptr i8, ptr %172, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %176, i16 0) #19, !srcloc !21
  br label %177

177:                                              ; preds = %175, %173
  %178 = load i32, ptr %143, align 8
  %179 = icmp ugt i32 %178, 49
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %180 = load ptr, ptr %10, align 8
  br i1 %179, label %181, label %183

181:                                              ; preds = %177
  %182 = getelementptr i8, ptr %180, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 -1) #19, !srcloc !10
  br label %185

183:                                              ; preds = %177
  %184 = getelementptr i8, ptr %180, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %184, i16 -1) #19, !srcloc !21
  br label %185

185:                                              ; preds = %183, %181
  %186 = load ptr, ptr %10, align 8
  %187 = getelementptr i8, ptr %186, i32 55
  %188 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %187) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !23
  %189 = load i32, ptr %143, align 8
  switch i32 %189, label %310 [
    i32 45, label %190
    i32 46, label %190
    i32 47, label %190
    i32 48, label %190
    i32 49, label %190
    i32 36, label %191
    i32 37, label %191
    i32 38, label %191
    i32 39, label %191
    i32 40, label %191
    i32 41, label %191
    i32 42, label %191
    i32 43, label %191
    i32 44, label %191
    i32 50, label %251
    i32 51, label %251
    i32 52, label %251
  ]

190:                                              ; preds = %185, %185, %185, %185, %185
  tail call fastcc void @rtl8168ep_stop_cmac(ptr noundef %10) #19
  br label %191

191:                                              ; preds = %190, %185, %185, %185, %185, %185, %185, %185, %185, %185
  tail call fastcc void @rtl_enable_rxdvgate(ptr noundef %10) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !24
  tail call void @arm_heavy_mb() #19
  %192 = load ptr, ptr %10, align 8
  %193 = getelementptr i8, ptr %192, i32 55
  %194 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %193) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !25
  %195 = and i8 %194, -13
  %196 = load ptr, ptr %10, align 8
  %197 = getelementptr i8, ptr %196, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %197, i8 %195) #19, !srcloc !26
  tail call void @msleep(i32 noundef 1) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !27
  tail call void @arm_heavy_mb() #19
  %198 = load ptr, ptr %10, align 8
  %199 = getelementptr i8, ptr %198, i32 211
  %200 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %199) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !28
  %201 = and i8 %200, 127
  %202 = load ptr, ptr %10, align 8
  %203 = getelementptr i8, ptr %202, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %203, i8 %201) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %204 = load ptr, ptr %10, align 8
  %205 = getelementptr i8, ptr %204, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 1953431552) #19, !srcloc !10
  %206 = load ptr, ptr %10, align 8
  %207 = getelementptr i8, ptr %206, i32 176
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %209 = and i32 %208, 49151
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %210 = or i32 %209, -194052096
  %211 = load ptr, ptr %10, align 8
  %212 = getelementptr i8, ptr %211, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %210) #19, !srcloc !10
  br label %213

213:                                              ; preds = %220, %191
  %214 = phi i32 [ 0, %191 ], [ %221, %220 ]
  %215 = load ptr, ptr %10, align 8
  %216 = getelementptr i8, ptr %215, i32 211
  %217 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %216) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !29
  %218 = and i8 %217, 2
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %213
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %221 = add nuw nsw i32 %214, 1
  %222 = icmp eq i32 %221, 42
  br i1 %222, label %223, label %213

223:                                              ; preds = %220
  %224 = tail call i32 @net_ratelimit() #19
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  %227 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %227, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 42, i32 noundef 100) #20
  br label %228

228:                                              ; preds = %226, %223, %213
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %229 = load ptr, ptr %10, align 8
  %230 = getelementptr i8, ptr %229, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 1953431552) #19, !srcloc !10
  %231 = load ptr, ptr %10, align 8
  %232 = getelementptr i8, ptr %231, i32 176
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %234 = and i32 %233, 32767
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %235 = or i32 %234, -194019328
  %236 = load ptr, ptr %10, align 8
  %237 = getelementptr i8, ptr %236, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %235) #19, !srcloc !10
  br label %238

238:                                              ; preds = %245, %228
  %239 = phi i32 [ 0, %228 ], [ %246, %245 ]
  %240 = load ptr, ptr %10, align 8
  %241 = getelementptr i8, ptr %240, i32 211
  %242 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %241) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !29
  %243 = and i8 %242, 2
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %310

245:                                              ; preds = %238
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %246 = add nuw nsw i32 %239, 1
  %247 = icmp eq i32 %246, 42
  br i1 %247, label %248, label %238

248:                                              ; preds = %245
  %249 = tail call i32 @net_ratelimit() #19
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %310, label %308

251:                                              ; preds = %185, %185, %185
  tail call fastcc void @rtl_enable_rxdvgate(ptr noundef %10) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !30
  tail call void @arm_heavy_mb() #19
  %252 = load ptr, ptr %10, align 8
  %253 = getelementptr i8, ptr %252, i32 55
  %254 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %253) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !31
  %255 = and i8 %254, -13
  %256 = load ptr, ptr %10, align 8
  %257 = getelementptr i8, ptr %256, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %257, i8 %255) #19, !srcloc !26
  tail call void @msleep(i32 noundef 1) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !32
  tail call void @arm_heavy_mb() #19
  %258 = load ptr, ptr %10, align 8
  %259 = getelementptr i8, ptr %258, i32 211
  %260 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %259) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !33
  %261 = and i8 %260, 127
  %262 = load ptr, ptr %10, align 8
  %263 = getelementptr i8, ptr %262, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %263, i8 %261) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %264 = load ptr, ptr %10, align 8
  %265 = getelementptr i8, ptr %264, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 1953431552) #19, !srcloc !10
  %266 = load ptr, ptr %10, align 8
  %267 = getelementptr i8, ptr %266, i32 176
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %269 = and i32 %268, 49151
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %270 = or i32 %269, -194052096
  %271 = load ptr, ptr %10, align 8
  %272 = getelementptr i8, ptr %271, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 %270) #19, !srcloc !10
  br label %273

273:                                              ; preds = %280, %251
  %274 = phi i32 [ 0, %251 ], [ %281, %280 ]
  %275 = load ptr, ptr %10, align 8
  %276 = getelementptr i8, ptr %275, i32 211
  %277 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %276) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !29
  %278 = and i8 %277, 2
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %273
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %281 = add nuw nsw i32 %274, 1
  %282 = icmp eq i32 %281, 42
  br i1 %282, label %283, label %273

283:                                              ; preds = %280
  %284 = tail call i32 @net_ratelimit() #19
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %283
  %287 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %287, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 42, i32 noundef 100) #20
  br label %288

288:                                              ; preds = %286, %283, %273
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %289 = load ptr, ptr %10, align 8
  %290 = getelementptr i8, ptr %289, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 -531298352) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %291 = load ptr, ptr %10, align 8
  %292 = getelementptr i8, ptr %291, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 -531431088) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %293 = load ptr, ptr %10, align 8
  %294 = getelementptr i8, ptr %293, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 -535866027) #19, !srcloc !10
  br label %295

295:                                              ; preds = %302, %288
  %296 = phi i32 [ 0, %288 ], [ %303, %302 ]
  %297 = load ptr, ptr %10, align 8
  %298 = getelementptr i8, ptr %297, i32 211
  %299 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %298) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !29
  %300 = and i8 %299, 2
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %295
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %303 = add nuw nsw i32 %296, 1
  %304 = icmp eq i32 %303, 42
  br i1 %304, label %305, label %295

305:                                              ; preds = %302
  %306 = tail call i32 @net_ratelimit() #19
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %305, %248
  %309 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %309, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 42, i32 noundef 100) #20
  br label %310

310:                                              ; preds = %308, %305, %295, %248, %238, %185
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !34
  tail call void @arm_heavy_mb() #19
  %311 = load ptr, ptr %10, align 8
  %312 = getelementptr i8, ptr %311, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %312, i8 16) #19, !srcloc !26
  br label %313

313:                                              ; preds = %320, %310
  %314 = phi i32 [ 0, %310 ], [ %321, %320 ]
  %315 = load ptr, ptr %10, align 8
  %316 = getelementptr i8, ptr %315, i32 55
  %317 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %316) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !35
  %318 = and i8 %317, 16
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %328, label %320

320:                                              ; preds = %313
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %321 = add nuw nsw i32 %314, 1
  %322 = icmp eq i32 %321, 100
  br i1 %322, label %323, label %313

323:                                              ; preds = %320
  %324 = tail call i32 @net_ratelimit() #19
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %323
  %327 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %327, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 100, i32 noundef 100) #20
  br label %328

328:                                              ; preds = %326, %323, %313
  %329 = load i32, ptr %143, align 8
  switch i32 %329, label %341 [
    i32 0, label %330
    i32 1, label %330
    i32 2, label %330
    i32 3, label %330
    i32 4, label %330
    i32 5, label %342
    i32 6, label %342
    i32 7, label %342
    i32 8, label %342
    i32 9, label %342
    i32 10, label %342
    i32 11, label %342
    i32 12, label %342
    i32 13, label %342
    i32 14, label %342
  ]

330:                                              ; preds = %328, %328, %328, %328, %328
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !36
  tail call void @arm_heavy_mb() #19
  %331 = load ptr, ptr %10, align 8
  %332 = getelementptr i8, ptr %331, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %332, i8 -64) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !37
  tail call void @arm_heavy_mb() #19
  %333 = load ptr, ptr %10, align 8
  %334 = getelementptr i8, ptr %333, i32 83
  %335 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %334) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !38
  %336 = and i8 %335, -33
  %337 = load ptr, ptr %10, align 8
  %338 = getelementptr i8, ptr %337, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %338, i8 %336) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !39
  tail call void @arm_heavy_mb() #19
  %339 = load ptr, ptr %10, align 8
  %340 = getelementptr i8, ptr %339, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %340, i8 0) #19, !srcloc !26
  br label %342

341:                                              ; preds = %328
  br label %342

342:                                              ; preds = %341, %330, %328, %328, %328, %328, %328, %328, %328, %328, %328, %328
  %343 = phi i32 [ 7, %341 ], [ 1, %328 ], [ 1, %328 ], [ 1, %328 ], [ 1, %328 ], [ 1, %328 ], [ 1, %328 ], [ 1, %328 ], [ 1, %328 ], [ 1, %328 ], [ 1, %328 ], [ 1, %330 ]
  %344 = load ptr, ptr %12, align 4
  %345 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %344, i32 noundef 1, i32 noundef 1, i32 noundef %343, ptr noundef null) #19
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %342
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #20
  br label %579

348:                                              ; preds = %342
  %349 = tail call i32 @pci_irq_vector(ptr noundef %0, i32 noundef 0) #19
  %350 = getelementptr i8, ptr %5, i32 4756
  store i32 %349, ptr %350, align 4
  %351 = getelementptr i8, ptr %5, i32 4768
  store i32 -32, ptr %351, align 4
  %352 = getelementptr i8, ptr %5, i32 4772
  store volatile ptr %352, ptr %352, align 4
  %353 = getelementptr i8, ptr %5, i32 4776
  store ptr %352, ptr %353, align 4
  %354 = getelementptr i8, ptr %5, i32 4780
  store ptr @rtl_task, ptr %354, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %3, i8 0, i32 6, i1 false) #19
  %355 = load ptr, ptr %11, align 8
  %356 = load ptr, ptr %12, align 4
  %357 = getelementptr inbounds %struct.pci_dev, ptr %356, i32 0, i32 44
  %358 = call i32 @eth_platform_get_mac_address(ptr noundef %357, ptr noundef nonnull %3) #19
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %447, label %360

360:                                              ; preds = %348
  %361 = load i32, ptr %143, align 8
  %362 = icmp ne i32 %361, 35
  %363 = add i32 %361, -30
  %364 = icmp ult i32 %363, 20
  %365 = and i1 %362, %364
  br i1 %365, label %366, label %373

366:                                              ; preds = %360
  %367 = icmp eq i32 %361, 30
  br i1 %367, label %399, label %368

368:                                              ; preds = %366
  %369 = call fastcc i32 @_rtl_eri_read(ptr noundef %10, i32 noundef 224, i32 noundef 0) #19
  store i32 %369, ptr %3, align 4
  %370 = call fastcc i32 @_rtl_eri_read(ptr noundef %10, i32 noundef 228, i32 noundef 0) #19
  %371 = trunc i32 %370 to i16
  %372 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 %371, ptr %372, align 4
  br label %399

373:                                              ; preds = %360
  %374 = icmp ugt i32 %361, 49
  br i1 %374, label %375, label %399

375:                                              ; preds = %373
  %376 = load ptr, ptr %10, align 8
  %377 = getelementptr i8, ptr %376, i32 6624
  %378 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %377) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  store i8 %378, ptr %3, align 4
  %379 = load ptr, ptr %10, align 8
  %380 = getelementptr i8, ptr %379, i32 6625
  %381 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %380) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  %382 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %381, ptr %382, align 1
  %383 = load ptr, ptr %10, align 8
  %384 = getelementptr i8, ptr %383, i32 6626
  %385 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %384) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  %386 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %385, ptr %386, align 2
  %387 = load ptr, ptr %10, align 8
  %388 = getelementptr i8, ptr %387, i32 6627
  %389 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %388) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  %390 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %389, ptr %390, align 1
  %391 = load ptr, ptr %10, align 8
  %392 = getelementptr i8, ptr %391, i32 6628
  %393 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %392) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  %394 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %393, ptr %394, align 4
  %395 = load ptr, ptr %10, align 8
  %396 = getelementptr i8, ptr %395, i32 6629
  %397 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %396) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  %398 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %397, ptr %398, align 1
  br label %399

399:                                              ; preds = %375, %373, %368, %366
  %400 = load i32, ptr %3, align 4
  %401 = and i32 %400, 1
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %399
  %404 = getelementptr inbounds i8, ptr %3, i32 4
  %405 = load i16, ptr %404, align 4
  %406 = zext i16 %405 to i32
  %407 = or i32 %400, %406
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %447

409:                                              ; preds = %403, %399
  %410 = load ptr, ptr %10, align 8
  %411 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %410) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  store i8 %411, ptr %3, align 4
  %412 = load ptr, ptr %10, align 8
  %413 = getelementptr i8, ptr %412, i32 1
  %414 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %413) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  %415 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %414, ptr %415, align 1
  %416 = load ptr, ptr %10, align 8
  %417 = getelementptr i8, ptr %416, i32 2
  %418 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %417) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  %419 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %418, ptr %419, align 2
  %420 = load ptr, ptr %10, align 8
  %421 = getelementptr i8, ptr %420, i32 3
  %422 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %421) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  %423 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %422, ptr %423, align 1
  %424 = load ptr, ptr %10, align 8
  %425 = getelementptr i8, ptr %424, i32 4
  %426 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %425) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  %427 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %426, ptr %427, align 4
  %428 = load ptr, ptr %10, align 8
  %429 = getelementptr i8, ptr %428, i32 5
  %430 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %429) #19, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !40
  %431 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %430, ptr %431, align 1
  %432 = load i32, ptr %3, align 4
  %433 = and i32 %432, 1
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %409
  %436 = load i16, ptr %427, align 4
  %437 = zext i16 %436 to i32
  %438 = or i32 %432, %437
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %447

440:                                              ; preds = %435, %409
  call void @get_random_bytes(ptr noundef nonnull %3, i32 noundef 6) #19
  %441 = load i8, ptr %3, align 4
  %442 = and i8 %441, -4
  %443 = or i8 %442, 2
  store i8 %443, ptr %3, align 4
  %444 = getelementptr inbounds %struct.net_device, ptr %355, i32 0, i32 50
  store i8 1, ptr %444, align 8
  %445 = load ptr, ptr %12, align 4
  %446 = getelementptr inbounds %struct.pci_dev, ptr %445, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %446, ptr noundef nonnull @.str.48) #20
  br label %447

447:                                              ; preds = %440, %435, %403, %348
  call void @dev_addr_mod(ptr noundef %355, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #19
  call fastcc void @rtl_rar_set(ptr noundef %10, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #19
  %448 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 42
  store ptr @rtl8169_ethtool_ops, ptr %448, align 8
  %449 = getelementptr i8, ptr %5, i32 1424
  call void @netif_napi_add(ptr noundef %5, ptr noundef %449, ptr noundef nonnull @rtl8169_poll, i32 noundef 64) #19
  %450 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 24
  store i64 1099511628162, ptr %450, align 8
  %451 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 26
  store i64 65539, ptr %451, align 8
  %452 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %453 = load i64, ptr %452, align 16
  %454 = or i64 %453, 32768
  store i64 %454, ptr %452, align 16
  %455 = load i32, ptr %143, align 8
  switch i32 %455, label %456 [
    i32 3, label %457
    i32 8, label %459
    i32 9, label %459
    i32 10, label %459
    i32 11, label %459
    i32 12, label %459
    i32 13, label %459
    i32 14, label %459
    i32 0, label %459
    i32 1, label %459
    i32 2, label %459
    i32 4, label %459
  ]

456:                                              ; preds = %447
  br label %457

457:                                              ; preds = %456, %447
  %458 = phi i64 [ 1099511628178, %456 ], [ 1099511627906, %447 ]
  store i64 %458, ptr %450, align 8
  br label %459

459:                                              ; preds = %457, %447, %447, %447, %447, %447, %447, %447, %447, %447, %447, %447
  %460 = phi i64 [ 1099511628162, %447 ], [ 1099511628162, %447 ], [ 1099511628162, %447 ], [ 1099511628162, %447 ], [ 1099511628162, %447 ], [ 1099511628162, %447 ], [ 1099511628162, %447 ], [ 1099511628162, %447 ], [ 1099511628162, %447 ], [ 1099511628162, %447 ], [ 1099511628162, %447 ], [ %458, %457 ]
  %461 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %462 = load i64, ptr %461, align 16
  %463 = or i64 %462, %460
  store i64 %463, ptr %461, align 16
  %464 = load i32, ptr %143, align 8
  switch i32 %464, label %466 [
    i32 8, label %465
    i32 9, label %465
    i32 10, label %465
    i32 11, label %465
    i32 12, label %465
    i32 13, label %465
    i32 14, label %465
    i32 0, label %465
    i32 1, label %465
    i32 2, label %465
    i32 3, label %465
    i32 4, label %465
  ]

465:                                              ; preds = %459, %459, %459, %459, %459, %459, %459, %459, %459, %459, %459, %459
  br label %466

466:                                              ; preds = %465, %459
  %467 = phi i64 [ 65537, %465 ], [ 1114113, %459 ]
  %468 = phi i32 [ 32000, %465 ], [ 64000, %459 ]
  %469 = phi i16 [ 24, %465 ], [ 64, %459 ]
  %470 = or i64 %460, %467
  %471 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 115
  store volatile i32 %468, ptr %471, align 32
  %472 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 116
  store volatile i16 %469, ptr %472, align 4
  %473 = or i64 %470, 26388279066624
  store i64 %473, ptr %450, align 8
  %474 = call i32 @rtl8169_set_features(ptr noundef %5, i64 noundef %463)
  %475 = load i32, ptr %143, align 8
  switch i32 %475, label %483 [
    i32 35, label %476
    i32 36, label %476
    i32 37, label %476
    i32 38, label %476
    i32 39, label %476
    i32 40, label %476
    i32 41, label %476
    i32 42, label %476
    i32 43, label %476
    i32 44, label %476
    i32 45, label %476
    i32 46, label %476
    i32 47, label %476
    i32 48, label %476
    i32 49, label %476
    i32 50, label %476
    i32 51, label %476
    i32 52, label %476
    i32 28, label %476
    i32 29, label %476
    i32 30, label %476
    i32 31, label %476
    i32 32, label %476
    i32 33, label %476
    i32 25, label %476
    i32 26, label %476
    i32 22, label %476
    i32 23, label %476
  ]

476:                                              ; preds = %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466, %466
  call void asm sideeffect "dsb st", "~{memory}"() #19
  call void @arm_heavy_mb() #19
  %477 = load ptr, ptr %10, align 8
  %478 = getelementptr i8, ptr %477, i32 111
  %479 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %478) #19
  call void asm sideeffect "dsb ", "~{memory}"() #19
  %480 = and i8 %479, 63
  %481 = load ptr, ptr %10, align 8
  %482 = getelementptr i8, ptr %481, i32 111
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %482, i8 %480) #19, !srcloc !26
  br label %483

483:                                              ; preds = %476, %466
  %484 = load i8, ptr %16, align 8
  %485 = and i8 %484, 1
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %496, label %487

487:                                              ; preds = %483
  %488 = load i32, ptr %143, align 8
  %489 = icmp ult i32 %488, 22
  br i1 %489, label %490, label %493

490:                                              ; preds = %487
  %491 = getelementptr inbounds [22 x i32], ptr @switch.table.rtl_init_one, i32 0, i32 %488
  %492 = load i32, ptr %491, align 4
  br label %493

493:                                              ; preds = %490, %487
  %494 = phi i32 [ %492, %490 ], [ 9194, %487 ]
  %495 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 31
  store i32 %494, ptr %495, align 4
  br label %496

496:                                              ; preds = %493, %483
  %497 = phi i32 [ %494, %493 ], [ 0, %483 ]
  %498 = getelementptr i8, ptr %5, i32 4752
  %499 = load i32, ptr %143, align 8
  %500 = icmp ult i32 %499, 5
  %501 = icmp eq i32 %499, 9
  %502 = select i1 %501, i32 111, i32 63
  %503 = select i1 %500, i32 32895, i32 %502
  store i32 %503, ptr %498, align 8
  %504 = getelementptr [53 x %struct.anon.140], ptr @rtl_chip_infos, i32 0, i32 %144
  %505 = getelementptr [53 x %struct.anon.140], ptr @rtl_chip_infos, i32 0, i32 %144, i32 1
  %506 = load ptr, ptr %505, align 4
  %507 = getelementptr i8, ptr %5, i32 4832
  store ptr %506, ptr %507, align 8
  %508 = getelementptr i8, ptr %5, i32 4788
  %509 = call ptr @dmam_alloc_attrs(ptr noundef %4, i32 noundef 64, ptr noundef %508, i32 noundef 3264, i32 noundef 0) #19
  %510 = getelementptr i8, ptr %5, i32 4792
  store ptr %509, ptr %510, align 8
  %511 = icmp eq ptr %509, null
  br i1 %511, label %579, label %512

512:                                              ; preds = %496
  %513 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %10, ptr %513, align 8
  %514 = load ptr, ptr %12, align 4
  %515 = getelementptr inbounds %struct.pci_dev, ptr %514, i32 0, i32 44
  %516 = call ptr @devm_mdiobus_alloc_size(ptr noundef %515, i32 noundef 0) #19
  %517 = icmp eq ptr %516, null
  br i1 %517, label %579, label %518

518:                                              ; preds = %512
  %519 = getelementptr inbounds %struct.mii_bus, ptr %516, i32 0, i32 1
  store ptr @.str.5, ptr %519, align 4
  %520 = getelementptr inbounds %struct.mii_bus, ptr %516, i32 0, i32 3
  store ptr %10, ptr %520, align 8
  %521 = getelementptr inbounds %struct.mii_bus, ptr %516, i32 0, i32 9
  store ptr %515, ptr %521, align 4
  %522 = getelementptr inbounds %struct.mii_bus, ptr %516, i32 0, i32 15
  store i32 -2, ptr %522, align 8
  %523 = getelementptr inbounds %struct.mii_bus, ptr %516, i32 0, i32 2
  %524 = getelementptr inbounds %struct.pci_dev, ptr %514, i32 0, i32 1
  %525 = load ptr, ptr %524, align 8
  %526 = getelementptr inbounds %struct.pci_bus, ptr %525, i32 0, i32 16
  %527 = load i32, ptr %526, align 8
  %528 = getelementptr inbounds %struct.pci_bus, ptr %525, i32 0, i32 12
  %529 = load i8, ptr %528, align 4
  %530 = zext i8 %529 to i32
  %531 = shl nuw nsw i32 %530, 8
  %532 = getelementptr inbounds %struct.pci_dev, ptr %514, i32 0, i32 6
  %533 = load i32, ptr %532, align 4
  %534 = and i32 %533, 65535
  %535 = or i32 %531, %534
  %536 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %523, i32 noundef 61, ptr noundef nonnull @.str.103, i32 noundef %527, i32 noundef %535) #19
  %537 = getelementptr inbounds %struct.mii_bus, ptr %516, i32 0, i32 4
  store ptr @r8169_mdio_read_reg, ptr %537, align 4
  %538 = getelementptr inbounds %struct.mii_bus, ptr %516, i32 0, i32 5
  store ptr @r8169_mdio_write_reg, ptr %538, align 8
  %539 = call i32 @__devm_mdiobus_register(ptr noundef %515, ptr noundef nonnull %516, ptr noundef null) #19
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %579

541:                                              ; preds = %518
  %542 = call ptr @mdiobus_get_phy(ptr noundef nonnull %516, i32 noundef 0) #19
  %543 = getelementptr i8, ptr %5, i32 1420
  store ptr %542, ptr %543, align 4
  %544 = icmp eq ptr %542, null
  br i1 %544, label %579, label %545

545:                                              ; preds = %541
  %546 = getelementptr inbounds %struct.phy_device, ptr %542, i32 0, i32 1
  %547 = load ptr, ptr %546, align 8
  %548 = icmp eq ptr %547, null
  br i1 %548, label %549, label %552

549:                                              ; preds = %545
  %550 = getelementptr inbounds %struct.phy_device, ptr %542, i32 0, i32 2
  %551 = load i32, ptr %550, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %515, ptr noundef nonnull @.str.104, i32 noundef %551) #20
  br label %579

552:                                              ; preds = %545
  %553 = getelementptr inbounds %struct.phy_device, ptr %542, i32 0, i32 4
  %554 = load i16, ptr %553, align 8
  %555 = or i16 %554, 2048
  store i16 %555, ptr %553, align 8
  %556 = load ptr, ptr %543, align 4
  call void @phy_support_asym_pause(ptr noundef %556) #19
  %557 = load ptr, ptr %543, align 4
  %558 = call i32 @phy_suspend(ptr noundef %557) #19
  %559 = call i32 @register_netdev(ptr noundef %5) #19
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %579

561:                                              ; preds = %552
  %562 = load ptr, ptr %504, align 4
  %563 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  %564 = load ptr, ptr %563, align 32
  %565 = zext i16 %105 to i32
  %566 = load i32, ptr %350, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.13, ptr noundef %562, ptr noundef %564, i32 noundef %565, i32 noundef %566) #20
  br i1 %486, label %571, label %567

567:                                              ; preds = %561
  %568 = load i32, ptr %143, align 8
  %569 = icmp ult i32 %568, 5
  %570 = select i1 %569, ptr @.str.15, ptr @.str.16
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %497, ptr noundef nonnull %570) #20
  br label %571

571:                                              ; preds = %567, %561
  %572 = load i32, ptr %164, align 4
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %575, label %574

574:                                              ; preds = %571
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.17) #20
  call fastcc void @rtl8168_driver_start(ptr noundef %10)
  br label %575

575:                                              ; preds = %574, %571
  %576 = call zeroext i1 @pci_dev_run_wake(ptr noundef %0) #19
  br i1 %576, label %577, label %579

577:                                              ; preds = %575
  %578 = call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #19
  br label %579

579:                                              ; preds = %577, %575, %552, %549, %541, %518, %512, %496, %347, %133, %96, %91, %80, %70, %64, %63, %58, %40, %2
  %580 = phi i32 [ %68, %70 ], [ -19, %80 ], [ -19, %91 ], [ %94, %96 ], [ -19, %133 ], [ %345, %347 ], [ -12, %2 ], [ -12, %40 ], [ %65, %64 ], [ -12, %496 ], [ %559, %552 ], [ 0, %577 ], [ 0, %575 ], [ %61, %63 ], [ %59, %58 ], [ -19, %541 ], [ %539, %518 ], [ -12, %512 ], [ -49, %549 ]
  ret i32 %580
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_remove_one(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @pci_dev_run_wake(ptr noundef %0) #19
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #19, !srcloc !41
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #19, !srcloc !42
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  tail call void @unregister_netdev(ptr noundef %10) #19
  %11 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %87 [
    i32 0, label %135
    i32 1, label %13
  ]

13:                                               ; preds = %8
  tail call fastcc void @r8168dp_oob_notify(ptr noundef %3, i8 noundef zeroext 6) #19
  %14 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 27
  %17 = select i1 %16, i16 184, i16 16
  %18 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %3, i16 noundef zeroext %17) #19
  %19 = and i32 %18, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %135, label %21

21:                                               ; preds = %13
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %22 = load i32, ptr %14, align 8
  %23 = icmp eq i32 %22, 27
  %24 = select i1 %23, i16 184, i16 16
  %25 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %3, i16 noundef zeroext %24) #19
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %135, label %28

28:                                               ; preds = %21
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %29 = load i32, ptr %14, align 8
  %30 = icmp eq i32 %29, 27
  %31 = select i1 %30, i16 184, i16 16
  %32 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %3, i16 noundef zeroext %31) #19
  %33 = and i32 %32, 2048
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %135, label %35

35:                                               ; preds = %28
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %36 = load i32, ptr %14, align 8
  %37 = icmp eq i32 %36, 27
  %38 = select i1 %37, i16 184, i16 16
  %39 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %3, i16 noundef zeroext %38) #19
  %40 = and i32 %39, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %135, label %42

42:                                               ; preds = %35
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %43 = load i32, ptr %14, align 8
  %44 = icmp eq i32 %43, 27
  %45 = select i1 %44, i16 184, i16 16
  %46 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %3, i16 noundef zeroext %45) #19
  %47 = and i32 %46, 2048
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %135, label %49

49:                                               ; preds = %42
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %50 = load i32, ptr %14, align 8
  %51 = icmp eq i32 %50, 27
  %52 = select i1 %51, i16 184, i16 16
  %53 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %3, i16 noundef zeroext %52) #19
  %54 = and i32 %53, 2048
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %135, label %56

56:                                               ; preds = %49
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %57 = load i32, ptr %14, align 8
  %58 = icmp eq i32 %57, 27
  %59 = select i1 %58, i16 184, i16 16
  %60 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %3, i16 noundef zeroext %59) #19
  %61 = and i32 %60, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %135, label %63

63:                                               ; preds = %56
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %64 = load i32, ptr %14, align 8
  %65 = icmp eq i32 %64, 27
  %66 = select i1 %65, i16 184, i16 16
  %67 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %3, i16 noundef zeroext %66) #19
  %68 = and i32 %67, 2048
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %135, label %70

70:                                               ; preds = %63
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %71 = load i32, ptr %14, align 8
  %72 = icmp eq i32 %71, 27
  %73 = select i1 %72, i16 184, i16 16
  %74 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %3, i16 noundef zeroext %73) #19
  %75 = and i32 %74, 2048
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %135, label %77

77:                                               ; preds = %70
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %78 = load i32, ptr %14, align 8
  %79 = icmp eq i32 %78, 27
  %80 = select i1 %79, i16 184, i16 16
  %81 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %3, i16 noundef zeroext %80) #19
  %82 = and i32 %81, 2048
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %135, label %84

84:                                               ; preds = %77
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %85 = tail call i32 @net_ratelimit() #19
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %135, label %132

87:                                               ; preds = %8
  tail call fastcc void @rtl8168ep_stop_cmac(ptr noundef %3) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %3, i32 noundef 384, i32 noundef 4096, i32 noundef 6, i32 noundef 131072) #19
  %88 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 48, i32 noundef 131072) #19
  %89 = or i32 %88, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %3, i32 noundef 48, i32 noundef 4096, i32 noundef %89, i32 noundef 131072) #19
  %90 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 292, i32 noundef 131072) #19
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %135, label %93

93:                                               ; preds = %87
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %94 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 292, i32 noundef 131072) #19
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %135, label %97

97:                                               ; preds = %93
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %98 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 292, i32 noundef 131072) #19
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %135, label %101

101:                                              ; preds = %97
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %102 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 292, i32 noundef 131072) #19
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %135, label %105

105:                                              ; preds = %101
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %106 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 292, i32 noundef 131072) #19
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %135, label %109

109:                                              ; preds = %105
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %110 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 292, i32 noundef 131072) #19
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %109
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %114 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 292, i32 noundef 131072) #19
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %113
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %118 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 292, i32 noundef 131072) #19
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %117
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %122 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 292, i32 noundef 131072) #19
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %126 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %3, i32 noundef 292, i32 noundef 131072) #19
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %130 = tail call i32 @net_ratelimit() #19
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129, %84
  %133 = phi ptr [ @.str.105, %84 ], [ @.str.106, %129 ]
  %134 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %134, ptr noundef nonnull @.str.1, ptr noundef nonnull %133, i32 noundef 1, i32 noundef 10, i32 noundef 10000) #20
  br label %135

135:                                              ; preds = %132, %129, %125, %121, %117, %113, %109, %105, %101, %97, %93, %87, %84, %77, %70, %63, %56, %49, %42, %35, %28, %21, %13, %8
  %136 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 28
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  tail call void @rtl_fw_release_firmware(ptr noundef nonnull %137) #19
  %140 = load ptr, ptr %136, align 4
  tail call void @kfree(ptr noundef %140) #19
  store ptr null, ptr %136, align 4
  br label %141

141:                                              ; preds = %139, %135
  %142 = load ptr, ptr %9, align 8
  %143 = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 49
  tail call fastcc void @rtl_rar_set(ptr noundef %3, ptr noundef %143)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @rtnl_lock() #19
  %4 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  tail call void @netif_device_detach(ptr noundef %5) #19
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call fastcc void @rtl8169_down(ptr noundef %3) #19
  br label %12

12:                                               ; preds = %11, %1
  tail call void @rtnl_unlock() #19
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 49
  tail call fastcc void @rtl_rar_set(ptr noundef %3, ptr noundef %14)
  %15 = load i32, ptr @system_state, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 25
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  switch i32 %23, label %34 [
    i32 9, label %24
    i32 10, label %24
    i32 14, label %24
  ]

24:                                               ; preds = %21, %21, %21
  %25 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void @pci_clear_master(ptr noundef %26) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !43
  tail call void @arm_heavy_mb() #19
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr i8, ptr %27, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 8) #19, !srcloc !26
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr i8, ptr %29, i32 55
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %30) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !23
  %32 = load i32, ptr %18, align 8
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %24, %21, %17
  %35 = phi i1 [ %33, %24 ], [ true, %21 ], [ false, %17 ]
  %36 = tail call i32 @pci_wake_from_d3(ptr noundef %0, i1 noundef zeroext %35) #19
  %37 = tail call i32 @pci_set_power_state(ptr noundef %0, i32 noundef 3) #19
  br label %38

38:                                               ; preds = %34, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_alloc_percpu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_select_bars(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_link_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_init_rxcfg(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %16 [
    i32 8, label %4
    i32 9, label %4
    i32 10, label %4
    i32 11, label %4
    i32 12, label %4
    i32 13, label %4
    i32 14, label %4
    i32 0, label %4
    i32 1, label %4
    i32 2, label %4
    i32 3, label %4
    i32 4, label %4
    i32 34, label %7
    i32 30, label %7
    i32 31, label %7
    i32 32, label %7
    i32 15, label %7
    i32 16, label %7
    i32 17, label %7
    i32 18, label %7
    i32 19, label %7
    i32 20, label %7
    i32 21, label %7
    i32 36, label %10
    i32 37, label %10
    i32 38, label %10
    i32 39, label %10
    i32 40, label %10
    i32 41, label %10
    i32 42, label %10
    i32 43, label %10
    i32 44, label %10
    i32 45, label %10
    i32 46, label %10
    i32 47, label %10
    i32 48, label %10
    i32 49, label %10
    i32 50, label %13
    i32 51, label %13
    i32 52, label %13
  ]

4:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !44
  tail call void @arm_heavy_mb() #19
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 59136) #19, !srcloc !10
  br label %19

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !45
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 50944) #19, !srcloc !10
  br label %19

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !46
  tail call void @arm_heavy_mb() #19
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 52992) #19, !srcloc !10
  br label %19

13:                                               ; preds = %1, %1, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !47
  tail call void @arm_heavy_mb() #19
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr i8, ptr %14, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1073743616) #19, !srcloc !10
  br label %19

16:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !48
  tail call void @arm_heavy_mb() #19
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 34560) #19, !srcloc !10
  br label %19

19:                                               ; preds = %16, %13, %10, %7, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_task(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -3360
  tail call void @rtnl_lock() #19
  %3 = getelementptr i8, ptr %0, i32 -3352
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %10) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  tail call fastcc void @rtl_reset_work(ptr noundef %2)
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 87
  %20 = load ptr, ptr %19, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %20) #19
  br label %21

21:                                               ; preds = %17, %14, %9, %1
  tail call void @rtnl_unlock() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_poll(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 232
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 228
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %7
  br i1 %10, label %123, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %0, i32 236
  %13 = getelementptr i8, ptr %0, i32 1276
  %14 = getelementptr i8, ptr %0, i32 -12
  %15 = and i32 %7, 255
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr %struct.TxDesc, ptr %16, i32 %15
  %18 = load i32, ptr %17, align 8
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %26, label %123

20:                                               ; preds = %49
  %21 = and i32 %52, 255
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr %struct.TxDesc, ptr %22, i32 %21
  %24 = load i32, ptr %23, align 8
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %55

26:                                               ; preds = %20, %11
  %27 = phi ptr [ %23, %20 ], [ %17, %11 ]
  %28 = phi ptr [ %22, %20 ], [ %16, %11 ]
  %29 = phi i32 [ %21, %20 ], [ %15, %11 ]
  %30 = phi i32 [ %50, %20 ], [ 0, %11 ]
  %31 = phi i32 [ %51, %20 ], [ 0, %11 ]
  %32 = phi i32 [ %52, %20 ], [ %7, %11 ]
  %33 = getelementptr %struct.rtl8169_private, ptr %3, i32 0, i32 15, i32 %29
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr %struct.ring_info, ptr %13, i32 %29
  %36 = load ptr, ptr %14, align 4
  %37 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %38 = getelementptr %struct.TxDesc, ptr %28, i32 %29, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = getelementptr %struct.ring_info, ptr %13, i32 %29, i32 1
  %42 = load i32, ptr %41, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %37, i32 noundef %40, i32 noundef %42, i32 noundef 1, i32 noundef 0) #19
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %27, i8 0, i32 16, i1 false) #19
  store i64 0, ptr %35, align 4
  %43 = icmp eq ptr %34, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %26
  %45 = add i32 %30, 1
  %46 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, %31
  tail call void @napi_consume_skb(ptr noundef nonnull %34, i32 noundef %1) #19
  br label %49

49:                                               ; preds = %44, %26
  %50 = phi i32 [ %45, %44 ], [ %30, %26 ]
  %51 = phi i32 [ %48, %44 ], [ %31, %26 ]
  %52 = add i32 %32, 1
  %53 = load volatile i32, ptr %8, align 4
  %54 = icmp eq i32 %53, %52
  br i1 %54, label %55, label %20

55:                                               ; preds = %49, %20
  %56 = load i32, ptr %6, align 8
  %57 = icmp eq i32 %56, %52
  br i1 %57, label %123, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 87
  %60 = load ptr, ptr %59, align 64
  %61 = icmp eq i32 %51, 0
  br i1 %61, label %74, label %62, !prof !49

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.netdev_queue, ptr %60, i32 0, i32 14
  tail call void @dql_completed(ptr noundef %63, i32 noundef %51) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !50
  %64 = getelementptr inbounds %struct.netdev_queue, ptr %60, i32 0, i32 14, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = load volatile i32, ptr %63, align 64
  %67 = sub i32 %65, %66
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %74, label %69, !prof !49

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.netdev_queue, ptr %60, i32 0, i32 12
  %71 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %70) #19
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void @netif_schedule_queue(ptr noundef %60) #19
  br label %74

74:                                               ; preds = %73, %69, %62, %58
  %75 = phi i32 [ %51, %73 ], [ %51, %69 ], [ %51, %62 ], [ 0, %58 ]
  %76 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 110
  %77 = load ptr, ptr %76, align 8
  %78 = ptrtoint ptr %77 to i32
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #11, !srcloc !51
  %82 = add i32 %81, %78
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %83, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !52
  %87 = zext i32 %75 to i64
  %88 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %83, i32 0, i32 3
  %89 = load i64, ptr %88, align 8
  %90 = add i64 %89, %87
  store i64 %90, ptr %88, align 8
  %91 = zext i32 %50 to i64
  %92 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %83, i32 0, i32 2
  %93 = load i64, ptr %92, align 16
  %94 = add i64 %93, %91
  store i64 %94, ptr %92, align 16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !53
  %95 = load i32, ptr %84, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %84, align 4
  store volatile i32 %52, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !54
  %97 = load ptr, ptr %59, align 64
  %98 = getelementptr inbounds %struct.netdev_queue, ptr %97, i32 0, i32 12
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %74
  %103 = load volatile i32, ptr %6, align 8
  %104 = add i32 %103, 256
  %105 = load volatile i32, ptr %8, align 4
  %106 = sub i32 %104, %105
  %107 = icmp ugt i32 %106, 17
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  tail call void @netif_tx_wake_queue(ptr noundef %97) #19
  br label %109

109:                                              ; preds = %108, %102, %74
  %110 = load i32, ptr %8, align 4
  %111 = icmp ne i32 %110, %52
  %112 = icmp ne ptr %34, null
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = getelementptr i8, ptr %0, i32 216
  %116 = load i32, ptr %115, align 8
  %117 = icmp ugt i32 %116, 49
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %118 = load ptr, ptr %3, align 8
  br i1 %117, label %119, label %121

119:                                              ; preds = %114
  %120 = getelementptr i8, ptr %118, i32 144
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %120, i16 1) #19, !srcloc !21
  br label %123

121:                                              ; preds = %114
  %122 = getelementptr i8, ptr %118, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %122, i8 64) #19, !srcloc !26
  br label %123

123:                                              ; preds = %121, %119, %109, %55, %11, %2
  %124 = getelementptr i8, ptr %0, i32 -12
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %127 = getelementptr i8, ptr %0, i32 224
  %128 = icmp sgt i32 %1, 0
  br i1 %128, label %129, label %271

129:                                              ; preds = %123
  %130 = getelementptr i8, ptr %0, i32 240
  %131 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 4
  %132 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 10
  %133 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 12
  %134 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %135 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 6
  %136 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 8
  %137 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 110
  %138 = load i32, ptr %127, align 8
  br label %139

139:                                              ; preds = %262, %129
  %140 = phi i32 [ %138, %129 ], [ %269, %262 ]
  %141 = phi i32 [ 0, %129 ], [ %267, %262 ]
  %142 = and i32 %140, 255
  %143 = load ptr, ptr %130, align 8
  %144 = getelementptr %struct.RxDesc, ptr %143, i32 %142
  %145 = load i32, ptr %144, align 8
  %146 = icmp sgt i32 %145, -1
  br i1 %146, label %147, label %271

147:                                              ; preds = %139
  tail call void asm sideeffect "dmb osh", "~{memory}"() #19, !srcloc !55
  %148 = and i32 %145, 2097152
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152, !prof !56

150:                                              ; preds = %147
  %151 = load i64, ptr %134, align 16
  br label %180

152:                                              ; preds = %147
  %153 = tail call i32 @net_ratelimit() #19
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef %145) #20
  br label %156

156:                                              ; preds = %155, %152
  %157 = load i32, ptr %131, align 8
  %158 = add i32 %157, 1
  store i32 %158, ptr %131, align 8
  %159 = and i32 %145, 5242880
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %132, align 8
  %163 = add i32 %162, 1
  store i32 %163, ptr %132, align 8
  br label %164

164:                                              ; preds = %161, %156
  %165 = and i32 %145, 524288
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i32, ptr %133, align 8
  %169 = add i32 %168, 1
  store i32 %169, ptr %133, align 8
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i64, ptr %134, align 16
  %172 = and i64 %171, 17592186044416
  %173 = icmp eq i64 %172, 0
  %174 = and i32 %145, 4194304
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %173, i1 true, i1 %175
  %177 = and i32 %145, 1572864
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %262, label %180

180:                                              ; preds = %170, %150
  %181 = phi i64 [ %151, %150 ], [ %171, %170 ]
  %182 = and i32 %145, 16383
  %183 = and i64 %181, 8796093022208
  %184 = icmp eq i64 %183, 0
  %185 = add nsw i32 %182, -4
  %186 = select i1 %184, i32 %185, i32 %182, !prof !56
  %187 = and i32 %145, 805306368
  %188 = icmp eq i32 %187, 805306368
  br i1 %188, label %194, label %189, !prof !56

189:                                              ; preds = %180
  %190 = load i32, ptr %135, align 8
  %191 = add i32 %190, 1
  store i32 %191, ptr %135, align 8
  %192 = load i32, ptr %132, align 8
  %193 = add i32 %192, 1
  store i32 %193, ptr %132, align 8
  br label %262

194:                                              ; preds = %180
  %195 = tail call ptr @__napi_alloc_skb(ptr noundef %0, i32 noundef %186, i32 noundef 2592) #19
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %200, !prof !49

197:                                              ; preds = %194
  %198 = load i32, ptr %135, align 8
  %199 = add i32 %198, 1
  store i32 %199, ptr %135, align 8
  br label %262

200:                                              ; preds = %194
  %201 = getelementptr %struct.RxDesc, ptr %143, i32 %142, i32 2
  %202 = load i64, ptr %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = getelementptr %struct.rtl8169_private, ptr %3, i32 0, i32 14, i32 %142
  %205 = load ptr, ptr %204, align 4
  %206 = tail call ptr @page_address(ptr noundef %205) #19
  tail call void @dma_sync_single_for_cpu(ptr noundef %126, i32 noundef %203, i32 noundef %186, i32 noundef 2) #19
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %206) #19, !srcloc !57
  %207 = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 17
  %208 = load ptr, ptr %207, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %208, ptr align 1 %206, i32 %186, i1 false) #19
  %209 = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 14
  %210 = load ptr, ptr %209, align 8
  %211 = getelementptr i8, ptr %210, i32 %186
  store ptr %211, ptr %209, align 8
  %212 = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 5
  store i32 %186, ptr %212, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %126, i32 noundef %203, i32 noundef %186, i32 noundef 2) #19
  %213 = and i32 %145, 507904
  switch i32 %213, label %219 [
    i32 262144, label %214
    i32 131072, label %214
  ]

214:                                              ; preds = %200, %200
  %215 = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 13
  %216 = load i16, ptr %215, align 8
  %217 = and i16 %216, -97
  %218 = or i16 %217, 32
  store i16 %218, ptr %215, align 8
  br label %219

219:                                              ; preds = %214, %200
  %220 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %195, ptr noundef %5) #19
  %221 = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 13, i32 0, i32 16
  store i16 %220, ptr %221, align 8
  %222 = getelementptr %struct.RxDesc, ptr %143, i32 %142, i32 1
  %223 = load i32, ptr %222, align 4
  %224 = and i32 %223, 65536
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %234, label %226

226:                                              ; preds = %219
  %227 = trunc i32 %223 to i16
  %228 = tail call i16 @llvm.bswap.i16(i16 %227) #19
  %229 = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 13, i32 0, i32 8
  store i16 129, ptr %229, align 4
  %230 = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 13, i32 0, i32 9
  store i16 %228, ptr %230, align 2
  %231 = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 13, i32 0, i32 3
  %232 = load i16, ptr %231, align 2
  %233 = or i16 %232, 1
  store i16 %233, ptr %231, align 2
  br label %234

234:                                              ; preds = %226, %219
  %235 = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 13
  %236 = load i16, ptr %235, align 8
  %237 = and i16 %236, 7
  %238 = icmp eq i16 %237, 2
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load i32, ptr %136, align 8
  %241 = add i32 %240, 1
  store i32 %241, ptr %136, align 8
  br label %242

242:                                              ; preds = %239, %234
  %243 = tail call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %195) #19
  %244 = load ptr, ptr %137, align 8
  %245 = ptrtoint ptr %244 to i32
  %246 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %247 = inttoptr i32 %246 to ptr
  %248 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %247) #11, !srcloc !51
  %249 = add i32 %248, %245
  %250 = inttoptr i32 %249 to ptr
  %251 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %250, i32 0, i32 4
  %252 = load i32, ptr %251, align 4
  %253 = add i32 %252, 1
  store i32 %253, ptr %251, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !52
  %254 = zext i32 %186 to i64
  %255 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %250, i32 0, i32 1
  %256 = load i64, ptr %255, align 8
  %257 = add i64 %256, %254
  store i64 %257, ptr %255, align 8
  %258 = load i64, ptr %250, align 32
  %259 = add i64 %258, 1
  store i64 %259, ptr %250, align 32
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !53
  %260 = load i32, ptr %251, align 4
  %261 = add i32 %260, 1
  store i32 %261, ptr %251, align 4
  br label %262

262:                                              ; preds = %242, %197, %189, %170
  %263 = load i32, ptr %144, align 8
  %264 = and i32 %263, 1073741824
  %265 = getelementptr %struct.RxDesc, ptr %143, i32 %142, i32 1
  store i32 0, ptr %265, align 4
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #19, !srcloc !58
  %266 = or i32 %264, -2147467265
  store volatile i32 %266, ptr %144, align 8
  %267 = add nuw nsw i32 %141, 1
  %268 = load i32, ptr %127, align 8
  %269 = add i32 %268, 1
  store i32 %269, ptr %127, align 8
  %270 = icmp eq i32 %267, %1
  br i1 %270, label %289, label %139

271:                                              ; preds = %139, %123
  %272 = phi i32 [ 0, %123 ], [ %141, %139 ]
  %273 = icmp slt i32 %272, %1
  br i1 %273, label %274, label %289

274:                                              ; preds = %271
  %275 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %272) #19
  br i1 %275, label %276, label %289

276:                                              ; preds = %274
  %277 = getelementptr i8, ptr %0, i32 216
  %278 = load i32, ptr %277, align 8
  %279 = icmp ugt i32 %278, 49
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %280 = getelementptr i8, ptr %0, i32 3328
  %281 = load i32, ptr %280, align 8
  br i1 %279, label %282, label %285

282:                                              ; preds = %276
  %283 = load ptr, ptr %3, align 8
  %284 = getelementptr i8, ptr %283, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %281) #19, !srcloc !10
  br label %289

285:                                              ; preds = %276
  %286 = trunc i32 %281 to i16
  %287 = load ptr, ptr %3, align 8
  %288 = getelementptr i8, ptr %287, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %288, i16 %286) #19, !srcloc !21
  br label %289

289:                                              ; preds = %285, %282, %274, %271, %262
  %290 = phi i32 [ %272, %274 ], [ %272, %271 ], [ %272, %282 ], [ %272, %285 ], [ %1, %262 ]
  ret i32 %290
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_set_features(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !59
  %7 = and i64 %1, 17592186044416
  %8 = icmp eq i64 %7, 0
  %9 = and i32 %6, -49
  %10 = select i1 %8, i32 0, i32 48
  %11 = or i32 %9, %10
  %12 = getelementptr i8, ptr %0, i32 1640
  %13 = load i32, ptr %12, align 8
  %14 = icmp ugt i32 %13, 49
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = and i64 %1, 256
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = or i32 %11, 12582912
  br label %22

20:                                               ; preds = %15
  %21 = and i32 %11, -12582913
  br label %22

22:                                               ; preds = %20, %18, %2
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ], [ %11, %2 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !60
  tail call void @arm_heavy_mb() #19
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr i8, ptr %24, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #19, !srcloc !10
  %26 = getelementptr i8, ptr %0, i32 4748
  %27 = load i16, ptr %26, align 4
  %28 = and i16 %27, -33
  %29 = lshr i64 %1, 35
  %30 = trunc i64 %29 to i16
  %31 = and i16 %30, 32
  %32 = or i16 %28, %31
  store i16 %32, ptr %26, align 4
  %33 = load i32, ptr %12, align 8
  %34 = icmp ugt i32 %33, 49
  br i1 %34, label %42, label %35

35:                                               ; preds = %22
  %36 = getelementptr i8, ptr %0, i32 4748
  %37 = and i16 %32, -65
  %38 = trunc i64 %1 to i16
  %39 = lshr i16 %38, 2
  %40 = and i16 %39, 64
  %41 = or i16 %37, %40
  store i16 %41, ptr %36, align 4
  br label %42

42:                                               ; preds = %35, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !61
  tail call void @arm_heavy_mb() #19
  %43 = getelementptr i8, ptr %0, i32 4748
  %44 = load i16, ptr %43, align 4
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr i8, ptr %45, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 %44) #19, !srcloc !21
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr i8, ptr %47, i32 55
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl8168_driver_start(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %79

5:                                                ; preds = %1
  tail call fastcc void @r8168dp_oob_notify(ptr noundef %0, i8 noundef zeroext 5) #19
  %6 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 27
  %9 = select i1 %8, i16 184, i16 16
  %10 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %0, i16 noundef zeroext %9) #19
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %128

13:                                               ; preds = %5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %14 = load i32, ptr %6, align 8
  %15 = icmp eq i32 %14, 27
  %16 = select i1 %15, i16 184, i16 16
  %17 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %0, i16 noundef zeroext %16) #19
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %128

20:                                               ; preds = %13
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %21 = load i32, ptr %6, align 8
  %22 = icmp eq i32 %21, 27
  %23 = select i1 %22, i16 184, i16 16
  %24 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %0, i16 noundef zeroext %23) #19
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %128

27:                                               ; preds = %20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %28 = load i32, ptr %6, align 8
  %29 = icmp eq i32 %28, 27
  %30 = select i1 %29, i16 184, i16 16
  %31 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %0, i16 noundef zeroext %30) #19
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %128

34:                                               ; preds = %27
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %35 = load i32, ptr %6, align 8
  %36 = icmp eq i32 %35, 27
  %37 = select i1 %36, i16 184, i16 16
  %38 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %0, i16 noundef zeroext %37) #19
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %128

41:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %42 = load i32, ptr %6, align 8
  %43 = icmp eq i32 %42, 27
  %44 = select i1 %43, i16 184, i16 16
  %45 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %0, i16 noundef zeroext %44) #19
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %128

48:                                               ; preds = %41
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %49 = load i32, ptr %6, align 8
  %50 = icmp eq i32 %49, 27
  %51 = select i1 %50, i16 184, i16 16
  %52 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %0, i16 noundef zeroext %51) #19
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %128

55:                                               ; preds = %48
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %56 = load i32, ptr %6, align 8
  %57 = icmp eq i32 %56, 27
  %58 = select i1 %57, i16 184, i16 16
  %59 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %0, i16 noundef zeroext %58) #19
  %60 = and i32 %59, 2048
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %128

62:                                               ; preds = %55
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %63 = load i32, ptr %6, align 8
  %64 = icmp eq i32 %63, 27
  %65 = select i1 %64, i16 184, i16 16
  %66 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %0, i16 noundef zeroext %65) #19
  %67 = and i32 %66, 2048
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %128

69:                                               ; preds = %62
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %70 = load i32, ptr %6, align 8
  %71 = icmp eq i32 %70, 27
  %72 = select i1 %71, i16 184, i16 16
  %73 = tail call fastcc i32 @r8168dp_ocp_read(ptr noundef %0, i16 noundef zeroext %72) #19
  %74 = and i32 %73, 2048
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %69
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %77 = tail call i32 @net_ratelimit() #19
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %128, label %124

79:                                               ; preds = %1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 384, i32 noundef 4096, i32 noundef 5, i32 noundef 131072) #19
  %80 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 48, i32 noundef 131072) #19
  %81 = or i32 %80, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 48, i32 noundef 4096, i32 noundef %81, i32 noundef 131072) #19
  %82 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 292, i32 noundef 131072) #19
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %79
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %86 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 292, i32 noundef 131072) #19
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %128

89:                                               ; preds = %85
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %90 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 292, i32 noundef 131072) #19
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %128

93:                                               ; preds = %89
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %94 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 292, i32 noundef 131072) #19
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %93
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %98 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 292, i32 noundef 131072) #19
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %97
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %102 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 292, i32 noundef 131072) #19
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %101
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %106 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 292, i32 noundef 131072) #19
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %110 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 292, i32 noundef 131072) #19
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %114 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 292, i32 noundef 131072) #19
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %118 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 292, i32 noundef 131072) #19
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %122 = tail call i32 @net_ratelimit() #19
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121, %76
  %125 = phi ptr [ @.str.105, %76 ], [ @.str.106, %121 ]
  %126 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %127, ptr noundef nonnull @.str.1, ptr noundef nonnull %125, i32 noundef 0, i32 noundef 10, i32 noundef 10000) #20
  br label %128

128:                                              ; preds = %124, %121, %117, %113, %109, %105, %101, %97, %93, %89, %85, %79, %76, %69, %62, %55, %48, %41, %34, %27, %20, %13, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_dev_run_wake(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl_open(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1412
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #19
  %7 = getelementptr i8, ptr %0, i32 1668
  %8 = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %7, i32 noundef 3264, i32 noundef 0) #19
  %9 = getelementptr i8, ptr %0, i32 1660
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %160, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 1672
  %13 = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %12, i32 noundef 3264, i32 noundef 0) #19
  %14 = getelementptr i8, ptr %0, i32 1664
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %196, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %0, i32 1648
  store i32 0, ptr %17, align 8
  %18 = getelementptr i8, ptr %0, i32 1652
  store i32 0, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 1656
  store i32 0, ptr %19, align 8
  %20 = getelementptr i8, ptr %0, i32 1676
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(3072) %20, i8 0, i64 3072, i1 false) #19
  br label %21

21:                                               ; preds = %55, %16
  %22 = phi ptr [ %13, %16 ], [ %65, %55 ]
  %23 = phi i32 [ 0, %16 ], [ %63, %55 ]
  %24 = getelementptr %struct.RxDesc, ptr %22, i32 %23
  %25 = load ptr, ptr %3, align 4
  %26 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 2, i32 noundef 0, ptr noundef null) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %30 = tail call i32 @dma_map_page_attrs(ptr noundef %29, ptr noundef nonnull %26, i32 noundef 0, i32 noundef 16383, i32 noundef 2, i32 noundef 0) #19
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %55, !prof !49

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 1416
  %34 = load ptr, ptr %33, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.18) #20
  tail call void @__free_pages(ptr noundef nonnull %26, i32 noundef 2) #19
  br label %35

35:                                               ; preds = %32, %21
  br label %36

36:                                               ; preds = %41, %35
  %37 = phi i32 [ %53, %41 ], [ 0, %35 ]
  %38 = getelementptr %struct.rtl8169_private, ptr %2, i32 0, i32 14, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %192, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %44 = load ptr, ptr %14, align 8
  %45 = getelementptr %struct.RxDesc, ptr %44, i32 %37, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %43, i32 noundef %47, i32 noundef 16383, i32 noundef 2, i32 noundef 0) #19
  %48 = load ptr, ptr %38, align 4
  tail call void @__free_pages(ptr noundef %48, i32 noundef 2) #19
  store ptr null, ptr %38, align 4
  %49 = load ptr, ptr %14, align 8
  %50 = getelementptr %struct.RxDesc, ptr %49, i32 %37, i32 2
  store i64 0, ptr %50, align 8
  %51 = load ptr, ptr %14, align 8
  %52 = getelementptr %struct.RxDesc, ptr %51, i32 %37
  store i32 0, ptr %52, align 8
  %53 = add nuw nsw i32 %37, 1
  %54 = icmp eq i32 %53, 256
  br i1 %54, label %192, label %36

55:                                               ; preds = %28
  %56 = zext i32 %30 to i64
  %57 = getelementptr %struct.RxDesc, ptr %22, i32 %23, i32 2
  store i64 %56, ptr %57, align 8
  %58 = load i32, ptr %24, align 8
  %59 = and i32 %58, 1073741824
  %60 = getelementptr %struct.RxDesc, ptr %22, i32 %23, i32 1
  store i32 0, ptr %60, align 4
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #19, !srcloc !58
  %61 = or i32 %59, -2147467265
  store volatile i32 %61, ptr %24, align 8
  %62 = getelementptr %struct.rtl8169_private, ptr %2, i32 0, i32 14, i32 %23
  store ptr %26, ptr %62, align 4
  %63 = add nuw nsw i32 %23, 1
  %64 = icmp eq i32 %63, 256
  %65 = load ptr, ptr %14, align 8
  br i1 %64, label %66, label %21

66:                                               ; preds = %55
  %67 = getelementptr %struct.RxDesc, ptr %65, i32 255
  %68 = load i32, ptr %67, align 8
  %69 = or i32 %68, 1073741824
  store i32 %69, ptr %67, align 8
  %70 = getelementptr i8, ptr %0, i32 4836
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = getelementptr i8, ptr %0, i32 4832
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %94, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %79 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 68) #22
  %80 = icmp eq ptr %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %77
  store ptr @rtl_writephy, ptr %79, align 8
  %82 = getelementptr inbounds %struct.rtl_fw, ptr %79, i32 0, i32 1
  store ptr @rtl_readphy, ptr %82, align 4
  %83 = getelementptr inbounds %struct.rtl_fw, ptr %79, i32 0, i32 2
  store ptr @mac_mcu_write, ptr %83, align 8
  %84 = getelementptr inbounds %struct.rtl_fw, ptr %79, i32 0, i32 3
  store ptr @mac_mcu_read, ptr %84, align 4
  %85 = load ptr, ptr %74, align 8
  %86 = getelementptr inbounds %struct.rtl_fw, ptr %79, i32 0, i32 5
  store ptr %85, ptr %86, align 4
  %87 = load ptr, ptr %3, align 4
  %88 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %89 = getelementptr inbounds %struct.rtl_fw, ptr %79, i32 0, i32 6
  store ptr %88, ptr %89, align 8
  %90 = tail call i32 @rtl_fw_request_firmware(ptr noundef nonnull %79) #19
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %81
  tail call void @kfree(ptr noundef nonnull %79) #19
  br label %94

93:                                               ; preds = %81
  store ptr %79, ptr %70, align 4
  br label %94

94:                                               ; preds = %93, %92, %77, %73, %66
  %95 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 49
  %96 = load i40, ptr %95, align 1
  %97 = and i40 %96, 12288
  %98 = icmp eq i40 %97, 0
  %99 = select i1 %98, i32 128, i32 65536
  %100 = getelementptr i8, ptr %0, i32 4756
  %101 = load i32, ptr %100, align 4
  %102 = tail call i32 @request_threaded_irq(i32 noundef %101, ptr noundef nonnull @rtl8169_interrupt, ptr noundef null, i32 noundef %99, ptr noundef %0, ptr noundef %2) #19
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %166, label %104

104:                                              ; preds = %94
  %105 = getelementptr i8, ptr %0, i32 1420
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %0, i32 4784
  %108 = load i8, ptr %107, align 8
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i32 2, i32 3
  %112 = getelementptr i8, ptr %0, i32 1416
  %113 = load ptr, ptr %112, align 8
  %114 = tail call i32 @phy_connect_direct(ptr noundef %113, ptr noundef %106, ptr noundef nonnull @r8169_phylink_handler, i32 noundef %111) #19
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %163

116:                                              ; preds = %104
  %117 = load i8, ptr %107, align 8
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = tail call i32 @phy_set_max_speed(ptr noundef %106, i32 noundef 100) #19
  br label %122

122:                                              ; preds = %120, %116
  tail call void @phy_attached_info(ptr noundef %106) #19
  tail call fastcc void @rtl8169_up(ptr noundef %2)
  %123 = getelementptr i8, ptr %0, i32 4792
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr i8, ptr %0, i32 4800
  %126 = load i8, ptr %125, align 8, !range !62
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %122
  %129 = getelementptr i8, ptr %0, i32 1640
  %130 = load i32, ptr %129, align 8
  %131 = icmp ugt i32 %130, 15
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  tail call fastcc void @rtl8169_do_counters(ptr noundef %2, i32 noundef 1) #19
  br label %155

133:                                              ; preds = %128
  %134 = load ptr, ptr %2, align 8
  %135 = getelementptr i8, ptr %134, i32 55
  %136 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %135) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !63
  %137 = and i8 %136, 8
  %138 = icmp ne i8 %137, 0
  %139 = icmp ne i8 %136, -1
  %140 = and i1 %139, %138
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  tail call fastcc void @rtl8169_do_counters(ptr noundef %2, i32 noundef 8) #19
  br label %142

142:                                              ; preds = %141, %133
  %143 = getelementptr inbounds %struct.rtl8169_counters, ptr %124, i32 0, i32 2
  %144 = load i64, ptr %143, align 8
  %145 = getelementptr i8, ptr %0, i32 4808
  store i64 %144, ptr %145, align 8
  %146 = getelementptr inbounds %struct.rtl8169_counters, ptr %124, i32 0, i32 7
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr i8, ptr %0, i32 4816
  store i32 %147, ptr %148, align 8
  %149 = getelementptr inbounds %struct.rtl8169_counters, ptr %124, i32 0, i32 11
  %150 = load i16, ptr %149, align 4
  %151 = getelementptr i8, ptr %0, i32 4820
  store i16 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.rtl8169_counters, ptr %124, i32 0, i32 4
  %153 = load i16, ptr %152, align 4
  %154 = getelementptr i8, ptr %0, i32 4822
  store i16 %153, ptr %154, align 2
  br label %155

155:                                              ; preds = %142, %132
  store i8 1, ptr %125, align 8
  br label %156

156:                                              ; preds = %155, %122
  %157 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %158 = load ptr, ptr %157, align 64
  %159 = getelementptr inbounds %struct.netdev_queue, ptr %158, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %159) #19
  br label %160

160:                                              ; preds = %196, %156, %1
  %161 = phi i32 [ %197, %196 ], [ 0, %156 ], [ -12, %1 ]
  %162 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #19
  ret i32 %161

163:                                              ; preds = %104
  %164 = load i32, ptr %100, align 4
  %165 = tail call ptr @free_irq(i32 noundef %164, ptr noundef %2) #19
  br label %166

166:                                              ; preds = %163, %94
  %167 = phi i32 [ %102, %94 ], [ %114, %163 ]
  %168 = load ptr, ptr %70, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  tail call void @rtl_fw_release_firmware(ptr noundef nonnull %168) #19
  %171 = load ptr, ptr %70, align 4
  tail call void @kfree(ptr noundef %171) #19
  store ptr null, ptr %70, align 4
  br label %172

172:                                              ; preds = %170, %166
  br label %173

173:                                              ; preds = %178, %172
  %174 = phi i32 [ %190, %178 ], [ 0, %172 ]
  %175 = getelementptr %struct.rtl8169_private, ptr %2, i32 0, i32 14, i32 %174
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %192, label %178

178:                                              ; preds = %173
  %179 = load ptr, ptr %3, align 4
  %180 = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 44
  %181 = load ptr, ptr %14, align 8
  %182 = getelementptr %struct.RxDesc, ptr %181, i32 %174, i32 2
  %183 = load i64, ptr %182, align 8
  %184 = trunc i64 %183 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %180, i32 noundef %184, i32 noundef 16383, i32 noundef 2, i32 noundef 0) #19
  %185 = load ptr, ptr %175, align 4
  tail call void @__free_pages(ptr noundef %185, i32 noundef 2) #19
  store ptr null, ptr %175, align 4
  %186 = load ptr, ptr %14, align 8
  %187 = getelementptr %struct.RxDesc, ptr %186, i32 %174, i32 2
  store i64 0, ptr %187, align 8
  %188 = load ptr, ptr %14, align 8
  %189 = getelementptr %struct.RxDesc, ptr %188, i32 %174
  store i32 0, ptr %189, align 8
  %190 = add nuw nsw i32 %174, 1
  %191 = icmp eq i32 %190, 256
  br i1 %191, label %192, label %173

192:                                              ; preds = %178, %173, %41, %36
  %193 = phi i32 [ -12, %41 ], [ -12, %36 ], [ %167, %173 ], [ %167, %178 ]
  %194 = load ptr, ptr %14, align 8
  %195 = load i32, ptr %12, align 8
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %194, i32 noundef %195, i32 noundef 0) #19
  store ptr null, ptr %14, align 8
  br label %196

196:                                              ; preds = %192, %11
  %197 = phi i32 [ %193, %192 ], [ -12, %11 ]
  %198 = load ptr, ptr %9, align 4
  %199 = load i32, ptr %7, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %198, i32 noundef %199, i32 noundef 0) #19
  store ptr null, ptr %9, align 4
  br label %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_close(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1412
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #19
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %9) #19
  tail call fastcc void @rtl8169_down(ptr noundef %2)
  %10 = getelementptr i8, ptr %0, i32 1664
  br label %11

11:                                               ; preds = %16, %1
  %12 = phi i32 [ 0, %1 ], [ %28, %16 ]
  %13 = getelementptr %struct.rtl8169_private, ptr %2, i32 0, i32 14, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr %struct.RxDesc, ptr %19, i32 %12, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %22, i32 noundef 16383, i32 noundef 2, i32 noundef 0) #19
  %23 = load ptr, ptr %13, align 4
  tail call void @__free_pages(ptr noundef %23, i32 noundef 2) #19
  store ptr null, ptr %13, align 4
  %24 = load ptr, ptr %10, align 8
  %25 = getelementptr %struct.RxDesc, ptr %24, i32 %12, i32 2
  store i64 0, ptr %25, align 8
  %26 = load ptr, ptr %10, align 8
  %27 = getelementptr %struct.RxDesc, ptr %26, i32 %12
  store i32 0, ptr %27, align 8
  %28 = add nuw nsw i32 %12, 1
  %29 = icmp eq i32 %28, 256
  br i1 %29, label %30, label %11

30:                                               ; preds = %16, %11
  %31 = getelementptr i8, ptr %0, i32 4768
  %32 = tail call zeroext i1 @cancel_work_sync(ptr noundef %31) #19
  %33 = getelementptr i8, ptr %0, i32 4756
  %34 = load i32, ptr %33, align 4
  %35 = tail call ptr @free_irq(i32 noundef %34, ptr noundef %2) #19
  %36 = getelementptr i8, ptr %0, i32 1420
  %37 = load ptr, ptr %36, align 4
  tail call void @phy_disconnect(ptr noundef %37) #19
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr i8, ptr %0, i32 1672
  %40 = load i32, ptr %39, align 8
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %38, i32 noundef %40, i32 noundef 0) #19
  %41 = getelementptr i8, ptr %0, i32 1660
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %0, i32 1668
  %44 = load i32, ptr %43, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %42, i32 noundef %44, i32 noundef 0) #19
  store ptr null, ptr %41, align 4
  store ptr null, ptr %10, align 8
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_start_xmit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.vlan_hdr, align 4
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %1, i32 1408
  %11 = getelementptr i8, ptr %1, i32 1652
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %14 = getelementptr i8, ptr %1, i32 1656
  %15 = load volatile i32, ptr %14, align 8
  %16 = add i32 %15, 256
  %17 = load volatile i32, ptr %11, align 4
  %18 = sub i32 %16, %17
  %19 = icmp ugt i32 %18, 17
  br i1 %19, label %24, label %20, !prof !56

20:                                               ; preds = %2
  %21 = tail call i32 @net_ratelimit() #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %425, label %23

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.35) #20
  br label %425

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %31 = load i16, ptr %30, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #19
  %33 = zext i16 %32 to i32
  %34 = or i32 %33, 131072
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i32 [ %34, %29 ], [ 0, %24 ]
  %37 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  store i32 0, ptr %4, align 8
  %38 = getelementptr i8, ptr %1, i32 1640
  %39 = load i32, ptr %38, align 8
  switch i32 %39, label %67 [
    i32 8, label %40
    i32 9, label %40
    i32 10, label %40
    i32 11, label %40
    i32 12, label %40
    i32 13, label %40
    i32 14, label %40
    i32 0, label %40
    i32 1, label %40
    i32 2, label %40
    i32 3, label %40
    i32 4, label %40
  ]

40:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35
  %41 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 4
  %42 = load i16, ptr %41, align 4
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = zext i16 %42 to i32
  %46 = shl nuw i32 %45, 16
  %47 = or i32 %46, 134217728
  store i32 %47, ptr %4, align 8
  br label %244

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %50 = load i16, ptr %49, align 8
  %51 = and i16 %50, 96
  %52 = icmp eq i16 %51, 96
  br i1 %52, label %53, label %244

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %57 = load i16, ptr %56, align 4
  %58 = zext i16 %57 to i32
  %59 = getelementptr i8, ptr %55, i32 %58
  %60 = getelementptr inbounds %struct.iphdr, ptr %59, i32 0, i32 6
  %61 = load i8, ptr %60, align 1
  switch i8 %61, label %64 [
    i8 6, label %62
    i8 17, label %63
  ]

62:                                               ; preds = %53
  store i32 327680, ptr %4, align 8
  br label %244

63:                                               ; preds = %53
  store i32 393216, ptr %4, align 8
  br label %244

64:                                               ; preds = %53
  %65 = load i1, ptr @rtl8169_tso_csum_v1.__already_done, align 1
  br i1 %65, label %244, label %66, !prof !56

66:                                               ; preds = %64
  store i1 true, ptr @rtl8169_tso_csum_v1.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 4151, i32 noundef 9, ptr noundef null) #19
  br label %244

67:                                               ; preds = %35
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = getelementptr i8, ptr %69, i32 %72
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = ptrtoint ptr %73 to i32
  %77 = ptrtoint ptr %75 to i32
  %78 = sub i32 %76, %77
  %79 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 4
  %80 = load i16, ptr %79, align 4
  %81 = zext i16 %80 to i32
  %82 = icmp eq i16 %80, 0
  br i1 %82, label %139, label %83

83:                                               ; preds = %67
  %84 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 8
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %133

88:                                               ; preds = %83
  %89 = and i32 %85, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %130, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %93 = load i8, ptr %92, align 2
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 10
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %98, 65535
  %100 = ashr i32 %98, 16
  %101 = sub nsw i32 %99, %100
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #19
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %421

106:                                              ; preds = %103
  %107 = load ptr, ptr %68, align 8
  %108 = load i16, ptr %70, align 2
  %109 = zext i16 %108 to i32
  br label %110

110:                                              ; preds = %106, %96, %91
  %111 = phi i32 [ %109, %106 ], [ %72, %91 ], [ %72, %96 ]
  %112 = phi ptr [ %107, %106 ], [ %69, %91 ], [ %69, %96 ]
  %113 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %114 = load i16, ptr %113, align 4
  %115 = zext i16 %114 to i32
  %116 = getelementptr i8, ptr %112, i32 %115
  %117 = getelementptr i8, ptr %112, i32 %111
  %118 = getelementptr inbounds %struct.ipv6hdr, ptr %116, i32 0, i32 2
  store i16 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.ipv6hdr, ptr %116, i32 0, i32 5
  %120 = getelementptr inbounds %struct.ipv6hdr, ptr %116, i32 0, i32 6
  %121 = tail call i32 @__csum_ipv6_magic(ptr noundef %119, ptr noundef %120, i32 noundef 0, i32 noundef 100663296, i32 noundef 0) #19
  %122 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %121) #23, !srcloc !64
  %123 = xor i32 %122, -1
  %124 = lshr i32 %123, 16
  %125 = trunc i32 %124 to i16
  %126 = xor i16 %125, -1
  %127 = getelementptr inbounds %struct.tcphdr, ptr %117, i32 0, i32 6
  store i16 %126, ptr %127, align 4
  %128 = load i32, ptr %4, align 8
  %129 = or i32 %128, 33554432
  br label %133

130:                                              ; preds = %88
  %131 = load i1, ptr @rtl8169_tso_csum_v2.__already_done, align 1
  br i1 %131, label %133, label %132, !prof !56

132:                                              ; preds = %130
  store i1 true, ptr @rtl8169_tso_csum_v2.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 4172, i32 noundef 9, ptr noundef null) #19
  br label %133

133:                                              ; preds = %132, %130, %110, %83
  %134 = phi i32 [ 0, %132 ], [ 0, %130 ], [ %129, %110 ], [ 67108864, %83 ]
  %135 = shl i32 %78, 18
  %136 = or i32 %134, %135
  store i32 %136, ptr %4, align 8
  %137 = shl i32 %81, 18
  %138 = or i32 %36, %137
  store i32 %138, ptr %37, align 4
  br label %244

139:                                              ; preds = %67
  %140 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %141 = load i16, ptr %140, align 8
  %142 = and i16 %141, 96
  %143 = icmp eq i16 %142, 96
  br i1 %143, label %144, label %224

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %146 = load i16, ptr %145, align 8
  %147 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %148 = load i16, ptr %147, align 8
  %149 = zext i16 %148 to i32
  switch i16 %146, label %190 [
    i16 -22392, label %150
    i16 129, label %150
  ]

150:                                              ; preds = %144, %144
  %151 = icmp eq i16 %148, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %150
  %153 = icmp ult i16 %148, 4
  br i1 %153, label %154, label %155, !prof !49

154:                                              ; preds = %152
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 598, i32 noundef 9, ptr noundef null) #19
  br label %216

155:                                              ; preds = %152
  %156 = add nsw i32 %149, -4
  br label %157

157:                                              ; preds = %155, %150
  %158 = phi i32 [ %156, %155 ], [ 14, %150 ]
  %159 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %160 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %161 = icmp eq ptr %0, null
  br label %162

162:                                              ; preds = %188, %157
  %163 = phi i32 [ %158, %157 ], [ %189, %188 ]
  %164 = phi i32 [ 8, %157 ], [ %181, %188 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4, !annotation !65
  %165 = load i32, ptr %159, align 8
  %166 = load i32, ptr %160, align 4
  %167 = add i32 %163, %166
  %168 = sub i32 %165, %167
  %169 = icmp slt i32 %168, 4
  br i1 %169, label %173, label %170, !prof !49

170:                                              ; preds = %162
  %171 = load ptr, ptr %74, align 4
  %172 = getelementptr i8, ptr %171, i32 %163
  br label %178

173:                                              ; preds = %162
  br i1 %161, label %184, label %174

174:                                              ; preds = %173
  %175 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %163, ptr noundef nonnull %3, i32 noundef 4) #19
  %176 = icmp slt i32 %175, 0
  %177 = select i1 %176, ptr null, ptr %3, !prof !49
  br label %178

178:                                              ; preds = %174, %170
  %179 = phi ptr [ %172, %170 ], [ %177, %174 ]
  %180 = icmp eq ptr %179, null
  %181 = add nsw i32 %164, -1
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %180, i1 true, i1 %182, !prof !49
  br i1 %183, label %184, label %185, !prof !49

184:                                              ; preds = %178, %173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %216

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.vlan_hdr, ptr %179, i32 0, i32 1
  %187 = load i16, ptr %186, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  switch i16 %187, label %190 [
    i16 -22392, label %188
    i16 129, label %188
  ]

188:                                              ; preds = %185, %185
  %189 = add nsw i32 %163, 4
  br label %162

190:                                              ; preds = %185, %144
  %191 = phi i16 [ %146, %144 ], [ %187, %185 ]
  switch i16 %191, label %216 [
    i16 8, label %192
    i16 -8826, label %200
  ]

192:                                              ; preds = %190
  %193 = or i32 %36, 536870912
  %194 = load ptr, ptr %68, align 8
  %195 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %196 = load i16, ptr %195, align 4
  %197 = zext i16 %196 to i32
  %198 = getelementptr i8, ptr %194, i32 %197
  %199 = getelementptr inbounds %struct.iphdr, ptr %198, i32 0, i32 6
  br label %208

200:                                              ; preds = %190
  %201 = or i32 %36, 268435456
  %202 = load ptr, ptr %68, align 8
  %203 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %204 = load i16, ptr %203, align 4
  %205 = zext i16 %204 to i32
  %206 = getelementptr i8, ptr %202, i32 %205
  %207 = getelementptr inbounds %struct.ipv6hdr, ptr %206, i32 0, i32 3
  br label %208

208:                                              ; preds = %200, %192
  %209 = phi i32 [ %201, %200 ], [ %193, %192 ]
  %210 = phi ptr [ %207, %200 ], [ %199, %192 ]
  %211 = load i8, ptr %210, align 1
  switch i8 %211, label %216 [
    i8 6, label %212
    i8 17, label %214
  ]

212:                                              ; preds = %208
  %213 = or i32 %209, 1073741824
  br label %220

214:                                              ; preds = %208
  %215 = or i32 %209, -2147483648
  br label %220

216:                                              ; preds = %208, %190, %184, %154
  %217 = phi i32 [ %209, %208 ], [ %36, %190 ], [ %36, %184 ], [ %36, %154 ]
  %218 = load i1, ptr @rtl8169_tso_csum_v2.__already_done.36, align 1
  br i1 %218, label %220, label %219, !prof !56

219:                                              ; preds = %216
  store i1 true, ptr @rtl8169_tso_csum_v2.__already_done.36, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 4201, i32 noundef 9, ptr noundef null) #19
  br label %220

220:                                              ; preds = %219, %216, %214, %212
  %221 = phi i32 [ %217, %219 ], [ %217, %216 ], [ %215, %214 ], [ %213, %212 ]
  %222 = shl i32 %78, 18
  %223 = or i32 %221, %222
  store i32 %223, ptr %37, align 4
  br label %244

224:                                              ; preds = %139
  %225 = tail call fastcc i32 @rtl_quirk_packet_padto(ptr noundef %10, ptr noundef %0) #19
  %226 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %227 = load i32, ptr %226, align 8
  %228 = icmp ugt i32 %225, %227
  br i1 %228, label %229, label %244, !prof !49

229:                                              ; preds = %224
  %230 = sub i32 %225, %227
  %231 = tail call i32 @__skb_pad(ptr noundef %0, i32 noundef %230, i1 noundef zeroext false) #19
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %421

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %235 = load i32, ptr %234, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %238, label %237, !prof !56

237:                                              ; preds = %233
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #19, !srcloc !66
  unreachable

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %240 = load ptr, ptr %239, align 8
  %241 = getelementptr i8, ptr %240, i32 %230
  store ptr %241, ptr %239, align 8
  %242 = load i32, ptr %226, align 8
  %243 = add i32 %242, %230
  store i32 %243, ptr %226, align 8
  br label %244

244:                                              ; preds = %238, %224, %220, %133, %66, %64, %63, %62, %48, %44
  %245 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %246 = load i32, ptr %245, align 8
  %247 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %248 = load i32, ptr %247, align 4
  %249 = sub i32 %246, %248
  %250 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %251 = load ptr, ptr %250, align 4
  %252 = call fastcc i32 @rtl8169_tx_map(ptr noundef %10, ptr noundef nonnull %4, i32 noundef %249, ptr noundef %251, i32 noundef %13, i1 noundef zeroext false)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %421, !prof !56

254:                                              ; preds = %244
  %255 = getelementptr i8, ptr %1, i32 1660
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr %struct.TxDesc, ptr %256, i32 %13
  %258 = icmp eq i8 %8, 0
  br i1 %258, label %320, label %259

259:                                              ; preds = %254
  %260 = load ptr, ptr %5, align 4
  %261 = getelementptr inbounds %struct.skb_shared_info, ptr %260, i32 0, i32 2
  %262 = load i8, ptr %261, align 2
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %316, label %264

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.skb_shared_info, ptr %260, i32 0, i32 12
  br label %266

266:                                              ; preds = %281, %264
  %267 = phi i32 [ %13, %264 ], [ %278, %281 ]
  %268 = phi i32 [ 0, %264 ], [ %282, %281 ]
  %269 = getelementptr %struct.bio_vec, ptr %265, i32 %268
  %270 = load ptr, ptr %269, align 4
  %271 = call ptr @page_address(ptr noundef %270) #19
  %272 = getelementptr %struct.bio_vec, ptr %265, i32 %268, i32 2
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr i8, ptr %271, i32 %273
  %275 = getelementptr %struct.bio_vec, ptr %265, i32 %268, i32 1
  %276 = load i32, ptr %275, align 4
  %277 = add nuw nsw i32 %267, 1
  %278 = and i32 %277, 255
  %279 = call fastcc i32 @rtl8169_tx_map(ptr noundef %10, ptr noundef nonnull %4, i32 noundef %276, ptr noundef %274, i32 noundef %278, i1 noundef zeroext true) #19
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %266
  %282 = add nuw nsw i32 %268, 1
  %283 = load i8, ptr %261, align 2
  %284 = zext i8 %283 to i32
  %285 = icmp ult i32 %282, %284
  br i1 %285, label %266, label %314

286:                                              ; preds = %266
  %287 = load i32, ptr %11, align 4
  %288 = icmp eq i32 %268, 0
  br i1 %288, label %408, label %289

289:                                              ; preds = %286
  %290 = getelementptr i8, ptr %1, i32 2700
  %291 = getelementptr i8, ptr %1, i32 1412
  br label %292

292:                                              ; preds = %312, %289
  %293 = phi i32 [ 0, %289 ], [ %294, %312 ]
  %294 = add nuw nsw i32 %293, 1
  %295 = add i32 %294, %287
  %296 = and i32 %295, 255
  %297 = getelementptr %struct.ring_info, ptr %290, i32 %296, i32 1
  %298 = load i32, ptr %297, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %312, label %300

300:                                              ; preds = %292
  %301 = getelementptr %struct.ring_info, ptr %290, i32 %296
  %302 = load ptr, ptr %301, align 4
  %303 = load ptr, ptr %255, align 4
  %304 = getelementptr %struct.TxDesc, ptr %303, i32 %296
  %305 = load ptr, ptr %291, align 4
  %306 = getelementptr inbounds %struct.pci_dev, ptr %305, i32 0, i32 44
  %307 = getelementptr %struct.TxDesc, ptr %303, i32 %296, i32 2
  %308 = load i64, ptr %307, align 8
  %309 = trunc i64 %308 to i32
  call void @dma_unmap_page_attrs(ptr noundef %306, i32 noundef %309, i32 noundef %298, i32 noundef 1, i32 noundef 0) #19
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %304, i8 0, i32 16, i1 false) #19
  store i64 0, ptr %301, align 4
  %310 = icmp eq ptr %302, null
  br i1 %310, label %312, label %311

311:                                              ; preds = %300
  call void @__dev_kfree_skb_any(ptr noundef nonnull %302, i32 noundef 0) #19
  br label %312

312:                                              ; preds = %311, %300, %292
  %313 = icmp eq i32 %294, %268
  br i1 %313, label %408, label %292

314:                                              ; preds = %281
  %315 = load ptr, ptr %255, align 4
  br label %316

316:                                              ; preds = %314, %259
  %317 = phi ptr [ %315, %314 ], [ %256, %259 ]
  %318 = add i32 %12, %9
  %319 = and i32 %318, 255
  br label %320

320:                                              ; preds = %316, %254
  %321 = phi ptr [ %317, %316 ], [ %256, %254 ]
  %322 = phi i32 [ %319, %316 ], [ %13, %254 ]
  %323 = getelementptr %struct.TxDesc, ptr %321, i32 %322
  %324 = load i32, ptr %323, align 8
  %325 = or i32 %324, 268435456
  store i32 %325, ptr %323, align 8
  %326 = getelementptr %struct.rtl8169_private, ptr %10, i32 0, i32 15, i32 %322
  store ptr %0, ptr %326, align 4
  %327 = load ptr, ptr %5, align 4
  %328 = getelementptr inbounds %struct.skb_shared_info, ptr %327, i32 0, i32 3
  %329 = load i8, ptr %328, align 1
  %330 = and i8 %329, 2
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %333, label %332

332:                                              ; preds = %320
  call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #19
  br label %333

333:                                              ; preds = %332, %320
  call void asm sideeffect "dmb oshst", "~{memory}"() #19, !srcloc !67
  %334 = load i32, ptr %245, align 8
  %335 = call i32 @llvm.read_register.i32(metadata !0) #19
  %336 = inttoptr i32 %335 to ptr
  %337 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %336) #11, !srcloc !51
  %338 = add i32 %337, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10, i32 1) to i32)
  %339 = inttoptr i32 %338 to ptr
  %340 = load i8, ptr %339, align 1
  %341 = icmp eq i8 %340, 0
  %342 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %343 = load ptr, ptr %342, align 64
  br i1 %341, label %356, label %344

344:                                              ; preds = %333
  %345 = icmp ugt i32 %334, 268435455
  br i1 %345, label %346, label %347, !prof !49

346:                                              ; preds = %344
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #19, !srcloc !68
  unreachable

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.netdev_queue, ptr %343, i32 0, i32 14
  %349 = getelementptr inbounds %struct.netdev_queue, ptr %343, i32 0, i32 14, i32 2
  store i32 %334, ptr %349, align 8
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !69
  %350 = load i32, ptr %348, align 64
  %351 = add i32 %350, %334
  store i32 %351, ptr %348, align 64
  %352 = getelementptr inbounds %struct.netdev_queue, ptr %343, i32 0, i32 12
  %353 = load volatile i32, ptr %352, align 4
  %354 = and i32 %353, 1
  %355 = icmp ne i32 %354, 0
  br label %376

356:                                              ; preds = %333
  %357 = getelementptr inbounds %struct.netdev_queue, ptr %343, i32 0, i32 14
  %358 = icmp ugt i32 %334, 268435455
  br i1 %358, label %359, label %360, !prof !49

359:                                              ; preds = %356
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #19, !srcloc !68
  unreachable

360:                                              ; preds = %356
  %361 = getelementptr inbounds %struct.netdev_queue, ptr %343, i32 0, i32 14, i32 2
  store i32 %334, ptr %361, align 8
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !69
  %362 = load i32, ptr %357, align 64
  %363 = add i32 %362, %334
  store i32 %363, ptr %357, align 64
  %364 = getelementptr inbounds %struct.netdev_queue, ptr %343, i32 0, i32 14, i32 1
  %365 = load volatile i32, ptr %364, align 4
  %366 = load volatile i32, ptr %357, align 64
  %367 = sub i32 %365, %366
  %368 = icmp sgt i32 %367, -1
  br i1 %368, label %376, label %369, !prof !56

369:                                              ; preds = %360
  %370 = getelementptr inbounds %struct.netdev_queue, ptr %343, i32 0, i32 12
  call void @_set_bit(i32 noundef 1, ptr noundef %370) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !70
  %371 = load volatile i32, ptr %364, align 4
  %372 = load volatile i32, ptr %357, align 64
  %373 = sub i32 %371, %372
  %374 = icmp sgt i32 %373, -1
  br i1 %374, label %375, label %376, !prof !49

375:                                              ; preds = %369
  call void @_clear_bit(i32 noundef 1, ptr noundef %370) #19
  br label %376

376:                                              ; preds = %375, %369, %360, %347
  %377 = phi i1 [ %355, %347 ], [ true, %360 ], [ true, %369 ], [ true, %375 ]
  %378 = load i32, ptr %257, align 8
  %379 = or i32 %378, -1610612736
  store i32 %379, ptr %257, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !71
  %380 = load i32, ptr %11, align 4
  %381 = add nuw nsw i32 %9, 1
  %382 = add i32 %381, %380
  store volatile i32 %382, ptr %11, align 4
  %383 = load volatile i32, ptr %14, align 8
  %384 = add i32 %383, 256
  %385 = load volatile i32, ptr %11, align 4
  %386 = sub i32 %384, %385
  %387 = icmp ugt i32 %386, 17
  br i1 %387, label %399, label %388, !prof !56

388:                                              ; preds = %376
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !72
  %389 = load ptr, ptr %342, align 64
  %390 = getelementptr inbounds %struct.netdev_queue, ptr %389, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %390) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !73
  %391 = load volatile i32, ptr %14, align 8
  %392 = add i32 %391, 256
  %393 = load volatile i32, ptr %11, align 4
  %394 = sub i32 %392, %393
  %395 = icmp ugt i32 %394, 17
  br i1 %395, label %396, label %400

396:                                              ; preds = %388
  %397 = load ptr, ptr %342, align 64
  %398 = getelementptr inbounds %struct.netdev_queue, ptr %397, i32 0, i32 12
  call void @_clear_bit(i32 noundef 0, ptr noundef %398) #19
  br label %400

399:                                              ; preds = %376
  br i1 %377, label %400, label %432

400:                                              ; preds = %399, %396, %388
  %401 = load i32, ptr %38, align 8
  %402 = icmp ugt i32 %401, 49
  call void asm sideeffect "dsb st", "~{memory}"() #19
  call void @arm_heavy_mb() #19
  %403 = load ptr, ptr %10, align 8
  br i1 %402, label %404, label %406

404:                                              ; preds = %400
  %405 = getelementptr i8, ptr %403, i32 144
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %405, i16 1) #19, !srcloc !21
  br label %432

406:                                              ; preds = %400
  %407 = getelementptr i8, ptr %403, i32 56
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %407, i8 64) #19, !srcloc !26
  br label %432

408:                                              ; preds = %312, %286
  %409 = getelementptr i8, ptr %1, i32 2700
  %410 = getelementptr %struct.ring_info, ptr %409, i32 %13
  %411 = load ptr, ptr %255, align 4
  %412 = getelementptr %struct.TxDesc, ptr %411, i32 %13
  %413 = getelementptr i8, ptr %1, i32 1412
  %414 = load ptr, ptr %413, align 4
  %415 = getelementptr inbounds %struct.pci_dev, ptr %414, i32 0, i32 44
  %416 = getelementptr %struct.TxDesc, ptr %411, i32 %13, i32 2
  %417 = load i64, ptr %416, align 8
  %418 = trunc i64 %417 to i32
  %419 = getelementptr %struct.ring_info, ptr %409, i32 %13, i32 1
  %420 = load i32, ptr %419, align 4
  call void @dma_unmap_page_attrs(ptr noundef %415, i32 noundef %418, i32 noundef %420, i32 noundef 1, i32 noundef 0) #19
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %412, i8 0, i32 16, i1 false) #19
  store i64 0, ptr %410, align 4
  br label %421

421:                                              ; preds = %408, %244, %229, %103
  call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #19
  %422 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %423 = load i32, ptr %422, align 4
  %424 = add i32 %423, 1
  store i32 %424, ptr %422, align 4
  br label %432

425:                                              ; preds = %23, %20
  %426 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %427 = load ptr, ptr %426, align 64
  %428 = getelementptr inbounds %struct.netdev_queue, ptr %427, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %428) #19
  %429 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %430 = load i32, ptr %429, align 4
  %431 = add i32 %430, 1
  store i32 %431, ptr %429, align 4
  br label %432

432:                                              ; preds = %425, %421, %406, %404, %399
  %433 = phi i32 [ 16, %425 ], [ 0, %421 ], [ 0, %399 ], [ 0, %404 ], [ 0, %406 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i32 %433
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @rtl8169_features_check(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 {
  %4 = alloca %struct.vlan_hdr, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %10 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %13, %14
  %16 = getelementptr i8, ptr %1, i32 1408
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 4
  %20 = load i16, ptr %19, align 4
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %124, label %22

22:                                               ; preds = %3
  %23 = getelementptr i8, ptr %1, i32 1640
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %117

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %28 = load i16, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %30 = load i16, ptr %29, align 8
  %31 = zext i16 %30 to i32
  switch i16 %28, label %72 [
    i16 -22392, label %32
    i16 129, label %32
  ]

32:                                               ; preds = %26, %26
  %33 = icmp eq i16 %30, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  %35 = icmp ult i16 %30, 4
  br i1 %35, label %36, label %37, !prof !49

36:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 598, i32 noundef 9, ptr noundef null) #19
  br label %86

37:                                               ; preds = %34
  %38 = add nsw i32 %31, -4
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi i32 [ %38, %37 ], [ 14, %32 ]
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %43 = icmp eq ptr %0, null
  br label %44

44:                                               ; preds = %70, %39
  %45 = phi i32 [ %40, %39 ], [ %71, %70 ]
  %46 = phi i32 [ 8, %39 ], [ %63, %70 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !annotation !65
  %47 = load i32, ptr %41, align 8
  %48 = load i32, ptr %42, align 4
  %49 = add i32 %45, %48
  %50 = sub i32 %47, %49
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %55, label %52, !prof !49

52:                                               ; preds = %44
  %53 = load ptr, ptr %11, align 4
  %54 = getelementptr i8, ptr %53, i32 %45
  br label %60

55:                                               ; preds = %44
  br i1 %43, label %66, label %56

56:                                               ; preds = %55
  %57 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %45, ptr noundef nonnull %4, i32 noundef 4) #19
  %58 = icmp slt i32 %57, 0
  %59 = select i1 %58, ptr null, ptr %4, !prof !49
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi ptr [ %54, %52 ], [ %59, %56 ]
  %62 = icmp eq ptr %61, null
  %63 = add nsw i32 %46, -1
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64, !prof !49
  br i1 %65, label %66, label %67, !prof !49

66:                                               ; preds = %60, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %86

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.vlan_hdr, ptr %61, i32 0, i32 1
  %69 = load i16, ptr %68, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  switch i16 %69, label %72 [
    i16 -22392, label %70
    i16 129, label %70
  ]

70:                                               ; preds = %67, %67
  %71 = add nsw i32 %45, 4
  br label %44

72:                                               ; preds = %67, %26
  %73 = phi i16 [ %28, %26 ], [ %69, %67 ]
  %74 = icmp eq i16 %73, 8
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load ptr, ptr %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %78 = load i16, ptr %77, align 4
  %79 = zext i16 %78 to i32
  %80 = getelementptr i8, ptr %76, i32 %79
  %81 = load i8, ptr %80, align 4
  %82 = and i8 %81, 14
  %83 = icmp ugt i8 %82, 5
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = and i64 %2, -1900545
  br label %117

86:                                               ; preds = %75, %72, %66, %36
  %87 = load ptr, ptr %17, align 4
  %88 = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 8
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %5, align 8
  %94 = load i16, ptr %7, align 2
  %95 = zext i16 %94 to i32
  %96 = getelementptr i8, ptr %93, i32 %95
  %97 = getelementptr inbounds %struct.tcphdr, ptr %96, i32 0, i32 4
  %98 = load i16, ptr %97, align 4
  %99 = and i16 %98, 240
  %100 = icmp ugt i16 %99, 80
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = and i64 %2, -1900545
  br label %117

103:                                              ; preds = %92, %86
  %104 = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 2
  %105 = load i8, ptr %104, align 2
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %103
  %108 = zext i8 %105 to i32
  %109 = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 12
  %110 = getelementptr %struct.bio_vec, ptr %109, i32 %108
  %111 = getelementptr %struct.bio_vec, ptr %110, i32 -1
  %112 = getelementptr inbounds %struct.bio_vec, ptr %111, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp ult i32 %113, 7
  %115 = and i64 %2, -1900545
  %116 = select i1 %114, i64 %115, i64 %2
  br label %117

117:                                              ; preds = %107, %103, %101, %84, %22
  %118 = phi i64 [ %2, %22 ], [ %85, %84 ], [ %102, %101 ], [ %2, %103 ], [ %116, %107 ]
  %119 = icmp sgt i32 %15, 127
  br i1 %119, label %120, label %143

120:                                              ; preds = %117
  %121 = load i32, ptr %23, align 8
  switch i32 %121, label %122 [
    i32 8, label %143
    i32 9, label %143
    i32 10, label %143
    i32 11, label %143
    i32 12, label %143
    i32 13, label %143
    i32 14, label %143
    i32 0, label %143
    i32 1, label %143
    i32 2, label %143
    i32 3, label %143
    i32 4, label %143
  ]

122:                                              ; preds = %120
  %123 = and i64 %118, -1900545
  br label %143

124:                                              ; preds = %3
  %125 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %126 = load i16, ptr %125, align 8
  %127 = and i16 %126, 96
  %128 = icmp eq i16 %127, 96
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %131 = load i32, ptr %130, align 8
  %132 = icmp ult i32 %131, 60
  %133 = and i64 %2, -27
  %134 = select i1 %132, i64 %133, i64 %2
  %135 = tail call fastcc i32 @rtl_quirk_packet_padto(ptr noundef %16, ptr noundef %0)
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %136, i64 %134, i64 %133
  %138 = icmp sgt i32 %15, 1023
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = getelementptr i8, ptr %1, i32 1640
  %141 = load i32, ptr %140, align 8
  switch i32 %141, label %142 [
    i32 8, label %143
    i32 9, label %143
    i32 10, label %143
    i32 11, label %143
    i32 12, label %143
    i32 13, label %143
    i32 14, label %143
    i32 0, label %143
    i32 1, label %143
    i32 2, label %143
    i32 3, label %143
    i32 4, label %143
  ]

142:                                              ; preds = %139
  br label %143

143:                                              ; preds = %142, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %129, %124, %122, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %117
  %144 = phi i64 [ %118, %117 ], [ %137, %129 ], [ %2, %124 ], [ %123, %122 ], [ %133, %142 ], [ %137, %139 ], [ %137, %139 ], [ %137, %139 ], [ %137, %139 ], [ %137, %139 ], [ %137, %139 ], [ %137, %139 ], [ %137, %139 ], [ %137, %139 ], [ %137, %139 ], [ %137, %139 ], [ %137, %139 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ]
  %145 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %146 = load i16, ptr %145, align 8
  %147 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %148 = load i16, ptr %147, align 2
  %149 = and i16 %148, 1
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %143
  switch i16 %146, label %173 [
    i16 -22392, label %152
    i16 129, label %152
  ]

152:                                              ; preds = %151, %151
  %153 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %154 = load i32, ptr %153, align 8
  %155 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %156 = load i32, ptr %155, align 4
  %157 = sub i32 %154, %156
  %158 = icmp ugt i32 %157, 17
  br i1 %158, label %165, label %159, !prof !56

159:                                              ; preds = %152
  %160 = icmp ult i32 %154, 18
  br i1 %160, label %173, label %161, !prof !49

161:                                              ; preds = %159
  %162 = sub nuw nsw i32 18, %157
  %163 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %162) #19
  %164 = icmp eq ptr %163, null
  br i1 %164, label %173, label %165, !prof !49

165:                                              ; preds = %161, %152
  %166 = load ptr, ptr %11, align 4
  %167 = getelementptr inbounds %struct.vlan_ethhdr, ptr %166, i32 0, i32 3
  %168 = load i16, ptr %167, align 2
  br label %169

169:                                              ; preds = %165, %143
  %170 = phi i16 [ %146, %143 ], [ %168, %165 ]
  switch i16 %170, label %173 [
    i16 -22392, label %171
    i16 129, label %171
  ]

171:                                              ; preds = %169, %169
  %172 = and i64 %144, 35184372089065
  br label %173

173:                                              ; preds = %171, %169, %161, %159, %151
  %174 = phi i64 [ %172, %171 ], [ %144, %169 ], [ %144, %151 ], [ %144, %161 ], [ %144, %159 ]
  ret i64 %174
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_set_rx_mode(ptr noundef readonly %0) #0 {
  %2 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 33
  %12 = and i32 %4, 512
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %49

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %0, i32 1640
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 31
  br i1 %18, label %49, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %10, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %23 = load ptr, ptr %8, align 4
  %24 = icmp eq ptr %23, %8
  br i1 %24, label %39, label %25

25:                                               ; preds = %25, %21
  %26 = phi ptr [ %37, %25 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.netdev_hw_addr, ptr %26, i32 0, i32 2
  %28 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %27, i32 noundef 6) #21
  %29 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %28) #23, !srcloc !74
  %30 = lshr i32 %29, 26
  %31 = and i32 %30, 31
  %32 = shl nuw i32 1, %31
  %33 = lshr i32 %29, 31
  %34 = getelementptr [2 x i32], ptr %2, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %32, %35
  store i32 %36, ptr %34, align 4
  %37 = load ptr, ptr %26, align 4
  %38 = icmp eq ptr %37, %8
  br i1 %38, label %39, label %25

39:                                               ; preds = %25, %21
  %40 = icmp ugt i32 %17, 4
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %22, align 4
  %43 = load i32, ptr %2, align 8
  br label %49

44:                                               ; preds = %39
  %45 = load i32, ptr %2, align 8
  %46 = load i32, ptr %22, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = tail call i32 @llvm.bswap.i32(i32 %45)
  br label %49

49:                                               ; preds = %44, %41, %19, %15, %7, %1
  %50 = phi i32 [ -1, %7 ], [ -1, %15 ], [ -1, %1 ], [ -1, %19 ], [ %47, %44 ], [ %43, %41 ]
  %51 = phi i32 [ -1, %7 ], [ -1, %15 ], [ -1, %1 ], [ -1, %19 ], [ %48, %44 ], [ %42, %41 ]
  %52 = phi i32 [ 14, %7 ], [ 14, %15 ], [ 15, %1 ], [ 10, %19 ], [ 14, %44 ], [ 14, %41 ]
  %53 = getelementptr i8, ptr %0, i32 1408
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !75
  tail call void @arm_heavy_mb() #19
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %51) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !76
  tail call void @arm_heavy_mb() #19
  %56 = load ptr, ptr %53, align 8
  %57 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %50) #19, !srcloc !10
  %58 = load ptr, ptr %53, align 8
  %59 = getelementptr i8, ptr %58, i32 68
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !77
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !78
  tail call void @arm_heavy_mb() #19
  %61 = and i32 %60, -16
  %62 = or i32 %61, %52
  %63 = load ptr, ptr %53, align 8
  %64 = getelementptr i8, ptr %63, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #19, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl_set_mac_address(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @eth_mac_addr(ptr noundef %0, ptr noundef %1) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %8 = load ptr, ptr %7, align 32
  tail call fastcc void @rtl_rar_set(ptr noundef %6, ptr noundef %8)
  br label %9

9:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_change_mtu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %4, align 4
  tail call void @netdev_update_features(ptr noundef %0) #19
  tail call fastcc void @rtl_jumbo_config(ptr noundef %3)
  %5 = getelementptr i8, ptr %0, i32 1640
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, -51
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !79
  tail call void @arm_heavy_mb() #19
  %10 = getelementptr i8, ptr %0, i32 1416
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, 46
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr i8, ptr %16, i32 24648
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %15) #19, !srcloc !21
  br label %18

18:                                               ; preds = %9, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8169_tx_timeout(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 4764
  tail call void @_set_bit(i32 noundef 1, ptr noundef %3) #19
  %4 = getelementptr i8, ptr %0, i32 4768
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8169_get_stats64(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1412
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 4792
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #19, !srcloc !41
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #19, !srcloc !42
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  tail call void @netdev_stats_to_stats64(ptr noundef %1, ptr noundef %10) #19
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  %12 = load ptr, ptr %11, align 8
  tail call void @dev_fetch_sw_netstats(ptr noundef %1, ptr noundef %12) #19
  %13 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 11, i32 18
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 11, i32 15
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 7
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16, %2
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr i8, ptr %22, i32 55
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !63
  %25 = and i8 %24, 8
  %26 = icmp ne i8 %25, 0
  %27 = icmp ne i8 %24, -1
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call fastcc void @rtl8169_do_counters(ptr noundef %3, i32 noundef 8) #19
  br label %30

30:                                               ; preds = %29, %21, %16
  %31 = getelementptr inbounds %struct.rtl8169_counters, ptr %7, i32 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr i8, ptr %0, i32 4808
  %34 = load i64, ptr %33, align 8
  %35 = sub i64 %32, %34
  %36 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 5
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.rtl8169_counters, ptr %7, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %0, i32 4816
  %40 = load i32, ptr %39, align 8
  %41 = sub i32 %38, %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 9
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.rtl8169_counters, ptr %7, i32 0, i32 11
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %0, i32 4820
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = sub nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 16
  store i64 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.rtl8169_counters, ptr %7, i32 0, i32 4
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = getelementptr i8, ptr %0, i32 4822
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = sub nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 15
  store i64 %60, ptr %61, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !80
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #19, !srcloc !41
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 0, i32 -1, ptr elementtype(i32) %8) #19, !srcloc !81
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !82
  br label %66

66:                                               ; preds = %65, %30
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @rtl8169_fix_features(ptr nocapture noundef readonly %0, i64 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 2047
  %6 = and i64 %1, -1900545
  %7 = select i1 %5, i64 %6, i64 %1
  %8 = icmp ugt i32 %4, 1500
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 1640
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 4
  %13 = and i64 %7, -1900571
  %14 = select i1 %12, i64 %13, i64 %7
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i64 [ %7, %2 ], [ %14, %9 ]
  ret i64 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rtl8169_private, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, 49
  %6 = load ptr, ptr %1, align 8
  br i1 %5, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %6, i32 60
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !83
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %6, i32 62
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #19, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !84
  %13 = zext i16 %12 to i32
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %9, %7 ], [ %13, %10 ]
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 65535
  br i1 %17, label %69, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtl8169_private, ptr %1, i32 0, i32 17
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, %15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %18
  %24 = and i32 %15, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26, !prof !56

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rtl8169_private, ptr %1, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  tail call fastcc void @rtl8169_pcierr_interrupt(ptr noundef %28)
  br label %59

29:                                               ; preds = %23
  %30 = and i32 %15, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.rtl8169_private, ptr %1, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  tail call void @phy_mac_interrupt(ptr noundef %34) #19
  br label %35

35:                                               ; preds = %32, %29
  %36 = and i32 %15, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %3, align 8
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %47, !prof !49

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.rtl8169_private, ptr %1, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 87
  %45 = load ptr, ptr %44, align 64
  %46 = getelementptr inbounds %struct.netdev_queue, ptr %45, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %46) #19
  tail call fastcc void @rtl_schedule_task(ptr noundef %1)
  br label %47

47:                                               ; preds = %41, %38, %35
  %48 = getelementptr inbounds %struct.rtl8169_private, ptr %1, i32 0, i32 4
  %49 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %48) #19
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, ptr %3, align 8
  %52 = icmp ugt i32 %51, 49
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %53 = load ptr, ptr %1, align 8
  br i1 %52, label %54, label %56

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %53, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #19, !srcloc !10
  br label %58

56:                                               ; preds = %50
  %57 = getelementptr i8, ptr %53, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %57, i16 0) #19, !srcloc !21
  br label %58

58:                                               ; preds = %56, %54
  tail call void @__napi_schedule(ptr noundef %48) #19
  br label %59

59:                                               ; preds = %58, %47, %26
  %60 = load i32, ptr %3, align 8
  %61 = icmp ugt i32 %60, 49
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load ptr, ptr %1, align 8
  %64 = getelementptr i8, ptr %63, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %15) #19, !srcloc !10
  br label %69

65:                                               ; preds = %59
  %66 = trunc i32 %15 to i16
  %67 = load ptr, ptr %1, align 8
  %68 = getelementptr i8, ptr %67, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %68, i16 %66) #19, !srcloc !21
  br label %69

69:                                               ; preds = %65, %62, %18, %14
  %70 = phi i32 [ 0, %18 ], [ 0, %14 ], [ 1, %62 ], [ 1, %65 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl8169_up(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @pci_set_master(ptr noundef %3) #19
  %4 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @phy_init_hw(ptr noundef %5) #19
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @phy_resume(ptr noundef %7) #19
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  tail call void @r8169_hw_phy_config(ptr noundef %0, ptr noundef %9, i32 noundef %11) #19
  %12 = load i32, ptr %10, align 8
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 @pci_write_config_byte(ptr noundef %15, i32 noundef 13, i8 noundef zeroext 64) #19
  %17 = load ptr, ptr %2, align 4
  %18 = tail call i32 @pci_write_config_byte(ptr noundef %17, i32 noundef 12, i8 noundef zeroext 8) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !85
  tail call void @arm_heavy_mb() #19
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 130
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 1) #19, !srcloc !26
  %21 = load i32, ptr %10, align 8
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 9
  %26 = load i16, ptr %25, align 4
  %27 = icmp eq i16 %26, 5208
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 10
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, -8192
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 4
  %34 = tail call i32 @phy_write_paged(ptr noundef %33, i32 noundef 1, i32 noundef 16, i16 noundef zeroext -4069) #19
  br label %35

35:                                               ; preds = %32, %28, %23, %14, %1
  %36 = load ptr, ptr %4, align 4
  %37 = tail call i32 @phy_speed_up(ptr noundef %36) #19
  %38 = load i32, ptr %10, align 8
  %39 = icmp ugt i32 %38, 29
  %40 = and i32 %38, -3
  %41 = icmp ne i32 %40, 33
  %42 = and i1 %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 26
  %46 = load i32, ptr %45, align 4
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = tail call i32 @phy_read_mmd(ptr noundef %44, i32 noundef 3, i32 noundef 20) #19
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %48, %43
  %52 = phi i32 [ %49, %48 ], [ %46, %43 ]
  %53 = trunc i32 %52 to i16
  %54 = tail call i32 @phy_write_mmd(ptr noundef %44, i32 noundef 7, i32 noundef 60, i16 noundef zeroext %53) #19
  br label %55

55:                                               ; preds = %51, %48, %35
  %56 = load ptr, ptr %4, align 4
  %57 = tail call i32 @genphy_soft_reset(ptr noundef %56) #19
  %58 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 4
  tail call void @napi_enable(ptr noundef %58) #19
  %59 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 0, ptr noundef %59) #19
  tail call fastcc void @rtl_reset_work(ptr noundef %0)
  %60 = load ptr, ptr %4, align 4
  tail call void @phy_start(ptr noundef %60) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_writephy(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %115 [
    i32 24, label %6
    i32 27, label %6
    i32 36, label %19
    i32 37, label %19
    i32 38, label %19
    i32 39, label %19
    i32 40, label %19
    i32 41, label %19
    i32 42, label %19
    i32 43, label %19
    i32 44, label %19
    i32 45, label %19
    i32 46, label %19
    i32 47, label %19
    i32 48, label %19
    i32 49, label %19
    i32 50, label %19
    i32 51, label %19
    i32 52, label %19
  ]

6:                                                ; preds = %3, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !86
  tail call void @arm_heavy_mb() #19
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i32 208
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !87
  %10 = and i32 %9, -131073
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr i8, ptr %11, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #19, !srcloc !10
  tail call fastcc void @r8169_mdio_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !88
  tail call void @arm_heavy_mb() #19
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 208
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !89
  %16 = or i32 %15, 131072
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #19, !srcloc !10
  br label %116

19:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %20 = icmp eq i32 %1, 31
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = icmp eq i32 %2, 0
  %23 = shl i32 %2, 4
  %24 = select i1 %22, i32 41984, i32 %23
  %25 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 29
  store i32 %24, ptr %25, align 8
  br label %116

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 29
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 41984
  %30 = add i32 %1, -16
  %31 = select i1 %29, i32 %1, i32 %30
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  switch i32 %5, label %43 [
    i32 36, label %35
    i32 37, label %35
    i32 45, label %35
  ]

35:                                               ; preds = %34, %34, %34
  %36 = and i32 %2, 34816
  %37 = icmp eq i32 %36, 2048
  %38 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 424, i32 noundef 0) #19
  %39 = and i32 %38, 67108863
  %40 = select i1 %37, i32 0, i32 -67108864
  %41 = or i32 %39, %40
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 424, i32 noundef 61440, i32 noundef %41, i32 noundef 0) #19
  %42 = load i32, ptr %27, align 8
  br label %43

43:                                               ; preds = %35, %34, %26
  %44 = phi i32 [ %42, %35 ], [ 41984, %34 ], [ %28, %26 ]
  %45 = shl i32 %31, 1
  %46 = add i32 %44, %45
  %47 = and i32 %46, -65535
  %48 = icmp ne i32 %47, 0
  %49 = load i1, ptr @rtl_ocp_reg_failure.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !49

52:                                               ; preds = %43
  store i1 true, ptr @rtl_ocp_reg_failure.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 833, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %46) #19
  br label %53

53:                                               ; preds = %52, %43
  br i1 %48, label %116, label %54

54:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !90
  tail call void @arm_heavy_mb() #19
  %55 = shl nuw nsw i32 %46, 15
  %56 = or i32 %55, %2
  %57 = or i32 %56, -2147483648
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr i8, ptr %58, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #19, !srcloc !10
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr i8, ptr %60, i32 184
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %116

64:                                               ; preds = %54
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr i8, ptr %65, i32 184
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %116

69:                                               ; preds = %64
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %70 = load ptr, ptr %0, align 8
  %71 = getelementptr i8, ptr %70, i32 184
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %116

74:                                               ; preds = %69
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %75 = load ptr, ptr %0, align 8
  %76 = getelementptr i8, ptr %75, i32 184
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %74
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr i8, ptr %80, i32 184
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %79
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr i8, ptr %85, i32 184
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %84
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %90 = load ptr, ptr %0, align 8
  %91 = getelementptr i8, ptr %90, i32 184
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %89
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %95 = load ptr, ptr %0, align 8
  %96 = getelementptr i8, ptr %95, i32 184
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %94
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %100 = load ptr, ptr %0, align 8
  %101 = getelementptr i8, ptr %100, i32 184
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %105 = load ptr, ptr %0, align 8
  %106 = getelementptr i8, ptr %105, i32 184
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %110 = tail call i32 @net_ratelimit() #19
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %114 = load ptr, ptr %113, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %114, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef 10, i32 noundef 25) #20
  br label %116

115:                                              ; preds = %3
  tail call fastcc void @r8169_mdio_write(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %116

116:                                              ; preds = %115, %112, %109, %104, %99, %94, %89, %84, %79, %74, %69, %64, %54, %53, %21, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl_readphy(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %105 [
    i32 24, label %5
    i32 27, label %5
    i32 36, label %21
    i32 37, label %21
    i32 38, label %21
    i32 39, label %21
    i32 40, label %21
    i32 41, label %21
    i32 42, label %21
    i32 43, label %21
    i32 44, label %21
    i32 45, label %21
    i32 46, label %21
    i32 47, label %21
    i32 48, label %21
    i32 49, label %21
    i32 50, label %21
    i32 51, label %21
    i32 52, label %21
  ]

5:                                                ; preds = %2, %2
  %6 = icmp eq i32 %1, 3
  br i1 %6, label %107, label %7

7:                                                ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !86
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 208
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !87
  %11 = and i32 %10, -131073
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #19, !srcloc !10
  %14 = tail call fastcc i32 @r8169_mdio_read(ptr noundef %0, i32 noundef %1) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !88
  tail call void @arm_heavy_mb() #19
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 208
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !89
  %18 = or i32 %17, 131072
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #19, !srcloc !10
  br label %107

21:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %22 = icmp eq i32 %1, 31
  %23 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 29
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 41984
  br i1 %22, label %26, label %29

26:                                               ; preds = %21
  %27 = lshr i32 %24, 4
  %28 = select i1 %25, i32 0, i32 %27
  br label %107

29:                                               ; preds = %21
  %30 = shl i32 %1, 1
  %31 = add i32 %30, -32
  %32 = select i1 %25, i32 %30, i32 %31
  %33 = add i32 %32, %24
  %34 = and i32 %33, -65535
  %35 = icmp ne i32 %34, 0
  %36 = load i1, ptr @rtl_ocp_reg_failure.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !49

39:                                               ; preds = %29
  store i1 true, ptr @rtl_ocp_reg_failure.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 833, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %33) #19
  br label %40

40:                                               ; preds = %39, %29
  br i1 %35, label %107, label %41

41:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !92
  tail call void @arm_heavy_mb() #19
  %42 = shl nuw nsw i32 %33, 15
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr i8, ptr %43, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #19, !srcloc !10
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr i8, ptr %45, i32 184
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %100

49:                                               ; preds = %41
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr i8, ptr %50, i32 184
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %100

54:                                               ; preds = %49
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr i8, ptr %55, i32 184
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %100

59:                                               ; preds = %54
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr i8, ptr %60, i32 184
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %100

64:                                               ; preds = %59
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr i8, ptr %65, i32 184
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %69, label %100

69:                                               ; preds = %64
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %70 = load ptr, ptr %0, align 8
  %71 = getelementptr i8, ptr %70, i32 184
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %75 = load ptr, ptr %0, align 8
  %76 = getelementptr i8, ptr %75, i32 184
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %100

79:                                               ; preds = %74
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr i8, ptr %80, i32 184
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr i8, ptr %85, i32 184
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %90 = load ptr, ptr %0, align 8
  %91 = getelementptr i8, ptr %90, i32 184
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !91
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %95 = tail call i32 @net_ratelimit() #19
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %99, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 10, i32 noundef 25) #20
  br label %107

100:                                              ; preds = %89, %84, %79, %74, %69, %64, %59, %54, %49, %41
  %101 = load ptr, ptr %0, align 8
  %102 = getelementptr i8, ptr %101, i32 184
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !93
  %104 = and i32 %103, 65535
  br label %107

105:                                              ; preds = %2
  %106 = tail call fastcc i32 @r8169_mdio_read(ptr noundef %0, i32 noundef %1)
  br label %107

107:                                              ; preds = %105, %100, %97, %94, %40, %26, %7, %5
  %108 = phi i32 [ %106, %105 ], [ %14, %7 ], [ 51474, %5 ], [ %28, %26 ], [ 0, %40 ], [ %104, %100 ], [ -110, %97 ], [ -110, %94 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mac_mcu_write(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %1, 31
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = shl i32 %2, 4
  %7 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 29
  store i32 %6, ptr %7, align 8
  br label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 29
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, %1
  %12 = and i32 %11, -65535
  %13 = icmp ne i32 %12, 0
  %14 = load i1, ptr @rtl_ocp_reg_failure.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !49

17:                                               ; preds = %8
  store i1 true, ptr @rtl_ocp_reg_failure.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 833, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %11) #19
  br label %18

18:                                               ; preds = %17, %8
  br i1 %13, label %25, label %19

19:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %20 = shl nuw nsw i32 %11, 15
  %21 = or i32 %20, %2
  %22 = or i32 %21, -2147483648
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #19, !srcloc !10
  br label %25

25:                                               ; preds = %19, %18, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mac_mcu_read(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 29
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, %1
  %6 = and i32 %5, -65535
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @rtl_ocp_reg_failure.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !49

11:                                               ; preds = %2
  store i1 true, ptr @rtl_ocp_reg_failure.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 833, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %5) #19
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %21, label %13

13:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %14 = shl nuw nsw i32 %5, 15
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #19, !srcloc !10
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 176
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %20 = and i32 %19, 65535
  br label %21

21:                                               ; preds = %13, %12
  %22 = phi i32 [ %20, %13 ], [ 0, %12 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_fw_request_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @r8169_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !94
  tail call void @arm_heavy_mb() #19
  %4 = shl i32 %1, 16
  %5 = and i32 %4, 2031616
  %6 = and i32 %2, 65535
  %7 = or i32 %6, %5
  %8 = or i32 %7, -2147483648
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr i8, ptr %9, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #19, !srcloc !10
  br label %11

11:                                               ; preds = %17, %3
  %12 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 96
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !95
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %18 = add nuw nsw i32 %12, 1
  %19 = icmp eq i32 %18, 20
  br i1 %19, label %20, label %11

20:                                               ; preds = %17
  %21 = tail call i32 @net_ratelimit() #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef 20, i32 noundef 25) #20
  br label %26

26:                                               ; preds = %23, %20, %11
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 4294960) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_rtl_eri_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = or i32 %2, %1
  %5 = or i32 %4, 61440
  %6 = icmp eq i32 %2, 131072
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, -2
  %11 = icmp eq i32 %10, 48
  %12 = or i32 %4, 1036054528
  %13 = select i1 %11, i32 %12, i32 %5
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %5, %3 ], [ %13, %7 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !96
  tail call void @arm_heavy_mb() #19
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr i8, ptr %16, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #19, !srcloc !10
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr i8, ptr %18, i32 116
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !97
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %27, label %39

22:                                               ; preds = %27
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 116
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !97
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %37

27:                                               ; preds = %22, %14
  %28 = phi i32 [ %29, %22 ], [ 0, %14 ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %29 = add nuw nsw i32 %28, 1
  %30 = icmp eq i32 %29, 100
  br i1 %30, label %31, label %22

31:                                               ; preds = %27
  %32 = tail call i32 @net_ratelimit() #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 100, i32 noundef 100) #20
  br label %43

37:                                               ; preds = %31, %22
  %38 = icmp ult i32 %28, 99
  br i1 %38, label %39, label %43

39:                                               ; preds = %37, %14
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr i8, ptr %40, i32 112
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !98
  br label %43

43:                                               ; preds = %39, %37, %34
  %44 = phi i32 [ %42, %39 ], [ -1, %37 ], [ -1, %34 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_rtl_eri_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = or i32 %2, %1
  %7 = or i32 %6, %4
  %8 = or i32 %7, -2147483648
  %9 = and i32 %1, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !56

11:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 782, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %1, i32 noundef %2) #19
  br label %42

12:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !99
  tail call void @arm_heavy_mb() #19
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %3) #19, !srcloc !10
  %15 = icmp eq i32 %4, 131072
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -2
  %20 = icmp eq i32 %19, 48
  %21 = or i32 %7, -1111490560
  %22 = select i1 %20, i32 %21, i32 %8
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i32 [ %8, %12 ], [ %22, %16 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !100
  tail call void @arm_heavy_mb() #19
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #19, !srcloc !10
  br label %27

27:                                               ; preds = %33, %23
  %28 = phi i32 [ 0, %23 ], [ %34, %33 ]
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 116
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !97
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %34 = add nuw nsw i32 %28, 1
  %35 = icmp eq i32 %34, 100
  br i1 %35, label %36, label %27

36:                                               ; preds = %33
  %37 = tail call i32 @net_ratelimit() #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef 100, i32 noundef 100) #20
  br label %42

42:                                               ; preds = %39, %36, %27, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r8169_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !101
  tail call void @arm_heavy_mb() #19
  %3 = shl i32 %1, 16
  %4 = and i32 %3, 2031616
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #19, !srcloc !10
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i32 96
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !95
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %16, label %28

11:                                               ; preds = %16
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 96
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !95
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %18, %11 ], [ 0, %2 ]
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #19
  %18 = add nuw nsw i32 %17, 1
  %19 = icmp eq i32 %18, 20
  br i1 %19, label %20, label %11

20:                                               ; preds = %16
  %21 = tail call i32 @net_ratelimit() #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 20, i32 noundef 25) #20
  br label %33

26:                                               ; preds = %20, %11
  %27 = icmp ult i32 %17, 19
  br i1 %27, label %28, label %33

28:                                               ; preds = %26, %2
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 96
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !102
  %32 = and i32 %31, 65535
  br label %33

33:                                               ; preds = %28, %26, %23
  %34 = phi i32 [ %32, %28 ], [ -110, %26 ], [ -110, %23 ]
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 4294960) #19
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl8169_pcierr_interrupt(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr i8, ptr %0, i32 1412
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #19
  store i16 0, ptr %2, align 2, !annotation !65
  %5 = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %2) #19
  %6 = call i32 @pci_status_get_and_clear_errors(ptr noundef %4) #19
  %7 = call i32 @net_ratelimit() #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i16, ptr %2, align 2
  %11 = zext i16 %10 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %11, i32 noundef %6) #20
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr i8, ptr %0, i32 4764
  call void @_set_bit(i32 noundef 1, ptr noundef %13) #19
  %14 = getelementptr i8, ptr %0, i32 4768
  %15 = load ptr, ptr @system_wq, align 4
  %16 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %14) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_mac_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_schedule_task(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %2) #19
  %3 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 20, i32 1
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_status_get_and_clear_errors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r8169_phylink_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1420
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 1640
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %36 [
    i32 30, label %12
    i32 34, label %12
    i32 31, label %24
    i32 32, label %24
    i32 33, label %30
  ]

12:                                               ; preds = %7, %7
  %13 = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  switch i32 %14, label %16 [
    i32 1000, label %17
    i32 100, label %15
  ]

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %15, %12
  %18 = phi i32 [ 31, %15 ], [ 31, %16 ], [ 17, %12 ]
  %19 = phi i32 [ 5, %15 ], [ 63, %16 ], [ 5, %12 ]
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 444, i32 noundef 61440, i32 noundef %18, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 476, i32 noundef 61440, i32 noundef %19, i32 noundef 0) #19
  %20 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %2, i32 noundef 220, i32 noundef 0) #19
  %21 = and i32 %20, -2
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 220, i32 noundef 61440, i32 noundef %21, i32 noundef 0) #19
  %22 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %2, i32 noundef 220, i32 noundef 0) #19
  %23 = or i32 %22, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 220, i32 noundef 61440, i32 noundef %23, i32 noundef 0) #19
  br label %36

24:                                               ; preds = %7, %7
  %25 = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 1000
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 444, i32 noundef 61440, i32 noundef 17, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 476, i32 noundef 61440, i32 noundef 5, i32 noundef 0) #19
  br label %36

29:                                               ; preds = %24
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 444, i32 noundef 61440, i32 noundef 31, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 476, i32 noundef 61440, i32 noundef 63, i32 noundef 0) #19
  br label %36

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 464, i32 noundef 12288, i32 noundef 19714, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 476, i32 noundef 12288, i32 noundef 1546, i32 noundef 0) #19
  br label %36

35:                                               ; preds = %30
  tail call fastcc void @_rtl_eri_write(ptr noundef %2, i32 noundef 464, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  br label %36

36:                                               ; preds = %35, %34, %29, %28, %17, %7
  %37 = getelementptr i8, ptr %0, i32 1412
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %40 = tail call i32 @__pm_runtime_resume(ptr noundef %39, i32 noundef 1) #19
  br label %46

41:                                               ; preds = %1
  %42 = getelementptr i8, ptr %0, i32 1412
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %44, i32 noundef 0) #19
  br label %46

46:                                               ; preds = %41, %36
  %47 = tail call i32 @net_ratelimit() #19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr i8, ptr %0, i32 1420
  %51 = load ptr, ptr %50, align 4
  tail call void @phy_print_status(ptr noundef %51) #19
  br label %52

52:                                               ; preds = %49, %46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_reset_work(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %6) #19
  tail call fastcc void @rtl8169_cleanup(ptr noundef %0, i1 noundef zeroext false)
  %7 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 11
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi i32 [ 0, %1 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr %struct.RxDesc, ptr %10, i32 %9
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 1073741824
  %14 = getelementptr %struct.RxDesc, ptr %10, i32 %9, i32 1
  store i32 0, ptr %14, align 4
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #19, !srcloc !58
  %15 = or i32 %13, -2147467265
  store volatile i32 %15, ptr %11, align 8
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 256
  br i1 %17, label %18, label %8

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 4
  tail call void @napi_enable(ptr noundef %19) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !36
  tail call void @arm_heavy_mb() #19
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr i8, ptr %20, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 -64) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !103
  tail call void @arm_heavy_mb() #19
  %22 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 16
  %23 = load i16, ptr %22, align 4
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr i8, ptr %24, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %23) #19, !srcloc !21
  %26 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = icmp ult i32 %27, 5
  br i1 %28, label %29, label %58

29:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !104
  tail call void @arm_heavy_mb() #19
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr i8, ptr %30, i32 236
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 63) #19, !srcloc !26
  %32 = load i16, ptr %22, align 4
  %33 = or i16 %32, 8
  store i16 %33, ptr %22, align 4
  %34 = load i32, ptr %26, align 8
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = or i16 %32, 16392
  store i16 %37, ptr %22, align 4
  br label %38

38:                                               ; preds = %36, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !105
  tail call void @arm_heavy_mb() #19
  %39 = load i16, ptr %22, align 4
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr i8, ptr %40, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %41, i16 %39) #19, !srcloc !21
  %42 = load i32, ptr %26, align 8
  switch i32 %42, label %55 [
    i32 3, label %44
    i32 4, label %43
  ]

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ 16776960, %43 ], [ 1048320, %38 ]
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr i8, ptr %46, i32 83
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %47) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !106
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  %51 = or i32 %45, 255
  %52 = select i1 %50, i32 %45, i32 %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !107
  tail call void @arm_heavy_mb() #19
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr i8, ptr %53, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #19, !srcloc !10
  br label %55

55:                                               ; preds = %44, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !108
  tail call void @arm_heavy_mb() #19
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr i8, ptr %56, i32 226
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %57, i16 0) #19, !srcloc !21
  br label %90

58:                                               ; preds = %18
  %59 = icmp ugt i32 %27, 49
  br i1 %59, label %60, label %72

60:                                               ; preds = %60, %58
  %61 = phi i32 [ %64, %60 ], [ 2560, %58 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !109
  tail call void @arm_heavy_mb() #19
  %62 = load ptr, ptr %0, align 8
  %63 = getelementptr i8, ptr %62, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #19, !srcloc !10
  %64 = add nuw nsw i32 %61, 4
  %65 = icmp ult i32 %61, 2812
  br i1 %65, label %60, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr %26, align 8
  %68 = getelementptr [53 x ptr], ptr @rtl_hw_config.hw_configs, i32 0, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %92, label %71

71:                                               ; preds = %66
  tail call void %69(ptr noundef %0) #19
  br label %90

72:                                               ; preds = %58
  %73 = icmp ne i32 %27, 35
  %74 = add nsw i32 %27, -30
  %75 = icmp ult i32 %74, 20
  %76 = and i1 %73, %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %77 = load ptr, ptr %0, align 8
  %78 = getelementptr i8, ptr %77, i32 236
  br i1 %76, label %79, label %80

79:                                               ; preds = %72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %78, i8 39) #19, !srcloc !26
  br label %81

80:                                               ; preds = %72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %78, i8 63) #19, !srcloc !26
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i32, ptr %26, align 8
  %83 = getelementptr [53 x ptr], ptr @rtl_hw_config.hw_configs, i32 0, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  tail call void %84(ptr noundef %0) #19
  br label %87

87:                                               ; preds = %86, %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !110
  tail call void @arm_heavy_mb() #19
  %88 = load ptr, ptr %0, align 8
  %89 = getelementptr i8, ptr %88, i32 226
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %89, i16 0) #19, !srcloc !21
  br label %90

90:                                               ; preds = %87, %71, %55
  %91 = load i32, ptr %26, align 8
  br label %92

92:                                               ; preds = %90, %66
  %93 = phi i32 [ %91, %90 ], [ %67, %66 ]
  switch i32 %93, label %113 [
    i32 30, label %94
    i32 31, label %94
    i32 32, label %94
    i32 33, label %97
    i32 34, label %97
    i32 36, label %100
    i32 37, label %100
    i32 38, label %100
    i32 39, label %100
    i32 40, label %100
    i32 41, label %100
    i32 42, label %100
    i32 43, label %100
    i32 44, label %100
    i32 45, label %100
    i32 46, label %100
    i32 47, label %100
    i32 48, label %100
    i32 49, label %100
    i32 50, label %103
    i32 51, label %103
    i32 52, label %103
  ]

94:                                               ; preds = %92, %92, %92
  %95 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 212, i32 noundef 0) #19
  %96 = or i32 %95, 7936
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 212, i32 noundef 61440, i32 noundef %96, i32 noundef 0) #19
  br label %113

97:                                               ; preds = %92, %92
  %98 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 212, i32 noundef 0) #19
  %99 = or i32 %98, 3072
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 212, i32 noundef 61440, i32 noundef %99, i32 noundef 0) #19
  br label %113

100:                                              ; preds = %92, %92, %92, %92, %92, %92, %92, %92, %92, %92, %92, %92, %92, %92
  %101 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 212, i32 noundef 0) #19
  %102 = or i32 %101, 8064
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 212, i32 noundef 61440, i32 noundef %102, i32 noundef 0) #19
  br label %113

103:                                              ; preds = %92, %92, %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %104 = load ptr, ptr %0, align 8
  %105 = getelementptr i8, ptr %104, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 1616248832) #19, !srcloc !10
  %106 = load ptr, ptr %0, align 8
  %107 = getelementptr i8, ptr %106, i32 176
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %109 = and i32 %108, 57471
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %110 = or i32 %109, -531226752
  %111 = load ptr, ptr %0, align 8
  %112 = getelementptr i8, ptr %111, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #19, !srcloc !10
  br label %113

113:                                              ; preds = %103, %100, %97, %94, %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !111
  tail call void @arm_heavy_mb() #19
  %114 = load ptr, ptr %0, align 8
  %115 = getelementptr i8, ptr %114, i32 218
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %115, i16 16384) #19, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !112
  tail call void @arm_heavy_mb() #19
  %116 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 12
  %117 = load ptr, ptr %0, align 8
  %118 = getelementptr i8, ptr %117, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 0) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !113
  tail call void @arm_heavy_mb() #19
  %119 = load i32, ptr %116, align 4
  %120 = load ptr, ptr %0, align 8
  %121 = getelementptr i8, ptr %120, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !114
  tail call void @arm_heavy_mb() #19
  %122 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 13
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr i8, ptr %123, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 0) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !115
  tail call void @arm_heavy_mb() #19
  %125 = load i32, ptr %122, align 8
  %126 = load ptr, ptr %0, align 8
  %127 = getelementptr i8, ptr %126, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !39
  tail call void @arm_heavy_mb() #19
  %128 = load ptr, ptr %0, align 8
  %129 = getelementptr i8, ptr %128, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %129, i8 0) #19, !srcloc !26
  tail call fastcc void @rtl_jumbo_config(ptr noundef %0) #19
  %130 = load ptr, ptr %0, align 8
  %131 = getelementptr i8, ptr %130, i32 55
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %131) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !23
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !116
  tail call void @arm_heavy_mb() #19
  %133 = load ptr, ptr %0, align 8
  %134 = getelementptr i8, ptr %133, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %134, i8 12) #19, !srcloc !26
  tail call fastcc void @rtl_init_rxcfg(ptr noundef %0) #19
  %135 = load i32, ptr %26, align 8
  %136 = icmp ne i32 %135, 35
  %137 = add i32 %135, -30
  %138 = icmp ult i32 %137, 20
  %139 = and i1 %136, %138
  %140 = select i1 %139, i32 50333568, i32 50333440
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !117
  tail call void @arm_heavy_mb() #19
  %141 = load ptr, ptr %0, align 8
  %142 = getelementptr i8, ptr %141, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %140) #19, !srcloc !10
  %143 = load ptr, ptr %2, align 8
  %144 = getelementptr inbounds %struct.net_device, ptr %143, i32 0, i32 23
  %145 = load i64, ptr %144, align 16
  %146 = load ptr, ptr %0, align 8
  %147 = getelementptr i8, ptr %146, i32 68
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !59
  %149 = and i64 %145, 17592186044416
  %150 = icmp eq i64 %149, 0
  %151 = and i32 %148, -49
  %152 = select i1 %150, i32 0, i32 48
  %153 = or i32 %151, %152
  %154 = load i32, ptr %26, align 8
  %155 = icmp ugt i32 %154, 49
  br i1 %155, label %156, label %163

156:                                              ; preds = %113
  %157 = and i64 %145, 256
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = or i32 %153, 12582912
  br label %163

161:                                              ; preds = %156
  %162 = and i32 %153, -12582913
  br label %163

163:                                              ; preds = %161, %159, %113
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ], [ %153, %113 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !60
  tail call void @arm_heavy_mb() #19
  %165 = load ptr, ptr %0, align 8
  %166 = getelementptr i8, ptr %165, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #19, !srcloc !10
  %167 = load ptr, ptr %2, align 8
  tail call void @rtl_set_rx_mode(ptr noundef %167) #19
  %168 = load i32, ptr %26, align 8
  %169 = icmp ugt i32 %168, 49
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %170 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 17
  %171 = load i32, ptr %170, align 8
  br i1 %169, label %172, label %175

172:                                              ; preds = %163
  %173 = load ptr, ptr %0, align 8
  %174 = getelementptr i8, ptr %173, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %171) #19, !srcloc !10
  br label %179

175:                                              ; preds = %163
  %176 = trunc i32 %171 to i16
  %177 = load ptr, ptr %0, align 8
  %178 = getelementptr i8, ptr %177, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %178, i16 %176) #19, !srcloc !21
  br label %179

179:                                              ; preds = %175, %172
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8169_hw_phy_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_speed_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl8169_cleanup(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 4
  tail call void @napi_disable(ptr noundef %3) #19
  tail call void @synchronize_net() #19
  %4 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 49
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %7 = load ptr, ptr %0, align 8
  br i1 %6, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %7, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #19, !srcloc !10
  br label %12

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 0) #19, !srcloc !21
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32, ptr %4, align 8
  %14 = icmp ugt i32 %13, 49
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %15 = load ptr, ptr %0, align 8
  br i1 %14, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %15, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1) #19, !srcloc !10
  br label %20

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %15, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 -1) #19, !srcloc !21
  br label %20

20:                                               ; preds = %18, %16
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 55
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !23
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !118
  tail call void @arm_heavy_mb() #19
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr i8, ptr %24, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !119
  %27 = and i32 %26, -64
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr i8, ptr %28, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #19, !srcloc !10
  br i1 %1, label %30, label %37

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 124
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %106

37:                                               ; preds = %30, %20
  %38 = load i32, ptr %4, align 8
  switch i32 %38, label %80 [
    i32 24, label %39
    i32 27, label %39
    i32 30, label %56
    i32 31, label %56
    i32 32, label %56
    i32 33, label %56
    i32 34, label %56
    i32 36, label %79
    i32 37, label %79
    i32 38, label %79
    i32 39, label %79
    i32 40, label %79
    i32 41, label %79
    i32 42, label %79
    i32 43, label %79
    i32 44, label %79
    i32 45, label %79
    i32 46, label %79
    i32 47, label %79
    i32 48, label %79
    i32 49, label %79
    i32 50, label %79
    i32 51, label %79
    i32 52, label %79
  ]

39:                                               ; preds = %37, %37
  br label %40

40:                                               ; preds = %47, %39
  %41 = phi i32 [ %48, %47 ], [ 0, %39 ]
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr i8, ptr %42, i32 56
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %43) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !120
  %45 = and i8 %44, 64
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %87, label %47

47:                                               ; preds = %40
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #19
  %48 = add nuw nsw i32 %41, 1
  %49 = icmp eq i32 %48, 2000
  br i1 %49, label %50, label %40

50:                                               ; preds = %47
  %51 = tail call i32 @net_ratelimit() #19
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %87, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef 2000, i32 noundef 20) #20
  br label %87

56:                                               ; preds = %37, %37, %37, %37, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !121
  tail call void @arm_heavy_mb() #19
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr i8, ptr %57, i32 55
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %58) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !122
  %60 = or i8 %59, -128
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr i8, ptr %61, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %62, i8 %60) #19, !srcloc !26
  br label %63

63:                                               ; preds = %70, %56
  %64 = phi i32 [ 0, %56 ], [ %71, %70 ]
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr i8, ptr %65, i32 64
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !123
  %68 = and i32 %67, 2048
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %71 = add nuw nsw i32 %64, 1
  %72 = icmp eq i32 %71, 666
  br i1 %72, label %73, label %63

73:                                               ; preds = %70
  %74 = tail call i32 @net_ratelimit() #19
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %78, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 666, i32 noundef 100) #20
  br label %87

79:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  tail call fastcc void @rtl_enable_rxdvgate(ptr noundef %0)
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #19
  br label %87

80:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !124
  tail call void @arm_heavy_mb() #19
  %81 = load ptr, ptr %0, align 8
  %82 = getelementptr i8, ptr %81, i32 55
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %82) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !125
  %84 = or i8 %83, -128
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr i8, ptr %85, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 %84) #19, !srcloc !26
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  br label %87

87:                                               ; preds = %80, %79, %76, %73, %63, %53, %50, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !34
  tail call void @arm_heavy_mb() #19
  %88 = load ptr, ptr %0, align 8
  %89 = getelementptr i8, ptr %88, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %89, i8 16) #19, !srcloc !26
  br label %90

90:                                               ; preds = %97, %87
  %91 = phi i32 [ 0, %87 ], [ %98, %97 ]
  %92 = load ptr, ptr %0, align 8
  %93 = getelementptr i8, ptr %92, i32 55
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %93) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !35
  %95 = and i8 %94, 16
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %90
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %98 = add nuw nsw i32 %91, 1
  %99 = icmp eq i32 %98, 100
  br i1 %99, label %100, label %90

100:                                              ; preds = %97
  %101 = tail call i32 @net_ratelimit() #19
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %105, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 100, i32 noundef 100) #20
  br label %106

106:                                              ; preds = %103, %100, %90, %30
  %107 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 9
  %108 = load i32, ptr %107, align 8
  %109 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 15
  %110 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 10
  %111 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  br label %112

112:                                              ; preds = %131, %106
  %113 = phi i32 [ 0, %106 ], [ %132, %131 ]
  %114 = add i32 %113, %108
  %115 = and i32 %114, 255
  %116 = getelementptr %struct.ring_info, ptr %109, i32 %115, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %112
  %120 = getelementptr %struct.ring_info, ptr %109, i32 %115
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %110, align 4
  %123 = getelementptr %struct.TxDesc, ptr %122, i32 %115
  %124 = load ptr, ptr %111, align 4
  %125 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  %126 = getelementptr %struct.TxDesc, ptr %122, i32 %115, i32 2
  %127 = load i64, ptr %126, align 8
  %128 = trunc i64 %127 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %125, i32 noundef %128, i32 noundef %117, i32 noundef 1, i32 noundef 0) #19
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %123, i8 0, i32 16, i1 false) #19
  store i64 0, ptr %120, align 4
  %129 = icmp eq ptr %121, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %119
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %121, i32 noundef 0) #19
  br label %131

131:                                              ; preds = %130, %119, %112
  %132 = add nuw nsw i32 %113, 1
  %133 = icmp eq i32 %132, 256
  br i1 %133, label %134, label %112

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 87
  %138 = load ptr, ptr %137, align 64
  %139 = getelementptr inbounds %struct.netdev_queue, ptr %138, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %139) #19
  %140 = getelementptr inbounds %struct.netdev_queue, ptr %138, i32 0, i32 14
  tail call void @dql_reset(ptr noundef %140) #19
  %141 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 7
  store i32 0, ptr %141, align 8
  %142 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 8
  store i32 0, ptr %142, align 4
  store i32 0, ptr %107, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_enable_rxdvgate(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !126
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 240
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !127
  %5 = or i32 %4, 524288
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #19, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #19
  %8 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  switch i32 %9, label %96 [
    i32 36, label %11
    i32 37, label %11
    i32 38, label %11
    i32 39, label %11
    i32 40, label %11
    i32 41, label %11
    i32 42, label %11
    i32 43, label %11
    i32 44, label %11
    i32 45, label %11
    i32 46, label %11
    i32 47, label %11
    i32 48, label %11
    i32 49, label %11
    i32 50, label %10
    i32 51, label %10
    i32 52, label %55
  ]

10:                                               ; preds = %1, %1
  br label %42

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %12

12:                                               ; preds = %19, %11
  %13 = phi i32 [ %20, %19 ], [ 0, %11 ]
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr i8, ptr %14, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !123
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq i32 %20, 42
  br i1 %21, label %22, label %12

22:                                               ; preds = %19
  %23 = tail call i32 @net_ratelimit() #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 42, i32 noundef 100) #20
  br label %28

28:                                               ; preds = %25, %22, %12
  br label %29

29:                                               ; preds = %36, %28
  %30 = phi i32 [ %37, %36 ], [ 0, %28 ]
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 211
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !128
  %34 = and i8 %33, 48
  %35 = icmp eq i8 %34, 48
  br i1 %35, label %96, label %36

36:                                               ; preds = %29
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %37 = add nuw nsw i32 %30, 1
  %38 = icmp eq i32 %37, 42
  br i1 %38, label %39, label %29

39:                                               ; preds = %36
  %40 = tail call i32 @net_ratelimit() #19
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %96, label %92

42:                                               ; preds = %49, %10
  %43 = phi i32 [ %50, %49 ], [ 0, %10 ]
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr i8, ptr %44, i32 211
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %45) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !128
  %47 = and i8 %46, 48
  %48 = icmp eq i8 %47, 48
  br i1 %48, label %96, label %49

49:                                               ; preds = %42
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %50 = add nuw nsw i32 %43, 1
  %51 = icmp eq i32 %50, 42
  br i1 %51, label %52, label %42

52:                                               ; preds = %49
  %53 = tail call i32 @net_ratelimit() #19
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %96, label %92

55:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !129
  tail call void @arm_heavy_mb() #19
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr i8, ptr %56, i32 55
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %57) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !130
  %59 = or i8 %58, -128
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr i8, ptr %60, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 %59) #19, !srcloc !26
  br label %62

62:                                               ; preds = %69, %55
  %63 = phi i32 [ 0, %55 ], [ %70, %69 ]
  %64 = load ptr, ptr %0, align 8
  %65 = getelementptr i8, ptr %64, i32 211
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %65) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !128
  %67 = and i8 %66, 48
  %68 = icmp eq i8 %67, 48
  br i1 %68, label %78, label %69

69:                                               ; preds = %62
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, 42
  br i1 %71, label %72, label %62

72:                                               ; preds = %69
  %73 = tail call i32 @net_ratelimit() #19
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 42, i32 noundef 100) #20
  br label %78

78:                                               ; preds = %75, %72, %62
  br label %79

79:                                               ; preds = %86, %78
  %80 = phi i32 [ %87, %86 ], [ 0, %78 ]
  %81 = load ptr, ptr %0, align 8
  %82 = getelementptr i8, ptr %81, i32 226
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %82) #19, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !131
  %84 = and i16 %83, 259
  %85 = icmp eq i16 %84, 259
  br i1 %85, label %96, label %86

86:                                               ; preds = %79
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %87 = add nuw nsw i32 %80, 1
  %88 = icmp eq i32 %87, 42
  br i1 %88, label %89, label %79

89:                                               ; preds = %86
  %90 = tail call i32 @net_ratelimit() #19
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89, %52, %39
  %93 = phi ptr [ @.str.26, %39 ], [ @.str.26, %52 ], [ @.str.27, %89 ]
  %94 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %95, ptr noundef nonnull @.str.1, ptr noundef nonnull %93, i32 noundef 0, i32 noundef 42, i32 noundef 100) #20
  br label %96

96:                                               ; preds = %92, %89, %79, %52, %42, %39, %29, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_jumbo_config(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1500
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !36
  tail call void @arm_heavy_mb() #19
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 -64) #19, !srcloc !26
  %9 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %88 [
    i32 10, label %11
    i32 14, label %11
    i32 15, label %23
    i32 16, label %23
    i32 17, label %23
    i32 18, label %23
    i32 19, label %23
    i32 20, label %23
    i32 21, label %23
    i32 22, label %23
    i32 23, label %23
    i32 24, label %47
    i32 27, label %59
    i32 28, label %59
    i32 29, label %59
  ]

11:                                               ; preds = %1, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 85
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19
  br i1 %6, label %15, label %19

15:                                               ; preds = %11
  %16 = or i8 %14, 1
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #19, !srcloc !26
  br label %88

19:                                               ; preds = %11
  %20 = and i8 %14, -2
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %20) #19, !srcloc !26
  br label %88

23:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr i8, ptr %24, i32 84
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19
  br i1 %6, label %27, label %37

27:                                               ; preds = %23
  %28 = or i8 %26, 4
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 %28) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !132
  tail call void @arm_heavy_mb() #19
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 85
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !133
  %34 = or i8 %33, 2
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr i8, ptr %35, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %34) #19, !srcloc !26
  br label %88

37:                                               ; preds = %23
  %38 = and i8 %26, -5
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr i8, ptr %39, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 %38) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !134
  tail call void @arm_heavy_mb() #19
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr i8, ptr %41, i32 85
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !135
  %44 = and i8 %43, -3
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr i8, ptr %45, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 %44) #19, !srcloc !26
  br label %88

47:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr i8, ptr %48, i32 84
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19
  br i1 %6, label %51, label %55

51:                                               ; preds = %47
  %52 = or i8 %50, 4
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr i8, ptr %53, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %54, i8 %52) #19, !srcloc !26
  br label %88

55:                                               ; preds = %47
  %56 = and i8 %50, -5
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr i8, ptr %57, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 %56) #19, !srcloc !26
  br label %88

59:                                               ; preds = %1, %1, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr i8, ptr %60, i32 236
  br i1 %6, label %62, label %75

62:                                               ; preds = %59
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 36) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !136
  tail call void @arm_heavy_mb() #19
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr i8, ptr %63, i32 84
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %64) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !137
  %66 = or i8 %65, 4
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr i8, ptr %67, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %68, i8 %66) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !138
  tail call void @arm_heavy_mb() #19
  %69 = load ptr, ptr %0, align 8
  %70 = getelementptr i8, ptr %69, i32 85
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %70) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !139
  %72 = or i8 %71, 1
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr i8, ptr %73, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %74, i8 %72) #19, !srcloc !26
  br label %88

75:                                               ; preds = %59
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 63) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !140
  tail call void @arm_heavy_mb() #19
  %76 = load ptr, ptr %0, align 8
  %77 = getelementptr i8, ptr %76, i32 84
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %77) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !141
  %79 = and i8 %78, -5
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr i8, ptr %80, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %81, i8 %79) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !142
  tail call void @arm_heavy_mb() #19
  %82 = load ptr, ptr %0, align 8
  %83 = getelementptr i8, ptr %82, i32 85
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %83) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !143
  %85 = and i8 %84, -2
  %86 = load ptr, ptr %0, align 8
  %87 = getelementptr i8, ptr %86, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %87, i8 %85) #19, !srcloc !26
  br label %88

88:                                               ; preds = %75, %62, %55, %51, %37, %27, %19, %15, %1
  %89 = phi i32 [ 4096, %1 ], [ 4096, %62 ], [ 4096, %75 ], [ 4096, %51 ], [ 4096, %55 ], [ 512, %27 ], [ 4096, %37 ], [ 512, %15 ], [ 4096, %19 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !39
  tail call void @arm_heavy_mb() #19
  %90 = load ptr, ptr %0, align 8
  %91 = getelementptr i8, ptr %90, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %91, i8 0) #19, !srcloc !26
  %92 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 18
  %95 = load i8, ptr %94, align 4
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 21
  %99 = load i8, ptr %98, align 8
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = tail call i32 @pcie_set_readrq(ptr noundef %93, i32 noundef %89) #19
  br label %104

104:                                              ; preds = %102, %97, %88
  br i1 %6, label %105, label %117

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.phy_device, ptr %107, i32 0, i32 17
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, -8193
  store i32 %110, ptr %108, align 4
  %111 = load ptr, ptr %106, align 4
  %112 = getelementptr inbounds %struct.phy_device, ptr %111, i32 0, i32 17
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, -16385
  store i32 %114, ptr %112, align 4
  %115 = load ptr, ptr %106, align 4
  %116 = tail call i32 @phy_start_aneg(ptr noundef %115) #19
  br label %117

117:                                              ; preds = %105, %104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8102e_1(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !144
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 209
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 16) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !145
  tail call void @arm_heavy_mb() #19
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %4, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 -33) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !146
  tail call void @arm_heavy_mb() #19
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 84
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !147
  %9 = and i8 %8, -2
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %9) #19, !srcloc !26
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 82
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !148
  %15 = icmp ugt i8 %14, -65
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !149
  tail call void @arm_heavy_mb() #19
  %17 = and i8 %14, -65
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr i8, ptr %18, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %17) #19, !srcloc !26
  br label %20

20:                                               ; preds = %16, %1
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8102e_1.e_info_8102e_1, i32 noundef 8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8102e_3(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !150
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 15) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !151
  tail call void @arm_heavy_mb() #19
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %4, i32 84
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !152
  %7 = and i8 %6, -2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !153
  tail call void @arm_heavy_mb() #19
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -2147237127) #19, !srcloc !10
  br label %12

12:                                               ; preds = %18, %1
  %13 = phi i32 [ 0, %1 ], [ %20, %18 ]
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr i8, ptr %14, i32 128
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !154
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #19
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq i32 %20, 100
  br i1 %21, label %22, label %12

22:                                               ; preds = %18
  %23 = tail call i32 @net_ratelimit() #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef 100, i32 noundef 10) #20
  br label %28

28:                                               ; preds = %25, %22, %12
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 2147480) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8102e_2(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !150
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 15) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !151
  tail call void @arm_heavy_mb() #19
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %4, i32 84
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !152
  %7 = and i8 %6, -2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #19, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168b(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !155
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 84
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !156
  %5 = and i8 %4, -2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8401(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8401.e_info_8401, i32 noundef 4)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !157
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 84
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !158
  %5 = and i8 %4, -2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168cp_1(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168cp_1.e_info_8168cp, i32 noundef 5)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !159
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 82
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !160
  %5 = or i8 %4, 16
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !161
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 84
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !162
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %15, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext 0) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168c_1(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !163
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 209
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 30) #19, !srcloc !26
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168c_1.e_info_8168c_1, i32 noundef 3)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !159
  tail call void @arm_heavy_mb() #19
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %4, i32 82
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !160
  %7 = or i8 %6, 16
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !161
  tail call void @arm_heavy_mb() #19
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 84
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !162
  %13 = and i8 %12, -2
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr i8, ptr %14, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %13) #19, !srcloc !26
  %16 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %17, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext 0) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168c_2(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168c_2.e_info_8168c_2, i32 noundef 2)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !159
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 82
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !160
  %5 = or i8 %4, 16
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !161
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 84
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !162
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %15, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext 0) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168c_4(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !159
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 82
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !160
  %5 = or i8 %4, 16
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !161
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 84
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !162
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %15, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext 0) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168cp_2(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !164
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 84
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !165
  %5 = and i8 %4, -2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168cp_3(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !166
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 84
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !167
  %5 = and i8 %4, -2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !168
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 209
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 32) #19, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168d(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext 0) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168d_4(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168d_4.e_info_8168d_4, i32 noundef 4)
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 256) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8105e_1(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !169
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 240
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !170
  %5 = or i32 %4, 10240
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !171
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 240
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !172
  %11 = and i32 %10, -65537
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !173
  tail call void @arm_heavy_mb() #19
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr i8, ptr %14, i32 211
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !174
  %17 = or i8 %16, 12
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr i8, ptr %18, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %17) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr i8, ptr %20, i32 208
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !176
  %23 = or i8 %22, 64
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr i8, ptr %24, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %23) #19, !srcloc !26
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8105e_1.e_info_8105e_1, i32 noundef 8)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !177
  tail call void @arm_heavy_mb() #19
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr i8, ptr %26, i32 84
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !178
  %29 = and i8 %28, -3
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr i8, ptr %30, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %29) #19, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8105e_2(ptr nocapture noundef readonly %0) #0 {
  tail call void @rtl_hw_start_8105e_1(ptr noundef %0)
  %2 = tail call fastcc zeroext i16 @rtl_ephy_read(ptr noundef %0, i32 noundef 30)
  %3 = zext i16 %2 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !153
  tail call void @arm_heavy_mb() #19
  %4 = or i32 %3, -2145484800
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #19, !srcloc !10
  br label %7

7:                                                ; preds = %13, %1
  %8 = phi i32 [ 0, %1 ], [ %15, %13 ]
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr i8, ptr %9, i32 128
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !154
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  %15 = add nuw nsw i32 %8, 1
  %16 = icmp eq i32 %15, 100
  br i1 %16, label %17, label %7

17:                                               ; preds = %13
  %18 = tail call i32 @net_ratelimit() #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef 100, i32 noundef 10) #20
  br label %23

23:                                               ; preds = %20, %17, %7
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168e_1(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168e_1.e_info_8168e_1, i32 noundef 13)
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !179
  tail call void @arm_heavy_mb() #19
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %5, i32 240
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !180
  %8 = or i32 %7, 536870912
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr i8, ptr %9, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !181
  tail call void @arm_heavy_mb() #19
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr i8, ptr %11, i32 240
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !182
  %14 = and i32 %13, -536870913
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !183
  tail call void @arm_heavy_mb() #19
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 86
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !184
  %20 = and i8 %19, -9
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %20) #19, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168e_2(ptr noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168e_2.e_info_8168e_2, i32 noundef 4)
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 192, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 184, i32 noundef 61440, i32 noundef 0, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 200, i32 noundef 61440, i32 noundef 1048578, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 232, i32 noundef 61440, i32 noundef 1048582, i32 noundef 0) #19
  %2 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 464, i32 noundef 0) #19
  %3 = or i32 %2, 2
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 464, i32 noundef 61440, i32 noundef %3, i32 noundef 0) #19
  %4 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %5 = and i32 %4, -2
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %5, i32 noundef 0) #19
  %6 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %7 = or i32 %6, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %7, i32 noundef 0) #19
  %8 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %9 = or i32 %8, 16
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %9, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 204, i32 noundef 61440, i32 noundef 80, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 208, i32 noundef 61440, i32 noundef 134152288, i32 noundef 0) #19
  %10 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %11, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !185
  tail call void @arm_heavy_mb() #19
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 211
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !186
  %16 = and i8 %15, 127
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #19, !srcloc !26
  %19 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 34
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !187
  tail call void @arm_heavy_mb() #19
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 27
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !188
  %26 = and i8 %25, -8
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr i8, ptr %27, i32 27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %26) #19, !srcloc !26
  br label %29

29:                                               ; preds = %22, %1
  %30 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %31 = or i32 %30, 3
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %31, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !189
  tail call void @arm_heavy_mb() #19
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr i8, ptr %32, i32 208
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %33) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !190
  %35 = or i8 %34, 64
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr i8, ptr %36, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 %35) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !191
  tail call void @arm_heavy_mb() #19
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr i8, ptr %38, i32 240
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !192
  %41 = or i32 %40, 4194304
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr i8, ptr %42, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !193
  tail call void @arm_heavy_mb() #19
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr i8, ptr %44, i32 86
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %45) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !194
  %47 = and i8 %46, -9
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr i8, ptr %48, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 %47) #19, !srcloc !26
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168f_1(ptr noundef %0) #0 {
  tail call fastcc void @rtl_hw_start_8168f(ptr noundef %0)
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168f_1.e_info_8168f_1, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8402(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !195
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 240
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !196
  %5 = or i32 %4, 10240
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !197
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 211
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !198
  %11 = and i8 %10, 127
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8402.e_info_8402, i32 noundef 2)
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 200, i32 noundef 61440, i32 noundef 2, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 232, i32 noundef 61440, i32 noundef 6, i32 noundef 0) #19
  %14 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %15 = and i32 %14, -2
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %15, i32 noundef 0) #19
  %16 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %17 = or i32 %16, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %17, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 192, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 184, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  %18 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 212, i32 noundef 0) #19
  %19 = and i32 %18, -65281
  %20 = or i32 %19, 3584
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 212, i32 noundef 61440, i32 noundef %20, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !177
  tail call void @arm_heavy_mb() #19
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 84
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !178
  %24 = and i8 %23, -3
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %24) #19, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8411(ptr noundef %0) #0 {
  tail call fastcc void @rtl_hw_start_8168f(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !177
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 84
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !178
  %5 = and i8 %4, -3
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8411.e_info_8168f_1, i32 noundef 5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8106(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !203
  tail call void @arm_heavy_mb() #19
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 240
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !204
  %18 = or i32 %17, 10240
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !205
  tail call void @arm_heavy_mb() #19
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 240
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !206
  %24 = and i32 %23, -8454145
  %25 = or i32 %24, 8388608
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr i8, ptr %26, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !207
  tail call void @arm_heavy_mb() #19
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr i8, ptr %28, i32 211
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !208
  %31 = or i8 %30, 12
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr i8, ptr %32, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %31) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !209
  tail call void @arm_heavy_mb() #19
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr i8, ptr %34, i32 208
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %35) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !210
  %37 = and i8 %36, -65
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr i8, ptr %38, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 %37) #19, !srcloc !26
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 47)
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 464, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !177
  tail call void @arm_heavy_mb() #19
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr i8, ptr %40, i32 84
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !178
  %43 = and i8 %42, -3
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr i8, ptr %44, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %43) #19, !srcloc !26
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168g_1(ptr noundef %0) #0 {
  tail call fastcc void @rtl_hw_start_8168g(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168g_1.e_info_8168g_1, i32 noundef 4)
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168g_2(ptr noundef %0) #0 {
  tail call fastcc void @rtl_hw_start_8168g(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168g_2.e_info_8168g_2, i32 noundef 9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8411_2(ptr noundef %0) #0 {
  tail call fastcc void @rtl_hw_start_8168g(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8411_2.e_info_8411_2, i32 noundef 10)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -32243712) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -32178176) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -32112640) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -32047104) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -31981568) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -31916032) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr i8, ptr %27, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -31850496) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -31784960) #19, !srcloc !10
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #19
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #19
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr i8, ptr %34, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 -32309248) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr i8, ptr %36, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 -67051512) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr i8, ptr %38, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 -66985974) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr i8, ptr %40, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -66920436) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr i8, ptr %42, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 -66854898) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr i8, ptr %44, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 -66789337) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr i8, ptr %46, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 -66723761) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr i8, ptr %48, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 -66658210) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr i8, ptr %50, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 -66592667) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr i8, ptr %52, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 -66533886) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr i8, ptr %54, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 -66470400) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr i8, ptr %56, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 -66453504) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr i8, ptr %58, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 -66337534) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr i8, ptr %60, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 -66274048) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %62 = load ptr, ptr %0, align 8
  %63 = getelementptr i8, ptr %62, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 -66255028) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %64 = load ptr, ptr %0, align 8
  %65 = getelementptr i8, ptr %64, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 -66141438) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %66 = load ptr, ptr %0, align 8
  %67 = getelementptr i8, ptr %66, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 -66077952) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %68 = load ptr, ptr %0, align 8
  %69 = getelementptr i8, ptr %68, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 -66058230) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %70 = load ptr, ptr %0, align 8
  %71 = getelementptr i8, ptr %70, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 -65969120) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %72 = load ptr, ptr %0, align 8
  %73 = getelementptr i8, ptr %72, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 -65910590) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %74 = load ptr, ptr %0, align 8
  %75 = getelementptr i8, ptr %74, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 -65827808) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %76 = load ptr, ptr %0, align 8
  %77 = getelementptr i8, ptr %76, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 -65747690) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %78 = load ptr, ptr %0, align 8
  %79 = getelementptr i8, ptr %78, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 -65706844) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr i8, ptr %80, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 -65648192) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %82 = load ptr, ptr %0, align 8
  %83 = getelementptr i8, ptr %82, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 -65540087) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %84 = load ptr, ptr %0, align 8
  %85 = getelementptr i8, ptr %84, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 -65506142) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %86 = load ptr, ptr %0, align 8
  %87 = getelementptr i8, ptr %86, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 -65434459) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %88 = load ptr, ptr %0, align 8
  %89 = getelementptr i8, ptr %88, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 -65375072) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %90 = load ptr, ptr %0, align 8
  %91 = getelementptr i8, ptr %90, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 -65288946) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %92 = load ptr, ptr %0, align 8
  %93 = getelementptr i8, ptr %92, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 -65233758) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %94 = load ptr, ptr %0, align 8
  %95 = getelementptr i8, ptr %94, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 -65201135) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %96 = load ptr, ptr %0, align 8
  %97 = getelementptr i8, ptr %96, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 -65102688) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %98 = load ptr, ptr %0, align 8
  %99 = getelementptr i8, ptr %98, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 -65019898) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %100 = load ptr, ptr %0, align 8
  %101 = getelementptr i8, ptr %100, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 -64981768) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %102 = load ptr, ptr %0, align 8
  %103 = getelementptr i8, ptr %102, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 -64927548) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %104 = load ptr, ptr %0, align 8
  %105 = getelementptr i8, ptr %104, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 -64844552) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %106 = load ptr, ptr %0, align 8
  %107 = getelementptr i8, ptr %106, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 -64764924) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %108 = load ptr, ptr %0, align 8
  %109 = getelementptr i8, ptr %108, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 -64701440) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %110 = load ptr, ptr %0, align 8
  %111 = getelementptr i8, ptr %110, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 -64633853) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %112 = load ptr, ptr %0, align 8
  %113 = getelementptr i8, ptr %112, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 -64570368) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %114 = load ptr, ptr %0, align 8
  %115 = getelementptr i8, ptr %114, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 -64549902) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %116 = load ptr, ptr %0, align 8
  %117 = getelementptr i8, ptr %116, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 -64484342) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %118 = load ptr, ptr %0, align 8
  %119 = getelementptr i8, ptr %118, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 -64363468) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %120 = load ptr, ptr %0, align 8
  %121 = getelementptr i8, ptr %120, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 -64302144) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %122 = load ptr, ptr %0, align 8
  %123 = getelementptr i8, ptr %122, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 -64271911) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %124 = load ptr, ptr %0, align 8
  %125 = getelementptr i8, ptr %124, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 -64163809) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %126 = load ptr, ptr %0, align 8
  %127 = getelementptr i8, ptr %126, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 -64109274) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %128 = load ptr, ptr %0, align 8
  %129 = getelementptr i8, ptr %128, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 -64068443) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %130 = load ptr, ptr %0, align 8
  %131 = getelementptr i8, ptr %130, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 -64023552) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %132 = load ptr, ptr %0, align 8
  %133 = getelementptr i8, ptr %132, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 -63901689) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %134 = load ptr, ptr %0, align 8
  %135 = getelementptr i8, ptr %134, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 -63894527) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %136 = load ptr, ptr %0, align 8
  %137 = getelementptr i8, ptr %136, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 -63796059) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %138 = load ptr, ptr %0, align 8
  %139 = getelementptr i8, ptr %138, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 -63759339) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %140 = load ptr, ptr %0, align 8
  %141 = getelementptr i8, ptr %140, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 -63650533) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %142 = load ptr, ptr %0, align 8
  %143 = getelementptr i8, ptr %142, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 -63595360) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %144 = load ptr, ptr %0, align 8
  %145 = getelementptr i8, ptr %144, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 -63512557) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %146 = load ptr, ptr %0, align 8
  %147 = getelementptr i8, ptr %146, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 -63453927) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %148 = load ptr, ptr %0, align 8
  %149 = getelementptr i8, ptr %148, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 -63408992) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %150 = load ptr, ptr %0, align 8
  %151 = getelementptr i8, ptr %150, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 -63354684) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %152 = load ptr, ptr %0, align 8
  %153 = getelementptr i8, ptr %152, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 -63271776) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %154 = load ptr, ptr %0, align 8
  %155 = getelementptr i8, ptr %154, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 -63191786) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %156 = load ptr, ptr %0, align 8
  %157 = getelementptr i8, ptr %156, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 -63146844) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %158 = load ptr, ptr %0, align 8
  %159 = getelementptr i8, ptr %158, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 -63092536) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %160 = load ptr, ptr %0, align 8
  %161 = getelementptr i8, ptr %160, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 -63026998) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %162 = load ptr, ptr %0, align 8
  %163 = getelementptr i8, ptr %162, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 -62939996) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %164 = load ptr, ptr %0, align 8
  %165 = getelementptr i8, ptr %164, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 -62864110) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %166 = load ptr, ptr %0, align 8
  %167 = getelementptr i8, ptr %166, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 -62842112) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %168 = load ptr, ptr %0, align 8
  %169 = getelementptr i8, ptr %168, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 -62743648) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %170 = load ptr, ptr %0, align 8
  %171 = getelementptr i8, ptr %170, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 -62711012) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %172 = load ptr, ptr %0, align 8
  %173 = getelementptr i8, ptr %172, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 -62633921) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %174 = load ptr, ptr %0, align 8
  %175 = getelementptr i8, ptr %174, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 -62547038) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %176 = load ptr, ptr %0, align 8
  %177 = getelementptr i8, ptr %176, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 -62514428) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %178 = load ptr, ptr %0, align 8
  %179 = getelementptr i8, ptr %178, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 -62405368) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %180 = load ptr, ptr %0, align 8
  %181 = getelementptr i8, ptr %180, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 -62350432) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %182 = load ptr, ptr %0, align 8
  %183 = getelementptr i8, ptr %182, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 -62274299) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %184 = load ptr, ptr %0, align 8
  %185 = getelementptr i8, ptr %184, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 -62210816) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %186 = load ptr, ptr %0, align 8
  %187 = getelementptr i8, ptr %186, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 -62143230) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %188 = load ptr, ptr %0, align 8
  %189 = getelementptr i8, ptr %188, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 -62079744) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %190 = load ptr, ptr %0, align 8
  %191 = getelementptr i8, ptr %190, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 -62061824) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %192 = load ptr, ptr %0, align 8
  %193 = getelementptr i8, ptr %192, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 -61995746) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %194 = load ptr, ptr %0, align 8
  %195 = getelementptr i8, ptr %194, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 -61873100) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %196 = load ptr, ptr %0, align 8
  %197 = getelementptr i8, ptr %196, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 -61808616) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %198 = load ptr, ptr %0, align 8
  %199 = getelementptr i8, ptr %198, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 -61742958) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %200 = load ptr, ptr %0, align 8
  %201 = getelementptr i8, ptr %200, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 -61678048) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %202 = load ptr, ptr %0, align 8
  %203 = getelementptr i8, ptr %202, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 -61615168) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %204 = load ptr, ptr %0, align 8
  %205 = getelementptr i8, ptr %204, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 -61553393) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %206 = load ptr, ptr %0, align 8
  %207 = getelementptr i8, ptr %206, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 -61507932) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %208 = load ptr, ptr %0, align 8
  %209 = getelementptr i8, ptr %208, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 -61453853) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %210 = load ptr, ptr %0, align 8
  %211 = getelementptr i8, ptr %210, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 -61345785) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %212 = load ptr, ptr %0, align 8
  %213 = getelementptr i8, ptr %212, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 -61322816) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %214 = load ptr, ptr %0, align 8
  %215 = getelementptr i8, ptr %214, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 -61214461) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %216 = load ptr, ptr %0, align 8
  %217 = getelementptr i8, ptr %216, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 -61159929) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %218 = load ptr, ptr %0, align 8
  %219 = getelementptr i8, ptr %218, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 -61096448) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %220 = load ptr, ptr %0, align 8
  %221 = getelementptr i8, ptr %220, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 -61028858) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %222 = load ptr, ptr %0, align 8
  %223 = getelementptr i8, ptr %222, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 -60965376) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %224 = load ptr, ptr %0, align 8
  %225 = getelementptr i8, ptr %224, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 -60897790) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %226 = load ptr, ptr %0, align 8
  %227 = getelementptr i8, ptr %226, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 -60834304) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %228 = load ptr, ptr %0, align 8
  %229 = getelementptr i8, ptr %228, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 -60814260) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %230 = load ptr, ptr %0, align 8
  %231 = getelementptr i8, ptr %230, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 -60748760) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %232 = load ptr, ptr %0, align 8
  %233 = getelementptr i8, ptr %232, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 -60683220) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %234 = load ptr, ptr %0, align 8
  %235 = getelementptr i8, ptr %234, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 -60564480) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %236 = load ptr, ptr %0, align 8
  %237 = getelementptr i8, ptr %236, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 -60504313) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %238 = load ptr, ptr %0, align 8
  %239 = getelementptr i8, ptr %238, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 -60482304) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %240 = load ptr, ptr %0, align 8
  %241 = getelementptr i8, ptr %240, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 -60387870) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %242 = load ptr, ptr %0, align 8
  %243 = getelementptr i8, ptr %242, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 -60340031) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %244 = load ptr, ptr %0, align 8
  %245 = getelementptr i8, ptr %244, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 -60242686) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %246 = load ptr, ptr %0, align 8
  %247 = getelementptr i8, ptr %246, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 -60179200) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %248 = load ptr, ptr %0, align 8
  %249 = getelementptr i8, ptr %248, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 -60161878) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %250 = load ptr, ptr %0, align 8
  %251 = getelementptr i8, ptr %250, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 -60038976) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %252 = load ptr, ptr %0, align 8
  %253 = getelementptr i8, ptr %252, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 -59980542) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %254 = load ptr, ptr %0, align 8
  %255 = getelementptr i8, ptr %254, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 -59917056) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %256 = load ptr, ptr %0, align 8
  %257 = getelementptr i8, ptr %256, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 -59899598) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %258 = load ptr, ptr %0, align 8
  %259 = getelementptr i8, ptr %258, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 -32276480) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %260 = load ptr, ptr %0, align 8
  %261 = getelementptr i8, ptr %260, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %261, i32 -32176317) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %262 = load ptr, ptr %0, align 8
  %263 = getelementptr i8, ptr %262, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 -32110591) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %264 = load ptr, ptr %0, align 8
  %265 = getelementptr i8, ptr %264, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 -32044055) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %266 = load ptr, ptr %0, align 8
  %267 = getelementptr i8, ptr %266, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 -31980803) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %268 = load ptr, ptr %0, align 8
  %269 = getelementptr i8, ptr %268, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 -31912923) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %270 = load ptr, ptr %0, align 8
  %271 = getelementptr i8, ptr %270, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 -31850327) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %272 = load ptr, ptr %0, align 8
  %273 = getelementptr i8, ptr %272, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 -31784659) #19, !srcloc !10
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168h_1(ptr noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168h_1.e_info_8168h_1, i32 noundef 6)
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 200, i32 noundef 61440, i32 noundef 524290, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 232, i32 noundef 61440, i32 noundef 1048582, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 204, i32 noundef 4096, i32 noundef 56, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 208, i32 noundef 4096, i32 noundef 72, i32 noundef 0) #19
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  %15 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %16 = and i32 %15, -2
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %16, i32 noundef 0) #19
  %17 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %18 = or i32 %17, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %18, i32 noundef 0) #19
  %19 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %20 = or i32 %19, 28
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %20, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 1520, i32 noundef 12288, i32 noundef 20359, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !211
  tail call void @arm_heavy_mb() #19
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 240
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !212
  %24 = and i32 %23, -524289
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #19, !srcloc !10
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 192, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 184, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  %27 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 34
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !187
  tail call void @arm_heavy_mb() #19
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 27
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !188
  %34 = and i8 %33, -8
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr i8, ptr %35, i32 27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %34) #19, !srcloc !26
  br label %37

37:                                               ; preds = %30, %1
  %38 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %39 = or i32 %38, 3
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %39, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !213
  tail call void @arm_heavy_mb() #19
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr i8, ptr %40, i32 208
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !214
  %43 = and i8 %42, -65
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr i8, ptr %44, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %43) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !215
  tail call void @arm_heavy_mb() #19
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr i8, ptr %46, i32 242
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %47) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !216
  %49 = and i8 %48, -65
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr i8, ptr %50, i32 242
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 %49) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !217
  tail call void @arm_heavy_mb() #19
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr i8, ptr %52, i32 208
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %53) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !218
  %55 = and i8 %54, 127
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr i8, ptr %56, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 %55) #19, !srcloc !26
  %58 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %59 = and i32 %58, -4097
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %59, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !177
  tail call void @arm_heavy_mb() #19
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr i8, ptr %60, i32 84
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %61) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !178
  %63 = and i8 %62, -3
  %64 = load ptr, ptr %0, align 8
  %65 = getelementptr i8, ptr %64, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 %63) #19, !srcloc !26
  %66 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @phy_read_paged(ptr noundef %67, i32 noundef 3138, i32 noundef 19) #19
  %69 = and i32 %68, 16383
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %37
  %72 = udiv i32 16000000, %69
  %73 = and i32 %72, 4095
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %74 = load ptr, ptr %0, align 8
  %75 = getelementptr i8, ptr %74, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 1778974720) #19, !srcloc !10
  %76 = load ptr, ptr %0, align 8
  %77 = getelementptr i8, ptr %76, i32 176
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %79 = and i32 %78, 61440
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %80 = or i32 %73, %79
  %81 = or i32 %80, -368508928
  %82 = load ptr, ptr %0, align 8
  %83 = getelementptr i8, ptr %82, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #19, !srcloc !10
  br label %84

84:                                               ; preds = %71, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr i8, ptr %85, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 1881866240) #19, !srcloc !10
  %87 = load ptr, ptr %0, align 8
  %88 = getelementptr i8, ptr %87, i32 176
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %90 = and i32 %89, 65295
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %91 = or i32 %90, -265617296
  %92 = load ptr, ptr %0, align 8
  %93 = getelementptr i8, ptr %92, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %94 = load ptr, ptr %0, align 8
  %95 = getelementptr i8, ptr %94, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 1881735168) #19, !srcloc !10
  %96 = load ptr, ptr %0, align 8
  %97 = getelementptr i8, ptr %96, i32 176
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %99 = and i32 %98, 8183
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %100 = or i32 %99, -265715704
  %101 = load ptr, ptr %0, align 8
  %102 = getelementptr i8, ptr %101, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %103 = load ptr, ptr %0, align 8
  %104 = getelementptr i8, ptr %103, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 1886060544) #19, !srcloc !10
  %105 = load ptr, ptr %0, align 8
  %106 = getelementptr i8, ptr %105, i32 176
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %108 = and i32 %107, 65024
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %109 = or i32 %108, -261422721
  %110 = load ptr, ptr %0, align 8
  %111 = getelementptr i8, ptr %110, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %112 = load ptr, ptr %0, align 8
  %113 = getelementptr i8, ptr %112, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 1779433472) #19, !srcloc !10
  %114 = load ptr, ptr %0, align 8
  %115 = getelementptr i8, ptr %114, i32 176
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %117 = and i32 %116, 61440
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %118 = or i32 %117, -368049025
  %119 = load ptr, ptr %0, align 8
  %120 = getelementptr i8, ptr %119, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %121 = load ptr, ptr %0, align 8
  %122 = getelementptr i8, ptr %121, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 -216072191) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr i8, ptr %123, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 -216072192) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %125 = load ptr, ptr %0, align 8
  %126 = getelementptr i8, ptr %125, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 -532021248) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %127 = load ptr, ptr %0, align 8
  %128 = getelementptr i8, ptr %127, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 -531693568) #19, !srcloc !10
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168ep_1(ptr noundef %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168ep_1.e_info_8168ep_1, i32 noundef 5)
  tail call fastcc void @rtl_hw_start_8168ep(ptr noundef %0)
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168ep_2(ptr noundef %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168ep_2.e_info_8168ep_2, i32 noundef 3)
  tail call fastcc void @rtl_hw_start_8168ep(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !219
  tail call void @arm_heavy_mb() #19
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 208
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !220
  %18 = and i8 %17, -65
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %18) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !221
  tail call void @arm_heavy_mb() #19
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 242
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !222
  %24 = and i8 %23, -65
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 242
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %24) #19, !srcloc !26
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8168ep_3(ptr noundef %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8168ep_3.e_info_8168ep_3, i32 noundef 4)
  tail call fastcc void @rtl_hw_start_8168ep(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !223
  tail call void @arm_heavy_mb() #19
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 208
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !224
  %18 = and i8 %17, -65
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %18) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !225
  tail call void @arm_heavy_mb() #19
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 242
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !226
  %24 = and i8 %23, -65
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 242
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %24) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr i8, ptr %27, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1777401856) #19, !srcloc !10
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 176
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %32 = and i32 %31, 61440
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %33 = or i32 %32, -370081167
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr i8, ptr %34, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr i8, ptr %36, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 1777467392) #19, !srcloc !10
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr i8, ptr %38, i32 176
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %41 = and i32 %40, 65280
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %42 = or i32 %41, -370016256
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr i8, ptr %43, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr i8, ptr %45, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 1949302784) #19, !srcloc !10
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr i8, ptr %47, i32 176
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %50 = and i32 %49, 65407
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %51 = or i32 %50, -198180736
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr i8, ptr %52, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #19, !srcloc !10
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8117(ptr noundef %0) #0 {
  tail call fastcc void @rtl8168ep_stop_cmac(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8117.e_info_8117, i32 noundef 2)
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 200, i32 noundef 61440, i32 noundef 524290, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 232, i32 noundef 61440, i32 noundef 1048582, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 204, i32 noundef 4096, i32 noundef 47, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 208, i32 noundef 4096, i32 noundef 95, i32 noundef 0) #19
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  %15 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %16 = and i32 %15, -2
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %16, i32 noundef 0) #19
  %17 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %18 = or i32 %17, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %18, i32 noundef 0) #19
  %19 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 212, i32 noundef 0) #19
  %20 = or i32 %19, 16
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 212, i32 noundef 61440, i32 noundef %20, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 1520, i32 noundef 12288, i32 noundef 20359, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !227
  tail call void @arm_heavy_mb() #19
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 240
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !228
  %24 = and i32 %23, -524289
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #19, !srcloc !10
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 192, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 184, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  %27 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 34
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !187
  tail call void @arm_heavy_mb() #19
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 27
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !188
  %34 = and i8 %33, -8
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr i8, ptr %35, i32 27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %34) #19, !srcloc !26
  br label %37

37:                                               ; preds = %30, %1
  %38 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %39 = or i32 %38, 3
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %39, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !229
  tail call void @arm_heavy_mb() #19
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr i8, ptr %40, i32 208
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !230
  %43 = and i8 %42, -65
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr i8, ptr %44, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %43) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !231
  tail call void @arm_heavy_mb() #19
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr i8, ptr %46, i32 242
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %47) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !232
  %49 = and i8 %48, -65
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr i8, ptr %50, i32 242
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 %49) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !233
  tail call void @arm_heavy_mb() #19
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr i8, ptr %52, i32 208
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %53) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !234
  %55 = and i8 %54, 127
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr i8, ptr %56, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 %55) #19, !srcloc !26
  %58 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %59 = and i32 %58, -4097
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %59, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !177
  tail call void @arm_heavy_mb() #19
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr i8, ptr %60, i32 84
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %61) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !178
  %63 = and i8 %62, -3
  %64 = load ptr, ptr %0, align 8
  %65 = getelementptr i8, ptr %64, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 %63) #19, !srcloc !26
  %66 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @phy_read_paged(ptr noundef %67, i32 noundef 3138, i32 noundef 19) #19
  %69 = and i32 %68, 16383
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %37
  %72 = udiv i32 16000000, %69
  %73 = and i32 %72, 4095
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %74 = load ptr, ptr %0, align 8
  %75 = getelementptr i8, ptr %74, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 1778974720) #19, !srcloc !10
  %76 = load ptr, ptr %0, align 8
  %77 = getelementptr i8, ptr %76, i32 176
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %79 = and i32 %78, 61440
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %80 = or i32 %73, %79
  %81 = or i32 %80, -368508928
  %82 = load ptr, ptr %0, align 8
  %83 = getelementptr i8, ptr %82, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #19, !srcloc !10
  br label %84

84:                                               ; preds = %71, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr i8, ptr %85, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 1881866240) #19, !srcloc !10
  %87 = load ptr, ptr %0, align 8
  %88 = getelementptr i8, ptr %87, i32 176
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %90 = and i32 %89, 65295
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %91 = or i32 %90, -265617296
  %92 = load ptr, ptr %0, align 8
  %93 = getelementptr i8, ptr %92, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %94 = load ptr, ptr %0, align 8
  %95 = getelementptr i8, ptr %94, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 -180355069) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %96 = load ptr, ptr %0, align 8
  %97 = getelementptr i8, ptr %96, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 1881735168) #19, !srcloc !10
  %98 = load ptr, ptr %0, align 8
  %99 = getelementptr i8, ptr %98, i32 176
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %101 = and i32 %100, 65526
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %102 = or i32 %101, -265748471
  %103 = load ptr, ptr %0, align 8
  %104 = getelementptr i8, ptr %103, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %105 = load ptr, ptr %0, align 8
  %106 = getelementptr i8, ptr %105, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 1779433472) #19, !srcloc !10
  %107 = load ptr, ptr %0, align 8
  %108 = getelementptr i8, ptr %107, i32 176
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %110 = and i32 %109, 61440
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %111 = or i32 %110, -368049025
  %112 = load ptr, ptr %0, align 8
  %113 = getelementptr i8, ptr %112, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %114 = load ptr, ptr %0, align 8
  %115 = getelementptr i8, ptr %114, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 -216072191) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %116 = load ptr, ptr %0, align 8
  %117 = getelementptr i8, ptr %116, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 -216072192) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %118 = load ptr, ptr %0, align 8
  %119 = getelementptr i8, ptr %118, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 -532021248) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %120 = load ptr, ptr %0, align 8
  %121 = getelementptr i8, ptr %120, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 -531693568) #19, !srcloc !10
  tail call void @r8169_apply_firmware(ptr noundef %0)
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8125a_1(ptr noundef %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8125a_1.e_info_8125a_1, i32 noundef 24)
  tail call fastcc void @rtl_hw_start_8125_common(ptr noundef %0)
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8125a_2(ptr noundef %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8125a_2.e_info_8125a_2, i32 noundef 12)
  tail call fastcc void @rtl_hw_start_8125_common(ptr noundef %0)
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_hw_start_8125b(ptr noundef %0) #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 83
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %5 = and i8 %4, 127
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 86
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %11 = and i8 %10, -2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #19, !srcloc !26
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #19
  tail call fastcc void @__rtl_ephy_init(ptr noundef %0, ptr noundef nonnull @rtl_hw_start_8125b.e_info_8125b, i32 noundef 6)
  tail call fastcc void @rtl_hw_start_8125_common(ptr noundef %0)
  tail call fastcc void @rtl_hw_aspm_clkreq_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__rtl_ephy_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %47

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %43, %5
  %8 = phi i32 [ %2, %5 ], [ %10, %43 ]
  %9 = phi ptr [ %1, %5 ], [ %45, %43 ]
  %10 = add nsw i32 %8, -1
  %11 = load i32, ptr %9, align 4
  %12 = tail call fastcc zeroext i16 @rtl_ephy_read(ptr noundef %0, i32 noundef %11)
  %13 = getelementptr inbounds %struct.ephy_info, ptr %9, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = xor i16 %14, -1
  %16 = and i16 %12, %15
  %17 = getelementptr inbounds %struct.ephy_info, ptr %9, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = or i16 %16, %18
  %20 = load i32, ptr %9, align 4
  %21 = zext i16 %19 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !153
  tail call void @arm_heavy_mb() #19
  %22 = shl i32 %20, 16
  %23 = and i32 %22, 2031616
  %24 = or i32 %23, %21
  %25 = or i32 %24, -2147483648
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr i8, ptr %26, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #19, !srcloc !10
  br label %28

28:                                               ; preds = %34, %7
  %29 = phi i32 [ 0, %7 ], [ %36, %34 ]
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr i8, ptr %30, i32 128
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !154
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #19
  %36 = add nuw nsw i32 %29, 1
  %37 = icmp eq i32 %36, 100
  br i1 %37, label %38, label %28

38:                                               ; preds = %34
  %39 = tail call i32 @net_ratelimit() #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef 100, i32 noundef 10) #20
  br label %43

43:                                               ; preds = %41, %38, %28
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 2147480) #19
  %45 = getelementptr %struct.ephy_info, ptr %9, i32 1
  %46 = icmp sgt i32 %8, 1
  br i1 %46, label %7, label %47

47:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_set_aspm_entry_latency(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 45
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 1807
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = tail call i32 @pci_write_config_byte(ptr noundef %4, i32 noundef 1807, i8 noundef zeroext %1) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %83, label %11

11:                                               ; preds = %8, %2
  %12 = load i1, ptr @rtl_set_aspm_entry_latency.__print_once, align 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  store i1 true, ptr @rtl_set_aspm_entry_latency.__print_once, align 1
  %14 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.28, ptr noundef %15, ptr noundef nonnull @.str.29) #20
  br label %16

16:                                               ; preds = %13, %11
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !235
  tail call void @arm_heavy_mb() #19
  %20 = shl i32 %19, 16
  %21 = and i32 %20, 458752
  %22 = or i32 %21, 63244
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #19, !srcloc !10
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 104
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !236
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %34, label %47

29:                                               ; preds = %34
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr i8, ptr %30, i32 104
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !236
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %45

34:                                               ; preds = %29, %16
  %35 = phi i32 [ %37, %29 ], [ 0, %16 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #19
  %37 = add nuw nsw i32 %35, 1
  %38 = icmp eq i32 %37, 100
  br i1 %38, label %39, label %29

39:                                               ; preds = %34
  %40 = tail call i32 @net_ratelimit() #19
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 100, i32 noundef 10) #20
  br label %52

45:                                               ; preds = %29
  %46 = icmp ult i32 %35, 99
  br i1 %46, label %47, label %52

47:                                               ; preds = %45, %16
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr i8, ptr %48, i32 100
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !237
  %51 = and i32 %50, 16777215
  br label %52

52:                                               ; preds = %47, %45, %42, %39
  %53 = phi i32 [ %51, %47 ], [ 16777215, %45 ], [ 16777215, %42 ], [ 16777215, %39 ]
  %54 = zext i8 %1 to i32
  %55 = shl nuw i32 %54, 24
  %56 = or i32 %53, %55
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !238
  tail call void @arm_heavy_mb() #19
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr i8, ptr %60, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %56) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !239
  tail call void @arm_heavy_mb() #19
  %62 = shl i32 %59, 16
  %63 = and i32 %62, 458752
  %64 = or i32 %63, -2147420404
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr i8, ptr %65, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #19, !srcloc !10
  br label %67

67:                                               ; preds = %73, %52
  %68 = phi i32 [ 0, %52 ], [ %75, %73 ]
  %69 = load ptr, ptr %0, align 8
  %70 = getelementptr i8, ptr %69, i32 104
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !236
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 2147480) #19
  %75 = add nuw nsw i32 %68, 1
  %76 = icmp eq i32 %75, 100
  br i1 %76, label %77, label %67

77:                                               ; preds = %73
  %78 = tail call i32 @net_ratelimit() #19
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %82, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 100, i32 noundef 10) #20
  br label %83

83:                                               ; preds = %80, %77, %67, %8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @rtl_ephy_read(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !240
  tail call void @arm_heavy_mb() #19
  %3 = shl i32 %1, 16
  %4 = and i32 %3, 2031616
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #19, !srcloc !10
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i32 128
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !154
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %16, label %29

11:                                               ; preds = %16
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 128
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !154
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %19, %11 ], [ 0, %2 ]
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #19
  %19 = add nuw nsw i32 %17, 1
  %20 = icmp eq i32 %19, 100
  br i1 %20, label %21, label %11

21:                                               ; preds = %16
  %22 = tail call i32 @net_ratelimit() #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 100, i32 noundef 10) #20
  br label %34

27:                                               ; preds = %21, %11
  %28 = icmp ult i32 %17, 99
  br i1 %28, label %29, label %34

29:                                               ; preds = %27, %2
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr i8, ptr %30, i32 128
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !241
  %33 = trunc i32 %32 to i16
  br label %34

34:                                               ; preds = %29, %27, %24
  %35 = phi i16 [ %33, %29 ], [ -1, %27 ], [ -1, %24 ]
  ret i16 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_hw_aspm_clkreq_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  br i1 %1, label %3, label %21

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 21
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !242
  tail call void @arm_heavy_mb() #19
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr i8, ptr %9, i32 86
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !243
  %12 = or i8 %11, 1
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %12) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !244
  tail call void @arm_heavy_mb() #19
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 83
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !245
  %18 = or i8 %17, -128
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %18) #19, !srcloc !26
  br label %34

21:                                               ; preds = %3, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !199
  tail call void @arm_heavy_mb() #19
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr i8, ptr %22, i32 83
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !200
  %25 = and i8 %24, 127
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr i8, ptr %26, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %25) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !201
  tail call void @arm_heavy_mb() #19
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr i8, ptr %28, i32 86
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !202
  %31 = and i8 %30, -2
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr i8, ptr %32, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %31) #19, !srcloc !26
  br label %34

34:                                               ; preds = %21, %8
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_hw_start_8168f(ptr noundef readonly %0) unnamed_addr #0 {
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 192, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 184, i32 noundef 61440, i32 noundef 0, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 200, i32 noundef 61440, i32 noundef 1048578, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 232, i32 noundef 61440, i32 noundef 1048582, i32 noundef 0) #19
  %2 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %3 = and i32 %2, -2
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %3, i32 noundef 0) #19
  %4 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %5 = or i32 %4, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %5, i32 noundef 0) #19
  %6 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %7 = or i32 %6, 16
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %7, i32 noundef 0) #19
  %8 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 464, i32 noundef 0) #19
  %9 = or i32 %8, 18
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 464, i32 noundef 61440, i32 noundef %9, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 204, i32 noundef 61440, i32 noundef 80, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 208, i32 noundef 61440, i32 noundef 96, i32 noundef 0) #19
  %10 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %11, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !246
  tail call void @arm_heavy_mb() #19
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 211
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !247
  %16 = and i8 %15, 127
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !248
  tail call void @arm_heavy_mb() #19
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 208
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %20) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !249
  %22 = or i8 %21, 64
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %22) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !250
  tail call void @arm_heavy_mb() #19
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 240
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !251
  %28 = or i32 %27, 4194304
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !252
  tail call void @arm_heavy_mb() #19
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 86
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !253
  %34 = and i8 %33, -9
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr i8, ptr %35, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %34) #19, !srcloc !26
  %37 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 34
  br i1 %39, label %47, label %40

40:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !187
  tail call void @arm_heavy_mb() #19
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr i8, ptr %41, i32 27
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !188
  %44 = and i8 %43, -8
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr i8, ptr %45, i32 27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 %44) #19, !srcloc !26
  br label %47

47:                                               ; preds = %40, %1
  %48 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %49 = or i32 %48, 3
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %49, i32 noundef 0) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_hw_start_8168g(ptr noundef readonly %0) unnamed_addr #0 {
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 200, i32 noundef 61440, i32 noundef 524290, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 232, i32 noundef 61440, i32 noundef 1048582, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 204, i32 noundef 4096, i32 noundef 56, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 208, i32 noundef 4096, i32 noundef 72, i32 noundef 0) #19
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  %2 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %3 = and i32 %2, -2
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %3, i32 noundef 0) #19
  %4 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %5 = or i32 %4, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %5, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 760, i32 noundef 12288, i32 noundef 7567, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !254
  tail call void @arm_heavy_mb() #19
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 240
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !255
  %9 = and i32 %8, -524289
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #19, !srcloc !10
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 192, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 184, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  %12 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 34
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !187
  tail call void @arm_heavy_mb() #19
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr i8, ptr %16, i32 27
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !188
  %19 = and i8 %18, -8
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr i8, ptr %20, i32 27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %19) #19, !srcloc !26
  br label %22

22:                                               ; preds = %15, %1
  %23 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %24 = or i32 %23, 3
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %24, i32 noundef 0) #19
  %25 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 764, i32 noundef 0) #19
  %26 = and i32 %25, -8
  %27 = or i32 %26, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 764, i32 noundef 61440, i32 noundef %27, i32 noundef 0) #19
  %28 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %29 = and i32 %28, -4097
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %29, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !177
  tail call void @arm_heavy_mb() #19
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr i8, ptr %30, i32 84
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !178
  %33 = and i8 %32, -3
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr i8, ptr %34, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %33) #19, !srcloc !26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_hw_start_8168ep(ptr noundef readonly %0) unnamed_addr #0 {
  tail call fastcc void @rtl8168ep_stop_cmac(ptr noundef %0)
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 200, i32 noundef 61440, i32 noundef 524290, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 232, i32 noundef 61440, i32 noundef 1048582, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 204, i32 noundef 4096, i32 noundef 47, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 208, i32 noundef 4096, i32 noundef 95, i32 noundef 0) #19
  tail call fastcc void @rtl_set_aspm_entry_latency(ptr noundef %0, i8 noundef zeroext 39) #19
  %2 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %3 = and i32 %2, -2
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %3, i32 noundef 0) #19
  %4 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  %5 = or i32 %4, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %5, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 1520, i32 noundef 12288, i32 noundef 20359, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !256
  tail call void @arm_heavy_mb() #19
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 240
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !257
  %9 = and i32 %8, -524289
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #19, !srcloc !10
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 192, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 184, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #19
  %12 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 34
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !187
  tail call void @arm_heavy_mb() #19
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr i8, ptr %16, i32 27
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !188
  %19 = and i8 %18, -8
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr i8, ptr %20, i32 27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %19) #19, !srcloc !26
  br label %22

22:                                               ; preds = %15, %1
  %23 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 432, i32 noundef 0) #19
  %24 = or i32 %23, 3
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 432, i32 noundef 61440, i32 noundef %24, i32 noundef 0) #19
  %25 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 764, i32 noundef 0) #19
  %26 = and i32 %25, -8
  %27 = or i32 %26, 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 764, i32 noundef 61440, i32 noundef %27, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !258
  tail call void @arm_heavy_mb() #19
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr i8, ptr %28, i32 208
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !259
  %31 = and i8 %30, 127
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr i8, ptr %32, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %31) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !177
  tail call void @arm_heavy_mb() #19
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr i8, ptr %34, i32 84
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %35) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !178
  %37 = and i8 %36, -3
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr i8, ptr %38, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 %37) #19, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl8168ep_stop_cmac(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !260
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 249
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !261
  %5 = and i8 %4, -2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 249
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  br label %8

8:                                                ; preds = %15, %1
  %9 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 251
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !262
  %13 = and i8 %12, 32
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  tail call void @msleep(i32 noundef 50) #19
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 2000
  br i1 %17, label %18, label %8

18:                                               ; preds = %15
  %19 = tail call i32 @net_ratelimit() #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 2000, i32 noundef 50000) #20
  br label %24

24:                                               ; preds = %21, %18, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !263
  tail call void @arm_heavy_mb() #19
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 251
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %26) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !264
  %28 = or i8 %27, 32
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 251
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 %28) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !265
  tail call void @arm_heavy_mb() #19
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 248
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !266
  %34 = and i8 %33, -2
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr i8, ptr %35, i32 248
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %34) #19, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_hw_start_8125_common(ptr noundef readonly %0) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !177
  tail call void @arm_heavy_mb() #19
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 84
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !178
  %5 = and i8 %4, -3
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !267
  tail call void @arm_heavy_mb() #19
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 898
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 8731) #19, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !268
  tail call void @arm_heavy_mb() #19
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 17664
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 0) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !269
  tail call void @arm_heavy_mb() #19
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 18432
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 0) #19, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr i8, ptr %14, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1778712576) #19, !srcloc !10
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr i8, ptr %16, i32 176
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %19 = and i32 %18, 65519
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %20 = or i32 %19, -368771072
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !270
  tail call void @arm_heavy_mb() #19
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 82
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !271
  %26 = and i8 %25, -17
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr i8, ptr %27, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %26) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -526319617) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -526254081) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr i8, ptr %33, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 1777401856) #19, !srcloc !10
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr i8, ptr %35, i32 176
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %38 = and i32 %37, 61440
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %39 = or i32 %38, -370080855
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr i8, ptr %40, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr i8, ptr %42, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 1777467392) #19, !srcloc !10
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr i8, ptr %44, i32 176
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %47 = and i32 %46, 65280
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %48 = or i32 %47, -370016256
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr i8, ptr %49, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr i8, ptr %51, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 1949302784) #19, !srcloc !10
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr i8, ptr %53, i32 176
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %56 = and i32 %55, 65407
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %57 = or i32 %56, -198180736
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr i8, ptr %58, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr i8, ptr %60, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 1974206464) #19, !srcloc !10
  %62 = load ptr, ptr %0, align 8
  %63 = getelementptr i8, ptr %62, i32 176
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %65 = and i32 %64, 65534
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %66 = or i32 %65, -173277184
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr i8, ptr %67, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #19, !srcloc !10
  %69 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %72 = load ptr, ptr %0, align 8
  %73 = getelementptr i8, ptr %72, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 1930035200) #19
  %74 = load ptr, ptr %0, align 8
  %75 = getelementptr i8, ptr %74, i32 176
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19
  %77 = and i32 %76, 63743
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  br i1 %71, label %78, label %82

78:                                               ; preds = %1
  %79 = or i32 %77, -217447936
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr i8, ptr %80, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #19, !srcloc !10
  br label %86

82:                                               ; preds = %1
  %83 = or i32 %77, -217447424
  %84 = load ptr, ptr %0, align 8
  %85 = getelementptr i8, ptr %84, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #19, !srcloc !10
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, ptr %69, align 8
  %88 = icmp eq i32 %87, 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %89 = load ptr, ptr %0, align 8
  %90 = getelementptr i8, ptr %89, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 1931411456) #19
  %91 = load ptr, ptr %0, align 8
  %92 = getelementptr i8, ptr %91, i32 176
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19
  %94 = and i32 %93, 62415
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  br i1 %88, label %95, label %99

95:                                               ; preds = %86
  %96 = or i32 %94, -216072192
  %97 = load ptr, ptr %0, align 8
  %98 = getelementptr i8, ptr %97, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #19, !srcloc !10
  br label %103

99:                                               ; preds = %86
  %100 = or i32 %94, -216072160
  %101 = load ptr, ptr %0, align 8
  %102 = getelementptr i8, ptr %101, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #19, !srcloc !10
  br label %103

103:                                              ; preds = %99, %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %104 = load ptr, ptr %0, align 8
  %105 = getelementptr i8, ptr %104, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 1616510976) #19, !srcloc !10
  %106 = load ptr, ptr %0, align 8
  %107 = getelementptr i8, ptr %106, i32 176
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %109 = and i32 %108, 65523
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %110 = or i32 %109, -530972660
  %111 = load ptr, ptr %0, align 8
  %112 = getelementptr i8, ptr %111, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %113 = load ptr, ptr %0, align 8
  %114 = getelementptr i8, ptr %113, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 1974796288) #19, !srcloc !10
  %115 = load ptr, ptr %0, align 8
  %116 = getelementptr i8, ptr %115, i32 176
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %118 = and i32 %117, 65280
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %119 = or i32 %118, -172687309
  %120 = load ptr, ptr %0, align 8
  %121 = getelementptr i8, ptr %120, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %122 = load ptr, ptr %0, align 8
  %123 = getelementptr i8, ptr %122, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 1973944320) #19, !srcloc !10
  %124 = load ptr, ptr %0, align 8
  %125 = getelementptr i8, ptr %124, i32 176
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %127 = and i32 %126, 64543
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %128 = or i32 %127, -173539264
  %129 = load ptr, ptr %0, align 8
  %130 = getelementptr i8, ptr %129, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %131 = load ptr, ptr %0, align 8
  %132 = getelementptr i8, ptr %131, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 1881866240) #19, !srcloc !10
  %133 = load ptr, ptr %0, align 8
  %134 = getelementptr i8, ptr %133, i32 176
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %136 = and i32 %135, 65295
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %137 = or i32 %136, -265617360
  %138 = load ptr, ptr %0, align 8
  %139 = getelementptr i8, ptr %138, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %140 = load ptr, ptr %0, align 8
  %141 = getelementptr i8, ptr %140, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 1881145344) #19, !srcloc !10
  %142 = load ptr, ptr %0, align 8
  %143 = getelementptr i8, ptr %142, i32 176
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %145 = and i32 %144, 61439
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %146 = or i32 %145, -266338304
  %147 = load ptr, ptr %0, align 8
  %148 = getelementptr i8, ptr %147, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %149 = load ptr, ptr %0, align 8
  %150 = getelementptr i8, ptr %149, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 1963851776) #19, !srcloc !10
  %151 = load ptr, ptr %0, align 8
  %152 = getelementptr i8, ptr %151, i32 176
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %154 = and i32 %153, 65532
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %155 = or i32 %154, -183631871
  %156 = load ptr, ptr %0, align 8
  %157 = getelementptr i8, ptr %156, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %158 = load ptr, ptr %0, align 8
  %159 = getelementptr i8, ptr %158, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 1885339648) #19, !srcloc !10
  %160 = load ptr, ptr %0, align 8
  %161 = getelementptr i8, ptr %160, i32 176
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %163 = and i32 %162, 45296
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %164 = or i32 %163, -262126589
  %165 = load ptr, ptr %0, align 8
  %166 = getelementptr i8, ptr %165, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %167 = load ptr, ptr %0, align 8
  %168 = getelementptr i8, ptr %167, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 1881735168) #19, !srcloc !10
  %169 = load ptr, ptr %0, align 8
  %170 = getelementptr i8, ptr %169, i32 176
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %172 = and i32 %171, 65303
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %173 = or i32 %172, -265748376
  %174 = load ptr, ptr %0, align 8
  %175 = getelementptr i8, ptr %174, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %173) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %176 = load ptr, ptr %0, align 8
  %177 = getelementptr i8, ptr %176, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 1779957760) #19, !srcloc !10
  %178 = load ptr, ptr %0, align 8
  %179 = getelementptr i8, ptr %178, i32 176
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %181 = and i32 %180, 61440
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %182 = or i32 %181, -367524737
  %183 = load ptr, ptr %0, align 8
  %184 = getelementptr i8, ptr %183, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %182) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %185 = load ptr, ptr %0, align 8
  %186 = getelementptr i8, ptr %185, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 1963851776) #19, !srcloc !10
  %187 = load ptr, ptr %0, align 8
  %188 = getelementptr i8, ptr %187, i32 176
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %190 = and i32 %189, 65531
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %191 = or i32 %190, -183631872
  %192 = load ptr, ptr %0, align 8
  %193 = getelementptr i8, ptr %192, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %194 = load ptr, ptr %0, align 8
  %195 = getelementptr i8, ptr %194, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 1974075392) #19, !srcloc !10
  %196 = load ptr, ptr %0, align 8
  %197 = getelementptr i8, ptr %196, i32 176
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %199 = and i32 %198, 65534
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %200 = or i32 %199, -173408255
  %201 = load ptr, ptr %0, align 8
  %202 = getelementptr i8, ptr %201, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %200) #19, !srcloc !10
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %203(i32 noundef 214748) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %204 = load ptr, ptr %0, align 8
  %205 = getelementptr i8, ptr %204, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 1974075392) #19, !srcloc !10
  %206 = load ptr, ptr %0, align 8
  %207 = getelementptr i8, ptr %206, i32 176
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %209 = and i32 %208, 65534
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %210 = or i32 %209, -173408256
  %211 = load ptr, ptr %0, align 8
  %212 = getelementptr i8, ptr %211, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %210) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !272
  tail call void @arm_heavy_mb() #19
  %213 = load ptr, ptr %0, align 8
  %214 = getelementptr i8, ptr %213, i32 6272
  %215 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %214) #19, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !273
  %216 = and i16 %215, -49
  %217 = load ptr, ptr %0, align 8
  %218 = getelementptr i8, ptr %217, i32 6272
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %218, i16 %216) #19, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %219 = load ptr, ptr %0, align 8
  %220 = getelementptr i8, ptr %219, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 -263404798) #19, !srcloc !10
  br label %221

221:                                              ; preds = %230, %103
  %222 = phi i32 [ 0, %103 ], [ %231, %230 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %223 = load ptr, ptr %0, align 8
  %224 = getelementptr i8, ptr %223, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 1879506944) #19, !srcloc !10
  %225 = load ptr, ptr %0, align 8
  %226 = getelementptr i8, ptr %225, i32 176
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %226) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %228 = and i32 %227, 8192
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %221
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %231 = add nuw nsw i32 %222, 1
  %232 = icmp eq i32 %231, 10
  br i1 %232, label %233, label %221

233:                                              ; preds = %230
  %234 = tail call i32 @net_ratelimit() #19
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %238 = load ptr, ptr %237, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %238, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 10, i32 noundef 1000) #20
  br label %239

239:                                              ; preds = %236, %233, %221
  %240 = load i32, ptr %69, align 8
  %241 = icmp eq i32 %240, 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  br i1 %241, label %242, label %260

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %244 = load ptr, ptr %243, align 8
  %245 = getelementptr inbounds %struct.net_device, ptr %244, i32 0, i32 20
  %246 = load i32, ptr %245, align 4
  %247 = trunc i32 %246 to i16
  %248 = add i16 %247, 46
  %249 = load ptr, ptr %0, align 8
  %250 = getelementptr i8, ptr %249, i32 24648
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %250, i16 %248) #19, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %251 = load ptr, ptr %0, align 8
  %252 = getelementptr i8, ptr %251, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 1881145344) #19, !srcloc !10
  %253 = load ptr, ptr %0, align 8
  %254 = getelementptr i8, ptr %253, i32 176
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %256 = and i32 %255, 65532
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %257 = or i32 %256, -266338301
  %258 = load ptr, ptr %0, align 8
  %259 = getelementptr i8, ptr %258, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %257) #19, !srcloc !10
  br label %279

260:                                              ; preds = %239
  %261 = load ptr, ptr %0, align 8
  %262 = getelementptr i8, ptr %261, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 1881145344) #19, !srcloc !10
  %263 = load ptr, ptr %0, align 8
  %264 = getelementptr i8, ptr %263, i32 176
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %266 = and i32 %265, 65532
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %267 = or i32 %266, -266338301
  %268 = load ptr, ptr %0, align 8
  %269 = getelementptr i8, ptr %268, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %267) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !15
  tail call void @arm_heavy_mb() #19
  %270 = load ptr, ptr %0, align 8
  %271 = getelementptr i8, ptr %270, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 1974534144) #19, !srcloc !10
  %272 = load ptr, ptr %0, align 8
  %273 = getelementptr i8, ptr %272, i32 176
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %273) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !16
  %275 = and i32 %274, 65529
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !14
  tail call void @arm_heavy_mb() #19
  %276 = or i32 %275, -172949498
  %277 = load ptr, ptr %0, align 8
  %278 = getelementptr i8, ptr %277, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 %276) #19, !srcloc !10
  br label %279

279:                                              ; preds = %260, %242
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !274
  tail call void @arm_heavy_mb() #19
  %280 = load ptr, ptr %0, align 8
  %281 = getelementptr i8, ptr %280, i32 240
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %281) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !275
  %283 = and i32 %282, -524289
  %284 = load ptr, ptr %0, align 8
  %285 = getelementptr i8, ptr %284, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 %283) #19, !srcloc !10
  %286 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %286(i32 noundef 2147480) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl8169_do_counters(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 22
  %4 = load i32, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !276
  tail call void @arm_heavy_mb() #19
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #19, !srcloc !10
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i32 55
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !23
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !277
  tail call void @arm_heavy_mb() #19
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %4) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !278
  tail call void @arm_heavy_mb() #19
  %12 = or i32 %4, %1
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #19, !srcloc !10
  br label %15

15:                                               ; preds = %22, %2
  %16 = phi i32 [ 0, %2 ], [ %24, %22 ]
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !279
  %20 = and i32 %19, 9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #19
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 1000
  br i1 %25, label %26, label %15

26:                                               ; preds = %22
  %27 = tail call i32 @net_ratelimit() #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef 1000, i32 noundef 10) #20
  br label %32

32:                                               ; preds = %29, %26, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fw_release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl8169_down(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 20
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @phy_stop(ptr noundef %4) #19
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %5, i32 55
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !63
  %8 = and i8 %7, 8
  %9 = icmp ne i8 %8, 0
  %10 = icmp ne i8 %7, -1
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call fastcc void @rtl8169_do_counters(ptr noundef %0, i32 noundef 8) #19
  br label %13

13:                                               ; preds = %12, %1
  %14 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @pci_clear_master(ptr noundef %15) #19
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr i8, ptr %16, i32 55
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !23
  tail call fastcc void @rtl8169_cleanup(ptr noundef %0, i1 noundef zeroext true)
  %19 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -2
  %26 = icmp eq i32 %25, 28
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !153
  tail call void @arm_heavy_mb() #19
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr i8, ptr %28, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -2145779868) #19, !srcloc !10
  br label %30

30:                                               ; preds = %36, %27
  %31 = phi i32 [ 0, %27 ], [ %38, %36 ]
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr i8, ptr %32, i32 128
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !154
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #19
  %38 = add nuw nsw i32 %31, 1
  %39 = icmp eq i32 %38, 100
  br i1 %39, label %40, label %30

40:                                               ; preds = %36
  %41 = tail call i32 @net_ratelimit() #19
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %45, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef 100, i32 noundef 10) #20
  br label %46

46:                                               ; preds = %43, %40, %30
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #19
  br label %48

48:                                               ; preds = %46, %22
  %49 = load ptr, ptr %14, align 4
  %50 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44, i32 11, i32 1
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44, i32 11, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %3, align 4
  %60 = tail call i32 @phy_speed_down(ptr noundef %59, i1 noundef zeroext false) #19
  %61 = load i32, ptr %23, align 8
  %62 = icmp ugt i32 %61, 21
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !280
  tail call void @arm_heavy_mb() #19
  %64 = load ptr, ptr %0, align 8
  %65 = getelementptr i8, ptr %64, i32 68
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !281
  %67 = or i32 %66, 14
  %68 = load ptr, ptr %0, align 8
  %69 = getelementptr i8, ptr %68, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #19, !srcloc !10
  br label %70

70:                                               ; preds = %63, %58, %54, %48, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_speed_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtl8169_tx_map(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.TxDesc, ptr %8, i32 %4
  %10 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %13 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #19
  %14 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %26, !prof !49

17:                                               ; preds = %6
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %18 = tail call ptr @dev_driver_string(ptr noundef %12) #19
  %19 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr %12, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %20, %17 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %18, ptr noundef %25) #19
  br label %26

26:                                               ; preds = %24, %6
  br i1 %13, label %36, label %27

27:                                               ; preds = %26
  %28 = load ptr, ptr @mem_map, align 4
  %29 = ptrtoint ptr %3 to i32
  %30 = add i32 %29, 1073741824
  %31 = lshr i32 %30, 12
  %32 = getelementptr %struct.page, ptr %28, i32 %31
  %33 = and i32 %29, 4095
  %34 = tail call i32 @dma_map_page_attrs(ptr noundef %12, ptr noundef %32, i32 noundef %33, i32 noundef %2, i32 noundef 1, i32 noundef 0) #19
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %27, %26
  %37 = tail call i32 @net_ratelimit() #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.38) #20
  br label %56

42:                                               ; preds = %27
  %43 = zext i32 %34 to i64
  %44 = getelementptr %struct.TxDesc, ptr %8, i32 %4, i32 2
  store i64 %43, ptr %44, align 8
  %45 = getelementptr i32, ptr %1, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.TxDesc, ptr %8, i32 %4, i32 1
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %1, align 4
  %49 = or i32 %48, %2
  %50 = icmp eq i32 %4, 255
  %51 = or i32 %49, 1073741824
  %52 = select i1 %50, i32 %51, i32 %49
  %53 = or i32 %52, -2147483648
  %54 = select i1 %5, i32 %53, i32 %52
  store i32 %54, ptr %9, align 8
  %55 = getelementptr %struct.rtl8169_private, ptr %0, i32 0, i32 15, i32 %4, i32 1
  store i32 %2, ptr %55, align 4
  br label %56

56:                                               ; preds = %42, %39, %36
  %57 = phi i32 [ 0, %42 ], [ -12, %39 ], [ -12, %36 ]
  ret i32 %57
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtl_quirk_packet_padto(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.vlan_hdr, align 4
  %4 = alloca %struct.ipv6hdr, align 4
  %5 = alloca %struct.iphdr, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %9, 49
  %11 = icmp ult i32 %7, 175
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %146

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %19 to i32
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %22, %23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false) #19, !annotation !65
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #19, !annotation !65
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %26 = load i16, ptr %25, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %28 = load i16, ptr %27, align 8
  %29 = zext i16 %28 to i32
  switch i16 %26, label %70 [
    i16 -22392, label %30
    i16 129, label %30
  ]

30:                                               ; preds = %13, %13
  %31 = icmp eq i16 %28, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = icmp ult i16 %28, 4
  br i1 %33, label %34, label %35, !prof !49

34:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 598, i32 noundef 9, ptr noundef null) #19
  br label %109

35:                                               ; preds = %32
  %36 = add nsw i32 %29, -4
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i32 [ %36, %35 ], [ 14, %30 ]
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %40 = icmp eq ptr %1, null
  br label %41

41:                                               ; preds = %67, %37
  %42 = phi i32 [ %7, %37 ], [ %69, %67 ]
  %43 = phi i32 [ %38, %37 ], [ %68, %67 ]
  %44 = phi i32 [ 8, %37 ], [ %60, %67 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4, !annotation !65
  %45 = load i32, ptr %39, align 4
  %46 = add i32 %43, %45
  %47 = sub i32 %42, %46
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %52, label %49, !prof !49

49:                                               ; preds = %41
  %50 = load ptr, ptr %20, align 4
  %51 = getelementptr i8, ptr %50, i32 %43
  br label %57

52:                                               ; preds = %41
  br i1 %40, label %63, label %53

53:                                               ; preds = %52
  %54 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %43, ptr noundef nonnull %3, i32 noundef 4) #19
  %55 = icmp slt i32 %54, 0
  %56 = select i1 %55, ptr null, ptr %3, !prof !49
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi ptr [ %51, %49 ], [ %56, %53 ]
  %59 = icmp eq ptr %58, null
  %60 = add nsw i32 %44, -1
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %59, i1 true, i1 %61, !prof !49
  br i1 %62, label %63, label %64, !prof !49

63:                                               ; preds = %57, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %109

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.vlan_hdr, ptr %58, i32 0, i32 1
  %66 = load i16, ptr %65, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  switch i16 %66, label %70 [
    i16 -22392, label %67
    i16 129, label %67
  ]

67:                                               ; preds = %64, %64
  %68 = add nsw i32 %43, 4
  %69 = load i32, ptr %6, align 8
  br label %41

70:                                               ; preds = %64, %13
  %71 = phi i16 [ %26, %13 ], [ %66, %64 ]
  switch i16 %71, label %109 [
    i16 8, label %72
    i16 -8826, label %93
  ]

72:                                               ; preds = %70
  %73 = load i32, ptr %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %24, %75
  %77 = sub i32 %73, %76
  %78 = icmp slt i32 %77, 20
  br i1 %78, label %79, label %84, !prof !49

79:                                               ; preds = %72
  %80 = icmp eq ptr %1, null
  br i1 %80, label %109, label %81

81:                                               ; preds = %79
  %82 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %24, ptr noundef nonnull %5, i32 noundef 20) #19
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %109, label %88

84:                                               ; preds = %72
  %85 = load ptr, ptr %20, align 4
  %86 = getelementptr i8, ptr %85, i32 %24
  %87 = icmp eq ptr %86, null
  br i1 %87, label %109, label %88

88:                                               ; preds = %84, %81
  %89 = phi ptr [ %86, %84 ], [ %5, %81 ]
  %90 = getelementptr inbounds %struct.iphdr, ptr %89, i32 0, i32 6
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  br i1 %92, label %115, label %143

93:                                               ; preds = %70
  %94 = load i32, ptr %6, align 8
  %95 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %24, %96
  %98 = sub i32 %94, %97
  %99 = icmp slt i32 %98, 40
  br i1 %99, label %100, label %105, !prof !49

100:                                              ; preds = %93
  %101 = icmp eq ptr %1, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %100
  %103 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %24, ptr noundef nonnull %4, i32 noundef 40) #19
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %109, label %110

105:                                              ; preds = %93
  %106 = load ptr, ptr %20, align 4
  %107 = getelementptr i8, ptr %106, i32 %24
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %102, %100, %84, %81, %79, %70, %63, %34
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  br label %143

110:                                              ; preds = %105, %102
  %111 = phi ptr [ %107, %105 ], [ %4, %102 ]
  %112 = getelementptr inbounds %struct.ipv6hdr, ptr %111, i32 0, i32 3
  %113 = load i8, ptr %112, align 2
  %114 = icmp eq i8 %113, 17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  br i1 %114, label %115, label %143

115:                                              ; preds = %110, %88
  %116 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %117 = load i16, ptr %116, align 2
  %118 = icmp eq i16 %117, -1
  br i1 %118, label %143, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %121 = load ptr, ptr %120, align 8
  %122 = load ptr, ptr %14, align 8
  %123 = zext i16 %117 to i32
  %124 = getelementptr i8, ptr %122, i32 %123
  %125 = ptrtoint ptr %121 to i32
  %126 = ptrtoint ptr %124 to i32
  %127 = sub i32 %125, %126
  %128 = add i32 %127, -4
  %129 = icmp ult i32 %128, 43
  br i1 %129, label %130, label %136

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.udphdr, ptr %124, i32 0, i32 1
  %132 = load i16, ptr %131, align 2
  switch i16 %132, label %136 [
    i16 16385, label %133
    i16 16129, label %133
  ]

133:                                              ; preds = %130, %130
  %134 = add i32 %7, 47
  %135 = sub i32 %134, %127
  br label %136

136:                                              ; preds = %133, %130, %119
  %137 = phi i32 [ 0, %119 ], [ %135, %133 ], [ 0, %130 ]
  %138 = icmp ult i32 %127, 8
  %139 = add i32 %7, 8
  %140 = sub i32 %139, %127
  %141 = call i32 @llvm.umax.i32(i32 %137, i32 %140) #19
  %142 = select i1 %138, i32 %141, i32 %137
  br label %143

143:                                              ; preds = %136, %115, %110, %109, %88
  %144 = phi i32 [ 0, %88 ], [ 0, %109 ], [ 0, %110 ], [ 0, %115 ], [ %142, %136 ]
  %145 = load i32, ptr %8, align 8
  br label %146

146:                                              ; preds = %143, %2
  %147 = phi i32 [ %145, %143 ], [ %9, %2 ]
  %148 = phi i32 [ %144, %143 ], [ 0, %2 ]
  switch i32 %147, label %151 [
    i32 30, label %149
    i32 50, label %149
    i32 51, label %149
    i32 52, label %149
  ]

149:                                              ; preds = %146, %146, %146, %146
  %150 = call i32 @llvm.umax.i32(i32 %148, i32 60)
  br label %151

151:                                              ; preds = %149, %146
  %152 = phi i32 [ %148, %146 ], [ %150, %149 ]
  ret i32 %152
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl_rar_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !36
  tail call void @arm_heavy_mb() #19
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 -64) #19, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !282
  tail call void @arm_heavy_mb() #19
  %5 = getelementptr i8, ptr %1, i32 4
  %6 = load i16, ptr %5, align 1
  %7 = zext i16 %6 to i32
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #19, !srcloc !10
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 55
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !23
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !283
  tail call void @arm_heavy_mb() #19
  %13 = load i32, ptr %1, align 1
  %14 = load ptr, ptr %0, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #19, !srcloc !10
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 55
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !23
  %18 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 30
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i32, ptr %1, align 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 224, i32 noundef 61440, i32 noundef %22, i32 noundef 0) #19
  %23 = load i16, ptr %5, align 1
  %24 = zext i16 %23 to i32
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 228, i32 noundef 61440, i32 noundef %24, i32 noundef 0) #19
  %25 = load i16, ptr %1, align 1
  %26 = zext i16 %25 to i32
  %27 = shl nuw i32 %26, 16
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 240, i32 noundef 61440, i32 noundef %27, i32 noundef 0) #19
  %28 = getelementptr i8, ptr %1, i32 2
  %29 = load i32, ptr %28, align 1
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 244, i32 noundef 61440, i32 noundef %29, i32 noundef 0) #19
  br label %30

30:                                               ; preds = %21, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !39
  tail call void @arm_heavy_mb() #19
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 0) #19, !srcloc !26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_stats_to_stats64(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_fetch_sw_netstats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl_disable_clk(ptr noundef %0) #0 {
  tail call void @clk_disable(ptr noundef %0) #19
  tail call void @clk_unprepare(ptr noundef %0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r8168dp_ocp_read(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !284
  tail call void @arm_heavy_mb() #19
  %3 = or i16 %1, -4096
  %4 = zext i16 %3 to i32
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %5, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #19, !srcloc !10
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i32 180
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !285
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %16, label %28

11:                                               ; preds = %16
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 180
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !285
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %18, %11 ], [ 0, %2 ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %18 = add nuw nsw i32 %17, 1
  %19 = icmp eq i32 %18, 20
  br i1 %19, label %20, label %11

20:                                               ; preds = %16
  %21 = tail call i32 @net_ratelimit() #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 20, i32 noundef 100) #20
  br label %32

26:                                               ; preds = %20, %11
  %27 = icmp ult i32 %17, 19
  br i1 %27, label %28, label %32

28:                                               ; preds = %26, %2
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 176
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !286
  br label %32

32:                                               ; preds = %28, %26, %23
  %33 = phi i32 [ %31, %28 ], [ -1, %26 ], [ -1, %23 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_platform_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8169_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #12 {
  %3 = getelementptr i8, ptr %0, i32 4836
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef 32) #19
  %7 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %8 = getelementptr i8, ptr %0, i32 1412
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi ptr [ %15, %13 ], [ %11, %2 ]
  %18 = tail call i32 @strlcpy(ptr noundef %7, ptr noundef %17, i32 noundef 32) #19
  %19 = icmp eq ptr %4, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 3
  %22 = getelementptr inbounds %struct.rtl_fw, ptr %4, i32 0, i32 7
  %23 = tail call i32 @strlcpy(ptr noundef %21, ptr noundef %22, i32 noundef 32) #19
  br label %24

24:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rtl8169_get_regs_len(ptr nocapture noundef readnone %0) #13 {
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8169_get_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ 0, %3 ], [ %12, %6 ]
  %8 = phi ptr [ %2, %3 ], [ %10, %6 ]
  %9 = phi ptr [ %5, %3 ], [ %11, %6 ]
  %10 = getelementptr i32, ptr %8, i32 1
  %11 = getelementptr i32, ptr %9, i32 1
  tail call void @mmiocpy(ptr noundef %8, ptr noundef %9, i32 noundef 4) #19
  %12 = add nuw nsw i32 %7, 4
  %13 = icmp ult i32 %7, 252
  br i1 %13, label %6, label %14

14:                                               ; preds = %6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rtl8169_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #14 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 47, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 4824
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_set_wol(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = getelementptr i8, ptr %0, i32 4824
  store i32 %4, ptr %9, align 8
  tail call fastcc void @__rtl8169_set_wol(ptr noundef %8, i32 noundef %4)
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 0, %7 ], [ -22, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 1640
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 49
  br i1 %8, label %72, label %9

9:                                                ; preds = %4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(92) %1, i8 0, i32 92, i1 false)
  %10 = load i32, ptr %6, align 8
  %11 = icmp ult i32 %10, 5
  %12 = select i1 %11, ptr @rtl_coalesce_info_8169, ptr @rtl_coalesce_info_8168_8136
  %13 = getelementptr i8, ptr %0, i32 1420
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.phy_device, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %29, label %18

18:                                               ; preds = %9
  %19 = load i32, ptr %12, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %25, %18
  %22 = phi i32 [ %27, %25 ], [ %19, %18 ]
  %23 = phi ptr [ %26, %25 ], [ %12, %18 ]
  %24 = icmp eq i32 %16, %22
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.rtl_coalesce_info, ptr %23, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %21

29:                                               ; preds = %21, %9
  %30 = phi ptr [ %12, %9 ], [ %23, %21 ]
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %25, %18
  %33 = phi ptr [ %30, %29 ], [ inttoptr (i32 -48 to ptr), %18 ], [ inttoptr (i32 -48 to ptr), %25 ]
  %34 = ptrtoint ptr %33 to i32
  br label %72

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %0, i32 4748
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 3
  %39 = zext i16 %38 to i32
  %40 = getelementptr %struct.rtl_coalesce_info, ptr %30, i32 0, i32 1, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr i8, ptr %42, i32 226
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %43) #19, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !287
  %45 = zext i16 %44 to i32
  %46 = lshr i32 %45, 12
  %47 = mul i32 %46, %41
  %48 = add i32 %47, 999
  %49 = udiv i32 %48, 1000
  %50 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  store i32 %49, ptr %50, align 4
  %51 = lshr i32 %45, 8
  %52 = and i32 %51, 15
  %53 = icmp ugt i16 %44, 4095
  %54 = icmp ne i32 %52, 0
  %55 = select i1 %53, i1 true, i1 %54
  %56 = shl nuw nsw i32 %52, 2
  %57 = select i1 %55, i32 %56, i32 1
  %58 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  store i32 %57, ptr %58, align 4
  %59 = lshr i32 %45, 4
  %60 = and i32 %59, 15
  %61 = mul i32 %60, %41
  %62 = add i32 %61, 999
  %63 = udiv i32 %62, 1000
  %64 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %63, ptr %64, align 4
  %65 = and i32 %45, 15
  %66 = icmp ne i32 %60, 0
  %67 = icmp ne i32 %65, 0
  %68 = select i1 %66, i1 true, i1 %67
  %69 = shl nuw nsw i32 %65, 2
  %70 = select i1 %68, i32 %69, i32 1
  %71 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  store i32 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %35, %32, %4
  %73 = phi i32 [ %34, %32 ], [ 0, %35 ], [ -95, %4 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl_set_coalesce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 1640
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 49
  br i1 %12, label %137, label %13

13:                                               ; preds = %4
  %14 = icmp ugt i32 %9, 60
  %15 = icmp ugt i32 %7, 60
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %137, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %19, i32 %21)
  %23 = icmp ult i32 %11, 5
  %24 = select i1 %23, ptr @rtl_coalesce_info_8169, ptr @rtl_coalesce_info_8168_8136
  %25 = getelementptr i8, ptr %0, i32 1420
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.phy_device, ptr %26, i32 0, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %41, label %30

30:                                               ; preds = %17
  %31 = load i32, ptr %24, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %37, %30
  %34 = phi i32 [ %39, %37 ], [ %31, %30 ]
  %35 = phi ptr [ %38, %37 ], [ %24, %30 ]
  %36 = icmp eq i32 %28, %34
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.rtl_coalesce_info, ptr %35, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %33

41:                                               ; preds = %33, %17
  %42 = phi ptr [ %24, %17 ], [ %35, %33 ]
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr %struct.rtl_coalesce_info, ptr %42, i32 0, i32 1, i32 0
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, 15
  %48 = udiv i32 %47, 1000
  %49 = icmp ult i32 %48, %22
  br i1 %49, label %53, label %71

50:                                               ; preds = %41, %37, %30
  %51 = phi ptr [ %42, %41 ], [ inttoptr (i32 -48 to ptr), %30 ], [ inttoptr (i32 -48 to ptr), %37 ]
  %52 = ptrtoint ptr %51 to i32
  br label %71

53:                                               ; preds = %44
  %54 = getelementptr %struct.rtl_coalesce_info, ptr %42, i32 0, i32 1, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, 15
  %57 = udiv i32 %56, 1000
  %58 = icmp ult i32 %57, %22
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = getelementptr %struct.rtl_coalesce_info, ptr %42, i32 0, i32 1, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = mul i32 %61, 15
  %63 = udiv i32 %62, 1000
  %64 = icmp ult i32 %63, %22
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = getelementptr %struct.rtl_coalesce_info, ptr %42, i32 0, i32 1, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, 15
  %69 = udiv i32 %68, 1000
  %70 = icmp ult i32 %69, %22
  br i1 %70, label %137, label %71

71:                                               ; preds = %65, %59, %53, %50, %44
  %72 = phi i16 [ 0, %50 ], [ 0, %44 ], [ 1, %53 ], [ 2, %59 ], [ 3, %65 ]
  %73 = phi i32 [ %52, %50 ], [ %46, %44 ], [ %55, %53 ], [ %61, %59 ], [ %67, %65 ]
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %137, label %75

75:                                               ; preds = %71
  %76 = icmp eq i32 %9, 1
  %77 = select i1 %76, i32 0, i32 %9
  %78 = icmp eq i32 %7, 1
  %79 = select i1 %78, i32 0, i32 %7
  %80 = icmp ne i32 %79, 0
  %81 = icmp eq i32 %21, 0
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %137, label %83

83:                                               ; preds = %75
  %84 = icmp ne i32 %77, 0
  %85 = icmp eq i32 %19, 0
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %137, label %87

87:                                               ; preds = %83
  %88 = add i32 %77, 3
  %89 = lshr i32 %88, 2
  %90 = shl i32 %79, 6
  %91 = add i32 %90, 192
  %92 = and i32 %91, 3840
  %93 = and i32 %89, 15
  %94 = or i32 %92, %93
  %95 = mul i32 %21, 1000
  %96 = add nsw i32 %73, -1
  %97 = add i32 %96, %95
  %98 = udiv i32 %97, %73
  %99 = mul i32 %19, 1000
  %100 = add i32 %96, %99
  %101 = udiv i32 %100, %73
  %102 = shl i32 %98, 12
  %103 = shl i32 %101, 4
  %104 = and i32 %103, 240
  %105 = or i32 %102, %94
  %106 = or i32 %104, %105
  %107 = trunc i32 %106 to i16
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !288
  tail call void @arm_heavy_mb() #19
  %108 = load ptr, ptr %5, align 8
  %109 = getelementptr i8, ptr %108, i32 226
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %109, i16 %107) #19, !srcloc !21
  %110 = load i32, ptr %10, align 8
  %111 = icmp ne i32 %110, 35
  %112 = add i32 %110, -30
  %113 = icmp ult i32 %112, 20
  %114 = and i1 %111, %113
  br i1 %114, label %118, label %115

115:                                              ; preds = %87
  %116 = getelementptr i8, ptr %0, i32 4748
  %117 = load i16, ptr %116, align 4
  br label %126

118:                                              ; preds = %87
  %119 = select i1 %84, i1 true, i1 %80
  %120 = getelementptr i8, ptr %0, i32 4748
  %121 = load i16, ptr %120, align 4
  br i1 %119, label %124, label %122

122:                                              ; preds = %118
  %123 = or i16 %121, 128
  br label %126

124:                                              ; preds = %118
  %125 = and i16 %121, -129
  br label %126

126:                                              ; preds = %124, %122, %115
  %127 = phi i16 [ %117, %115 ], [ %123, %122 ], [ %125, %124 ]
  %128 = getelementptr i8, ptr %0, i32 4748
  %129 = and i16 %127, -4
  %130 = or i16 %129, %72
  store i16 %130, ptr %128, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !289
  tail call void @arm_heavy_mb() #19
  %131 = load i16, ptr %128, align 4
  %132 = load ptr, ptr %5, align 8
  %133 = getelementptr i8, ptr %132, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %133, i16 %131) #19, !srcloc !21
  %134 = load ptr, ptr %5, align 8
  %135 = getelementptr i8, ptr %134, i32 55
  %136 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %135) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !23
  br label %137

137:                                              ; preds = %126, %83, %75, %71, %65, %13, %4
  %138 = phi i32 [ 0, %126 ], [ -95, %4 ], [ -34, %13 ], [ %73, %71 ], [ -34, %65 ], [ -22, %75 ], [ -22, %83 ]
  ret i32 %138
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @rtl8169_get_ringparam(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #15 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 256, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 256, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 256, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 256, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8169_get_pauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  store i8 0, ptr %3, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  store i8 0, ptr %4, align 1, !annotation !65
  %5 = getelementptr i8, ptr %0, i32 1420
  %6 = load ptr, ptr %5, align 4
  call void @phy_get_pause(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 4
  %9 = load i16, ptr %8, align 8
  %10 = lshr i16 %9, 12
  %11 = and i16 %10, 1
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = load i8, ptr %3, align 1, !range !62
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = load i8, ptr %4, align 1, !range !62
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_set_pauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 1500
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1420
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  tail call void @phy_set_asym_pause(ptr noundef %8, i1 noundef zeroext %11, i1 noundef zeroext %14) #19
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %6 ], [ -95, %2 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rtl8169_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(416) %2, ptr noundef nonnull align 1 dereferenceable(416) @rtl8169_gstrings, i32 416, i1 false)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8169_get_ethtool_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 4792
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr i8, ptr %7, i32 55
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !63
  %10 = and i8 %9, 8
  %11 = icmp ne i8 %10, 0
  %12 = icmp ne i8 %9, -1
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  tail call fastcc void @rtl8169_do_counters(ptr noundef %4, i32 noundef 8) #19
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i64, ptr %6, align 8
  store i64 %16, ptr %2, align 8
  %17 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr i64, ptr %2, i32 1
  store i64 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr i64, ptr %2, i32 2
  store i64 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = zext i32 %24 to i64
  %26 = getelementptr i64, ptr %2, i32 3
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 4
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i64
  %30 = getelementptr i64, ptr %2, i32 4
  store i64 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 5
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i64
  %34 = getelementptr i64, ptr %2, i32 5
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = zext i32 %36 to i64
  %38 = getelementptr i64, ptr %2, i32 6
  store i64 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr i64, ptr %2, i32 7
  store i64 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 8
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr i64, ptr %2, i32 8
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 9
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr i64, ptr %2, i32 9
  store i64 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 10
  %50 = load i32, ptr %49, align 8
  %51 = zext i32 %50 to i64
  %52 = getelementptr i64, ptr %2, i32 10
  store i64 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 11
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i64
  %56 = getelementptr i64, ptr %2, i32 11
  store i64 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.rtl8169_counters, ptr %6, i32 0, i32 12
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i64
  %60 = getelementptr i64, ptr %2, i32 12
  store i64 %59, ptr %60, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rtl8169_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #13 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 13, i32 -95
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_get_eee(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1640
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, 29
  %6 = and i32 %4, -3
  %7 = icmp ne i32 %6, 33
  %8 = and i1 %5, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 1420
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_ethtool_get_eee(ptr noundef %11, ptr noundef %1) #19
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ %12, %9 ], [ -95, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_set_eee(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1640
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, 29
  %6 = and i32 %4, -3
  %7 = icmp ne i32 %6, 33
  %8 = and i1 %5, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 1420
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_ethtool_set_eee(ptr noundef %11, ptr noundef %1) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @phy_read_mmd(ptr noundef %16, i32 noundef 7, i32 noundef 60) #19
  %18 = getelementptr i8, ptr %0, i32 4828
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %14, %9, %2
  %20 = phi i32 [ -95, %2 ], [ 0, %14 ], [ %12, %9 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__rtl8169_set_wol(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !36
  tail call void @arm_heavy_mb() #19
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 -64) #19, !srcloc !26
  %5 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp ne i32 %6, 35
  %8 = add i32 %6, -30
  %9 = icmp ult i32 %8, 20
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = and i32 %1, 32
  %13 = icmp eq i32 %12, 0
  %14 = tail call fastcc i32 @_rtl_eri_read(ptr noundef %0, i32 noundef 220, i32 noundef 0) #19
  br i1 %13, label %17, label %15

15:                                               ; preds = %11
  %16 = or i32 %14, 65536
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %16, i32 noundef 0) #19
  br label %38

17:                                               ; preds = %11
  %18 = and i32 %14, -65537
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 220, i32 noundef 61440, i32 noundef %18, i32 noundef 0) #19
  br label %38

19:                                               ; preds = %2
  %20 = icmp ugt i32 %6, 49
  br i1 %20, label %21, label %38

21:                                               ; preds = %19
  %22 = and i32 %1, 32
  %23 = icmp eq i32 %22, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr i8, ptr %24, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1616576512) #19
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr i8, ptr %26, i32 176
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19
  %29 = and i32 %28, 65534
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  br i1 %23, label %34, label %30

30:                                               ; preds = %21
  %31 = or i32 %29, -530907135
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr i8, ptr %32, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #19, !srcloc !10
  br label %38

34:                                               ; preds = %21
  %35 = or i32 %29, -530907136
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr i8, ptr %36, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #19, !srcloc !10
  br label %38

38:                                               ; preds = %34, %30, %19, %17, %15
  %39 = phi i1 [ false, %19 ], [ true, %34 ], [ true, %30 ], [ true, %15 ], [ true, %17 ]
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr i8, ptr %40, i32 84
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !290
  %43 = and i8 %42, -17
  %44 = trunc i32 %1 to i8
  %45 = shl i8 %44, 4
  %46 = and i8 %45, 16
  %47 = or i8 %43, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !291
  tail call void @arm_heavy_mb() #19
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr i8, ptr %48, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 %47) #19, !srcloc !26
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr i8, ptr %50, i32 86
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %51) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !290
  %53 = and i8 %52, -17
  %54 = trunc i32 %1 to i8
  %55 = shl i8 %54, 3
  %56 = and i8 %55, 16
  %57 = or i8 %53, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !291
  tail call void @arm_heavy_mb() #19
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr i8, ptr %58, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 %57) #19, !srcloc !26
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr i8, ptr %60, i32 86
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %61) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !290
  %63 = and i8 %62, -65
  %64 = trunc i32 %1 to i8
  %65 = shl i8 %64, 3
  %66 = and i8 %65, 64
  %67 = or i8 %63, %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !291
  tail call void @arm_heavy_mb() #19
  %68 = load ptr, ptr %0, align 8
  %69 = getelementptr i8, ptr %68, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %69, i8 %67) #19, !srcloc !26
  %70 = load ptr, ptr %0, align 8
  %71 = getelementptr i8, ptr %70, i32 86
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %71) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !290
  %73 = and i8 %72, -33
  %74 = trunc i32 %1 to i8
  %75 = shl i8 %74, 3
  %76 = and i8 %75, 32
  %77 = or i8 %73, %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !291
  tail call void @arm_heavy_mb() #19
  %78 = load ptr, ptr %0, align 8
  %79 = getelementptr i8, ptr %78, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %79, i8 %77) #19, !srcloc !26
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr i8, ptr %80, i32 86
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %81) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !290
  %83 = and i8 %82, -3
  %84 = and i32 %1, 47
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i8 0, i8 2
  %87 = or i8 %83, %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !291
  tail call void @arm_heavy_mb() #19
  %88 = load ptr, ptr %0, align 8
  %89 = getelementptr i8, ptr %88, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %89, i8 %87) #19, !srcloc !26
  br i1 %39, label %100, label %90

90:                                               ; preds = %38
  %91 = load ptr, ptr %0, align 8
  %92 = getelementptr i8, ptr %91, i32 84
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %92) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !290
  %94 = and i8 %93, -33
  %95 = trunc i32 %1 to i8
  %96 = and i8 %95, 32
  %97 = or i8 %94, %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !291
  tail call void @arm_heavy_mb() #19
  %98 = load ptr, ptr %0, align 8
  %99 = getelementptr i8, ptr %98, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %99, i8 %97) #19, !srcloc !26
  br label %100

100:                                              ; preds = %90, %38
  %101 = load i32, ptr %5, align 8
  switch i32 %101, label %122 [
    i32 0, label %102
    i32 1, label %102
    i32 2, label %102
    i32 3, label %102
    i32 4, label %102
    i32 30, label %112
    i32 33, label %112
    i32 35, label %112
    i32 36, label %112
    i32 37, label %112
    i32 38, label %112
    i32 39, label %112
    i32 40, label %112
    i32 41, label %112
    i32 42, label %112
    i32 43, label %112
    i32 44, label %112
    i32 45, label %112
    i32 46, label %112
    i32 47, label %112
    i32 48, label %112
    i32 49, label %112
    i32 50, label %112
    i32 51, label %112
    i32 52, label %112
  ]

102:                                              ; preds = %100, %100, %100, %100, %100
  %103 = load ptr, ptr %0, align 8
  %104 = getelementptr i8, ptr %103, i32 82
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %104) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !292
  %106 = and i8 %105, -2
  %107 = icmp ne i32 %1, 0
  %108 = zext i1 %107 to i8
  %109 = or i8 %106, %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !293
  tail call void @arm_heavy_mb() #19
  %110 = load ptr, ptr %0, align 8
  %111 = getelementptr i8, ptr %110, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %111, i8 %109) #19, !srcloc !26
  br label %122

112:                                              ; preds = %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100
  %113 = load ptr, ptr %0, align 8
  %114 = getelementptr i8, ptr %113, i32 83
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %114) #19, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !294
  %116 = and i8 %115, -33
  %117 = icmp eq i32 %1, 0
  %118 = select i1 %117, i8 0, i8 32
  %119 = or i8 %116, %118
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !295
  tail call void @arm_heavy_mb() #19
  %120 = load ptr, ptr %0, align 8
  %121 = getelementptr i8, ptr %120, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %121, i8 %119) #19, !srcloc !26
  br label %122

122:                                              ; preds = %112, %102, %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !39
  tail call void @arm_heavy_mb() #19
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr i8, ptr %123, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %124, i8 0) #19, !srcloc !26
  %125 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  %128 = icmp ne i32 %1, 0
  %129 = tail call i32 @device_set_wakeup_enable(ptr noundef %127, i1 noundef zeroext %128) #19
  %130 = load i32, ptr %5, align 8
  switch i32 %130, label %143 [
    i32 35, label %131
    i32 36, label %131
    i32 37, label %131
    i32 38, label %131
    i32 39, label %131
    i32 40, label %131
    i32 41, label %131
    i32 42, label %131
    i32 43, label %131
    i32 44, label %131
    i32 45, label %131
    i32 46, label %131
    i32 47, label %131
    i32 48, label %131
    i32 49, label %131
    i32 50, label %131
    i32 51, label %131
    i32 52, label %131
    i32 28, label %131
    i32 29, label %131
    i32 30, label %131
    i32 31, label %131
    i32 32, label %131
    i32 33, label %131
    i32 25, label %131
    i32 26, label %131
    i32 22, label %131
    i32 23, label %131
  ]

131:                                              ; preds = %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #19
  tail call void @arm_heavy_mb() #19
  %132 = load ptr, ptr %0, align 8
  %133 = getelementptr i8, ptr %132, i32 111
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %133) #19
  tail call void asm sideeffect "dsb ", "~{memory}"() #19
  br i1 %128, label %139, label %135

135:                                              ; preds = %131
  %136 = and i8 %134, 63
  %137 = load ptr, ptr %0, align 8
  %138 = getelementptr i8, ptr %137, i32 111
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %138, i8 %136) #19, !srcloc !26
  br label %143

139:                                              ; preds = %131
  %140 = or i8 %134, -64
  %141 = load ptr, ptr %0, align 8
  %142 = getelementptr i8, ptr %141, i32 111
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %142, i8 %140) #19, !srcloc !26
  br label %143

143:                                              ; preds = %139, %135, %122
  %144 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.net_device, ptr %145, i32 0, i32 124
  %147 = zext i1 %128 to i8
  %148 = load i8, ptr %146, align 1
  %149 = and i8 %148, -2
  %150 = or i8 %149, %147
  store i8 %150, ptr %146, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_get_pause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8169_mdio_read_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @rtl_readphy(ptr noundef %7, i32 noundef %2)
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ %8, %5 ], [ -19, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8169_mdio_write_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = zext i16 %3 to i32
  tail call void @rtl_writephy(ptr noundef %8, i32 noundef %2, i32 noundef %9)
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ 0, %6 ], [ -19, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @r8168dp_oob_notify(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  tail call fastcc void @_rtl_eri_write(ptr noundef %0, i32 noundef 232, i32 noundef 4096, i32 noundef %3, i32 noundef 0) #19
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !296
  tail call void @arm_heavy_mb() #19
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %4, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #19, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #19, !srcloc !297
  tail call void @arm_heavy_mb() #19
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -2147479504) #19, !srcloc !10
  br label %8

8:                                                ; preds = %14, %2
  %9 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 180
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #19, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #19, !srcloc !285
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %15 = add nuw nsw i32 %9, 1
  %16 = icmp eq i32 %15, 20
  br i1 %16, label %17, label %8

17:                                               ; preds = %14
  %18 = tail call i32 @net_ratelimit() #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtl8169_private, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.45, i32 noundef 1, i32 noundef 20, i32 noundef 100) #20
  br label %23

23:                                               ; preds = %20, %17, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @rtnl_lock() #19
  %4 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  tail call void @netif_device_detach(ptr noundef %5) #19
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call fastcc void @rtl8169_down(ptr noundef %3) #19
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 11, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 11, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %12
  %24 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 19
  %25 = load ptr, ptr %24, align 8
  tail call void @clk_disable(ptr noundef %25) #19
  tail call void @clk_unprepare(ptr noundef %25) #19
  br label %26

26:                                               ; preds = %23, %19
  tail call void @rtnl_unlock() #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 19
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = tail call i32 @clk_enable(ptr noundef %16) #19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #19
  br label %23

23:                                               ; preds = %22, %19, %14, %10
  %24 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 33
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call fastcc void @rtl_init_rxcfg(ptr noundef %3)
  br label %28

28:                                               ; preds = %27, %23
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.rtl8169_private, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 72
  %33 = load ptr, ptr %32, align 32
  tail call fastcc void @rtl_rar_set(ptr noundef %29, ptr noundef %33) #19
  %34 = getelementptr inbounds %struct.rtl8169_private, ptr %29, i32 0, i32 25
  %35 = load i32, ptr %34, align 8
  tail call fastcc void @__rtl8169_set_wol(ptr noundef %29, i32 noundef %35) #19
  %36 = getelementptr inbounds %struct.rtl8169_private, ptr %29, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  tail call fastcc void @rtl8169_up(ptr noundef %29) #19
  br label %40

40:                                               ; preds = %39, %28
  %41 = load ptr, ptr %30, align 8
  tail call void @netif_device_attach(ptr noundef %41) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  tail call void @netif_device_detach(ptr noundef %9) #19
  br label %20

10:                                               ; preds = %1
  tail call void @rtnl_lock() #19
  tail call fastcc void @__rtl8169_set_wol(ptr noundef %3, i32 noundef 1)
  %11 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  tail call void @netif_device_detach(ptr noundef %12) #19
  %13 = load ptr, ptr %11, align 8
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call fastcc void @rtl8169_down(ptr noundef %3) #19
  br label %19

19:                                               ; preds = %18, %10
  tail call void @rtnl_unlock() #19
  br label %20

20:                                               ; preds = %19, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  %7 = load ptr, ptr %6, align 32
  tail call fastcc void @rtl_rar_set(ptr noundef %3, ptr noundef %7)
  %8 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 25
  %9 = load i32, ptr %8, align 8
  tail call fastcc void @__rtl8169_set_wol(ptr noundef %3, i32 noundef %9)
  %10 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call fastcc void @rtl8169_up(ptr noundef %3)
  br label %14

14:                                               ; preds = %13, %1
  %15 = load ptr, ptr %4, align 8
  tail call void @netif_device_attach(ptr noundef %15) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8169_runtime_idle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl8169_private, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %1
  %15 = tail call i32 @pm_schedule_suspend(ptr noundef %0, i32 noundef 10000) #19
  br label %16

16:                                               ; preds = %14, %10
  ret i32 -16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_schedule_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind readnone }

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
!9 = !{i64 2156911458}
!10 = !{i64 3958532}
!11 = !{i64 3958950}
!12 = !{i64 2156911140}
!13 = !{i64 2156912057}
!14 = !{i64 2156885573}
!15 = !{i64 2156886037}
!16 = !{i64 2156886594}
!17 = !{i32 0, i32 33}
!18 = !{i64 2157457440}
!19 = !{i64 3958112}
!20 = !{i64 2157458868}
!21 = !{i64 3957912}
!22 = !{i64 3958730}
!23 = !{i64 2156878581}
!24 = !{i64 2157446825}
!25 = !{i64 2157446985}
!26 = !{i64 3958335}
!27 = !{i64 2157447853}
!28 = !{i64 2157448009}
!29 = !{i64 2157444832}
!30 = !{i64 2157449056}
!31 = !{i64 2157449216}
!32 = !{i64 2157450084}
!33 = !{i64 2157450240}
!34 = !{i64 2157289668}
!35 = !{i64 2157289405}
!36 = !{i64 2156878235}
!37 = !{i64 2157443789}
!38 = !{i64 2157443949}
!39 = !{i64 2156877881}
!40 = !{i64 2156878848}
!41 = !{i64 685015, i64 2148174986, i64 2148175012, i64 2148175059, i64 2148175081, i64 2148175109, i64 2148175129}
!42 = !{i64 2148186401, i64 2148186427, i64 2148186456, i64 2148186490, i64 2148186521, i64 2148186544}
!43 = !{i64 2157442872}
!44 = !{i64 2157269209}
!45 = !{i64 2157269757}
!46 = !{i64 2157270361}
!47 = !{i64 2157270921}
!48 = !{i64 2157275494}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2154903071}
!51 = !{i64 609393}
!52 = !{i64 2149525415}
!53 = !{i64 2149525716}
!54 = !{i64 2157428010}
!55 = !{i64 2157428544}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 684833}
!58 = !{i64 2157395292}
!59 = !{i64 2156922159}
!60 = !{i64 2156923151}
!61 = !{i64 2156923880}
!62 = !{i8 0, i8 2}
!63 = !{i64 2156927767}
!64 = !{i64 6546822}
!65 = !{!"auto-init"}
!66 = !{i64 2154203830, i64 2154204318, i64 2154203867, i64 2154203923, i64 2154203957, i64 2154203981, i64 2154204022, i64 2154204043, i64 2154204071, i64 2154204105}
!67 = !{i64 2157416089}
!68 = !{i64 2153453591, i64 2153454091, i64 2153453628, i64 2153453684, i64 2153453718, i64 2153453742, i64 2153453783, i64 2153453804, i64 2153453832, i64 2153453866}
!69 = !{i64 2153454371}
!70 = !{i64 2154902026}
!71 = !{i64 2157416284}
!72 = !{i64 2157418534}
!73 = !{i64 2157418687}
!74 = !{i64 7567567}
!75 = !{i64 2157305394}
!76 = !{i64 2157305835}
!77 = !{i64 2157306413}
!78 = !{i64 2157306718}
!79 = !{i64 2157265076}
!80 = !{i64 2148185908}
!81 = !{i64 671584, i64 671609, i64 671631, i64 671647, i64 671659, i64 671679, i64 671703, i64 671719, i64 671731}
!82 = !{i64 2148186034}
!83 = !{i64 2156912501}
!84 = !{i64 2156912920}
!85 = !{i64 2157266050}
!86 = !{i64 2156891800}
!87 = !{i64 2156892316}
!88 = !{i64 2156893375}
!89 = !{i64 2156893889}
!90 = !{i64 2156884207}
!91 = !{i64 2156883873}
!92 = !{i64 2156884680}
!93 = !{i64 2156885252}
!94 = !{i64 2156887765}
!95 = !{i64 2156887421}
!96 = !{i64 2156881354}
!97 = !{i64 2156879651}
!98 = !{i64 2156881899}
!99 = !{i64 2156880492}
!100 = !{i64 2156880888}
!101 = !{i64 2156888839}
!102 = !{i64 2156889426}
!103 = !{i64 2157394636}
!104 = !{i64 2157393428}
!105 = !{i64 2157393774}
!106 = !{i64 2157300894}
!107 = !{i64 2157301142}
!108 = !{i64 2157394207}
!109 = !{i64 2157391853}
!110 = !{i64 2157392999}
!111 = !{i64 2157297915}
!112 = !{i64 2157298427}
!113 = !{i64 2157299089}
!114 = !{i64 2157299696}
!115 = !{i64 2157300343}
!116 = !{i64 2157395084}
!117 = !{i64 2157297448}
!118 = !{i64 2157290982}
!119 = !{i64 2157291504}
!120 = !{i64 2157292137}
!121 = !{i64 2157399368}
!122 = !{i64 2157399528}
!123 = !{i64 2157292970}
!124 = !{i64 2157400394}
!125 = !{i64 2157400554}
!126 = !{i64 2157296647}
!127 = !{i64 2157297160}
!128 = !{i64 2157293647}
!129 = !{i64 2157295394}
!130 = !{i64 2157295554}
!131 = !{i64 2157294584}
!132 = !{i64 2157277525}
!133 = !{i64 2157277685}
!134 = !{i64 2157279594}
!135 = !{i64 2157279754}
!136 = !{i64 2157283044}
!137 = !{i64 2157283204}
!138 = !{i64 2157284066}
!139 = !{i64 2157284226}
!140 = !{i64 2157285445}
!141 = !{i64 2157285605}
!142 = !{i64 2157286470}
!143 = !{i64 2157286630}
!144 = !{i64 2157363415}
!145 = !{i64 2157363857}
!146 = !{i64 2157364800}
!147 = !{i64 2157364960}
!148 = !{i64 2157365284}
!149 = !{i64 2157365557}
!150 = !{i64 2157366421}
!151 = !{i64 2157367335}
!152 = !{i64 2157367495}
!153 = !{i64 2156895097}
!154 = !{i64 2156894696}
!155 = !{i64 2157316975}
!156 = !{i64 2157317135}
!157 = !{i64 2157368812}
!158 = !{i64 2157368972}
!159 = !{i64 2157318010}
!160 = !{i64 2157318170}
!161 = !{i64 2157319045}
!162 = !{i64 2157319205}
!163 = !{i64 2157322441}
!164 = !{i64 2157320544}
!165 = !{i64 2157320704}
!166 = !{i64 2157321579}
!167 = !{i64 2157321739}
!168 = !{i64 2157322053}
!169 = !{i64 2157370096}
!170 = !{i64 2157370623}
!171 = !{i64 2157371705}
!172 = !{i64 2157372233}
!173 = !{i64 2157373073}
!174 = !{i64 2157373229}
!175 = !{i64 2157374100}
!176 = !{i64 2157374258}
!177 = !{i64 2157311165}
!178 = !{i64 2157311325}
!179 = !{i64 2157325471}
!180 = !{i64 2157325984}
!181 = !{i64 2157327041}
!182 = !{i64 2157327556}
!183 = !{i64 2157328384}
!184 = !{i64 2157328544}
!185 = !{i64 2157330138}
!186 = !{i64 2157330294}
!187 = !{i64 2157264235}
!188 = !{i64 2157264395}
!189 = !{i64 2157331156}
!190 = !{i64 2157331314}
!191 = !{i64 2157332406}
!192 = !{i64 2157332919}
!193 = !{i64 2157333745}
!194 = !{i64 2157333905}
!195 = !{i64 2157375853}
!196 = !{i64 2157376380}
!197 = !{i64 2157377192}
!198 = !{i64 2157377348}
!199 = !{i64 2157314254}
!200 = !{i64 2157314414}
!201 = !{i64 2157315284}
!202 = !{i64 2157315444}
!203 = !{i64 2157378997}
!204 = !{i64 2157379524}
!205 = !{i64 2157380622}
!206 = !{i64 2157381155}
!207 = !{i64 2157382011}
!208 = !{i64 2157382167}
!209 = !{i64 2157383042}
!210 = !{i64 2157383200}
!211 = !{i64 2157345856}
!212 = !{i64 2157346371}
!213 = !{i64 2157347258}
!214 = !{i64 2157347416}
!215 = !{i64 2157348291}
!216 = !{i64 2157348450}
!217 = !{i64 2157349319}
!218 = !{i64 2157349477}
!219 = !{i64 2157354080}
!220 = !{i64 2157354238}
!221 = !{i64 2157355113}
!222 = !{i64 2157355272}
!223 = !{i64 2157356627}
!224 = !{i64 2157356785}
!225 = !{i64 2157357660}
!226 = !{i64 2157357819}
!227 = !{i64 2157359389}
!228 = !{i64 2157359904}
!229 = !{i64 2157360791}
!230 = !{i64 2157360949}
!231 = !{i64 2157361824}
!232 = !{i64 2157361983}
!233 = !{i64 2157362852}
!234 = !{i64 2157363010}
!235 = !{i64 2157309182}
!236 = !{i64 2157307684}
!237 = !{i64 2157309813}
!238 = !{i64 2157307985}
!239 = !{i64 2157308530}
!240 = !{i64 2156896200}
!241 = !{i64 2156896792}
!242 = !{i64 2157312195}
!243 = !{i64 2157312355}
!244 = !{i64 2157313223}
!245 = !{i64 2157313383}
!246 = !{i64 2157335099}
!247 = !{i64 2157335255}
!248 = !{i64 2157336117}
!249 = !{i64 2157336275}
!250 = !{i64 2157337367}
!251 = !{i64 2157337880}
!252 = !{i64 2157338706}
!253 = !{i64 2157338866}
!254 = !{i64 2157340942}
!255 = !{i64 2157341457}
!256 = !{i64 2157350680}
!257 = !{i64 2157351195}
!258 = !{i64 2157352082}
!259 = !{i64 2157352240}
!260 = !{i64 2156901077}
!261 = !{i64 2156901235}
!262 = !{i64 2156900285}
!263 = !{i64 2156902084}
!264 = !{i64 2156902243}
!265 = !{i64 2156903087}
!266 = !{i64 2156903245}
!267 = !{i64 2157384077}
!268 = !{i64 2157384476}
!269 = !{i64 2157384791}
!270 = !{i64 2157385740}
!271 = !{i64 2157385900}
!272 = !{i64 2157387529}
!273 = !{i64 2157388046}
!274 = !{i64 2157389101}
!275 = !{i64 2157389616}
!276 = !{i64 2156926352}
!277 = !{i64 2156926868}
!278 = !{i64 2156927319}
!279 = !{i64 2156925891}
!280 = !{i64 2157268238}
!281 = !{i64 2157268805}
!282 = !{i64 2157266423}
!283 = !{i64 2157266908}
!284 = !{i64 2156897099}
!285 = !{i64 2156890745}
!286 = !{i64 2156897694}
!287 = !{i64 2156930096}
!288 = !{i64 2157259842}
!289 = !{i64 2157260935}
!290 = !{i64 2156916873}
!291 = !{i64 2156917140}
!292 = !{i64 2156917482}
!293 = !{i64 2156917743}
!294 = !{i64 2156918082}
!295 = !{i64 2156918361}
!296 = !{i64 2156897976}
!297 = !{i64 2156898487}
