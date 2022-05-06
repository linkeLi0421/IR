; ModuleID = '/llk/IR/drivers/net/ethernet/broadcom/bgmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bgmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bgmac_adjust_link:\09\09\09\09\09"
module asm "\09.asciz \09\22bgmac_adjust_link\22\09\09\09\09\09"
module asm "__kstrtabns_bgmac_adjust_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bgmac_phy_connect_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22bgmac_phy_connect_direct\22\09\09\09\09\09"
module asm "__kstrtabns_bgmac_phy_connect_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bgmac_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bgmac_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_bgmac_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bgmac_enet_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bgmac_enet_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bgmac_enet_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bgmac_enet_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22bgmac_enet_remove\22\09\09\09\09\09"
module asm "__kstrtabns_bgmac_enet_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bgmac_enet_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22bgmac_enet_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_bgmac_enet_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bgmac_enet_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22bgmac_enet_resume\22\09\09\09\09\09"
module asm "__kstrtabns_bgmac_enet_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bgmac_stat = type { i8, i32, ptr }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bgmac = type { %union.anon.155, ptr, ptr, i32, ptr, %struct.napi_struct, ptr, [4 x %struct.bgmac_dma_ring], [1 x %struct.bgmac_dma_ring], i8, [43 x i32], [31 x i32], i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bgmac_dma_ring = type { i32, i32, ptr, i32, i32, i16, i8, [512 x %struct.bgmac_slot_info] }
%struct.bgmac_slot_info = type { %union.anon.163, i32 }
%union.anon.163 = type { ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.bgmac_dma_desc = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.page = type { i32, %union.anon.10, %union.anon.88, %struct.atomic_t }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.88 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__kstrtab_bgmac_adjust_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_bgmac_adjust_link = external dso_local constant [0 x i8], align 1
@__ksymtab_bgmac_adjust_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bgmac_adjust_link to i32), ptr @__kstrtab_bgmac_adjust_link, ptr @__kstrtabns_bgmac_adjust_link }, section "___ksymtab_gpl+bgmac_adjust_link", align 4
@__const.bgmac_phy_connect_direct.fphy_status = private unnamed_addr constant %struct.fixed_phy_status { i32 1, i32 1000, i32 1, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to register fixed PHY device\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Connecting PHY failed\0A\00", align 1
@__kstrtab_bgmac_phy_connect_direct = external dso_local constant [0 x i8], align 1
@__kstrtabns_bgmac_phy_connect_direct = external dso_local constant [0 x i8], align 1
@__ksymtab_bgmac_phy_connect_direct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bgmac_phy_connect_direct to i32), ptr @__kstrtab_bgmac_phy_connect_direct, ptr @__kstrtabns_bgmac_phy_connect_direct }, section "___ksymtab_gpl+bgmac_phy_connect_direct", align 4
@bgmac_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @bgmac_open, ptr @bgmac_stop, ptr @bgmac_start_xmit, ptr null, ptr null, ptr null, ptr @bgmac_set_rx_mode, ptr @bgmac_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @bgmac_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bgmac_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @bgmac_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bgmac_get_strings, ptr null, ptr @bgmac_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @bgmac_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_bgmac_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bgmac_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bgmac_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bgmac_alloc to i32), ptr @__kstrtab_bgmac_alloc, ptr @__kstrtabns_bgmac_alloc }, section "___ksymtab_gpl+bgmac_alloc", align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid MAC addr: %pM\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Using random MAC: %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unable to alloc memory for DMA\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"et0_no_txint\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Cannot connect to phy\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Cannot register net device\0A\00", align 1
@__kstrtab_bgmac_enet_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bgmac_enet_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bgmac_enet_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bgmac_enet_probe to i32), ptr @__kstrtab_bgmac_enet_probe, ptr @__kstrtabns_bgmac_enet_probe }, section "___ksymtab_gpl+bgmac_enet_probe", align 4
@__kstrtab_bgmac_enet_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_bgmac_enet_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_bgmac_enet_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bgmac_enet_remove to i32), ptr @__kstrtab_bgmac_enet_remove, ptr @__kstrtabns_bgmac_enet_remove }, section "___ksymtab_gpl+bgmac_enet_remove", align 4
@__kstrtab_bgmac_enet_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_bgmac_enet_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_bgmac_enet_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bgmac_enet_suspend to i32), ptr @__kstrtab_bgmac_enet_suspend, ptr @__kstrtabns_bgmac_enet_suspend }, section "___ksymtab_gpl+bgmac_enet_suspend", align 4
@__kstrtab_bgmac_enet_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_bgmac_enet_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_bgmac_enet_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bgmac_enet_resume to i32), ptr @__kstrtab_bgmac_enet_resume, ptr @__kstrtabns_bgmac_enet_resume }, section "___ksymtab_gpl+bgmac_enet_resume", align 4
@__UNIQUE_ID_author475 = internal constant [29 x i8] c"bgmac.author=Rafa\C5\82 Mi\C5\82ecki\00", section ".modinfo", align 1
@__UNIQUE_ID_file476 = internal constant [47 x i8] c"bgmac.file=drivers/net/ethernet/broadcom/bgmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license477 = internal constant [18 x i8] c"bgmac.license=GPL\00", section ".modinfo", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Unsupported speed: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"IRQ request error: %d!\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Unknown IRQs: 0x%08X\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Too long skb (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"TX ring is full, queue should be stopped!\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Mapping error of skb on ring 0x%X\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"bgmac\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"AXI\00", align 1
@bgmac_get_strings_stats = internal unnamed_addr constant [66 x %struct.bgmac_stat] [%struct.bgmac_stat { i8 8, i32 768, ptr @.str.18 }, %struct.bgmac_stat { i8 4, i32 776, ptr @.str.19 }, %struct.bgmac_stat { i8 8, i32 780, ptr @.str.20 }, %struct.bgmac_stat { i8 4, i32 788, ptr @.str.21 }, %struct.bgmac_stat { i8 4, i32 792, ptr @.str.22 }, %struct.bgmac_stat { i8 4, i32 796, ptr @.str.23 }, %struct.bgmac_stat { i8 4, i32 800, ptr @.str.24 }, %struct.bgmac_stat { i8 4, i32 804, ptr @.str.25 }, %struct.bgmac_stat { i8 4, i32 808, ptr @.str.26 }, %struct.bgmac_stat { i8 4, i32 812, ptr @.str.27 }, %struct.bgmac_stat { i8 4, i32 816, ptr @.str.28 }, %struct.bgmac_stat { i8 4, i32 820, ptr @.str.29 }, %struct.bgmac_stat { i8 4, i32 824, ptr @.str.30 }, %struct.bgmac_stat { i8 4, i32 828, ptr @.str.31 }, %struct.bgmac_stat { i8 4, i32 832, ptr @.str.32 }, %struct.bgmac_stat { i8 4, i32 836, ptr @.str.33 }, %struct.bgmac_stat { i8 4, i32 840, ptr @.str.34 }, %struct.bgmac_stat { i8 4, i32 844, ptr @.str.35 }, %struct.bgmac_stat { i8 4, i32 848, ptr @.str.36 }, %struct.bgmac_stat { i8 4, i32 852, ptr @.str.37 }, %struct.bgmac_stat { i8 4, i32 856, ptr @.str.38 }, %struct.bgmac_stat { i8 4, i32 860, ptr @.str.39 }, %struct.bgmac_stat { i8 4, i32 864, ptr @.str.40 }, %struct.bgmac_stat { i8 4, i32 868, ptr @.str.41 }, %struct.bgmac_stat { i8 4, i32 872, ptr @.str.42 }, %struct.bgmac_stat { i8 4, i32 876, ptr @.str.43 }, %struct.bgmac_stat { i8 4, i32 880, ptr @.str.44 }, %struct.bgmac_stat { i8 4, i32 884, ptr @.str.45 }, %struct.bgmac_stat { i8 4, i32 888, ptr @.str.46 }, %struct.bgmac_stat { i8 4, i32 892, ptr @.str.47 }, %struct.bgmac_stat { i8 8, i32 896, ptr @.str.48 }, %struct.bgmac_stat { i8 4, i32 904, ptr @.str.49 }, %struct.bgmac_stat { i8 8, i32 908, ptr @.str.50 }, %struct.bgmac_stat { i8 4, i32 916, ptr @.str.51 }, %struct.bgmac_stat { i8 8, i32 920, ptr @.str.52 }, %struct.bgmac_stat { i8 4, i32 928, ptr @.str.53 }, %struct.bgmac_stat { i8 8, i32 932, ptr @.str.54 }, %struct.bgmac_stat { i8 8, i32 944, ptr @.str.55 }, %struct.bgmac_stat { i8 4, i32 952, ptr @.str.56 }, %struct.bgmac_stat { i8 8, i32 956, ptr @.str.57 }, %struct.bgmac_stat { i8 4, i32 964, ptr @.str.58 }, %struct.bgmac_stat { i8 4, i32 968, ptr @.str.59 }, %struct.bgmac_stat { i8 4, i32 972, ptr @.str.60 }, %struct.bgmac_stat { i8 4, i32 976, ptr @.str.61 }, %struct.bgmac_stat { i8 4, i32 980, ptr @.str.62 }, %struct.bgmac_stat { i8 4, i32 984, ptr @.str.63 }, %struct.bgmac_stat { i8 4, i32 988, ptr @.str.64 }, %struct.bgmac_stat { i8 4, i32 992, ptr @.str.65 }, %struct.bgmac_stat { i8 4, i32 996, ptr @.str.66 }, %struct.bgmac_stat { i8 4, i32 1000, ptr @.str.67 }, %struct.bgmac_stat { i8 4, i32 1004, ptr @.str.68 }, %struct.bgmac_stat { i8 4, i32 1008, ptr @.str.69 }, %struct.bgmac_stat { i8 4, i32 1012, ptr @.str.70 }, %struct.bgmac_stat { i8 4, i32 1016, ptr @.str.71 }, %struct.bgmac_stat { i8 4, i32 1020, ptr @.str.72 }, %struct.bgmac_stat { i8 4, i32 1024, ptr @.str.73 }, %struct.bgmac_stat { i8 4, i32 1028, ptr @.str.74 }, %struct.bgmac_stat { i8 4, i32 1032, ptr @.str.75 }, %struct.bgmac_stat { i8 4, i32 1036, ptr @.str.76 }, %struct.bgmac_stat { i8 4, i32 1040, ptr @.str.77 }, %struct.bgmac_stat { i8 4, i32 1044, ptr @.str.78 }, %struct.bgmac_stat { i8 4, i32 1048, ptr @.str.79 }, %struct.bgmac_stat { i8 4, i32 1052, ptr @.str.80 }, %struct.bgmac_stat { i8 4, i32 1056, ptr @.str.81 }, %struct.bgmac_stat { i8 4, i32 1060, ptr @.str.82 }, %struct.bgmac_stat { i8 4, i32 1064, ptr @.str.83 }], align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"tx_good_octets\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"tx_good\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"tx_octets\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"tx_pkts\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"tx_broadcast\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"tx_multicast\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"tx_64\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"tx_65_127\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"tx_128_255\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"tx_256_511\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"tx_512_1023\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"tx_1024_1522\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"tx_1523_2047\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"tx_2048_4095\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"tx_4096_8191\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"tx_8192_max\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"tx_jabber\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"tx_oversize\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"tx_fragment\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"tx_underruns\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"tx_total_cols\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"tx_single_cols\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"tx_multiple_cols\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"tx_excessive_cols\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"tx_late_cols\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"tx_defered\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"tx_carrier_lost\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"tx_pause\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"tx_unicast\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"tx_q0\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"tx_q0_octets\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"tx_q1\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"tx_q1_octets\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"tx_q2\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"tx_q2_octets\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"tx_q3\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"tx_q3_octets\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"rx_good_octets\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"rx_good\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"rx_octets\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"rx_pkts\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"rx_broadcast\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"rx_multicast\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"rx_64\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"rx_65_127\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"rx_128_255\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"rx_256_511\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"rx_512_1023\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"rx_1024_1522\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"rx_1523_2047\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"rx_2048_4095\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"rx_4096_8191\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"rx_8192_max\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"rx_jabber\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"rx_oversize\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"rx_fragment\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"rx_missed\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"rx_crc_align\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"rx_undersize\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"rx_crc\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"rx_align\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"rx_symbol\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"rx_pause\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"rx_nonpause\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"rx_sa_changes\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"rx_unicast\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"et_swtype\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"Failed to parse et_swtype (%s)\0A\00", align 1
@.str.86 = private unnamed_addr constant [65 x i8] c"Timeout suspending DMA TX ring 0x%X (BGMAC_DMA_TX_STAT: 0x%08X)\0A\00", align 1
@.str.87 = private unnamed_addr constant [68 x i8] c"DMA TX ring 0x%X wasn't disabled on time, waiting additional 300us\0A\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"Reset of DMA TX ring 0x%X failed\0A\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"Reset of ring 0x%X RX failed\0A\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"Timeout waiting for reg 0x%X\0A\00", align 1
@bgmac_dma_alloc.ring_base = internal unnamed_addr constant [4 x i16] [i16 512, i16 576, i16 640, i16 704], align 2
@.str.91 = private unnamed_addr constant [33 x i8] c"Core does not report 64-bit DMA\0A\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"Allocation of TX ring 0x%X failed\0A\00", align 1
@.str.93 = private unnamed_addr constant [35 x i8] c"Allocation of RX ring 0x%X failed\0A\00", align 1
@.str.94 = private unnamed_addr constant [46 x i8] c"Found poisoned packet at slot %d, DMA issue!\0A\00", align 1
@.str.95 = private unnamed_addr constant [47 x i8] c"Found oversized packet at slot %d, DMA issue!\0A\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"build_skb failed\0A\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author475, ptr @__UNIQUE_ID_file476, ptr @__UNIQUE_ID_license477, ptr @__ksymtab_bgmac_adjust_link, ptr @__ksymtab_bgmac_alloc, ptr @__ksymtab_bgmac_enet_probe, ptr @__ksymtab_bgmac_enet_remove, ptr @__ksymtab_bgmac_enet_resume, ptr @__ksymtab_bgmac_enet_suspend, ptr @__ksymtab_bgmac_phy_connect_direct], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bgmac_adjust_link(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 8192
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr i8, ptr %0, i32 22568
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  store i32 %11, ptr %12, align 8
  %16 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 22572
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %30, label %27

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %0, i32 22572
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %21, %15
  %28 = phi ptr [ %24, %21 ], [ %18, %15 ]
  %29 = phi i32 [ %23, %21 ], [ %17, %15 ]
  store i32 %29, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %15
  tail call fastcc void @bgmac_mac_speed(ptr noundef %2)
  tail call void @phy_print_status(ptr noundef %4) #9
  br label %31

31:                                               ; preds = %30, %21, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bgmac_mac_speed(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %7 [
    i32 10, label %10
    i32 100, label %4
    i32 1000, label %5
    i32 2500, label %6
  ]

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8, i32 noundef %3) #10
  br label %10

10:                                               ; preds = %7, %6, %5, %4, %1
  %11 = phi i32 [ 0, %7 ], [ 12, %6 ], [ 8, %5 ], [ 4, %4 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = or i32 %11, 1024
  %16 = select i1 %14, i32 %15, i32 %11
  %17 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i16 noundef zeroext 2056) #9
  %20 = and i32 %19, -1037
  %21 = or i32 %20, %16
  %22 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 32768
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 2048, i32 8192
  %27 = load ptr, ptr %17, align 4
  %28 = tail call i32 %27(ptr noundef %0, i16 noundef zeroext 2056) #9
  %29 = or i32 %26, %28
  %30 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 20
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %29) #9
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 429496) #9
  %33 = load ptr, ptr %30, align 8
  tail call void %33(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %21) #9
  %34 = xor i32 %26, -1
  %35 = load ptr, ptr %17, align 4
  %36 = tail call i32 %35(ptr noundef %0, i16 noundef zeroext 2056) #9
  %37 = and i32 %36, %34
  %38 = load ptr, ptr %30, align 8
  tail call void %38(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %37) #9
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 429496) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bgmac_phy_connect_direct(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.fixed_phy_status, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.bgmac_phy_connect_direct.fphy_status, i32 20, i1 false)
  %3 = call ptr @fixed_phy_register(i32 noundef -1, ptr noundef nonnull %2, ptr noundef null) #9
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @phy_connect_direct(ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull @bgmac_adjust_link, i32 noundef 2) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7, %1
  %13 = phi ptr [ @.str, %1 ], [ @.str.1, %7 ]
  %14 = phi i32 [ -19, %1 ], [ %10, %7 ]
  %15 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull %13) #10
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i32 [ 0, %7 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  ret i32 %18
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fixed_phy_register(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bgmac_alloc(ptr noundef %0) #0 {
  %2 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %0, i32 noundef 21216, i32 noundef 1, i32 noundef 1) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 16
  store ptr @bgmac_netdev_ops, ptr %5, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 42
  store ptr @bgmac_ethtool_ops, ptr %6, align 8
  %7 = getelementptr i8, ptr %2, i32 1408
  %8 = getelementptr i8, ptr %2, i32 1420
  store ptr %0, ptr %8, align 4
  %9 = getelementptr i8, ptr %2, i32 1432
  store ptr %2, ptr %9, align 8
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bgmac_enet_probe(ptr noundef %0) #0 {
  %2 = alloca [6 x i8], align 1
  %3 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef %0, i16 noundef zeroext 36, i32 noundef 0) #9
  %7 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, i16 noundef zeroext 36) #9
  %10 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 59
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 111, i32 1
  store ptr %14, ptr %15, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  store ptr %0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 72
  %19 = load ptr, ptr %18, align 32
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = getelementptr i8, ptr %19, i32 4
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = or i32 %20, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23, %1
  %30 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.2, ptr noundef %19) #10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #9, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #9
  %31 = load i8, ptr %2, align 1
  %32 = and i8 %31, -4
  %33 = or i8 %32, 2
  store i8 %33, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #9
  %34 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 50
  store i8 1, ptr %34, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #9
  %35 = load ptr, ptr %13, align 4
  %36 = load ptr, ptr %18, align 32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef %36) #10
  br label %37

37:                                               ; preds = %29, %23
  %38 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 24
  %39 = load ptr, ptr %38, align 8
  call void %39(ptr noundef %0, i32 noundef 0) #9
  %40 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1114112
  %43 = icmp eq i32 %42, 65536
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 22
  %46 = load ptr, ptr %45, align 8
  call void %46(ptr noundef %0, i16 noundef zeroext 256, i32 noundef 134) #9
  br label %47

47:                                               ; preds = %44, %37
  call fastcc void @bgmac_chip_reset(ptr noundef %0)
  %48 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = load i32, ptr %40, align 4
  %51 = and i32 %50, 1048576
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %54, %47
  br label %62

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 21
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 %56(ptr noundef %0, i16 noundef zeroext 1280) #9
  %58 = and i32 %57, 4096
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %53

60:                                               ; preds = %54
  %61 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.91) #10
  br label %114

62:                                               ; preds = %82, %53
  %63 = phi i32 [ %87, %82 ], [ 0, %53 ]
  %64 = getelementptr [4 x i16], ptr @bgmac_dma_alloc.ring_base, i32 0, i32 %63
  %65 = load i16, ptr %64, align 2
  %66 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %63, i32 5
  store i16 %65, ptr %66, align 4
  %67 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %63, i32 3
  %68 = call ptr @dma_alloc_attrs(ptr noundef %49, i32 noundef 2048, ptr noundef %67, i32 noundef 3264, i32 noundef 0) #9
  %69 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %63, i32 2
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %108, label %71

71:                                               ; preds = %62
  %72 = load i16, ptr %66, align 4
  %73 = add i16 %72, 8
  %74 = load ptr, ptr %5, align 8
  call void %74(ptr noundef %0, i16 noundef zeroext %73, i32 noundef 4080) #9
  %75 = load i16, ptr %66, align 4
  %76 = add i16 %75, 8
  %77 = load ptr, ptr %7, align 4
  %78 = call i32 %77(ptr noundef %0, i16 noundef zeroext %76) #9
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %71
  %81 = load i32, ptr %67, align 4
  br label %82

82:                                               ; preds = %80, %71
  %83 = phi i8 [ 1, %80 ], [ 0, %71 ]
  %84 = phi i32 [ %81, %80 ], [ 0, %71 ]
  %85 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %63, i32 6
  store i8 %83, ptr %85, align 2
  %86 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %63, i32 4
  store i32 %84, ptr %86, align 4
  %87 = add nuw nsw i32 %63, 1
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %62

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 5
  store i16 512, ptr %90, align 4
  %91 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 3
  %92 = call ptr @dma_alloc_attrs(ptr noundef %49, i32 noundef 8192, ptr noundef %91, i32 noundef 3264, i32 noundef 0) #9
  %93 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 2
  store ptr %92, ptr %93, align 4
  %94 = icmp eq ptr %92, null
  br i1 %94, label %108, label %95

95:                                               ; preds = %89
  %96 = load i16, ptr %90, align 4
  %97 = add i16 %96, 40
  %98 = load ptr, ptr %5, align 8
  call void %98(ptr noundef %0, i16 noundef zeroext %97, i32 noundef 4080) #9
  %99 = load i16, ptr %90, align 4
  %100 = add i16 %99, 40
  %101 = load ptr, ptr %7, align 4
  %102 = call i32 %101(ptr noundef %0, i16 noundef zeroext %100) #9
  %103 = icmp eq i32 %102, 0
  %104 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 6
  br i1 %103, label %107, label %105

105:                                              ; preds = %95
  store i8 1, ptr %104, align 2
  %106 = load i32, ptr %91, align 4
  br label %117

107:                                              ; preds = %95
  store i8 0, ptr %104, align 2
  br label %117

108:                                              ; preds = %89, %62
  %109 = phi ptr [ %90, %89 ], [ %66, %62 ]
  %110 = phi ptr [ @.str.93, %89 ], [ @.str.92, %62 ]
  %111 = load ptr, ptr %13, align 4
  %112 = load i16, ptr %109, align 4
  %113 = zext i16 %112 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull %110, i32 noundef %113) #10
  call fastcc void @bgmac_dma_free(ptr noundef %0) #9
  br label %114

114:                                              ; preds = %108, %60
  %115 = phi i32 [ -12, %108 ], [ -524, %60 ]
  %116 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.4) #10
  br label %149

117:                                              ; preds = %107, %105
  %118 = phi i32 [ 0, %107 ], [ %106, %105 ]
  %119 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 4
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 13
  store i32 251788288, ptr %120, align 4
  %121 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0) #9
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, ptr %120, align 4
  %125 = and i32 %124, -251658241
  store i32 %125, ptr %120, align 4
  br label %126

126:                                              ; preds = %123, %117
  %127 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 5
  call void @netif_napi_add(ptr noundef %4, ptr noundef %127, ptr noundef nonnull @bgmac_poll, i32 noundef 64) #9
  %128 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 28
  %129 = load ptr, ptr %128, align 8
  %130 = call i32 %129(ptr noundef %0) #9
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %126
  %133 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.6) #10
  br label %147

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  store i64 19, ptr %135, align 16
  %136 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 24
  store i64 19, ptr %136, align 8
  %137 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 26
  store i64 19, ptr %137, align 8
  %138 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 31
  store i32 9720, ptr %138, align 4
  %139 = load ptr, ptr %3, align 8
  %140 = call i32 @register_netdev(ptr noundef %139) #9
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %134
  %143 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.7) #10
  %144 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 120
  %145 = load ptr, ptr %144, align 8
  call void @phy_disconnect(ptr noundef %145) #9
  br label %147

146:                                              ; preds = %134
  call void @netif_carrier_off(ptr noundef %4) #9
  br label %149

147:                                              ; preds = %142, %132
  %148 = phi i32 [ %130, %132 ], [ %140, %142 ]
  call fastcc void @bgmac_dma_free(ptr noundef %0)
  br label %149

149:                                              ; preds = %147, %146, %114
  %150 = phi i32 [ 0, %146 ], [ %115, %114 ], [ %148, %147 ]
  ret i32 %150
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bgmac_chip_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca [4 x i8], align 4
  %4 = alloca i8, align 1
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 %7(ptr noundef %0) #9
  br i1 %8, label %9, label %131

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 9
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8 1, ptr %10, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 20
  %16 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 19
  %17 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 1
  br label %18

18:                                               ; preds = %77, %14
  %19 = phi i32 [ 0, %14 ], [ %78, %77 ]
  %20 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %19, i32 5
  %21 = load i16, ptr %20, align 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %77, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %15, align 8
  tail call void %24(ptr noundef %0, i16 noundef zeroext %21, i32 noundef 2) #9
  br label %25

25:                                               ; preds = %36, %23
  %26 = phi i32 [ 0, %23 ], [ %38, %36 ]
  %27 = load i16, ptr %20, align 4
  %28 = add i16 %27, 16
  %29 = load ptr, ptr %16, align 4
  %30 = tail call i32 %29(ptr noundef %0, i16 noundef zeroext %28) #9
  %31 = and i32 %30, -268435456
  %32 = and i32 %30, -805306368
  %33 = icmp eq i32 %32, 0
  %34 = icmp eq i32 %31, 805306368
  %35 = or i1 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %25
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #9
  %38 = add nuw nsw i32 %26, 1
  %39 = icmp eq i32 %38, 1000
  br i1 %39, label %40, label %25

40:                                               ; preds = %36
  %41 = load ptr, ptr %17, align 4
  %42 = load i16, ptr %20, align 4
  %43 = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.86, i32 noundef %43, i32 noundef %31) #10
  br label %44

44:                                               ; preds = %40, %25
  %45 = load i16, ptr %20, align 4
  %46 = load ptr, ptr %15, align 8
  tail call void %46(ptr noundef %0, i16 noundef zeroext %45, i32 noundef 0) #9
  %47 = load i16, ptr %20, align 4
  %48 = add i16 %47, 16
  %49 = load ptr, ptr %16, align 4
  %50 = tail call i32 %49(ptr noundef %0, i16 noundef zeroext %48) #9
  %51 = icmp ult i32 %50, 268435456
  br i1 %51, label %77, label %56

52:                                               ; preds = %56
  %53 = load ptr, ptr %16, align 4
  %54 = tail call i32 %53(ptr noundef %0, i16 noundef zeroext %48) #9
  %55 = icmp ult i32 %54, 268435456
  br i1 %55, label %77, label %56

56:                                               ; preds = %52, %44
  %57 = phi i32 [ %59, %52 ], [ 0, %44 ]
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 2147480) #9
  %59 = add nuw nsw i32 %57, 1
  %60 = icmp eq i32 %59, 1000
  br i1 %60, label %61, label %52

61:                                               ; preds = %56
  %62 = load ptr, ptr %17, align 4
  %63 = zext i16 %48 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.90, i32 noundef %63) #10
  %64 = load ptr, ptr %17, align 4
  %65 = load i16, ptr %20, align 4
  %66 = zext i16 %65 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.87, i32 noundef %66) #10
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 64424400) #9
  %68 = load i16, ptr %20, align 4
  %69 = add i16 %68, 16
  %70 = load ptr, ptr %16, align 4
  %71 = tail call i32 %70(ptr noundef %0, i16 noundef zeroext %69) #9
  %72 = icmp ult i32 %71, 268435456
  br i1 %72, label %77, label %73

73:                                               ; preds = %61
  %74 = load ptr, ptr %17, align 4
  %75 = load i16, ptr %20, align 4
  %76 = zext i16 %75 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.88, i32 noundef %76) #10
  br label %77

77:                                               ; preds = %73, %61, %52, %44, %18
  %78 = add nuw nsw i32 %19, 1
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %18

80:                                               ; preds = %77
  %81 = load ptr, ptr %16, align 4
  %82 = tail call i32 %81(ptr noundef %0, i16 noundef zeroext 2056) #9
  %83 = or i32 %82, 32768
  %84 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 32768
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 2048, i32 8192
  %89 = load ptr, ptr %16, align 4
  %90 = tail call i32 %89(ptr noundef %0, i16 noundef zeroext 2056) #9
  %91 = or i32 %88, %90
  %92 = load ptr, ptr %15, align 8
  tail call void %92(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %91) #9
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 429496) #9
  %94 = icmp eq i32 %83, %82
  br i1 %94, label %97, label %95

95:                                               ; preds = %80
  %96 = load ptr, ptr %15, align 8
  tail call void %96(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %83) #9
  br label %97

97:                                               ; preds = %95, %80
  %98 = xor i32 %88, -1
  %99 = load ptr, ptr %16, align 4
  %100 = tail call i32 %99(ptr noundef %0, i16 noundef zeroext 2056) #9
  %101 = and i32 %100, %98
  %102 = load ptr, ptr %15, align 8
  tail call void %102(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %101) #9
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 429496) #9
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748) #9
  %105 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 5
  %106 = load i16, ptr %105, align 4
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %131, label %108

108:                                              ; preds = %97
  %109 = add i16 %106, 32
  %110 = load ptr, ptr %15, align 8
  tail call void %110(ptr noundef %0, i16 noundef zeroext %109, i32 noundef 0) #9
  %111 = load i16, ptr %105, align 4
  %112 = add i16 %111, 48
  %113 = load ptr, ptr %16, align 4
  %114 = tail call i32 %113(ptr noundef %0, i16 noundef zeroext %112) #9
  %115 = icmp ult i32 %114, 268435456
  br i1 %115, label %131, label %120

116:                                              ; preds = %120
  %117 = load ptr, ptr %16, align 4
  %118 = tail call i32 %117(ptr noundef %0, i16 noundef zeroext %112) #9
  %119 = icmp ult i32 %118, 268435456
  br i1 %119, label %131, label %120

120:                                              ; preds = %116, %108
  %121 = phi i32 [ %123, %116 ], [ 0, %108 ]
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 2147480) #9
  %123 = add nuw nsw i32 %121, 1
  %124 = icmp eq i32 %123, 1000
  br i1 %124, label %125, label %116

125:                                              ; preds = %120
  %126 = load ptr, ptr %17, align 4
  %127 = zext i16 %112 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.90, i32 noundef %127) #10
  %128 = load ptr, ptr %17, align 4
  %129 = load i16, ptr %105, align 4
  %130 = zext i16 %129 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.89, i32 noundef %130) #10
  br label %131

131:                                              ; preds = %125, %116, %108, %97, %1
  %132 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, 1048576
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %170

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 21
  %138 = load ptr, ptr %137, align 4
  %139 = tail call i32 %138(ptr noundef %0, i16 noundef zeroext 1280) #9
  %140 = load i32, ptr %132, align 4
  %141 = and i32 %140, 4
  %142 = icmp eq i32 %141, 0
  %143 = and i32 %140, 8
  %144 = icmp eq i32 %143, 0
  %145 = and i32 %139, 2048
  %146 = select i1 %142, i32 %145, i32 0
  br i1 %144, label %147, label %158

147:                                              ; preds = %136
  %148 = icmp eq i32 %146, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 17
  %151 = load i8, ptr %150, align 1, !range !9
  %152 = icmp eq i8 %151, 0
  %153 = select i1 %152, i32 12, i32 4
  br label %154

154:                                              ; preds = %149, %147
  %155 = phi i32 [ 0, %147 ], [ %153, %149 ]
  %156 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 24
  %157 = load ptr, ptr %156, align 8
  tail call void %157(ptr noundef %0, i32 noundef %155) #9
  br label %158

158:                                              ; preds = %154, %136
  %159 = icmp eq i32 %146, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %158
  %161 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 17
  %162 = load i8, ptr %161, align 1, !range !9
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load ptr, ptr %137, align 4
  %166 = tail call i32 %165(ptr noundef %0, i16 noundef zeroext 1032) #9
  %167 = and i32 %166, -9
  %168 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 22
  %169 = load ptr, ptr %168, align 8
  tail call void %169(ptr noundef %0, i16 noundef zeroext 1032, i32 noundef %167) #9
  br label %170

170:                                              ; preds = %164, %160, %158, %131
  %171 = load i32, ptr %132, align 4
  %172 = and i32 %171, 16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %194, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 19
  %176 = load ptr, ptr %175, align 4
  %177 = tail call i32 %176(ptr noundef %0, i16 noundef zeroext 480) #9
  %178 = or i32 %177, 256
  %179 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 20
  %180 = load ptr, ptr %179, align 8
  tail call void %180(ptr noundef %0, i16 noundef zeroext 480, i32 noundef %178) #9
  br label %181

181:                                              ; preds = %187, %174
  %182 = phi i32 [ 0, %174 ], [ %189, %187 ]
  %183 = load ptr, ptr %175, align 4
  %184 = tail call i32 %183(ptr noundef %0, i16 noundef zeroext 480) #9
  %185 = and i32 %184, 16777216
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %181
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %188(i32 noundef 2147480) #9
  %189 = add nuw nsw i32 %182, 1
  %190 = icmp eq i32 %189, 100
  br i1 %190, label %191, label %181

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.90, i32 noundef 480) #10
  br label %194

194:                                              ; preds = %191, %181, %170
  %195 = load i32, ptr %132, align 4
  %196 = and i32 %195, 32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %223, label %198

198:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %199 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull @.str.84, ptr noundef nonnull %3, i32 noundef 4) #9
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = call i32 @kstrtou8(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %2) #9
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.85, ptr noundef nonnull %3) #10
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i8, ptr %2, align 1
  %209 = shl i8 %208, 4
  %210 = zext i8 %209 to i32
  store i8 %209, ptr %2, align 1
  br label %219

211:                                              ; preds = %198
  %212 = load i32, ptr %132, align 4
  %213 = and i32 %212, 64
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = and i32 %212, 128
  %217 = icmp eq i32 %216, 0
  %218 = select i1 %217, i32 16, i32 224
  br label %219

219:                                              ; preds = %215, %211, %207
  %220 = phi i32 [ %210, %207 ], [ 128, %211 ], [ %218, %215 ]
  %221 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 25
  %222 = load ptr, ptr %221, align 4
  call void %222(ptr noundef %0, i32 noundef 1, i32 noundef -241, i32 noundef %220) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  br label %255

223:                                              ; preds = %194
  %224 = and i32 %195, 131072
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %249, label %226

226:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %227 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull @.str.84, ptr noundef nonnull %5, i32 noundef 4) #9
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %226
  %230 = call i32 @kstrtou8(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %4) #9
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.85, ptr noundef nonnull %5) #10
  br label %235

235:                                              ; preds = %232, %229
  %236 = load i8, ptr %4, align 1
  %237 = and i8 %236, 15
  %238 = zext i8 %237 to i32
  %239 = shl nuw nsw i32 %238, 12
  br label %245

240:                                              ; preds = %226
  %241 = load i32, ptr %132, align 4
  %242 = and i32 %241, 262144
  %243 = icmp eq i32 %242, 0
  %244 = select i1 %243, i32 4096, i32 57344
  br label %245

245:                                              ; preds = %240, %235
  %246 = phi i32 [ %239, %235 ], [ %244, %240 ]
  %247 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 25
  %248 = load ptr, ptr %247, align 4
  call void %248(ptr noundef %0, i32 noundef 4, i32 noundef -61441, i32 noundef %246) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %255

249:                                              ; preds = %223
  %250 = and i32 %195, 524288
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 25
  %254 = load ptr, ptr %253, align 4
  tail call void %254(ptr noundef %0, i32 noundef 7, i32 noundef -193, i32 noundef 128) #9
  br label %255

255:                                              ; preds = %252, %249, %245, %219
  %256 = load i32, ptr %132, align 4
  %257 = and i32 %256, 32768
  %258 = icmp eq i32 %257, 0
  %259 = select i1 %258, i32 25167888, i32 25174032
  %260 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 19
  %261 = load ptr, ptr %260, align 4
  %262 = call i32 %261(ptr noundef %0, i16 noundef zeroext 2056) #9
  %263 = and i32 %262, -528517044
  %264 = or i32 %263, %259
  %265 = load i32, ptr %132, align 4
  %266 = and i32 %265, 32768
  %267 = icmp eq i32 %266, 0
  %268 = select i1 %267, i32 2048, i32 8192
  %269 = load ptr, ptr %260, align 4
  %270 = call i32 %269(ptr noundef %0, i16 noundef zeroext 2056) #9
  %271 = or i32 %268, %270
  %272 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 20
  %273 = load ptr, ptr %272, align 8
  call void %273(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %271) #9
  %274 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %274(i32 noundef 429496) #9
  %275 = icmp eq i32 %264, %262
  br i1 %275, label %278, label %276

276:                                              ; preds = %255
  %277 = load ptr, ptr %272, align 8
  call void %277(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %264) #9
  br label %278

278:                                              ; preds = %276, %255
  %279 = xor i32 %268, -1
  %280 = load ptr, ptr %260, align 4
  %281 = call i32 %280(ptr noundef %0, i16 noundef zeroext 2056) #9
  %282 = and i32 %281, %279
  %283 = load ptr, ptr %272, align 8
  call void %283(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %282) #9
  %284 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %284(i32 noundef 429496) #9
  %285 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 14
  store i32 -1, ptr %285, align 8
  %286 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 15
  store i32 255, ptr %286, align 4
  %287 = load i32, ptr %132, align 4
  %288 = and i32 %287, 8192
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %315

290:                                              ; preds = %278
  %291 = load ptr, ptr %260, align 4
  %292 = call i32 %291(ptr noundef %0, i16 noundef zeroext 0) #9
  %293 = or i32 %292, 16
  %294 = load ptr, ptr %272, align 8
  call void %294(ptr noundef %0, i16 noundef zeroext 0, i32 noundef %293) #9
  br label %295

295:                                              ; preds = %295, %290
  %296 = phi i32 [ 0, %290 ], [ %302, %295 ]
  %297 = trunc i32 %296 to i16
  %298 = shl i16 %297, 2
  %299 = add i16 %298, 768
  %300 = load ptr, ptr %260, align 4
  %301 = call i32 %300(ptr noundef %0, i16 noundef zeroext %299) #9
  %302 = add nuw nsw i32 %296, 1
  %303 = icmp eq i32 %302, 43
  br i1 %303, label %304, label %295

304:                                              ; preds = %304, %295
  %305 = phi i32 [ %311, %304 ], [ 0, %295 ]
  %306 = trunc i32 %305 to i16
  %307 = shl i16 %306, 2
  %308 = add i16 %307, 944
  %309 = load ptr, ptr %260, align 4
  %310 = call i32 %309(ptr noundef %0, i16 noundef zeroext %308) #9
  %311 = add nuw nsw i32 %305, 1
  %312 = icmp eq i32 %311, 31
  br i1 %312, label %313, label %304

313:                                              ; preds = %304
  %314 = load i32, ptr %132, align 4
  br label %315

315:                                              ; preds = %313, %278
  %316 = phi i32 [ %314, %313 ], [ %287, %278 ]
  %317 = and i32 %316, 256
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 27
  %321 = load ptr, ptr %320, align 4
  call void %321(ptr noundef %0, i16 noundef zeroext 260, i32 noundef -1, i32 noundef 8388608) #9
  br label %327

322:                                              ; preds = %315
  %323 = load ptr, ptr %260, align 4
  %324 = call i32 %323(ptr noundef %0, i16 noundef zeroext 392) #9
  %325 = or i32 %324, 8388608
  %326 = load ptr, ptr %272, align 8
  call void %326(ptr noundef %0, i16 noundef zeroext 392, i32 noundef %325) #9
  br label %327

327:                                              ; preds = %322, %319
  %328 = load i32, ptr %132, align 4
  %329 = and i32 %328, 16384
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %341, label %331

331:                                              ; preds = %327
  %332 = and i32 %328, 1048576
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %346

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 21
  %336 = load ptr, ptr %335, align 4
  %337 = call i32 %336(ptr noundef %0, i16 noundef zeroext 1032) #9
  %338 = or i32 %337, 68
  %339 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 22
  %340 = load ptr, ptr %339, align 8
  call void %340(ptr noundef %0, i16 noundef zeroext 1032, i32 noundef %338) #9
  br label %346

341:                                              ; preds = %327
  %342 = load ptr, ptr %260, align 4
  %343 = call i32 %342(ptr noundef %0, i16 noundef zeroext 4) #9
  %344 = and i32 %343, 512
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %341, %334, %331
  %347 = phi i32 [ 2500, %334 ], [ 2500, %331 ], [ 100, %341 ]
  store i32 %347, ptr %285, align 8
  store i32 1, ptr %286, align 4
  call fastcc void @bgmac_mac_speed(ptr noundef %0) #9
  br label %348

348:                                              ; preds = %346, %341
  %349 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 6
  %350 = load ptr, ptr %349, align 8
  %351 = icmp eq ptr %350, null
  br i1 %351, label %356, label %352

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.mii_bus, ptr %350, i32 0, i32 6
  %354 = load ptr, ptr %353, align 4
  %355 = call i32 %354(ptr noundef nonnull %350) #9
  br label %356

356:                                              ; preds = %352, %348
  %357 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 4
  %358 = load ptr, ptr %357, align 8
  %359 = getelementptr inbounds %struct.net_device, ptr %358, i32 0, i32 87
  %360 = load ptr, ptr %359, align 64
  %361 = getelementptr inbounds %struct.netdev_queue, ptr %360, i32 0, i32 12
  call void @_clear_bit(i32 noundef 1, ptr noundef %361) #9
  %362 = getelementptr inbounds %struct.netdev_queue, ptr %360, i32 0, i32 14
  call void @dql_reset(ptr noundef %362) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm47xx_nvram_getenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_poll(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = getelementptr i8, ptr %0, i32 21144
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef %3, i16 noundef zeroext 32, i32 noundef -1) #9
  %6 = getelementptr i8, ptr %0, i32 220
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 240
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 16
  %12 = getelementptr i8, ptr %0, i32 21140
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %3, i16 noundef zeroext %11) #9
  %15 = getelementptr i8, ptr %0, i32 236
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = lshr i32 %17, 4
  %19 = and i32 %18, 511
  %20 = getelementptr i8, ptr %0, i32 224
  %21 = load i32, ptr %6, align 4
  %22 = load i32, ptr %20, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %96, label %24

24:                                               ; preds = %2
  %25 = getelementptr i8, ptr %0, i32 228
  %26 = getelementptr i8, ptr %0, i32 -8
  br label %27

27:                                               ; preds = %59, %24
  %28 = phi i32 [ %21, %24 ], [ %63, %59 ]
  %29 = phi i32 [ 0, %24 ], [ %61, %59 ]
  %30 = phi i32 [ 0, %24 ], [ %60, %59 ]
  %31 = and i32 %28, 127
  %32 = getelementptr %struct.bgmac_dma_ring, ptr %6, i32 0, i32 7, i32 %31
  %33 = icmp eq i32 %31, %19
  br i1 %33, label %66, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr %struct.bgmac_dma_desc, ptr %35, i32 %31, i32 1
  %37 = load i32, ptr %36, align 1
  %38 = and i32 %37, 16383
  %39 = getelementptr %struct.bgmac_dma_ring, ptr %6, i32 0, i32 7, i32 %31, i32 1
  %40 = load i32, ptr %39, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %40, i32 noundef %38, i32 noundef 1, i32 noundef 0) #9
  %41 = load ptr, ptr %32, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = load ptr, ptr %26, align 8
  %47 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 36, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %45
  store i32 %49, ptr %47, align 4
  %50 = load ptr, ptr %26, align 8
  %51 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 36, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = load ptr, ptr %32, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, %30
  %58 = add i32 %29, 1
  tail call void @consume_skb(ptr noundef %54) #9
  store ptr null, ptr %32, align 4
  br label %59

59:                                               ; preds = %43, %34
  %60 = phi i32 [ %57, %43 ], [ %30, %34 ]
  %61 = phi i32 [ %58, %43 ], [ %29, %34 ]
  store i32 0, ptr %39, align 4
  %62 = load i32, ptr %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %6, align 4
  %64 = load i32, ptr %20, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %27

66:                                               ; preds = %59, %27
  %67 = phi i32 [ %60, %59 ], [ %30, %27 ]
  %68 = phi i32 [ %61, %59 ], [ %29, %27 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %96, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %26, align 8
  %72 = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 87
  %73 = load ptr, ptr %72, align 64
  %74 = icmp eq i32 %67, 0
  br i1 %74, label %87, label %75, !prof !10

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.netdev_queue, ptr %73, i32 0, i32 14
  tail call void @dql_completed(ptr noundef %76, i32 noundef %67) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %77 = getelementptr inbounds %struct.netdev_queue, ptr %73, i32 0, i32 14, i32 1
  %78 = load volatile i32, ptr %77, align 4
  %79 = load volatile i32, ptr %76, align 64
  %80 = sub i32 %78, %79
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %87, label %82, !prof !10

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.netdev_queue, ptr %73, i32 0, i32 12
  %84 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %83) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call void @netif_schedule_queue(ptr noundef %73) #9
  br label %87

87:                                               ; preds = %86, %82, %75, %70
  %88 = load ptr, ptr %26, align 8
  %89 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 87
  %90 = load ptr, ptr %89, align 64
  %91 = getelementptr inbounds %struct.netdev_queue, ptr %90, i32 0, i32 12
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  tail call void @netif_tx_wake_queue(ptr noundef %90) #9
  br label %96

96:                                               ; preds = %95, %87, %66, %2
  %97 = getelementptr i8, ptr %0, i32 16700
  %98 = getelementptr i8, ptr %0, i32 16720
  %99 = load i16, ptr %98, align 4
  %100 = add i16 %99, 48
  %101 = load ptr, ptr %12, align 4
  %102 = tail call i32 %101(ptr noundef %3, i16 noundef zeroext %100) #9
  %103 = getelementptr i8, ptr %0, i32 16716
  %104 = load i32, ptr %103, align 4
  %105 = sub i32 %102, %104
  %106 = lshr i32 %105, 4
  %107 = and i32 %106, 511
  %108 = getelementptr i8, ptr %0, i32 -8
  %109 = getelementptr i8, ptr %0, i32 16708
  %110 = getelementptr i8, ptr %0, i32 16704
  %111 = load i32, ptr %97, align 4
  br label %112

112:                                              ; preds = %279, %96
  %113 = phi i32 [ %111, %96 ], [ %294, %279 ]
  %114 = phi i32 [ 0, %96 ], [ %280, %279 ]
  %115 = icmp eq i32 %113, %107
  br i1 %115, label %296, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %7, align 8
  %118 = getelementptr %struct.bgmac_dma_ring, ptr %97, i32 0, i32 7, i32 %113
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr %struct.bgmac_dma_ring, ptr %97, i32 0, i32 7, i32 %113, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = tail call fastcc i32 @bgmac_dma_rx_skb_for_slot(ptr noundef %3, ptr noundef %118) #9
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %116
  %125 = load ptr, ptr %118, align 4
  %126 = getelementptr i8, ptr %125, i32 36
  %127 = load i32, ptr %120, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %117, i32 noundef %127, i32 noundef 9754, i32 noundef 2) #9
  store i16 -8531, ptr %126, align 2
  %128 = getelementptr i8, ptr %125, i32 38
  store i16 -16657, ptr %128, align 2
  %129 = load i32, ptr %120, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %117, i32 noundef %129, i32 noundef 9754, i32 noundef 2) #9
  br label %279

130:                                              ; preds = %116
  %131 = getelementptr i8, ptr %119, i32 36
  tail call void @dma_unmap_page_attrs(ptr noundef %117, i32 noundef %121, i32 noundef 9754, i32 noundef 2, i32 noundef 0) #9
  %132 = load i16, ptr %131, align 2
  %133 = getelementptr i8, ptr %119, i32 38
  %134 = load i16, ptr %133, align 2
  %135 = icmp eq i16 %132, -8531
  %136 = icmp eq i16 %134, -16657
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %138, label %176

138:                                              ; preds = %130
  %139 = load ptr, ptr %108, align 8
  %140 = load i32, ptr %97, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %139, ptr noundef nonnull @.str.94, i32 noundef %140) #10
  %141 = load ptr, ptr @mem_map, align 4
  %142 = ptrtoint ptr %119 to i32
  %143 = add i32 %142, 1073741824
  %144 = lshr i32 %143, 12
  %145 = getelementptr %struct.page, ptr %141, i32 %144, i32 1
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149, !prof !12

149:                                              ; preds = %138
  %150 = add i32 %146, -1
  br label %154

151:                                              ; preds = %138
  %152 = getelementptr %struct.page, ptr %141, i32 %144
  %153 = ptrtoint ptr %152 to i32
  br label %154

154:                                              ; preds = %151, %149
  %155 = phi i32 [ %150, %149 ], [ %153, %151 ]
  %156 = inttoptr i32 %155 to ptr
  %157 = getelementptr inbounds %struct.page, ptr %156, i32 0, i32 1
  %158 = load volatile i32, ptr %157, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161, !prof !12

161:                                              ; preds = %154
  %162 = add i32 %158, -1
  %163 = inttoptr i32 %162 to ptr
  br label %164

164:                                              ; preds = %161, %154
  %165 = phi ptr [ %156, %154 ], [ %163, %161 ]
  %166 = getelementptr inbounds %struct.page, ptr %165, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %166) #9, !srcloc !14
  %167 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %166, ptr %166, i32 1, ptr elementtype(i32) %166) #9, !srcloc !15
  %168 = extractvalue { i32, i32 } %167, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  tail call void @__put_page(ptr noundef %165) #9
  br label %171

171:                                              ; preds = %170, %164
  %172 = load ptr, ptr %108, align 8
  %173 = getelementptr inbounds %struct.net_device, ptr %172, i32 0, i32 36, i32 4
  %174 = load i32, ptr %173, align 8
  %175 = add i32 %174, 1
  store i32 %175, ptr %173, align 8
  br label %279

176:                                              ; preds = %130
  %177 = icmp ugt i16 %132, 10048
  br i1 %177, label %178, label %220

178:                                              ; preds = %176
  %179 = load ptr, ptr %108, align 8
  %180 = load i32, ptr %97, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %179, ptr noundef nonnull @.str.95, i32 noundef %180) #10
  %181 = load ptr, ptr @mem_map, align 4
  %182 = ptrtoint ptr %119 to i32
  %183 = add i32 %182, 1073741824
  %184 = lshr i32 %183, 12
  %185 = getelementptr %struct.page, ptr %181, i32 %184, i32 1
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189, !prof !12

189:                                              ; preds = %178
  %190 = add i32 %186, -1
  br label %194

191:                                              ; preds = %178
  %192 = getelementptr %struct.page, ptr %181, i32 %184
  %193 = ptrtoint ptr %192 to i32
  br label %194

194:                                              ; preds = %191, %189
  %195 = phi i32 [ %190, %189 ], [ %193, %191 ]
  %196 = inttoptr i32 %195 to ptr
  %197 = getelementptr inbounds %struct.page, ptr %196, i32 0, i32 1
  %198 = load volatile i32, ptr %197, align 4
  %199 = and i32 %198, 1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %204, label %201, !prof !12

201:                                              ; preds = %194
  %202 = add i32 %198, -1
  %203 = inttoptr i32 %202 to ptr
  br label %204

204:                                              ; preds = %201, %194
  %205 = phi ptr [ %196, %194 ], [ %203, %201 ]
  %206 = getelementptr inbounds %struct.page, ptr %205, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %206) #9, !srcloc !14
  %207 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %206, ptr %206, i32 1, ptr elementtype(i32) %206) #9, !srcloc !15
  %208 = extractvalue { i32, i32 } %207, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  tail call void @__put_page(ptr noundef %205) #9
  br label %211

211:                                              ; preds = %210, %204
  %212 = load ptr, ptr %108, align 8
  %213 = getelementptr inbounds %struct.net_device, ptr %212, i32 0, i32 36, i32 10
  %214 = load i32, ptr %213, align 8
  %215 = add i32 %214, 1
  store i32 %215, ptr %213, align 8
  %216 = load ptr, ptr %108, align 8
  %217 = getelementptr inbounds %struct.net_device, ptr %216, i32 0, i32 36, i32 4
  %218 = load i32, ptr %217, align 8
  %219 = add i32 %218, 1
  store i32 %219, ptr %217, align 8
  br label %279

220:                                              ; preds = %176
  %221 = tail call ptr @build_skb(ptr noundef %119, i32 noundef 10048) #9
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %260, !prof !10

223:                                              ; preds = %220
  %224 = load ptr, ptr %108, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %224, ptr noundef nonnull @.str.96) #10
  %225 = load ptr, ptr @mem_map, align 4
  %226 = ptrtoint ptr %119 to i32
  %227 = add i32 %226, 1073741824
  %228 = lshr i32 %227, 12
  %229 = getelementptr %struct.page, ptr %225, i32 %228, i32 1
  %230 = load volatile i32, ptr %229, align 4
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %235, label %233, !prof !12

233:                                              ; preds = %223
  %234 = add i32 %230, -1
  br label %238

235:                                              ; preds = %223
  %236 = getelementptr %struct.page, ptr %225, i32 %228
  %237 = ptrtoint ptr %236 to i32
  br label %238

238:                                              ; preds = %235, %233
  %239 = phi i32 [ %234, %233 ], [ %237, %235 ]
  %240 = inttoptr i32 %239 to ptr
  %241 = getelementptr inbounds %struct.page, ptr %240, i32 0, i32 1
  %242 = load volatile i32, ptr %241, align 4
  %243 = and i32 %242, 1
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %248, label %245, !prof !12

245:                                              ; preds = %238
  %246 = add i32 %242, -1
  %247 = inttoptr i32 %246 to ptr
  br label %248

248:                                              ; preds = %245, %238
  %249 = phi ptr [ %240, %238 ], [ %247, %245 ]
  %250 = getelementptr inbounds %struct.page, ptr %249, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %250) #9, !srcloc !14
  %251 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %250, ptr %250, i32 1, ptr elementtype(i32) %250) #9, !srcloc !15
  %252 = extractvalue { i32, i32 } %251, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  tail call void @__put_page(ptr noundef %249) #9
  br label %255

255:                                              ; preds = %254, %248
  %256 = load ptr, ptr %108, align 8
  %257 = getelementptr inbounds %struct.net_device, ptr %256, i32 0, i32 36, i32 4
  %258 = load i32, ptr %257, align 8
  %259 = add i32 %258, 1
  store i32 %259, ptr %257, align 8
  br label %279

260:                                              ; preds = %220
  %261 = add nsw i16 %132, -4
  %262 = zext i16 %261 to i32
  %263 = add nuw nsw i32 %262, 66
  %264 = tail call ptr @skb_put(ptr noundef nonnull %221, i32 noundef %263) #9
  %265 = tail call ptr @skb_pull(ptr noundef nonnull %221, i32 noundef 66) #9
  %266 = load ptr, ptr %108, align 8
  %267 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %221, ptr noundef %266) #9
  %268 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 13, i32 0, i32 16
  store i16 %267, ptr %268, align 8
  %269 = load ptr, ptr %108, align 8
  %270 = getelementptr inbounds %struct.net_device, ptr %269, i32 0, i32 36, i32 2
  %271 = load i32, ptr %270, align 8
  %272 = add i32 %271, %262
  store i32 %272, ptr %270, align 8
  %273 = load ptr, ptr %108, align 8
  %274 = getelementptr inbounds %struct.net_device, ptr %273, i32 0, i32 36
  %275 = load i32, ptr %274, align 8
  %276 = add i32 %275, 1
  store i32 %276, ptr %274, align 8
  %277 = tail call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %221) #9
  %278 = add nsw i32 %114, 1
  br label %279

279:                                              ; preds = %260, %255, %211, %171, %124
  %280 = phi i32 [ %114, %124 ], [ %114, %171 ], [ %114, %211 ], [ %114, %255 ], [ %278, %260 ]
  %281 = load i32, ptr %97, align 4
  %282 = load ptr, ptr %109, align 4
  %283 = icmp eq i32 %281, 511
  %284 = select i1 %283, i32 268435456, i32 0
  %285 = getelementptr %struct.bgmac_dma_desc, ptr %282, i32 %281
  %286 = getelementptr %struct.bgmac_dma_ring, ptr %97, i32 0, i32 7, i32 %281, i32 1
  %287 = load i32, ptr %286, align 4
  %288 = getelementptr %struct.bgmac_dma_desc, ptr %282, i32 %281, i32 2
  store i32 %287, ptr %288, align 1
  %289 = getelementptr %struct.bgmac_dma_desc, ptr %282, i32 %281, i32 3
  store i32 0, ptr %289, align 1
  store i32 %284, ptr %285, align 1
  %290 = getelementptr %struct.bgmac_dma_desc, ptr %282, i32 %281, i32 1
  store i32 9754, ptr %290, align 1
  store i32 %281, ptr %110, align 4
  %291 = load i32, ptr %97, align 4
  %292 = add i32 %291, 1
  %293 = icmp ugt i32 %292, 511
  %294 = select i1 %293, i32 0, i32 %292
  store i32 %294, ptr %97, align 4
  %295 = icmp slt i32 %280, %1
  br i1 %295, label %112, label %296

296:                                              ; preds = %279, %112
  %297 = phi i32 [ %280, %279 ], [ %114, %112 ]
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #9, !srcloc !17
  %298 = load i16, ptr %98, align 4
  %299 = add i16 %298, 36
  %300 = load i32, ptr %103, align 4
  %301 = load i32, ptr %110, align 4
  %302 = shl i32 %301, 4
  %303 = add i32 %302, %300
  %304 = load ptr, ptr %4, align 8
  tail call void %304(ptr noundef %3, i16 noundef zeroext %299, i32 noundef %303) #9
  %305 = load ptr, ptr %12, align 4
  %306 = tail call i32 %305(ptr noundef %3, i16 noundef zeroext 32) #9
  %307 = and i32 %306, 16842752
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %296
  %310 = icmp slt i32 %297, %1
  br i1 %310, label %311, label %316

311:                                              ; preds = %309
  %312 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %297) #9
  %313 = getelementptr i8, ptr %0, i32 21124
  %314 = load i32, ptr %313, align 4
  %315 = load ptr, ptr %4, align 8
  tail call void %315(ptr noundef %3, i16 noundef zeroext 36, i32 noundef %314) #9
  br label %316

316:                                              ; preds = %311, %309, %296
  %317 = phi i32 [ %1, %296 ], [ %297, %311 ], [ %297, %309 ]
  ret i32 %317
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bgmac_dma_free(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 2
  %3 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 2048, ptr noundef nonnull %4, i32 noundef %9, i32 noundef 0) #9
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 1, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 1, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef 2048, ptr noundef nonnull %12, i32 noundef %17, i32 noundef 0) #9
  br label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 2, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 2, i32 3
  %25 = load i32, ptr %24, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef 2048, ptr noundef nonnull %20, i32 noundef %25, i32 noundef 0) #9
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 3, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 3, i32 3
  %33 = load i32, ptr %32, align 4
  tail call void @dma_free_attrs(ptr noundef %31, i32 noundef 2048, ptr noundef nonnull %28, i32 noundef %33, i32 noundef 0) #9
  br label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  tail call void @dma_free_attrs(ptr noundef %39, i32 noundef 8192, ptr noundef nonnull %36, i32 noundef %41, i32 noundef 0) #9
  br label %42

42:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bgmac_enet_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_netdev(ptr noundef %3) #9
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  tail call void @phy_disconnect(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 5
  tail call void @__netif_napi_del(ptr noundef %7) #9
  tail call void @synchronize_net() #9
  tail call fastcc void @bgmac_dma_free(ptr noundef %0)
  %8 = load ptr, ptr %2, align 8
  tail call void @free_netdev(ptr noundef %8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bgmac_enet_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %10 = load ptr, ptr %9, align 8
  tail call void @phy_stop(ptr noundef %10) #9
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 87
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 5
  tail call void @napi_disable(ptr noundef %15) #9
  %16 = load ptr, ptr %2, align 8
  tail call void @netif_tx_lock(ptr noundef %16) #9
  %17 = load ptr, ptr %2, align 8
  tail call void @netif_device_detach(ptr noundef %17) #9
  %18 = load ptr, ptr %2, align 8
  tail call void @netif_tx_unlock(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 20
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef %0, i16 noundef zeroext 36, i32 noundef 0) #9
  %21 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0, i16 noundef zeroext 36) #9
  tail call fastcc void @bgmac_chip_reset(ptr noundef %0)
  tail call fastcc void @bgmac_dma_cleanup(ptr noundef %0)
  br label %24

24:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bgmac_dma_cleanup(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %8 = getelementptr %struct.bgmac_dma_desc, ptr %5, i32 %7, i32 1
  %9 = load i32, ptr %8, align 1
  %10 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 0, i32 7, i32 %7
  %11 = load ptr, ptr %10, align 4
  tail call void @consume_skb(ptr noundef %11) #9
  %12 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 0, i32 7, i32 %7, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = and i32 %9, 16383
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %13, i32 noundef %16, i32 noundef 1, i32 noundef 0) #9
  br label %17

17:                                               ; preds = %15, %6
  %18 = add nuw nsw i32 %7, 1
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %6

20:                                               ; preds = %17
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 1, i32 2
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %35, %20
  %25 = phi i32 [ 0, %20 ], [ %36, %35 ]
  %26 = getelementptr %struct.bgmac_dma_desc, ptr %23, i32 %25, i32 1
  %27 = load i32, ptr %26, align 1
  %28 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 1, i32 7, i32 %25
  %29 = load ptr, ptr %28, align 4
  tail call void @consume_skb(ptr noundef %29) #9
  %30 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 1, i32 7, i32 %25, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = and i32 %27, 16383
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %31, i32 noundef %34, i32 noundef 1, i32 noundef 0) #9
  br label %35

35:                                               ; preds = %33, %24
  %36 = add nuw nsw i32 %25, 1
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %24

38:                                               ; preds = %35
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 2, i32 2
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %53, %38
  %43 = phi i32 [ 0, %38 ], [ %54, %53 ]
  %44 = getelementptr %struct.bgmac_dma_desc, ptr %41, i32 %43, i32 1
  %45 = load i32, ptr %44, align 1
  %46 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 2, i32 7, i32 %43
  %47 = load ptr, ptr %46, align 4
  tail call void @consume_skb(ptr noundef %47) #9
  %48 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 2, i32 7, i32 %43, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  %52 = and i32 %45, 16383
  tail call void @dma_unmap_page_attrs(ptr noundef %39, i32 noundef %49, i32 noundef %52, i32 noundef 1, i32 noundef 0) #9
  br label %53

53:                                               ; preds = %51, %42
  %54 = add nuw nsw i32 %43, 1
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %56, label %42

56:                                               ; preds = %53
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 3, i32 2
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %71, %56
  %61 = phi i32 [ 0, %56 ], [ %72, %71 ]
  %62 = getelementptr %struct.bgmac_dma_desc, ptr %59, i32 %61, i32 1
  %63 = load i32, ptr %62, align 1
  %64 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 3, i32 7, i32 %61
  %65 = load ptr, ptr %64, align 4
  tail call void @consume_skb(ptr noundef %65) #9
  %66 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 3, i32 7, i32 %61, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = and i32 %63, 16383
  tail call void @dma_unmap_page_attrs(ptr noundef %57, i32 noundef %67, i32 noundef %70, i32 noundef 1, i32 noundef 0) #9
  br label %71

71:                                               ; preds = %69, %60
  %72 = add nuw nsw i32 %61, 1
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %60

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8
  %76 = load ptr, ptr %2, align 8
  br label %77

77:                                               ; preds = %116, %74
  %78 = phi i32 [ 0, %74 ], [ %117, %116 ]
  %79 = getelementptr %struct.bgmac_dma_ring, ptr %75, i32 0, i32 7, i32 %78, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %116, label %82

82:                                               ; preds = %77
  %83 = getelementptr %struct.bgmac_dma_ring, ptr %75, i32 0, i32 7, i32 %78
  tail call void @dma_unmap_page_attrs(ptr noundef %76, i32 noundef %80, i32 noundef 9754, i32 noundef 2, i32 noundef 0) #9
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr @mem_map, align 4
  %86 = ptrtoint ptr %84 to i32
  %87 = add i32 %86, 1073741824
  %88 = lshr i32 %87, 12
  %89 = getelementptr %struct.page, ptr %85, i32 %88, i32 1
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93, !prof !12

93:                                               ; preds = %82
  %94 = add i32 %90, -1
  br label %98

95:                                               ; preds = %82
  %96 = getelementptr %struct.page, ptr %85, i32 %88
  %97 = ptrtoint ptr %96 to i32
  br label %98

98:                                               ; preds = %95, %93
  %99 = phi i32 [ %94, %93 ], [ %97, %95 ]
  %100 = inttoptr i32 %99 to ptr
  %101 = getelementptr inbounds %struct.page, ptr %100, i32 0, i32 1
  %102 = load volatile i32, ptr %101, align 4
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105, !prof !12

105:                                              ; preds = %98
  %106 = add i32 %102, -1
  %107 = inttoptr i32 %106 to ptr
  br label %108

108:                                              ; preds = %105, %98
  %109 = phi ptr [ %100, %98 ], [ %107, %105 ]
  %110 = getelementptr inbounds %struct.page, ptr %109, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %110) #9, !srcloc !14
  %111 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %110, ptr %110, i32 1, ptr elementtype(i32) %110) #9, !srcloc !15
  %112 = extractvalue { i32, i32 } %111, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  tail call void @__put_page(ptr noundef %109) #9
  br label %115

115:                                              ; preds = %114, %108
  store i32 0, ptr %79, align 4
  br label %116

116:                                              ; preds = %115, %77
  %117 = add nuw nsw i32 %78, 1
  %118 = icmp eq i32 %117, 512
  br i1 %118, label %119, label %77

119:                                              ; preds = %116
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bgmac_enet_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @bgmac_dma_init(ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  tail call fastcc void @bgmac_chip_init(ptr noundef %0)
  %12 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 5
  tail call void @napi_enable(ptr noundef %12) #9
  %13 = load ptr, ptr %2, align 8
  tail call void @netif_tx_lock(ptr noundef %13) #9
  %14 = load ptr, ptr %2, align 8
  tail call void @netif_device_attach(ptr noundef %14) #9
  %15 = load ptr, ptr %2, align 8
  tail call void @netif_tx_unlock(ptr noundef %15) #9
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 87
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %19) #9
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 120
  %22 = load ptr, ptr %21, align 8
  tail call void @phy_start(ptr noundef %22) #9
  br label %23

23:                                               ; preds = %11, %8, %1
  %24 = phi i32 [ 0, %11 ], [ 0, %1 ], [ %9, %8 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bgmac_dma_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 19
  %3 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 20
  br label %5

5:                                                ; preds = %50, %1
  %6 = phi i32 [ 0, %1 ], [ %52, %50 ]
  %7 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %6
  %8 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %6, i32 6
  %9 = load i8, ptr %8, align 2, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %5
  %12 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %6, i32 5
  %13 = load i16, ptr %12, align 4
  %14 = load ptr, ptr %2, align 4
  %15 = tail call i32 %14(ptr noundef %0, i16 noundef zeroext %13) #9
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %15, -66848962
  %20 = or i32 %19, 57409600
  %21 = select i1 %18, i32 %15, i32 %20
  %22 = or i32 %21, 2049
  %23 = load i16, ptr %12, align 4
  %24 = load ptr, ptr %4, align 8
  tail call void %24(ptr noundef %0, i16 noundef zeroext %23, i32 noundef %22) #9
  br label %25

25:                                               ; preds = %11, %5
  %26 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %6, i32 5
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 8
  %29 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %6, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %4, align 8
  tail call void %31(ptr noundef %0, i16 noundef zeroext %28, i32 noundef %30) #9
  %32 = load i16, ptr %26, align 4
  %33 = add i16 %32, 12
  %34 = load ptr, ptr %4, align 8
  tail call void %34(ptr noundef %0, i16 noundef zeroext %33, i32 noundef 0) #9
  %35 = load i8, ptr %8, align 2, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %25
  %38 = load i16, ptr %26, align 4
  %39 = load ptr, ptr %2, align 4
  %40 = tail call i32 %39(ptr noundef %0, i16 noundef zeroext %38) #9
  %41 = load i32, ptr %3, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %40, -66848962
  %45 = or i32 %44, 57409600
  %46 = select i1 %43, i32 %40, i32 %45
  %47 = or i32 %46, 2049
  %48 = load i16, ptr %26, align 4
  %49 = load ptr, ptr %4, align 8
  tail call void %49(ptr noundef %0, i16 noundef zeroext %48, i32 noundef %47) #9
  br label %50

50:                                               ; preds = %37, %25
  store i32 0, ptr %7, align 4
  %51 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 7, i32 %6, i32 1
  store i32 0, ptr %51, align 4
  %52 = add nuw nsw i32 %6, 1
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %5

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8
  %56 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 6
  %57 = load i8, ptr %56, align 2, !range !9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 5
  %61 = load i16, ptr %60, align 4
  %62 = add i16 %61, 32
  %63 = load ptr, ptr %2, align 4
  %64 = tail call i32 %63(ptr noundef %0, i16 noundef zeroext %62) #9
  %65 = and i32 %64, 196608
  %66 = load i32, ptr %3, align 4
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  %69 = or i32 %65, 4980736
  %70 = select i1 %68, i32 %65, i32 %69
  %71 = or i32 %70, 3133
  %72 = load i16, ptr %60, align 4
  %73 = add i16 %72, 32
  %74 = load ptr, ptr %4, align 8
  tail call void %74(ptr noundef %0, i16 noundef zeroext %73, i32 noundef %71) #9
  br label %75

75:                                               ; preds = %59, %54
  %76 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 5
  %77 = load i16, ptr %76, align 4
  %78 = add i16 %77, 40
  %79 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %4, align 8
  tail call void %81(ptr noundef %0, i16 noundef zeroext %78, i32 noundef %80) #9
  %82 = load i16, ptr %76, align 4
  %83 = add i16 %82, 44
  %84 = load ptr, ptr %4, align 8
  tail call void %84(ptr noundef %0, i16 noundef zeroext %83, i32 noundef 0) #9
  %85 = load i8, ptr %56, align 2, !range !9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %75
  %88 = load i16, ptr %76, align 4
  %89 = add i16 %88, 32
  %90 = load ptr, ptr %2, align 4
  %91 = tail call i32 %90(ptr noundef %0, i16 noundef zeroext %89) #9
  %92 = and i32 %91, 196608
  %93 = load i32, ptr %3, align 4
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  %96 = or i32 %92, 4980736
  %97 = select i1 %95, i32 %92, i32 %96
  %98 = or i32 %97, 3133
  %99 = load i16, ptr %76, align 4
  %100 = add i16 %99, 32
  %101 = load ptr, ptr %4, align 8
  tail call void %101(ptr noundef %0, i16 noundef zeroext %100, i32 noundef %98) #9
  br label %102

102:                                              ; preds = %87, %75
  store i32 0, ptr %55, align 4
  %103 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 1
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 2
  br label %105

105:                                              ; preds = %110, %102
  %106 = phi i32 [ 0, %102 ], [ %120, %110 ]
  %107 = getelementptr %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 7, i32 %106
  %108 = tail call fastcc i32 @bgmac_dma_rx_skb_for_slot(ptr noundef %0, ptr noundef %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %105
  %111 = load ptr, ptr %104, align 4
  %112 = icmp eq i32 %106, 511
  %113 = select i1 %112, i32 268435456, i32 0
  %114 = getelementptr %struct.bgmac_dma_desc, ptr %111, i32 %106
  %115 = getelementptr %struct.bgmac_dma_ring, ptr %55, i32 0, i32 7, i32 %106, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr %struct.bgmac_dma_desc, ptr %111, i32 %106, i32 2
  store i32 %116, ptr %117, align 1
  %118 = getelementptr %struct.bgmac_dma_desc, ptr %111, i32 %106, i32 3
  store i32 0, ptr %118, align 1
  store i32 %113, ptr %114, align 1
  %119 = getelementptr %struct.bgmac_dma_desc, ptr %111, i32 %106, i32 1
  store i32 9754, ptr %119, align 1
  store i32 %106, ptr %103, align 4
  %120 = add nuw nsw i32 %106, 1
  %121 = icmp eq i32 %120, 512
  br i1 %121, label %122, label %105

122:                                              ; preds = %110
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #9, !srcloc !17
  %123 = load i16, ptr %76, align 4
  %124 = add i16 %123, 36
  %125 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 8, i32 0, i32 4
  %126 = load i32, ptr %125, align 4
  %127 = load i32, ptr %103, align 4
  %128 = shl i32 %127, 4
  %129 = add i32 %128, %126
  %130 = load ptr, ptr %4, align 8
  tail call void %130(ptr noundef %0, i16 noundef zeroext %124, i32 noundef %129) #9
  br label %132

131:                                              ; preds = %105
  tail call fastcc void @bgmac_dma_cleanup(ptr noundef %0)
  br label %132

132:                                              ; preds = %131, %122
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bgmac_chip_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef %0, i16 noundef zeroext 32, i32 noundef -1) #9
  %4 = load ptr, ptr %2, align 8
  tail call void %4(ptr noundef %0, i16 noundef zeroext 256, i32 noundef 16777216) #9
  %5 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i16 noundef zeroext 2056) #9
  %8 = and i32 %7, -257
  %9 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 32768
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 2048, i32 8192
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 %14(ptr noundef %0, i16 noundef zeroext 2056) #9
  %16 = or i32 %13, %15
  %17 = load ptr, ptr %2, align 8
  tail call void %17(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %16) #9
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496) #9
  %19 = load ptr, ptr %2, align 8
  tail call void %19(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %8) #9
  %20 = xor i32 %13, -1
  %21 = load ptr, ptr %5, align 4
  %22 = tail call i32 %21(ptr noundef %0, i16 noundef zeroext 2056) #9
  %23 = and i32 %22, %20
  %24 = load ptr, ptr %2, align 8
  tail call void %24(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %23) #9
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 429496) #9
  %26 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 1408
  %29 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 14
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr i8, ptr %27, i32 22580
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %28, i16 noundef zeroext 2056) #9
  %34 = and i32 %33, -17
  %35 = lshr i32 %30, 4
  %36 = and i32 %35, 16
  %37 = or i32 %34, %36
  %38 = getelementptr i8, ptr %27, i32 1428
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 32768
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 2048, i32 8192
  %43 = load ptr, ptr %31, align 4
  %44 = tail call i32 %43(ptr noundef %28, i16 noundef zeroext 2056) #9
  %45 = or i32 %42, %44
  %46 = getelementptr i8, ptr %27, i32 22584
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef %28, i16 noundef zeroext 2056, i32 noundef %45) #9
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 429496) #9
  %49 = load ptr, ptr %46, align 8
  tail call void %49(ptr noundef %28, i16 noundef zeroext 2056, i32 noundef %37) #9
  %50 = xor i32 %42, -1
  %51 = load ptr, ptr %31, align 4
  %52 = tail call i32 %51(ptr noundef %28, i16 noundef zeroext 2056) #9
  %53 = and i32 %52, %50
  %54 = load ptr, ptr %46, align 8
  tail call void %54(ptr noundef %28, i16 noundef zeroext 2056, i32 noundef %53) #9
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 429496) #9
  %56 = load ptr, ptr %26, align 8
  %57 = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 72
  %58 = load ptr, ptr %57, align 32
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw i32 %60, 24
  %62 = getelementptr i8, ptr %58, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 16
  %66 = or i32 %65, %61
  %67 = getelementptr i8, ptr %58, i32 2
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = or i32 %66, %70
  %72 = getelementptr i8, ptr %58, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %71, %74
  %76 = load ptr, ptr %2, align 8
  tail call void %76(ptr noundef %0, i16 noundef zeroext 2060, i32 noundef %75) #9
  %77 = getelementptr i8, ptr %58, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 8
  %81 = getelementptr i8, ptr %58, i32 5
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %80, %83
  %85 = load ptr, ptr %2, align 8
  tail call void %85(ptr noundef %0, i16 noundef zeroext 2064, i32 noundef %84) #9
  %86 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 18
  %87 = load i8, ptr %86, align 2, !range !9
  %88 = icmp eq i8 %87, 0
  %89 = load ptr, ptr %5, align 4
  %90 = tail call i32 %89(ptr noundef %0, i16 noundef zeroext 2056) #9
  br i1 %88, label %103, label %91

91:                                               ; preds = %1
  %92 = or i32 %90, 32768
  %93 = load i32, ptr %9, align 4
  %94 = and i32 %93, 32768
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 2048, i32 8192
  %97 = load ptr, ptr %5, align 4
  %98 = tail call i32 %97(ptr noundef %0, i16 noundef zeroext 2056) #9
  %99 = or i32 %96, %98
  %100 = load ptr, ptr %2, align 8
  tail call void %100(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %99) #9
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 429496) #9
  %102 = icmp eq i32 %92, %90
  br i1 %102, label %119, label %115

103:                                              ; preds = %1
  %104 = and i32 %90, -32769
  %105 = load i32, ptr %9, align 4
  %106 = and i32 %105, 32768
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 2048, i32 8192
  %109 = load ptr, ptr %5, align 4
  %110 = tail call i32 %109(ptr noundef %0, i16 noundef zeroext 2056) #9
  %111 = or i32 %108, %110
  %112 = load ptr, ptr %2, align 8
  tail call void %112(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %111) #9
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 429496) #9
  %114 = icmp eq i32 %104, %90
  br i1 %114, label %119, label %115

115:                                              ; preds = %103, %91
  %116 = phi i32 [ %92, %91 ], [ %104, %103 ]
  %117 = phi i32 [ %96, %91 ], [ %108, %103 ]
  %118 = load ptr, ptr %2, align 8
  tail call void %118(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %116) #9
  br label %119

119:                                              ; preds = %115, %103, %91
  %120 = phi i32 [ %96, %91 ], [ %108, %103 ], [ %117, %115 ]
  %121 = xor i32 %120, -1
  %122 = load ptr, ptr %5, align 4
  %123 = tail call i32 %122(ptr noundef %0, i16 noundef zeroext 2056) #9
  %124 = and i32 %123, %121
  %125 = load ptr, ptr %2, align 8
  tail call void %125(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %124) #9
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 429496) #9
  %127 = load ptr, ptr %2, align 8
  tail call void %127(ptr noundef %0, i16 noundef zeroext 2068, i32 noundef 1550) #9
  %128 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 13
  %129 = load i32, ptr %128, align 4
  %130 = load ptr, ptr %2, align 8
  tail call void %130(ptr noundef %0, i16 noundef zeroext 36, i32 noundef %129) #9
  %131 = load i32, ptr %9, align 4
  %132 = and i32 %131, 32768
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 2048, i32 8192
  %135 = load ptr, ptr %5, align 4
  %136 = tail call i32 %135(ptr noundef %0, i16 noundef zeroext 2056) #9
  %137 = load ptr, ptr %5, align 4
  %138 = tail call i32 %137(ptr noundef %0, i16 noundef zeroext 2056) #9
  %139 = and i32 %138, -4
  %140 = or i32 %139, %134
  %141 = load i32, ptr %9, align 4
  %142 = and i32 %141, 32768
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i32 2048, i32 8192
  %145 = load ptr, ptr %5, align 4
  %146 = tail call i32 %145(ptr noundef %0, i16 noundef zeroext 2056) #9
  %147 = or i32 %144, %146
  %148 = load ptr, ptr %2, align 8
  tail call void %148(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %147) #9
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 429496) #9
  %150 = load ptr, ptr %2, align 8
  tail call void %150(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %140) #9
  %151 = xor i32 %144, -1
  %152 = load ptr, ptr %5, align 4
  %153 = tail call i32 %152(ptr noundef %0, i16 noundef zeroext 2056) #9
  %154 = and i32 %153, %151
  %155 = load ptr, ptr %2, align 8
  tail call void %155(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %154) #9
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 429496) #9
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 429496) #9
  %158 = or i32 %136, 3
  %159 = load ptr, ptr %2, align 8
  tail call void %159(ptr noundef %0, i16 noundef zeroext 2056, i32 noundef %158) #9
  %160 = load ptr, ptr %5, align 4
  %161 = tail call i32 %160(ptr noundef %0, i16 noundef zeroext 4) #9
  %162 = lshr i32 %161, 8
  %163 = and i32 %162, 3
  %164 = load i32, ptr %9, align 4
  %165 = and i32 %164, 4096
  %166 = icmp ne i32 %165, 0
  %167 = icmp ne i32 %163, 0
  %168 = select i1 %166, i1 true, i1 %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %119
  %170 = load ptr, ptr %5, align 4
  %171 = tail call i32 %170(ptr noundef %0, i16 noundef zeroext 480) #9
  %172 = or i32 %171, 2
  %173 = load ptr, ptr %2, align 8
  tail call void %173(ptr noundef %0, i16 noundef zeroext 480, i32 noundef %172) #9
  %174 = load i32, ptr %9, align 4
  %175 = and i32 %174, 4096
  %176 = icmp eq i32 %175, 0
  %177 = icmp eq i32 %163, 2
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %179, label %183

179:                                              ; preds = %169
  %180 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 25
  %181 = load ptr, ptr %180, align 4
  tail call void %181(ptr noundef %0, i32 noundef 1, i32 noundef -1, i32 noundef 65536) #9
  %182 = load i32, ptr %9, align 4
  br label %183

183:                                              ; preds = %179, %169, %119
  %184 = phi i32 [ %164, %119 ], [ %182, %179 ], [ %174, %169 ]
  %185 = and i32 %184, 1536
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %183
  %188 = and i32 %184, 512
  %189 = icmp eq i32 %188, 0
  %190 = select i1 %189, i32 63636683, i32 2293985
  %191 = load ptr, ptr %2, align 8
  tail call void %191(ptr noundef %0, i16 noundef zeroext 260, i32 noundef %190) #9
  %192 = load ptr, ptr %2, align 8
  tail call void %192(ptr noundef %0, i16 noundef zeroext 2864, i32 noundef 163839) #9
  %193 = load i32, ptr %9, align 4
  br label %194

194:                                              ; preds = %187, %183
  %195 = phi i32 [ %193, %187 ], [ %184, %183 ]
  %196 = and i32 %195, 2048
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %212, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %5, align 4
  %200 = tail call i32 %199(ptr noundef %0, i16 noundef zeroext 400) #9
  %201 = and i32 %200, -1056964609
  %202 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 26
  %203 = load ptr, ptr %202, align 8
  %204 = tail call i32 %203(ptr noundef %0) #9
  %205 = udiv i32 %204, 1000000
  %206 = shl nuw nsw i32 %205, 7
  %207 = udiv i32 %206, 1000
  %208 = shl i32 %207, 24
  %209 = add i32 %208, -50331648
  %210 = or i32 %209, %201
  %211 = load ptr, ptr %2, align 8
  tail call void %211(ptr noundef %0, i16 noundef zeroext 400, i32 noundef %210) #9
  br label %212

212:                                              ; preds = %198, %194
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_open(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call fastcc void @bgmac_chip_reset(ptr noundef %2)
  %3 = tail call fastcc i32 @bgmac_dma_init(ptr noundef %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  tail call fastcc void @bgmac_chip_init(ptr noundef %2)
  %6 = getelementptr i8, ptr %0, i32 22560
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @bgmac_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %0) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %0, i32 1420
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.9, i32 noundef %8) #10
  tail call fastcc void @bgmac_dma_cleanup(ptr noundef %2)
  br label %20

13:                                               ; preds = %5
  %14 = getelementptr i8, ptr %0, i32 1440
  tail call void @napi_enable(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %16 = load ptr, ptr %15, align 8
  tail call void @phy_start(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %19) #9
  br label %20

20:                                               ; preds = %13, %10, %1
  %21 = phi i32 [ %8, %10 ], [ 0, %13 ], [ %3, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_stop(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call void @netif_carrier_off(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  tail call void @phy_stop(ptr noundef %4) #9
  %5 = getelementptr i8, ptr %0, i32 1440
  tail call void @napi_disable(ptr noundef %5) #9
  %6 = getelementptr i8, ptr %0, i32 22584
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef %2, i16 noundef zeroext 36, i32 noundef 0) #9
  %8 = getelementptr i8, ptr %0, i32 22580
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %2, i16 noundef zeroext 36) #9
  %11 = getelementptr i8, ptr %0, i32 22560
  %12 = load i32, ptr %11, align 8
  %13 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %0) #9
  tail call fastcc void @bgmac_chip_reset(ptr noundef %2)
  tail call fastcc void @bgmac_dma_cleanup(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_start_xmit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1660
  %5 = getelementptr i8, ptr %1, i32 1424
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %1, i32 1432
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %1, i32 1664
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 127
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = icmp ugt i32 %13, 16383
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef %13) #10
  br label %193

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 96
  %20 = icmp eq i16 %19, 96
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = tail call i32 @skb_checksum_help(ptr noundef %0) #9
  %23 = load i32, ptr %9, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %23, %21 ], [ %10, %16 ]
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 2
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  %31 = load i32, ptr %4, align 4
  %32 = add i32 %25, -127
  %33 = add i32 %32, %30
  %34 = sub i32 %33, %31
  %35 = icmp ult i32 %34, -128
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.12) #10
  %38 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 87
  %39 = load ptr, ptr %38, align 64
  %40 = getelementptr inbounds %struct.netdev_queue, ptr %39, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %40) #9
  br label %200

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %12, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %44, %46
  %48 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %43) #9
  %49 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %61, !prof !10

52:                                               ; preds = %41
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %53 = tail call ptr @dev_driver_string(ptr noundef %6) #9
  %54 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load ptr, ptr %6, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi ptr [ %58, %57 ], [ %55, %52 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %53, ptr noundef %60) #9
  br label %61

61:                                               ; preds = %59, %41
  br i1 %48, label %62, label %64

62:                                               ; preds = %61
  %63 = getelementptr %struct.bgmac_dma_ring, ptr %4, i32 0, i32 7, i32 %11, i32 1
  store i32 -1, ptr %63, align 4
  br label %188

64:                                               ; preds = %61
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %43 to i32
  %67 = add i32 %66, 1073741824
  %68 = lshr i32 %67, 12
  %69 = getelementptr %struct.page, ptr %65, i32 %68
  %70 = and i32 %66, 4095
  %71 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %69, i32 noundef %70, i32 noundef %47, i32 noundef 1, i32 noundef 0) #9
  %72 = getelementptr %struct.bgmac_dma_ring, ptr %4, i32 0, i32 7, i32 %11, i32 1
  store i32 %71, ptr %72, align 4
  %73 = icmp eq i32 %71, -1
  br i1 %73, label %188, label %74

74:                                               ; preds = %64
  %75 = icmp eq i8 %29, 0
  %76 = select i1 %75, i32 -536870912, i32 -2147483648
  %77 = load i32, ptr %12, align 8
  %78 = load i32, ptr %45, align 4
  %79 = sub i32 %77, %78
  %80 = icmp eq i32 %11, 127
  %81 = or i32 %76, 268435456
  %82 = select i1 %80, i32 %81, i32 %76
  %83 = and i32 %79, 16383
  %84 = getelementptr i8, ptr %1, i32 1668
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr %struct.bgmac_dma_desc, ptr %85, i32 %11
  %87 = getelementptr %struct.bgmac_dma_desc, ptr %85, i32 %11, i32 2
  store i32 %71, ptr %87, align 1
  %88 = getelementptr %struct.bgmac_dma_desc, ptr %85, i32 %11, i32 3
  store i32 0, ptr %88, align 1
  store i32 %82, ptr %86, align 1
  %89 = getelementptr %struct.bgmac_dma_desc, ptr %85, i32 %11, i32 1
  store i32 %83, ptr %89, align 1
  br i1 %75, label %123, label %90

90:                                               ; preds = %74
  %91 = add nsw i32 %30, -1
  br label %92

92:                                               ; preds = %108, %90
  %93 = phi i32 [ %11, %90 ], [ %101, %108 ]
  %94 = phi i32 [ 0, %90 ], [ %121, %108 ]
  %95 = phi i32 [ 0, %90 ], [ %111, %108 ]
  %96 = load ptr, ptr %26, align 4
  %97 = getelementptr %struct.skb_shared_info, ptr %96, i32 0, i32 12, i32 %94
  %98 = getelementptr %struct.skb_shared_info, ptr %96, i32 0, i32 12, i32 %94, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = add nsw i32 %93, 1
  %101 = srem i32 %100, 128
  %102 = load ptr, ptr %97, align 4
  %103 = getelementptr %struct.skb_shared_info, ptr %96, i32 0, i32 12, i32 %94, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %102, i32 noundef %104, i32 noundef %99, i32 noundef 1, i32 noundef 0) #9
  %106 = getelementptr %struct.bgmac_dma_ring, ptr %4, i32 0, i32 7, i32 %101, i32 1
  store i32 %105, ptr %106, align 4
  %107 = icmp eq i32 %105, -1
  br i1 %107, label %170, label %108, !prof !10

108:                                              ; preds = %92
  %109 = icmp eq i32 %94, %91
  %110 = or i32 %95, 1610612736
  %111 = select i1 %109, i32 %110, i32 %95
  %112 = icmp eq i32 %101, 127
  %113 = or i32 %111, 268435456
  %114 = select i1 %112, i32 %113, i32 %111
  %115 = and i32 %99, 16383
  %116 = load ptr, ptr %84, align 4
  %117 = getelementptr %struct.bgmac_dma_desc, ptr %116, i32 %101
  %118 = getelementptr %struct.bgmac_dma_desc, ptr %116, i32 %101, i32 2
  store i32 %105, ptr %118, align 1
  %119 = getelementptr %struct.bgmac_dma_desc, ptr %116, i32 %101, i32 3
  store i32 0, ptr %119, align 1
  store i32 %114, ptr %117, align 1
  %120 = getelementptr %struct.bgmac_dma_desc, ptr %116, i32 %101, i32 1
  store i32 %115, ptr %120, align 1
  %121 = add nuw nsw i32 %94, 1
  %122 = icmp eq i32 %121, %30
  br i1 %122, label %123, label %92

123:                                              ; preds = %108, %74
  %124 = phi i32 [ %11, %74 ], [ %101, %108 ]
  %125 = getelementptr %struct.bgmac_dma_ring, ptr %4, i32 0, i32 7, i32 %124
  store ptr %0, ptr %125, align 4
  %126 = add nuw nsw i32 %30, 1
  %127 = load i32, ptr %9, align 4
  %128 = add i32 %126, %127
  store i32 %128, ptr %9, align 4
  %129 = load i32, ptr %12, align 8
  %130 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 87
  %131 = load ptr, ptr %130, align 64
  %132 = getelementptr inbounds %struct.netdev_queue, ptr %131, i32 0, i32 14
  %133 = icmp ugt i32 %129, 268435455
  br i1 %133, label %134, label %135, !prof !10

134:                                              ; preds = %123
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #9, !srcloc !18
  unreachable

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct.netdev_queue, ptr %131, i32 0, i32 14, i32 2
  store i32 %129, ptr %136, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %137 = load i32, ptr %132, align 64
  %138 = add i32 %137, %129
  store i32 %138, ptr %132, align 64
  %139 = getelementptr inbounds %struct.netdev_queue, ptr %131, i32 0, i32 14, i32 1
  %140 = load volatile i32, ptr %139, align 4
  %141 = load volatile i32, ptr %132, align 64
  %142 = sub i32 %140, %141
  %143 = icmp sgt i32 %142, -1
  br i1 %143, label %151, label %144, !prof !12

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.netdev_queue, ptr %131, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %145) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %146 = load volatile i32, ptr %139, align 4
  %147 = load volatile i32, ptr %132, align 64
  %148 = sub i32 %146, %147
  %149 = icmp sgt i32 %148, -1
  br i1 %149, label %150, label %151, !prof !10

150:                                              ; preds = %144
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %145) #9
  br label %151

151:                                              ; preds = %150, %144, %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %152 = getelementptr i8, ptr %1, i32 1680
  %153 = load i16, ptr %152, align 4
  %154 = add i16 %153, 4
  %155 = getelementptr i8, ptr %1, i32 1676
  %156 = load i32, ptr %155, align 4
  %157 = load i32, ptr %9, align 4
  %158 = shl i32 %157, 4
  %159 = and i32 %158, 2032
  %160 = add i32 %159, %156
  %161 = getelementptr i8, ptr %1, i32 22584
  %162 = load ptr, ptr %161, align 8
  tail call void %162(ptr noundef %3, i16 noundef zeroext %154, i32 noundef %160) #9
  %163 = load i32, ptr %9, align 4
  %164 = load i32, ptr %4, align 4
  %165 = sub i32 %163, %164
  %166 = icmp ugt i32 %165, 119
  br i1 %166, label %167, label %200

167:                                              ; preds = %151
  %168 = load ptr, ptr %130, align 64
  %169 = getelementptr inbounds %struct.netdev_queue, ptr %168, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %169) #9
  br label %200

170:                                              ; preds = %92
  %171 = load i32, ptr %12, align 8
  %172 = load i32, ptr %45, align 4
  %173 = sub i32 %171, %172
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef -1, i32 noundef %173, i32 noundef 1, i32 noundef 0) #9
  %174 = icmp eq i32 %94, 0
  br i1 %174, label %188, label %175

175:                                              ; preds = %175, %170
  %176 = phi i32 [ %177, %175 ], [ %94, %170 ]
  %177 = add nsw i32 %176, -1
  %178 = load i32, ptr %9, align 4
  %179 = add i32 %178, %177
  %180 = and i32 %179, 127
  %181 = load ptr, ptr %84, align 4
  %182 = getelementptr %struct.bgmac_dma_desc, ptr %181, i32 %180, i32 1
  %183 = load i32, ptr %182, align 1
  %184 = and i32 %183, 16383
  %185 = getelementptr %struct.bgmac_dma_ring, ptr %4, i32 0, i32 7, i32 %180, i32 1
  %186 = load i32, ptr %185, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %186, i32 noundef %184, i32 noundef 1, i32 noundef 0) #9
  %187 = icmp sgt i32 %176, 1
  br i1 %187, label %175, label %188

188:                                              ; preds = %175, %170, %64, %62
  %189 = load ptr, ptr %7, align 8
  %190 = getelementptr i8, ptr %1, i32 1680
  %191 = load i16, ptr %190, align 4
  %192 = zext i16 %191 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %189, ptr noundef nonnull @.str.13, i32 noundef %192) #10
  br label %193

193:                                              ; preds = %188, %15
  tail call void @consume_skb(ptr noundef %0) #9
  %194 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 7
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, 1
  store i32 %196, ptr %194, align 4
  %197 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 5
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, 1
  store i32 %199, ptr %197, align 4
  br label %200

200:                                              ; preds = %193, %167, %151, %36
  %201 = phi i32 [ 0, %193 ], [ 16, %36 ], [ 0, %167 ], [ 0, %151 ]
  ret i32 %201
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgmac_set_rx_mode(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 22580
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %2, i16 noundef zeroext 2056) #9
  %8 = and i32 %7, -17
  %9 = lshr i32 %4, 4
  %10 = and i32 %9, 16
  %11 = or i32 %8, %10
  %12 = getelementptr i8, ptr %0, i32 1428
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 2048, i32 8192
  %17 = load ptr, ptr %5, align 4
  %18 = tail call i32 %17(ptr noundef %2, i16 noundef zeroext 2056) #9
  %19 = or i32 %16, %18
  %20 = getelementptr i8, ptr %0, i32 22584
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef %2, i16 noundef zeroext 2056, i32 noundef %19) #9
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 429496) #9
  %23 = load ptr, ptr %20, align 8
  tail call void %23(ptr noundef %2, i16 noundef zeroext 2056, i32 noundef %11) #9
  %24 = xor i32 %16, -1
  %25 = load ptr, ptr %5, align 4
  %26 = tail call i32 %25(ptr noundef %2, i16 noundef zeroext 2056) #9
  %27 = and i32 %26, %24
  %28 = load ptr, ptr %20, align 8
  tail call void %28(ptr noundef %2, i16 noundef zeroext 2056, i32 noundef %27) #9
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 429496) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_set_mac_address(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @eth_prepare_mac_addr_change(ptr noundef %0, ptr noundef %1) #9
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %7, i32 noundef 6) #9
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %9 = load ptr, ptr %8, align 32
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = getelementptr i8, ptr %9, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %16, %12
  %18 = getelementptr i8, ptr %9, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr i8, ptr %9, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = getelementptr i8, ptr %0, i32 22584
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef %6, i16 noundef zeroext 2060, i32 noundef %26) #9
  %29 = getelementptr i8, ptr %9, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = getelementptr i8, ptr %9, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %32, %35
  %37 = load ptr, ptr %27, align 8
  tail call void %37(ptr noundef %6, i16 noundef zeroext 2064, i32 noundef %36) #9
  tail call void @eth_commit_mac_addr_change(ptr noundef %0, ptr noundef %1) #9
  br label %38

38:                                               ; preds = %5, %2
  %39 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_change_mtu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = add i32 %1, 32
  %5 = getelementptr i8, ptr %0, i32 22584
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef %3, i16 noundef zeroext 2068, i32 noundef %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 22580
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %3, i16 noundef zeroext 32) #9
  %7 = getelementptr i8, ptr %1, i32 22564
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = and i32 %9, -16842753
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %1, i32 1420
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.10, i32 noundef %12) #10
  br label %17

17:                                               ; preds = %14, %11
  %18 = getelementptr i8, ptr %1, i32 22584
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef %3, i16 noundef zeroext 36, i32 noundef 0) #9
  %20 = load ptr, ptr %4, align 4
  %21 = tail call i32 %20(ptr noundef %3, i16 noundef zeroext 36) #9
  %22 = getelementptr i8, ptr %1, i32 1440
  %23 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %22) #9
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void @__napi_schedule(ptr noundef %22) #9
  br label %25

25:                                               ; preds = %24, %17, %2
  %26 = phi i32 [ 0, %2 ], [ 1, %17 ], [ 1, %24 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_prepare_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eth_commit_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgmac_get_drvinfo(ptr nocapture noundef readnone %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef 32) #9
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef 32) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgmac_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #5 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %14

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = shl nuw nsw i32 %6, 5
  %8 = getelementptr i8, ptr %2, i32 %7
  %9 = getelementptr [66 x %struct.bgmac_stat], ptr @bgmac_get_strings_stats, i32 0, i32 %6, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strlcpy(ptr noundef %8, ptr noundef %10, i32 noundef 32) #9
  %12 = add nuw nsw i32 %6, 1
  %13 = icmp eq i32 %12, 66
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgmac_get_ethtool_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 22580
  br label %11

11:                                               ; preds = %25, %9
  %12 = phi i32 [ 0, %9 ], [ %32, %25 ]
  %13 = getelementptr [66 x %struct.bgmac_stat], ptr @bgmac_get_strings_stats, i32 0, i32 %12
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 8
  %16 = getelementptr [66 x %struct.bgmac_stat], ptr @bgmac_get_strings_stats, i32 0, i32 %12, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i16
  br i1 %15, label %19, label %25

19:                                               ; preds = %11
  %20 = add i16 %18, 4
  %21 = load ptr, ptr %10, align 4
  %22 = tail call i32 %21(ptr noundef %4, i16 noundef zeroext %20) #9
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  br label %25

25:                                               ; preds = %19, %11
  %26 = phi i64 [ %24, %19 ], [ 0, %11 ]
  %27 = load ptr, ptr %10, align 4
  %28 = tail call i32 %27(ptr noundef %4, i16 noundef zeroext %18) #9
  %29 = zext i32 %28 to i64
  %30 = or i64 %26, %29
  %31 = getelementptr i64, ptr %2, i32 %12
  store i64 %30, ptr %31, align 8
  %32 = add nuw nsw i32 %12, 1
  %33 = icmp eq i32 %32, 66
  br i1 %33, label %34, label %11

34:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bgmac_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 66, i32 -95
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bgmac_dma_rx_skb_for_slot(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @__netdev_alloc_frag_align(i32 noundef 10048, i32 noundef -1) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %68, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %5, i32 36
  store i16 -8531, ptr %8, align 2
  %9 = getelementptr i8, ptr %5, i32 38
  store i16 -16657, ptr %9, align 2
  %10 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #9
  %11 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %23, !prof !10

14:                                               ; preds = %7
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %15 = tail call ptr @dev_driver_string(ptr noundef %4) #9
  %16 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load ptr, ptr %4, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %20, %19 ], [ %17, %14 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %15, ptr noundef %22) #9
  br label %23

23:                                               ; preds = %21, %7
  br i1 %10, label %33, label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %8 to i32
  %27 = add i32 %26, 1073741824
  %28 = lshr i32 %27, 12
  %29 = getelementptr %struct.page, ptr %25, i32 %28
  %30 = and i32 %26, 4095
  %31 = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef %29, i32 noundef %30, i32 noundef 9754, i32 noundef 2, i32 noundef 0) #9
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %66

33:                                               ; preds = %24, %23
  %34 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.97) #10
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %5 to i32
  %38 = add i32 %37, 1073741824
  %39 = lshr i32 %38, 12
  %40 = getelementptr %struct.page, ptr %36, i32 %39, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !12

44:                                               ; preds = %33
  %45 = add i32 %41, -1
  br label %49

46:                                               ; preds = %33
  %47 = getelementptr %struct.page, ptr %36, i32 %39
  %48 = ptrtoint ptr %47 to i32
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %45, %44 ], [ %48, %46 ]
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56, !prof !12

56:                                               ; preds = %49
  %57 = add i32 %53, -1
  %58 = inttoptr i32 %57 to ptr
  br label %59

59:                                               ; preds = %56, %49
  %60 = phi ptr [ %51, %49 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #9, !srcloc !14
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #9, !srcloc !15
  %63 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  tail call void @__put_page(ptr noundef %60) #9
  br label %68

66:                                               ; preds = %24
  store ptr %5, ptr %1, align 4
  %67 = getelementptr inbounds %struct.bgmac_slot_info, ptr %1, i32 0, i32 1
  store i32 %31, ptr %67, align 4
  br label %68

68:                                               ; preds = %66, %65, %59, %2
  %69 = phi i32 [ 0, %66 ], [ -12, %2 ], [ -12, %59 ], [ -12, %65 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_frag_align(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2155227794}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148459261}
!14 = !{i64 856399, i64 2148346370, i64 2148346396, i64 2148346443, i64 2148346465, i64 2148346493, i64 2148346513}
!15 = !{i64 2148361623, i64 2148361655, i64 2148361684, i64 2148361718, i64 2148361749, i64 2148361772}
!16 = !{i64 2148459464}
!17 = !{i64 2157202149}
!18 = !{i64 2154447065, i64 2154447565, i64 2154447102, i64 2154447158, i64 2154447192, i64 2154447216, i64 2154447257, i64 2154447278, i64 2154447306, i64 2154447340}
!19 = !{i64 2154447845}
!20 = !{i64 2155226749}
!21 = !{i64 2157190574}
