; ModuleID = '/llk/IR/net/ethtool/common.c_pt.bc'
source_filename = "../net/ethtool/common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_get_phc_vclocks:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_get_phc_vclocks\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_get_phc_vclocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_set_ethtool_phy_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_set_ethtool_phy_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_set_ethtool_phy_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_params_from_link_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_params_from_link_mode\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_params_from_link_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.link_mode_info = type { i32, i8, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }

@netdev_features_strings = dso_local local_unnamed_addr constant [64 x [32 x i8]] [[32 x i8] c"tx-scatter-gather\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-checksum-ipv4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [32 x i8] c"tx-checksum-ip-generic\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-checksum-ipv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"highdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-scatter-gather-fraglist\00\00\00\00\00\00", [32 x i8] c"tx-vlan-hw-insert\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-vlan-hw-parse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-vlan-filter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"vlan-challenged\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-generic-segmentation\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-lockless\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"netns-local\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-gro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-lro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-tcp-segmentation\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-gso-robust\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-tcp-ecn-segmentation\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-tcp-mangleid-segmentation\00\00\00\00", [32 x i8] c"tx-tcp6-segmentation\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-fcoe-segmentation\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-gre-segmentation\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-gre-csum-segmentation\00\00\00\00\00\00\00\00", [32 x i8] c"tx-ipxip4-segmentation\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-ipxip6-segmentation\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-udp_tnl-segmentation\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-udp_tnl-csum-segmentation\00\00\00\00", [32 x i8] c"tx-gso-partial\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-tunnel-remcsum-segmentation\00\00", [32 x i8] c"tx-sctp-segmentation\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-esp-segmentation\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [32 x i8] c"tx-udp-segmentation\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-gso-list\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-checksum-fcoe-crc\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-checksum-sctp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"fcoe-mtu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-ntuple-filter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-hashing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-checksum\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-nocache-copy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"loopback\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-all\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-vlan-stag-hw-insert\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-vlan-stag-hw-parse\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-vlan-stag-filter\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"l2-fwd-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hw-tc-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"esp-hw-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"esp-tx-csum-hw-offload\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-udp_tunnel-port-offload\00\00\00\00\00\00", [32 x i8] c"tls-hw-tx-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tls-hw-rx-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-gro-hw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tls-hw-record\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-gro-list\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"macsec-hw-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-udp-gro-forwarding\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hsr-tag-ins-offload\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hsr-tag-rm-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hsr-fwd-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hsr-dup-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@rss_hash_func_strings = dso_local local_unnamed_addr constant [3 x [32 x i8]] [[32 x i8] c"toeplitz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"xor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@tunable_strings = dso_local local_unnamed_addr constant [5 x [32 x i8]] [[32 x i8] c"Unspec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-copybreak\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-copybreak\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pfc-prevention-tout\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-copybreak-buf-size\00\00\00\00\00\00\00\00\00\00\00"], align 1
@phy_tunable_strings = dso_local local_unnamed_addr constant [4 x [32 x i8]] [[32 x i8] c"Unspec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"phy-downshift\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"phy-fast-link-down\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"phy-energy-detect-power-down\00\00\00\00"], align 1
@link_mode_names = dso_local local_unnamed_addr constant [92 x [32 x i8]] [[32 x i8] c"10baseT/Half\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100baseT/Half\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"1000baseT/Half\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"1000baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Autoneg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"AUI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MII\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FIBRE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"BNC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Asym_Pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"2500baseX/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Backplane\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"1000baseKX/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseKX4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseKR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseR_FEC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"20000baseMLD2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"20000baseKR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"40000baseKR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"40000baseCR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"40000baseSR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"40000baseLR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"56000baseKR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"56000baseCR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"56000baseSR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"56000baseLR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"25000baseCR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"25000baseKR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"25000baseSR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseCR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseKR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseKR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseSR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseCR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseLR4_ER4/Full\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseSR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"1000baseX/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseCR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseSR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseLR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseLRM/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseER/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"2500baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"5000baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"None\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"BASER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseKR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseSR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseCR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseLR_ER_FR/Full\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseDR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseKR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseSR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseCR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseLR2_ER2_FR2/Full\00\00\00\00\00\00", [32 x i8] c"100000baseDR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseKR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseSR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseLR4_ER4_FR4/Full\00\00\00\00\00\00", [32 x i8] c"200000baseDR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseCR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100baseT1/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"1000baseT1/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseKR8/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseSR8/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseLR8_ER8_FR8/Full\00\00\00\00\00\00", [32 x i8] c"400000baseDR8/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseCR8/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"LLRS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseKR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseSR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseLR_ER_FR/Full\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseCR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseDR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseKR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseSR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseLR2_ER2_FR2/Full\00\00\00\00\00\00", [32 x i8] c"200000baseDR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseCR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseKR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseSR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseLR4_ER4_FR4/Full\00\00\00\00\00\00", [32 x i8] c"400000baseDR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseCR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100baseFX/Half\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100baseFX/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@link_mode_params = dso_local local_unnamed_addr constant [92 x %struct.link_mode_info] [%struct.link_mode_info { i32 10, i8 1, i8 0 }, %struct.link_mode_info { i32 10, i8 1, i8 1 }, %struct.link_mode_info { i32 100, i8 1, i8 0 }, %struct.link_mode_info { i32 100, i8 1, i8 1 }, %struct.link_mode_info { i32 1000, i8 1, i8 0 }, %struct.link_mode_info { i32 1000, i8 1, i8 1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 2500, i8 1, i8 1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 1000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 4, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 20000, i8 2, i8 1 }, %struct.link_mode_info { i32 20000, i8 2, i8 1 }, %struct.link_mode_info { i32 40000, i8 4, i8 1 }, %struct.link_mode_info { i32 40000, i8 4, i8 1 }, %struct.link_mode_info { i32 40000, i8 4, i8 1 }, %struct.link_mode_info { i32 40000, i8 4, i8 1 }, %struct.link_mode_info { i32 56000, i8 4, i8 1 }, %struct.link_mode_info { i32 56000, i8 4, i8 1 }, %struct.link_mode_info { i32 56000, i8 4, i8 1 }, %struct.link_mode_info { i32 56000, i8 4, i8 1 }, %struct.link_mode_info { i32 25000, i8 1, i8 1 }, %struct.link_mode_info { i32 25000, i8 1, i8 1 }, %struct.link_mode_info { i32 25000, i8 1, i8 1 }, %struct.link_mode_info { i32 50000, i8 2, i8 1 }, %struct.link_mode_info { i32 50000, i8 2, i8 1 }, %struct.link_mode_info { i32 100000, i8 4, i8 1 }, %struct.link_mode_info { i32 100000, i8 4, i8 1 }, %struct.link_mode_info { i32 100000, i8 4, i8 1 }, %struct.link_mode_info { i32 100000, i8 4, i8 1 }, %struct.link_mode_info { i32 50000, i8 2, i8 1 }, %struct.link_mode_info { i32 1000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 2500, i8 1, i8 1 }, %struct.link_mode_info { i32 5000, i8 1, i8 1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 50000, i8 1, i8 1 }, %struct.link_mode_info { i32 50000, i8 1, i8 1 }, %struct.link_mode_info { i32 50000, i8 1, i8 1 }, %struct.link_mode_info { i32 50000, i8 1, i8 1 }, %struct.link_mode_info { i32 50000, i8 1, i8 1 }, %struct.link_mode_info { i32 100000, i8 2, i8 1 }, %struct.link_mode_info { i32 100000, i8 2, i8 1 }, %struct.link_mode_info { i32 100000, i8 2, i8 1 }, %struct.link_mode_info { i32 100000, i8 2, i8 1 }, %struct.link_mode_info { i32 100000, i8 2, i8 1 }, %struct.link_mode_info { i32 200000, i8 4, i8 1 }, %struct.link_mode_info { i32 200000, i8 4, i8 1 }, %struct.link_mode_info { i32 200000, i8 4, i8 1 }, %struct.link_mode_info { i32 200000, i8 4, i8 1 }, %struct.link_mode_info { i32 200000, i8 4, i8 1 }, %struct.link_mode_info { i32 100, i8 1, i8 1 }, %struct.link_mode_info { i32 1000, i8 1, i8 1 }, %struct.link_mode_info { i32 400000, i8 8, i8 1 }, %struct.link_mode_info { i32 400000, i8 8, i8 1 }, %struct.link_mode_info { i32 400000, i8 8, i8 1 }, %struct.link_mode_info { i32 400000, i8 8, i8 1 }, %struct.link_mode_info { i32 400000, i8 8, i8 1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 100000, i8 1, i8 1 }, %struct.link_mode_info { i32 100000, i8 1, i8 1 }, %struct.link_mode_info { i32 100000, i8 1, i8 1 }, %struct.link_mode_info { i32 100000, i8 1, i8 1 }, %struct.link_mode_info { i32 100000, i8 1, i8 1 }, %struct.link_mode_info { i32 200000, i8 2, i8 1 }, %struct.link_mode_info { i32 200000, i8 2, i8 1 }, %struct.link_mode_info { i32 200000, i8 2, i8 1 }, %struct.link_mode_info { i32 200000, i8 2, i8 1 }, %struct.link_mode_info { i32 200000, i8 2, i8 1 }, %struct.link_mode_info { i32 400000, i8 4, i8 1 }, %struct.link_mode_info { i32 400000, i8 4, i8 1 }, %struct.link_mode_info { i32 400000, i8 4, i8 1 }, %struct.link_mode_info { i32 400000, i8 4, i8 1 }, %struct.link_mode_info { i32 400000, i8 4, i8 1 }, %struct.link_mode_info { i32 100, i8 1, i8 0 }, %struct.link_mode_info { i32 100, i8 1, i8 1 }], align 4
@netif_msg_class_names = dso_local local_unnamed_addr constant [15 x [32 x i8]] [[32 x i8] c"drv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"probe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"link\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ifdown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ifup\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queued\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"intr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_done\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pktdata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"wol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@wol_mode_names = dso_local local_unnamed_addr constant [8 x [32 x i8]] [[32 x i8] c"phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ucast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"arp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"magic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"magicsecure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"filter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@sof_timestamping_names = dso_local local_unnamed_addr constant [16 x [32 x i8]] [[32 x i8] c"hardware-transmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"software-transmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hardware-receive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"software-receive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"software-system-clock\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hardware-legacy-clock\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hardware-raw-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-id\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"sched-transmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ack-transmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-cmsg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-tsonly\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-stats\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-pktinfo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-tx-swhw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bind-phc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@ts_tx_type_names = dso_local local_unnamed_addr constant [4 x [32 x i8]] [[32 x i8] c"off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"on\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"onestep-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"onestep-p2p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@ts_rx_filter_names = dso_local local_unnamed_addr constant [16 x [32 x i8]] [[32 x i8] c"none\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"all\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"some\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv1-l4-event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv1-l4-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv1-l4-delay-req\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l4-event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l4-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l4-delay-req\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l2-event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l2-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l2-delay-req\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-delay-req\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ntp-all\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@udp_tunnel_type_names = dso_local local_unnamed_addr constant [3 x [32 x i8]] [[32 x i8] c"vxlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"geneve\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"vxlan-gpe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str = private unnamed_addr constant [21 x i8] c"net/ethtool/common.c\00", align 1
@__kstrtab_ethtool_get_phc_vclocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_get_phc_vclocks = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_get_phc_vclocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_get_phc_vclocks to i32), ptr @__kstrtab_ethtool_get_phc_vclocks, ptr @__kstrtabns_ethtool_get_phc_vclocks }, section "___ksymtab+ethtool_get_phc_vclocks", align 4
@ethtool_phy_ops = dso_local local_unnamed_addr global ptr null, align 4
@__kstrtab_ethtool_set_ethtool_phy_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_set_ethtool_phy_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_set_ethtool_phy_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_set_ethtool_phy_ops to i32), ptr @__kstrtab_ethtool_set_ethtool_phy_ops, ptr @__kstrtabns_ethtool_set_ethtool_phy_ops }, section "___ksymtab_gpl+ethtool_set_ethtool_phy_ops", align 4
@ethtool_params_from_link_mode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ethtool_params_from_link_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_params_from_link_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_params_from_link_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_params_from_link_mode to i32), ptr @__kstrtab_ethtool_params_from_link_mode, ptr @__kstrtabns_ethtool_params_from_link_mode }, section "___ksymtab_gpl+ethtool_params_from_link_mode", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_ethtool_get_phc_vclocks, ptr @__ksymtab_ethtool_params_from_link_mode, ptr @__ksymtab_ethtool_set_ethtool_phy_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @convert_legacy_settings_to_link_ksettings(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(88) %0, i8 0, i32 88, i1 false)
  %3 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %2
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i1 [ false, %10 ], [ true, %6 ]
  %13 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %13, i32 noundef %15) #6
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1, i32 1
  %17 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %16, i32 noundef %18) #6
  %19 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1, i32 2
  %20 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %19, i32 noundef %21) #6
  %22 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 12
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = shl nuw i32 %24, 16
  %26 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 3
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = or i32 %25, %28
  %30 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 4
  %32 = load i8, ptr %31, align 2
  %33 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 2
  store i8 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 3
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 6
  %38 = load i8, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 4
  store i8 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 8
  %41 = load i8, ptr %40, align 2
  %42 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 5
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 9
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 6
  store i8 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 13
  %47 = load i8, ptr %46, align 2
  %48 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 7
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 14
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 8
  store i8 %50, ptr %51, align 2
  ret i1 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ethtool_get_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %5(ptr noundef %0) #6
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %7, %1
  %17 = phi i32 [ -95, %1 ], [ 0, %7 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethtool_get_max_rxfh_channel(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 38
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %6(ptr noundef %0) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %12
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #6
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %38, label %18, !prof !8

18:                                               ; preds = %15
  %19 = extractvalue { i32, i1 } %16, 0
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 1052096) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.ethtool_ops, ptr %23, i32 0, i32 38
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %0, ptr noundef nonnull %20, ptr noundef null, ptr noundef null) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %28, %22
  %29 = phi i32 [ %31, %28 ], [ %13, %22 ]
  %30 = phi i32 [ %34, %28 ], [ 0, %22 ]
  %31 = add i32 %29, -1
  %32 = getelementptr i32, ptr %20, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %30, i32 %33)
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  store i32 %34, ptr %1, align 4
  br label %37

37:                                               ; preds = %36, %22
  tail call void @kfree(ptr noundef nonnull %20) #6
  br label %38

38:                                               ; preds = %37, %18, %15, %12, %8, %2
  %39 = phi i32 [ %26, %37 ], [ -95, %8 ], [ -95, %2 ], [ -95, %12 ], [ -12, %18 ], [ -12, %15 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethtool_check_ops(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ethtool_ops, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 531, i32 noundef 9, ptr noundef null) #6
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = phi i32 [ -22, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ethtool_get_ts_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %1, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %7, i8 0, i32 40, i1 false)
  store i32 65, ptr %1, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 33
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mii_timestamper, ptr %11, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef nonnull %11, ptr noundef %1) #6
  br label %28

19:                                               ; preds = %13, %9, %2
  %20 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 47
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %0, ptr noundef %1) #6
  br label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  store i32 24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 2
  store i32 -1, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %23, %17
  %29 = phi i32 [ %18, %17 ], [ %24, %23 ], [ 0, %25 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethtool_get_phc_vclocks(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ethtool_ts_info, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %8, i8 0, i32 40, i1 false) #6
  store i32 65, ptr %3, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 33
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mii_timestamper, ptr %12, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call i32 %16(ptr noundef nonnull %12, ptr noundef nonnull %3) #6
  br label %28

20:                                               ; preds = %14, %10, %2
  %21 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 47
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 %22(ptr noundef %0, ptr noundef nonnull %3) #6
  br label %28

26:                                               ; preds = %20
  store i32 24, ptr %8, align 4
  %27 = getelementptr inbounds %struct.ethtool_ts_info, ptr %3, i32 0, i32 2
  store i32 -1, ptr %27, align 4
  br label %34

28:                                               ; preds = %24, %18
  %29 = phi i32 [ %19, %18 ], [ %25, %24 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ethtool_ts_info, ptr %3, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %33, %31 ], [ -1, %26 ]
  %36 = call i32 @ptp_get_vclocks_index(i32 noundef %35, ptr noundef %1) #6
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i32 [ 0, %28 ], [ %36, %34 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #6
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_get_vclocks_index(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ethtool_set_ethtool_phy_ops(ptr noundef %0) #0 {
  tail call void @rtnl_lock() #6
  store ptr %0, ptr @ethtool_phy_ops, align 4
  tail call void @rtnl_unlock() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ethtool_params_from_link_mode(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 91
  %4 = load i1, ptr @ethtool_params_from_link_mode.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  store i1 true, ptr @ethtool_params_from_link_mode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 588, i32 noundef 9, ptr noundef null) #6
  br label %8

8:                                                ; preds = %7, %2
  br i1 %3, label %20, label %9

9:                                                ; preds = %8
  %10 = getelementptr [92 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr [92 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %1, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr [92 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %1, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 2
  store i8 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
